
# heading is inside of main_text as float.
# heading column is set to 2.

RLayout::Document.new(:initial_page=>false) do
  page do
    main_text(heading_columns: 2, column_count: 3) do
      heading(fill_color: "CMYK=0.1,0,0,0,1")
      float_image(:local_image=> "1.jpg", :grid_frame=> [2,0,1,1])
      float_image(:local_image=> "2.jpg", :grid_frame=> [2,1,1,1])
    end
  end

  page do
    main_text(column_count: 3) do
      float_image(:local_image=> "3.jpg", :grid_frame=> [1,0,2,2])
    end
  end
end