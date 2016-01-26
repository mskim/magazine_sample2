
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
    main_text(column_count: 2) do
      float_image(:local_image=> "3.jpg", :grid_frame=> [1,0,2,2])
    end
    relayout!
  end
end