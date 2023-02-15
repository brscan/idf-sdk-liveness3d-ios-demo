import UIKit
import serasa_idf_liveness3d_ios

class CapturarViewController: UIViewController {
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
   
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let captura = CapturaSViewController(
            chave: "INSERT KEY HERE",
            wizard: false,
            segurancaExtraEmulatorCheck: false,
            tentativasDeCaptura: 0
        )

        captura.delegate = self
        addChild(captura)
        view.addSubview(captura.view)
        captura.didMove(toParent: self)
        captura.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        captura.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        captura.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        captura.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
}

// MARK: - CapturaSViewControllerDelegate

extension CapturarViewController: CapturaSViewControllerDelegate {
    func sucessoDelegate(_ selfie: [String : Any]) {
        let arquivo = selfie["selfie"] ?? "empty"
        let sessionId = selfie["sessionId"]  ?? "empty"
        let faceScan = selfie["faceScan"]  ?? "empty"
        let retorno = "selfie:\n\(arquivo)\n\nsessionId:\n\(sessionId)\n\nId:\n\(faceScan)"
        
        let controller = InicialViewController(retorno: retorno)
        navigationController?.pushViewController(controller, animated: true)
    }

    func erroDelegate(_ erro: [String : Any]) {
        let error = erro["descricao"] ?? "empty"
        let codigo = erro["codigo"]  ?? "empty"
        let id = erro["id"]  ?? "empty"
        let retorno = "Erro:\n\(error)\n\nCódigo:\n\(codigo)\n\nId:\n\(id)"

        let controller = InicialViewController(retorno: retorno)
        navigationController?.pushViewController(controller, animated: true)
    }
}
