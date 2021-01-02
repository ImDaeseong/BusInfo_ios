
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //getData1()
        
        //getData2()
        
        //getData3()
        
    }
    
    private func getData1(){
        
        getBusRouteListAPI.shared.getData(sNum: "3") { (result) in
            switch result{
            case .success(let getBusRouteListData):
                
                //print(getBusRouteListData.count)
                
                for item in getBusRouteListData {
                    
                    let busRouteId : String = item.busRouteId!
                    let busRouteNm : String = item.busRouteNm!
                    let edStationNm : String = item.edStationNm!
                    let stStationNm : String = item.stStationNm!
                    let term : String = item.term!
                    print("busRouteId:\(busRouteId) busRouteNm:\(busRouteNm) edStationNm:\(edStationNm) stStationNm:\(stStationNm) term:\(term)")
                }
                
                break
            case .failure(let error):
                print(error)
                break
            }
        }
    }
    
    private func getData2(){
        
        getArrInfomainAPI.shared.getData(sbusRouteId: "117900003") { (result) in
            
            switch result{
            case .success(let getArrInfoByRouteAllData):
                
                //print(getArrInfoByRouteAllData.count)
                
                for item in getArrInfoByRouteAllData {
                    
                    let arrmsg1 : String = item.arrmsg1!
                    let arrmsg2 : String = item.arrmsg2!
                    let arsId : String = item.arsId!
                    let rtNm : String = item.rtNm!
                    let stId : String = item.stId!
                    let stNm : String = item.stNm!
                    print("arrmsg1:\(arrmsg1) arrmsg2:\(arrmsg2) arsId:\(arsId) rtNm:\(rtNm) stId:\(stId) stNm:\(stNm)")
                }
                
                break
            case .failure(let error):
                print(error)
                break
            }
        }
    }
    
    private func getData3(){
        
        getArrInfoByRouteAllAPI.shared.getData(sbusRouteId: "218000010") { (result) in
            
            switch result{
            case .success(let getArrInfoByRouteAllData):
                
                //print(getArrInfoByRouteAllData.count)
                
                for item in getArrInfoByRouteAllData {
                    
                    let arrmsg1 : String = item.arrmsg1!
                    let arrmsg2 : String = item.arrmsg2!
                    let arsId : String = item.arsId!
                    let rtNm : String = item.rtNm!
                    let stId : String = item.stId!
                    let stNm : String = item.stNm!
                    print("arrmsg1:\(arrmsg1) arrmsg2:\(arrmsg2) arsId:\(arsId) rtNm:\(rtNm) stId:\(stId) stNm:\(stNm)")
                }
                
                break
            case .failure(let error):
                print(error)
                break
            }
        }
    }
    
}

