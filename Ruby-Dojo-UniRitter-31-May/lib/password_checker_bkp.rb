class PasswordChecker
  INVALID = %w{jesus password love christ jesus1 princess blessed sunshine faith angel single lovely freedom blessing grace iloveyou}
  def check password
    if password.each_byte.to_a.uniq.size ==1
      return false
    end
    if INVALID.include?(password) or !password.size.between?(4,12)
      return false
    end
    letras = password.each_byte.to_a
    primeiro = letras.shift
    cont = 0
    erros = 0
    for i in  letras 
      cont += 1
     if primeiro+cont==i
       erros += 1
      end
       
    end
    if erros == password.size-1
      return false
    end
    true
  end
end