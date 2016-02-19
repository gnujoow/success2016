class HomeController < ApplicationController
  def index
  	@yes = "oh yes oh yes"
  end

  #과목번호 입력 받았을 때
  
  def search
    @sbjtId = params[:sbjtId]
    @avail = Array.new
    @url = Array.new
    
    for i in 1..4
      @url[i] = "http://kupis.konkuk.ac.kr/sugang/acd/cour/aply/CourBasketInwonInq.jsp?ltYy=2016&ltShtm=B01011&sbjtId="+@sbjtId+"&promShyr="+i.to_s+"&fg=B"
      uri = URI(@url[i])

      html_doc = Nokogiri::HTML(Net::HTTP.get(uri),nil,'EUC-KR')

      temp = html_doc.xpath('//td[@class="table_bg_white"]')[2].content.split("/") #신청된사람 / 총인원수  
      
      @apply = temp[0].to_i
      @capacity = temp[1].to_i
      @avail[i] = @capacity - @apply
    end
  	
  end
  
  def exchange
  end
  
end
