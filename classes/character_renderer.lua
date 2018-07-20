function character(body, head, x, y, tick, body_color, head_color, hair_color,skin)
  palt(0,false)
  palt(1,true)
  -- bounce animation
  local hy = ((tick%40 < 20) and 1 or 0)
  local by = (((tick+4)%40 < 20) and 1 or 0)

  -- sspr sx sy sw sh dx dy [dw dh] [flip_x] [flip_y]
  local sx = body % 16 * 8
  local sy = 16
  -- outline, body
  sspr(0,24,8,5,x,y+by)
  -- outline, legs
  sspr(0,24+5,8,3,x,y+5)
  -- outline, head
  spr(16+head,x,y-4+hy)

  for i = 1, 2 do
    if body_pals[body+1] then
      local f = body_pals[body+1][i]
      if f then
        pal(f,pals[body_color][i])
      end
    end
  end
  if skin then
    pal(15,4)
  end
  -- legs
  sspr(sx,sy+5,8,3,x,y+5)
  -- body
  sspr(sx,sy,8,5,x,y+by)

  pal()
  palt(0,false)
  palt(1,true)

  for i = 1, 4 do
    if head_pals[head+1] then
      local f = head_pals[head+1][i]
      if f then
        pal(f,pals[(i <= 2 and hair_color or head_color)][(i-1)%2+1])
      end
    end
  end
  if skin then
    pal(15,4)
  end
  -- head
  spr(head,x,y-4+hy)
  pal()
end

-- colors to swap?
body_pals = {
  {9},
  {3},
  {11},
  {7,6},
  {10,4},
  {5,13},
  {7,6},
  {12}
}
-- hair a, hair b, item a, item b
head_pals = {
  {4,5},
  {10,9},
  {10,9,11,3},
  {1,1,7,6},
  {4,1,13,5},
  {1,1,8,2},
  {1,1,7,6},
  {12,13}
}

pals = {
  {8,2},
  {9,4},
  {10,9},
  {11,3},
  {12,1},
  {14,2},
  {7,6},
  {6,13},
  {13,1},
  -- {5,1},
  -- {4,5}
}
