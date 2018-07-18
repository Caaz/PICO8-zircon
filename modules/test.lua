.add('test', {
  init = function(this)
    this.tick = 0
    this.head = 1
    this.body = 1
  end,
  update = function(this)

    if btnp(0) then
      this.head -= 1
    elseif btnp(1) then
      this.head += 1
    end
    if btnp(2) then
      this.body -= 1
    elseif btnp(3) then
      this.body += 1
    end
  end,
  draw = function(this)
    this.tick += 1
    -- rectfill()
    rectfill(0,0,127,127,7)
    character(this.head,this.body,25,25, (this.tick%20<10))

    for x = 20, 40 do
      for y = 20, 40 do
        local pixel = pget(x,y)
        for cx = 1, 2 do
          for cy = 1, 2 do
            pset(x*2+cx,y*2+cy, pixel)
          end
        end
      end
    end
  end
})
