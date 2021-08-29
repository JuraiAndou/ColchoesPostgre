class Produto(object):

    @property
    def id(self):
        return self._id
    
    @id.setter
    def id(self, id):
        self._id = id
    
    @property
    def nome(self):
        return self._nome

    @nome.setter
    def nome(self, nome):
        self._nome = nome

    @property
    def marca(self):
        return self._marca

    @marca.setter
    def marca(self, marca):
        self._marca = marca

    @property
    def descricao(self):
        return self._descricao

    @descricao.setter
    def descricao(self, descricao):
        self._descricao = descricao

    @property
    def fornecedor(self):
        return self._fornecedor

    @fornecedor.setter
    def fornecedor(self, fornecedor):
        self._fornecedor = fornecedor

    @property
    def medida(self):
        return self._medida

    @medida.setter
    def medida(self, medida):
        self._medida = medida

    @property
    def valor(self):
        return self._valor

    @valor.setter
    def valor(self, valor):
        self._valor = valor