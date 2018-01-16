sub init()
  m.top.setFocus(true)
  setVideo()
end sub
 
function setVideo() as void
  videoContent = createObject("RoSGNode", "ContentNode")
  videoContent.url = "https://srclive-lh.akamaihd.net/i/cancbft_1@95875/master.m3u8"
  videoContent.title = "Radio Canada (Montréal)"
  videoContent.streamformat = "hls"
 
  m.video = m.top.findNode("Video")
  m.video.content = videoContent
  m.video.control = "play"
end function
