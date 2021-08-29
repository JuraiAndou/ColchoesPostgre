class Produto_Estoque(object):

    @property
    def nome(self):
        return self._nome
    
    @nome.setter
    def nome(self, nome):
        self._nome = nome
    
    @property
    def quantidade(self):
        return self._nome

    @quantidade.setter
    def quantidade(self, quantidade):
        self._quantidade = quantidade