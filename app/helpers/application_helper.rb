module ApplicationHelper
  def soyAdministrador
    if current_user == nil
      return false
    end
    if current_user.rol.id == 1
      return true
    end
    return false
  end
  def soyReferenciacion
    if current_user == nil
      return false
    end
    if current_user.rol.id == 2
      return true
    end
    return false
  end
  def soyAsistente
    if current_user == nil
      return false
    end
    if current_user.rol.id == 3
      return true
    end
    return false
  end
  def soyCobranza
    if current_user == nil
      return false
    end
    if current_user.rol.id == 4
      return true
    end
    return false
  end

  def usuariosAdministrador
    return Usuario.where(:id=>1)
  end
  def usuariosReferenciacion
    return Usuario.where(:id=>2)
  end
  def usuariosAsistente
    return Usuario.where(:id=>3)
  end
  def usuariosCobranza
    return Usuario.where(:id=>4)
  end
end
