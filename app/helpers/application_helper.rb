module ApplicationHelper
  def active_class(controller)
    'active' if params[:controller] == controller.to_s
  end

  def javascript(*args)
    args = args.map { |arg| arg == :defaults ? arg : arg.to_s }
    content_for(:head) { javascript_include_tag(*args) }
  end
end
