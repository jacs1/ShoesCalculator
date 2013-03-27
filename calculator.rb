Shoes.app :title => "My Amazing Calculator", :width => 250, :height => 250 do
  stack :margin => 30 do
    @output = edit_line
   

    flow do
      %w(7 8 9 + 4 5 6 - 7 8 9 *).each do |op|  
        button op do
          append op
        end
      end

      button "s" do
        square_root
      end

     button "C" do
      clear_entry 
    end

     button "." do
      append "."
      end
      

      button "=" do
        eval_expression
      end
    end
    
    
  end
  
  # Stick a string on the end of our input
  #
  def clear_entry()
    @input = ""
    @output.text = ""
  end
  def append(s)
    debug s
    if @input.nil?
      @input = ""
    end
    @input += s
    @output.text = @input
  end
  
  # Evaluate the input we've got so far
  #
  def eval_expression
    @input = eval(@input).to_s
    @output.text = @input
  end

  def square_root
    @input = Math.sqrt(@input.to_i).to_s
    @output.text = @input
  end
  
  background blue do
  end
end
