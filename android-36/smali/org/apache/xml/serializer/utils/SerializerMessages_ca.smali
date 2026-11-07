.class public Lorg/apache/xml/serializer/utils/SerializerMessages_ca;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_ca.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getContents()[[Ljava/lang/Object;
    .registers 62

    .line 73
    const-string v0, "BAD_MSGKEY"

    const-string v1, "La clau del missatge \'\'{0}\'\' no est\u00e0 a la classe del missatge \'\'{1}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "BAD_MSGFORMAT"

    const-string v1, "El format del missatge \'\'{0}\'\' a la classe del missatge \'\'{1}\'\' ha fallat."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const-string v1, "La classe de serialitzador \'\'{0}\'\' no implementa org.xml.sax.ContentHandler."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "ER_RESOURCE_COULD_NOT_FIND"

    const-string v1, "No s\'\'ha trobat el recurs [ {0} ].\n {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const-string v1, "No s\'\'ha pogut carregar el recurs [ {0} ]: {1} \n {2} \t {3}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    const-string v1, "Grand\u00e0ria del buffer <=0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v1, "S\'\'ha detectat un suplent UTF-16 no v\u00e0lid: {0} ?"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "ER_OIERROR"

    const-string v1, "Error d\'E/S"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const-string v1, "No es pot afegir l\'\'atribut {0} despr\u00e9s dels nodes subordinats o abans que es produeixi un element. Es passar\u00e0 per alt l\'\'atribut."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "ER_NAMESPACE_PREFIX"

    const-string v1, "No s\'\'ha declarat l\'\'espai de noms pel prefix \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "ER_STRAY_ATTRIBUTE"

    const-string v1, "L\'\'atribut \'\'{0}\'\' es troba fora de l\'\'element."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "ER_STRAY_NAMESPACE"

    const-string v1, "La declaraci\u00f3 de l\'\'espai de noms \'\'{0}\'\'=\'\'{1}\'\' es troba fora de l\'\'element."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    const-string v1, "No s\'\'ha pogut carregar \'\'{0}\'\' (comproveu CLASSPATH), ara s\'\'est\u00e0 fent servir els valors per defecte."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "ER_ILLEGAL_CHARACTER"

    const-string v1, "S\'\'ha intentat un car\u00e0cter de sortida del valor integral {0} que no est\u00e0 representat a una codificaci\u00f3 de sortida especificada de {1}."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const-string v1, "No s\'\'ha pogut carregar el fitxer de propietats \'\'{0}\'\' del m\u00e8tode de sortida \'\'{1}\'\' (comproveu CLASSPATH)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "N\u00famero de port no v\u00e0lid"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "El port no es pot establir quan el sistema principal \u00e9s nul"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "El format de l\'adre\u00e7a del sistema principal no \u00e9s el correcte"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "L\'esquema no t\u00e9 conformitat."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "No es pot establir un esquema des d\'una cadena nul\u00b7la"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "La via d\'acc\u00e9s cont\u00e9 una seq\u00fc\u00e8ncia d\'escapament no v\u00e0lida"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "La via d\'\'acc\u00e9s cont\u00e9 un car\u00e0cter no v\u00e0lid {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "El fragment cont\u00e9 un car\u00e0cter no v\u00e0lid"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "El fragment no es pot establir si la via d\'acc\u00e9s \u00e9s nul\u00b7la"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "El fragment nom\u00e9s es pot establir per a un URI gen\u00e8ric"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "No s\'ha trobat cap esquema a l\'URI"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "No es pot inicialitzar l\'URI amb par\u00e0metres buits"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "No es pot especificar un fragment tant en la via d\'acc\u00e9s com en el fragment"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "No es pot especificar una cadena de consulta en la via d\'acc\u00e9s i la cadena de consulta"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "No es pot especificar el port si no s\'especifica el sistema principal"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "No es pot especificar informaci\u00f3 de l\'usuari si no s\'especifica el sistema principal"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "ER_XML_VERSION_NOT_SUPPORTED"

    const-string v1, "Av\u00eds: la versi\u00f3 del document de sortida s\'\'ha sol\u00b7licitat que sigui \'\'{0}\'\'. Aquesta versi\u00f3 de XML no est\u00e0 suportada. La versi\u00f3 del document de sortida ser\u00e0 \'\'1.0\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "Es necessita l\'esquema"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "ER_FACTORY_PROPERTY_MISSING"

    const-string v1, "L\'\'objecte de propietats passat a SerializerFactory no t\u00e9 cap propietat \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "ER_ENCODING_NOT_SUPPORTED"

    const-string v1, "Av\u00eds: el temps d\'\'execuci\u00f3 de Java no d\u00f3na suport a la codificaci\u00f3 \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "FEATURE_NOT_FOUND"

    const-string v1, "El par\u00e0metre \'\'{0}\'\' no es reconeix."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "El par\u00e0metre \'\'{0}\'\' es reconeix per\u00f2 el valor sol\u00b7licitat no es pot establir."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "DOMSTRING_SIZE_ERR"

    const-string v1, "La cadena resultant \u00e9s massa llarga per cabre en una DOMString: \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "TYPE_MISMATCH_ERR"

    const-string v1, "El tipus de valor per a aquest nom de par\u00e0metre \u00e9s incompatible amb el tipus de valor esperat."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "no-output-specified"

    const-string v1, "La destinaci\u00f3 de sortida per a les dades que s\'ha d\'escriure era nul\u00b7la."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "unsupported-encoding"

    const-string v1, "S\'ha trobat una codificaci\u00f3 no suportada."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "ER_UNABLE_TO_SERIALIZE_NODE"

    const-string v1, "El node no s\'ha pogut serialitzat."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "cdata-sections-splitted"

    const-string v1, "La secci\u00f3 CDATA cont\u00e9 un o m\u00e9s marcadors d\'acabament \']]>\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "ER_WARNING_WF_NOT_CHECKED"

    const-string v1, "No s\'ha pogut crear cap inst\u00e0ncia per comprovar si t\u00e9 un format correcte o no. El par\u00e0metre del tipus ben format es va establir en cert, per\u00f2 la comprovaci\u00f3 de format no s\'ha pogut realitzar."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "wf-invalid-character"

    const-string v1, "El node \'\'{0}\'\' cont\u00e9 car\u00e0cters XML no v\u00e0lids."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const-string v1, "S\'\'ha trobat un car\u00e0cter XML no v\u00e0lid (Unicode: 0x{0}) en el comentari."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_PI"

    const-string v1, "S\'\'ha trobat un car\u00e0cter XML no v\u00e0lid (Unicode: 0x{0}) en les dades d\'\'instrucci\u00f3 de proc\u00e9s."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    const-string v1, "S\'\'ha trobat un car\u00e0cter XML no v\u00e0lid (Unicode: 0x\'\'{0})\'\' en els continguts de la CDATASection."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    const-string v1, "S\'\'ha trobat un car\u00e0cter XML no v\u00e0lid (Unicode: 0x\'\'{0})\'\' en el contingut de dades de car\u00e0cter del node."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "wf-invalid-character-in-node-name"

    const-string v1, "S\'\'han trobat car\u00e0cters XML no v\u00e0lids al node {0} anomenat \'\'{1}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "ER_WF_DASH_IN_COMMENT"

    const-string v1, "La cadena \"--\" no est\u00e0 permesa dins dels comentaris."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "ER_WF_LT_IN_ATTVAL"

    const-string v1, "El valor d\'\'atribut \"{1}\" associat amb un tipus d\'\'element \"{0}\" no pot contenir el car\u00e0cter \'\'<\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "ER_WF_REF_TO_UNPARSED_ENT"

    const-string v1, "La refer\u00e8ncia de l\'\'entitat no analitzada \"&{0};\" no est\u00e0 permesa."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "ER_WF_REF_TO_EXTERNAL_ENT"

    const-string v1, "La refer\u00e8ncia externa de l\'\'entitat \"&{0};\" no est\u00e0 permesa en un valor d\'\'atribut."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const-string v1, "El prefix \"{0}\" no es pot vincular a l\'\'espai de noms \"{1}\"."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "ER_NULL_LOCAL_ELEMENT_NAME"

    const-string v1, "El nom local de l\'\'element \"{0}\" \u00e9s nul."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "ER_NULL_LOCAL_ATTR_NAME"

    const-string v1, "El nom local d\'\'atr \"{0}\" \u00e9s nul."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "El text de recanvi del node de l\'\'entitat \"{0}\" cont\u00e9 un node d\'\'element \"{1}\" amb un prefix de no enlla\u00e7at \"{2}\"."

    const-string v1, "unbound-prefix-in-entity-reference"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "El text de recanvi del node de l\'\'entitat \"{0}\" cont\u00e9 un node d\'\'atribut \"{1}\" amb un prefix de no enlla\u00e7at \"{2}\"."

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v60

    filled-new-array/range {v2 .. v60}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
