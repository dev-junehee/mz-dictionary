//
//  MainViewController.swift
//  daily-04-mz-dictionary
//
//  Created by junehee on 5/18/24.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchButton: UIButton!
    
    @IBOutlet var recommendButton1: UIButton!
    @IBOutlet var recommendButton2: UIButton!
    @IBOutlet var recommendButton3: UIButton!
    @IBOutlet var recommendButton4: UIButton!
    
    @IBOutlet var searchValue: UILabel!
    
    @IBOutlet var resultBackgroundImage: UIImageView!
    @IBOutlet var resultText: UILabel!
    
    // 메세지 리스트
    let message: [String: String] = [
        "example": "👥뭐야..👤👥럭키비키가 뭐야..👥👤",
        "initial": "궁금한 신조어를 입력해 보세용 ⌨️",
        "error": "검색 결과를 찾을 수 없어요😵\n다시 입력해 주세요!",
    ]
    
    // 신조어 리스트
    let words: [String: String] = [
        "무물": "'무엇이든 물어보세요'의 줄임말로,\n인스타그램 스토리로 질문 받으며 사용!\n💁🏻아 심심한데 무물할까❓",
        "오저치고": "오늘 저녁 치킨 고(Go)🍗?",
        "스공": "'스토리 공유'의 줄임말",
        "갓기": "'GOD(신) + 아기'\n어린 나이에 외모나 능력이 뛰어난 사람👼🏻",
        "럭키비키": "행운을 뜻하는 럭키(lucky)와 장원영의 영어 이름\n비키(vicky)를 연달아 쓴 말로\n'운이 좋은 원영'이라는 뜻! 완전 럭키비키잔앙🍀",
        "제곧내": "'제목이 곧 내용'의 줄임말\n굳이 클릭하는 수고를 덜기 위해 제목에 내용을 써서 전달하는 방법",
        "좋댓구알": "좋아요 댓글 구독 알림 설정~!",
        "구취": "구독 취소↩️",
        "KIJUL": "'기절'을 영어 그대로 적은 것\n너무 좋아서 KIJUL~",
        "중꺾그마": "중요한 건 꺾였는데도 그냥 하는 마음",
        "뉴런공유": "나와 생각이나 행동이 비슷한 사람한테 쓰는 말",
        "디토합니다": "라틴어로 '동의합니다' 라는 뜻",
        "웅니": "'언니'를 귀엽게 부르는 말",
        "설참": "콘텐츠에서 차마 설명을 다 하지 못했을 경우\n'하단에 텍스트로 추가 설명을 써놓았으니 참조하라'는 뜻",
        "슬세권": "추리닝에 슬리퍼 같은 편한 복장으로\n다닐 수 있는 생활 반경이라는 뜻\n'야 그 베이글 맛집 내 슬세권이잖아🥯🩴'",
        "일며들다": "일이 내 삶에 스며들다...",
        "SBN": "선! 배! 님!"
    ]
    
    // 검색창 섹션 함수
    func searchSection() {
        // 검색창 텍스트 필드
        searchTextField.borderStyle = .line
        searchTextField.placeholder = message["example"]
        searchTextField.font = UIFont.systemFont(ofSize: 12)
        // 검색창 텍스트 필드 왼쪽 여백
        searchTextField.leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 10.0, height: 0.0))
        searchTextField.leftViewMode = .always
        // 검색 버튼
        searchButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.backgroundColor = .black
        searchButton.tintColor = .white
    
    }
    
    // 추천 검색어 랜덤 숫자 추출
//    func randomNumber() {
//        
//        return []
//    }
    
    // 추천 검색어 섹션 함수
    func recommendButtonsSection() {
        let randomWords = Array(words.keys).shuffled()
        
        // 1번 추천
        recommendButton1.setTitle(randomWords[0], for: .normal)
        recommendButton1.setTitleColor(.black, for: .normal)
        recommendButton1.setTitleColor(.red, for: .highlighted)
        recommendButton1.titleLabel?.font = .systemFont(ofSize: 10, weight: .light)
        recommendButton1.layer.borderWidth = 1
        recommendButton1.layer.cornerRadius = 4
        recommendButton1.layer.borderColor = UIColor.black.cgColor
        
        // 2번 추천
        recommendButton2.setTitle(randomWords[1], for: .normal)
        recommendButton2.setTitleColor(.black, for: .normal)
        recommendButton2.setTitleColor(.red, for: .highlighted)
        recommendButton2.titleLabel?.font = .systemFont(ofSize: 10, weight: .light)
        recommendButton2.layer.borderWidth = 1
        recommendButton2.layer.cornerRadius = 4
        recommendButton2.layer.borderColor = UIColor.black.cgColor
        
        // 3번 추천
        recommendButton3.setTitle(randomWords[2], for: .normal)
        recommendButton3.setTitleColor(.black, for: .normal)
        recommendButton3.setTitleColor(.red, for: .highlighted)
        recommendButton3.titleLabel?.font = .systemFont(ofSize: 10, weight: .light)
        recommendButton3.layer.borderWidth = 1
        recommendButton3.layer.cornerRadius = 4
        recommendButton3.layer.borderColor = UIColor.black.cgColor
        
        // 4번 추천
        recommendButton4.setTitle(randomWords[3], for: .normal)
        recommendButton4.setTitleColor(.black, for: .normal)
        recommendButton4.setTitleColor(.red, for: .highlighted)
        recommendButton4.titleLabel?.font = .systemFont(ofSize: 10, weight: .light)
        recommendButton4.layer.borderWidth = 1
        recommendButton4.layer.cornerRadius = 4
        recommendButton4.layer.borderColor = UIColor.black.cgColor
    }
    
    // 검색 결과 섹션 함수
    func resultSection() {
        // 배경 이미지
        resultBackgroundImage.image = UIImage.background
        resultBackgroundImage.contentMode = .scaleAspectFill
        // 검색한 단어
        searchValue.text = ""
        searchValue.textAlignment = .center
        searchValue.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        // 단어 설명
        resultText.text = message["initial"]
        resultText.textColor = .gray
        resultText.textAlignment = .center
        resultText.font = .systemFont(ofSize: 14)
        resultText.numberOfLines = 0
        resultText.backgroundColor = .clear
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchSection()
        resultSection()
        recommendButtonsSection()
    }

    // 검색 버튼 핸들러
    @IBAction func searchButtonClicked(_ sender: UIButton) {
        let searchText = searchTextField.text!
        
        if (words[searchText] != nil) {
            searchValue.text = searchText
            resultText.text = words[searchText]
        } else {
            searchValue.text = ""
            resultText.text = message["error"]
        }
        
        searchTextField.text = ""
    }
    
    // 검색창 텍스트 필드 핸들러 - 키보드 내리기 & 검색
    @IBAction func searchTextFieldClicked(_ sender: UITextField) {
        let searchText = searchTextField.text!
        
        if (words[searchText] != nil) {
            searchValue.text = searchText
            resultText.text = words[searchText]
        } else {
            searchValue.text = ""
            resultText.text = message["error"]
        }
        
        searchTextField.text = ""
    }
    
    // 추천 검색어 버튼 핸들러 (누르면 해당 단어 검색 & 추천 검색어 재설정)
    @IBAction func recommendButton1Clicked(_ sender: UIButton) {
        let recommentText = recommendButton1.titleLabel?.text!
        
        if recommentText != nil {
            searchValue.text = recommentText
            resultText.text = words[recommentText!]
        }
        
        recommendButtonsSection()
    }
    
    @IBAction func recommendButton2Clicked(_ sender: UIButton) {
        let recommentText = recommendButton2.titleLabel?.text!
        
        if recommentText != nil {
            searchValue.text = recommentText
            resultText.text = words[recommentText!]
        }
        
        recommendButtonsSection()
    }
    
    @IBAction func recommendButton3Clicked(_ sender: UIButton) {
        let recommentText = recommendButton3.titleLabel?.text!
        
        if recommentText != nil {
            searchValue.text = recommentText
            resultText.text = words[recommentText!]
        }
        
        recommendButtonsSection()
    }
    
    
    @IBAction func recommendButton4Clicked(_ sender: UIButton) {
        let recommentText = recommendButton4.titleLabel?.text!
        
        if recommentText != nil {
            searchValue.text = recommentText
            resultText.text = words[recommentText!]
        }
        
        recommendButtonsSection()
    }
    
}
