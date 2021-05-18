class Especie {
  final String img;
  final String nomeCientifico;
  final String nomenclaturaBotanica;
  final String habitat;
  final String distribuicao;
  final String localImg;
  Especie(this.img, this.nomeCientifico, this.nomenclaturaBotanica,
      this.habitat, this.distribuicao, this.localImg);

  String getFieldValue(String field) {
    switch (field) {
      case 'nomeCientifico':
        return nomeCientifico;
      case 'nomenclaturaBotanica':
        return nomenclaturaBotanica;
      case 'habitat':
        return habitat;
      case 'distribuicao':
        return distribuicao;
      case 'localImg':
        return localImg;
      default:
        return '';
    }
  }

  String getFormatedFieldName(String field) {
    switch (field) {
      case 'nomeCientifico':
        return 'Nome científico: ';
      case 'nomenclaturaBotanica':
        return 'Nomenclatura botânica: ';
      case 'habitat':
        return 'Habitat: ';
      case 'distribuicao':
        return 'Distribuição: ';
      case 'localImg':
        return 'Local da foto: ';
      default:
        return 'Nome inválido: ';
    }
  }
}
