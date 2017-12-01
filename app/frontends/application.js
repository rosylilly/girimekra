// any codes here...
window.addEventListener('DOMContentLoaded', () => {
  const queueCount = document.getElementById('queue-count');
  if(!queueCount) { return };

  const eventStream = new EventSource('/stream/queue');
  eventStream.addEventListener('message', (event) => {
    const data = JSON.parse(event.data);
    queueCount.innerText = data.queue;
  });
});
