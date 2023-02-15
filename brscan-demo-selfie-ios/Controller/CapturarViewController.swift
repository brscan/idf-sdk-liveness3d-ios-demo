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
            chave: "INSERIR A CHAVE AQUI",
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
        let arquivo = selfie["selfie"] ?? "vazio"
        let sessionId = selfie["sessionId"]  ?? "vazio"
        let faceScan = selfie["faceScan"]  ?? "vazio"
        let retorno = "selfie:\n\(arquivo)\n\nsessionId:\n\(sessionId)\n\nId:\n\(faceScan)"
        
        let controller = InicialViewController(retorno: retorno)
        navigationController?.pushViewController(controller, animated: true)
    }

    func erroDelegate(_ erro: [String : Any]) {
        let error = erro["descricao"] ?? "vazio"
        let codigo = erro["codigo"]  ?? "vazio"
        let id = erro["id"]  ?? "vazio"
        let retorno = "Erro:\n\(error)\n\nCódigo:\n\(codigo)\n\nId:\n\(id)"

        let controller = InicialViewController(retorno: retorno)
        navigationController?.pushViewController(controller, animated: true)
    }
}
