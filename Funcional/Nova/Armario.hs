import qualified Data.Map as Map
import Data.Either
import Data.Map
data Estado = Alugado | Livre deriving (Show, Eq)
type Codigo = String
type Armario = (Estado, Codigo)
type Armarios = Map.Map Int (Estado, Codigo)

-- consulta : dado o número de um armário, retorna se ele está alugado ou não
-- retorna Nothing se o armário não existir
consulta :: Int -> Armarios -> Maybe Estado
consulta indice armarios = armarios

-- dado o número do armário, retorna Right armário ou Left "Armario nao existe"
--pegarArmario :: Int -> Armarios -> Either String Armario
--pegarArmario indice armarios = indice

-- consultar: dado o número de um armário retorna "Right código"
-- Se não existir, retorna "Left Armario não existe", se já estiver alugado retorna "Left ja esta ocupado"
-- Utilize a função pegarArmario para obter o armário e verificar se ele existe
-- Não reescreva a mesma mensagem de erro, utilize a invocação do pegarArmário
--pegarCodigo :: Int -> Armarios -> Either String Codigo
--pegarCodigo indice armarios = indice


-- aluguel - se o armário existir e estiver desocupado, o estado do armário no mapa é alterado para alugado
-- reaproveite a função pegarCodigo para obter a chave atual e os erros de "não existe" e "está ocupado"
--aluguel :: Int -> Armarios -> Either String Armarios
--aluguel indice armarios = indice

-- para devolver um armário é necessário que ele exista, que esteja alugado e que o código esteja correto
-- utilize a função pegar armário para verificar a existência.
-- Se o armário não estiver alugado ou se o código estiver incorreto avise utilizando o Left.
--devolucao :: Int -> Codigo -> Armarios -> Either String Armarios
--devolucao indice codigo armarios =  indice


lockers :: Armarios
lockers = Map.fromList
    [(100,(Alugado,"ZD39I"))
    ,(101,(Livre,"JAH3I"))
    ,(103,(Livre,"IQSA9"))
    ,(105,(Livre,"QOTSA"))
    ,(109,(Alugado,"893JJ"))
    ,(110,(Alugado,"99292"))
    ]
