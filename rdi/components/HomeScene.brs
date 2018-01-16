sub init()
  m.top.setFocus(true)

  videoContent = createObject("RoSGNode", "ContentNode")
  videoContent.url = "https://hdflash_1-lh.akamaihd.net/i/canrdi_1@95877/master.m3u8"
  videoContent.title = "RDI"
  videoContent.streamformat = "hls"

  m.video = m.top.findNode("Video")
  m.video.content = videoContent
  m.video.control = "play"
end sub
