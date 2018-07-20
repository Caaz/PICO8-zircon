.add('test', {
  init = function(this)
    this.tick = 0
    this.head = 0
    this.body = 0
    this.body_color = 1
    this.hair_color = 1
    this.skin_color = 1
    this.head_color = 1
  end,
  update = function(this)
    if btnp(0) then
      this.head = (this.head%8)+1
    end
    if btnp(1) then
      this.body = (this.body%8)+1
    end
    if btnp(2) then
      this.head_color = (this.head_color%9)+1
    end
    -- if btnp(3) then
    --   this.skin_color = (this.skin_color%9)+1
    -- end
    if btnp(4) then
      this.body_color = (this.body_color%9)+1
    end
    if btnp(5) then
      this.hair_color = (this.hair_color%9)+1
    end
  end,
  draw = function(this)
    this.tick += 1
    -- rectfill()
    rectfill(0,0,127,127,7)
    character(this.body-1,this.head-1,25,40, this.tick,this.body_color,this.head_color,this.hair_color)--this.tick%20<10))
    print('head: '..this.head,1,1,0)
    print('body: '..this.body,1,7,0)
    print('body color: '..this.body_color,1,13,0)
    print('head color: '..this.head_color,1,25,0)
    print('hair color: '..this.hair_color,1,19,0)
    -- print('skin color: '..this.skin_color,1,25,0)

    for x = 20, 40 do
      for y = 35, 50 do
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
