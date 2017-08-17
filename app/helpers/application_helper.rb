# frozen_string_literal: true

module ApplicationHelper
  def default_meta_tags
    {
      title: t("#{controller_path.tr('/', '.')}.#{action_name}.title", default: nil),
      site: t('meta.site.name'),
      separator: t('meta.site.separator', default: '-'),
      canonical: canonical_href,
      reverse: true
    }
  end
end
