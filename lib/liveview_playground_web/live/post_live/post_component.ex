defmodule LiveviewPlaygroundWeb.PostLive.PostComponent do
  use LiveviewPlaygroundWeb, :live_component

  def handle_event("like", _, socket) do
    LiveviewPlayground.Timeline.inc_likes(socket.assigns.post)
    {:noreply, socket}
  end

  def handle_event("repost", _, socket) do
    LiveviewPlayground.Timeline.inc_reposts(socket.assigns.post)
    {:noreply, socket}
  end
end
