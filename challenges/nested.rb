 hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

 hash.each do |key, val|
   if !val.kind_of?(Hash)
     puts val if val == "congrats!"
   else
     val.each do |keyy, vall|
       if !vall.kind_of?(Hash)
         puts vall if vall == "congrats!"
       else
         vall.each do |keyyy, valll|
           if !valll.kind_of?(Hash)
             puts valll if valll == "congrats!"
           else
             "no existe!"
           end
         end
       end
     end
   end
 end
