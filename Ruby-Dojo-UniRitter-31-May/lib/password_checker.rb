class PasswordChecker
  INVALID = %w{jesus password love christ jesus1 princess blessed sunshine faith angel single lovely freedom blessing grace iloveyou}
  def check password
    if password.each_byte.to_a.uniq.size ==1
      return false
    end
    if INVALID.include?(password) or !password.size.between?(4,12)
      return false
    end
    password.each_byte.map.each_with_index.map{|v,i| v-i}.uniq.size > 1  
  end
end