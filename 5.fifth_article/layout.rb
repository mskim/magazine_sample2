# Heading in in page, not in main_text
# layout_space: 10 for space between heading and main_text
# column_count: 3, for first page main_text and column_count: 2 for second page main_text

RLayout::Document.new(:initial_page=>false) do
  page(layout_space: 10) do
    heading(fill_color: 'orange')
    main_text(column_count: 3) do
      float_image(:local_image=> "1.jpg", :grid_frame=> [0,0,1,1])
      float_image(:local_image=> "2.jpg", :grid_frame=> [0,1,1,1])
    end
  end

  page do
    main_text(column_count: 2) do
      float_image(:local_image=> "3.jpg", :grid_frame=> [1,0,2,2])
    end
  end
end