class HomeController < ApplicationController
  def index
  	@yes = "oh yes oh yes"
  end

  #과목번호 입력 받았을 때
  def search
  	@sbjtId = params[:sbjtId]
  	url = "http://kupis.konkuk.ac.kr/sugang/acd/cour/aply/CourBasketInwonInq.jsp?ltYy=2016&ltShtm=B01011&sbjtId="+@sbjtId+"&promShyr=4&fg=B"
  	uri = URI(url)
  	html_doc = Nokogiri::HTML(Net::HTTP.get(uri))
  	@result = html_doc.css('table').encode(Encoding::ISO_8859_1)
  	
  end
end
