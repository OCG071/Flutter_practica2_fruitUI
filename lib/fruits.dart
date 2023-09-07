class Fruit {
  final String? image;
  final String? title;
  final String? subtitle;
  final String? description;
  final int? color;

  Fruit({this.image, this.title,this.subtitle, this.description, this.color});
}

final fruits = <Fruit>[
  Fruit(
    title: "Manzana",
    subtitle:"Red Delicious / Golden Delicious / Gala",
    description:
        "La manzana roja suele ser una de las más consumidas. Su piel es de un color rojo intenso y su carne blanca y muy crujiente. ",
    image: "assets/images/apple.png",
    color: 0xFFFF5733,
  ),
  Fruit(
    title: "Durazno",
    subtitle: "Blanco / Perla",
    description:
        "El durazno tiene forma semejante a un globo. Mide de cinco a siete centímetros y medio y es de color amarillento, con tonalidades rojizas en la parte donde pega el sol.",
    image: "assets/images/peach.png",
    color: 0xFFFF9933,
  ),
  Fruit(
    title: "Toronja",
    subtitle: "Marsh / Red Blush / Ruby Red",
    description:
        "Las toronjas son frutos amarillos en forma de globo que miden entre diez y quince centímetros de diámetro. Encierran una pulpa jugosa, ácida, envuelta en una cáscara coriácea. ",
    image: "assets/images/grapefruit.png",
    color: 0xFFFF337A,
  ),
  Fruit(
    title: "Naranja",
    subtitle: "Navel Lane Late / Valencia Late / Sanguina",
    description:
        "Presentan un color anaranjado, al que deben su nombre, aunque algunas especies son casi verdes cuando están maduras.  ",
    image: "assets/images/orange.png",
    color: 0xFFFFEC33,
  ),
  Fruit(
    title: "Uvas",
    subtitle: "Monastrell / Merlot / Syrah",
    description:
        "Las uvas tienen forma esférica, son carnosas, jugosas, y se agrupan en racimos. La cáscara es delgada pero resistente. Su color varía del verde limón al rojo.",
    image: "assets/images/grape.png",
    color: 0xFF9933FF,
  ),
  Fruit(
    title: "Bananas",
    subtitle: "Chinese Cavendish / Williams",
    description:
        "El plátano es una fruta tropical procedente de la planta herbácea que recibe el mismo nombre o banano, perteneciente a la familia de las musáceas. ",
    image: "assets/images/banana.png",
    color: 0xFFFFF036,
  ),
  Fruit(
    title: "Sandía",
    subtitle: "Sugar Baby / Crimson Sweet",
    description:
        "La sandía es muy apreciada por ser refrescante y rica en agua y sales. En concreto, es la fruta que mayor cantidad de agua contiene (95% de su peso), por lo que aporta muy poca energía y, en general, pocos nutrientes.",
    image: "assets/images/watermelon.png",
    color: 0xFF36FF3C,
  ),
  Fruit(
    title: "Melón",
    subtitle: "Cantalupo / Galia / Charentais",
    description:
        "El melón es una fruta diurética y nutritiva. Destaca su contenido en vitamina C, ya que 100 gramos de melón nos proporcionan más de la mitad de la vitamina C .",
    image: "assets/images/melon.png",
    color: 0xFFFC465C,
  ),
  Fruit(
    title: "Mango",
    subtitle: "Ataúlfo / Manila / Kent",
    description:
        "Es una fruta que se obtiene del árbol del mismo nombre. Tiene forma ovalada, con la piel no comestible y color variable de amarillo pálido a rojo intenso. La pulpa es pegajosa y su coloración también varía, desde amarillo a anaranjado.",
    image: "assets/images/mango.png",
    color: 0xFFFE4B02,
  ),
];
