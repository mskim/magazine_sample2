
RLayout::Document.new(:initial_page=>false) do
  page(:stroke_sides=>[1,1,1,1], :stroke_thickeness=> 1) do
    main_text(column_count: 2) do
      heading(fill_color: "CMYK=0.1,0.1,0,0,1")
      float_image(:local_image=> "1.jpg", :grid_frame=> [0,0,1,1])
    end
    relayout!
    @main_box.layout_floats!  
    @main_box.set_overlapping_grid_rect    
  end

  page do
    image_box =image_box(profile: "5/3x2/1")
    main_text(column_count: 2)
    # image_box =image_box(profile: "4/2x2/1", image_group_path: "/Users/mskim/magazine_article/fourth_article/images")
    relayout!
    image_box.layout_images!
  end
end