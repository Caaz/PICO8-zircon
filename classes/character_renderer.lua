function character(body, head, x, y, tick)
  palt(0,false)
  palt(1,true)
  -- shadows
  local heady = y-3
  if tick then
    body += 16
    spr(48,x,y)
    heady -= 1
  else
    spr(32,x,y)
  end
  spr(16+head,x,heady)
  -- sprite
  spr(32+body,x,y)
  spr(head,x,heady)
  palt()
end
