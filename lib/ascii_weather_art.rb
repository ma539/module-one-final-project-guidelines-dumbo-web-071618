class AsciiWeatherArt

  def sunny
    sunshine = []
    sunshine << ("   \\ | /    ")
    sunshine << ("  '-.~~~.-'  ")
    sunshine << (" -==;   ;==- ")
    sunshine << ("  .-'~~~'-.  ")
    sunshine << ("   / | \\   ")
    sunshine
  end

  def cloudy
    cloud = []
    cloud << ("     __ __     ")
    cloud << ("   .(     )).  ")
    cloud << ("  (  -- (-- )) ")
    cloud << (" (__________)  ")
  end

  def rainy
    rain =[]
    rain << ("  ______    ")
    rain << (" (  )    )  ")
    rain << ("(__;__ ;__))")
    rain << ("  '  '  '  '")
    rain << ("    '  '  ' ")
  end

  def snowy
    snow = []
    snow << ("  ______    ")
    snow << (" ( )    )   ")
    snow << ("(__*__*__)) ")
    snow << (" *  *  *  * ")
    snow << ("   *  *  *  ")
  end

  def extreme
    face = []
    face << ("     88888888          ")
    face << (" 88   |]    |]    88   ")
    face << ("88        __       88  ")
    face << (" 88     (___)    88    ")
    face << ("     88888888          ")
  end

  def stormy
    lightning = []
    lightning << ("       ____  ")
    lightning << ("      /   /  ")
    lightning << ("   __/  ./   ")
    lightning << ("  /  ./      ")
    lightning << (" /,/         ")
    lightning << ("//           ")
  end
end
