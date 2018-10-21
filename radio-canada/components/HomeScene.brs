sub init()
  m.top.setFocus(true)
  url = getVideoUrl()
  setVideo(url)
end sub

function geVideoUrl() as string
  request = CreateObject("roUrlTransfer")
  request.SetUrl("https://raw.githubusercontent.com/nddery/roku-qc-tv-channels/master/radio-canada/url.txt")
  return request.GetToString()
end function
 
function setVideo(url) as void
  videoContent = createObject("RoSGNode", "ContentNode")
  videoContent.url = url
  videoContent.title = "Radio Canada (Montréal)"
  videoContent.streamformat = "hls"
 
  m.video = m.top.findNode("Video")
  m.video.content = videoContent
  m.video.control = "play"
end function
