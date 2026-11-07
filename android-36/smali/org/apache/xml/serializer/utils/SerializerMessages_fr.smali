.class public Lorg/apache/xml/serializer/utils/SerializerMessages_fr;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_fr.java"


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

    const-string v1, "La cl\u00e9 du message \'\'{0}\'\' ne se trouve pas dans la classe du message \'\'{1}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "BAD_MSGFORMAT"

    const-string v1, "Le format du message \'\'{0}\'\' de la classe du message \'\'{1}\'\' est incorrect."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const-string v1, "La classe de la m\u00e9thode de s\u00e9rialisation \'\'{0}\'\' n\'\'impl\u00e9mente pas org.xml.sax.ContentHandler."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "ER_RESOURCE_COULD_NOT_FIND"

    const-string v1, "La ressource [ {0} ] est introuvable.\n {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const-string v1, "La ressource [ {0} ] n\'\'a pas pu charger : {1} \n {2} \t {3}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    const-string v1, "Taille du tampon <=0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v1, "Substitut UTF-16 non valide d\u00e9tect\u00e9 : {0} ?"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "ER_OIERROR"

    const-string v1, "Erreur d\'E-S"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const-string v1, "Ajout impossible de l\'\'attribut {0} apr\u00e8s des noeuds enfants ou avant la production d\'\'un \u00e9l\u00e9ment.  L\'\'attribut est ignor\u00e9."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "ER_NAMESPACE_PREFIX"

    const-string v1, "L\'\'espace de noms du pr\u00e9fixe \'\'{0}\'\' n\'\'a pas \u00e9t\u00e9 d\u00e9clar\u00e9."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "ER_STRAY_ATTRIBUTE"

    const-string v1, "L\'\'attribut \'\'{0}\'\' est \u00e0 l\'\'ext\u00e9rieur de l\'\'\u00e9l\u00e9ment."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "ER_STRAY_NAMESPACE"

    const-string v1, "La d\u00e9claration d\'\'espace de noms \'\'{0}\'\'=\'\'{1}\'\' est \u00e0 l\'\'ext\u00e9rieur de l\'\'\u00e9l\u00e9ment."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    const-string v1, "Impossible de charger \'\'{0}\'\' (v\u00e9rifier CLASSPATH), les valeurs par d\u00e9faut sont donc employ\u00e9es"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "ER_ILLEGAL_CHARACTER"

    const-string v1, "Tentative de sortie d\'\'un caract\u00e8re de la valeur enti\u00e8re {0} non repr\u00e9sent\u00e9e dans l\'\'encodage de sortie de {1}."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const-string v1, "Impossible de charger le fichier de propri\u00e9t\u00e9s \'\'{0}\'\' pour la m\u00e9thode de sortie \'\'{1}\'\' (v\u00e9rifier CLASSPATH)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "Num\u00e9ro de port non valide"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "Le port ne peut \u00eatre d\u00e9fini quand l\'h\u00f4te est vide"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "L\'h\u00f4te n\'est pas une adresse bien form\u00e9e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "Le processus n\'est pas conforme."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "Impossible de d\u00e9finir le processus \u00e0 partir de la cha\u00eene vide"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "Le chemin d\'acc\u00e8s contient une s\u00e9quence d\'\u00e9chappement non valide"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "Le chemin contient un caract\u00e8re non valide : {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "Le fragment contient un caract\u00e8re non valide"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "Le fragment ne peut \u00eatre d\u00e9fini quand le chemin d\'acc\u00e8s est vide"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "Le fragment ne peut \u00eatre d\u00e9fini que pour un URI g\u00e9n\u00e9rique"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "Processus introuvable dans l\'URI"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "Impossible d\'initialiser l\'URI avec des param\u00e8tres vides"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "Le fragment ne doit pas \u00eatre indiqu\u00e9 \u00e0 la fois dans le chemin et dans le fragment"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "La cha\u00eene de requ\u00eate ne doit pas figurer dans un chemin et une cha\u00eene de requ\u00eate"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "Le port peut ne pas \u00eatre sp\u00e9cifi\u00e9 si l\'h\u00f4te n\'est pas sp\u00e9cifi\u00e9"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "Userinfo ne peut \u00eatre sp\u00e9cifi\u00e9 si l\'h\u00f4te ne l\'est pas"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "ER_XML_VERSION_NOT_SUPPORTED"

    const-string v1, "Avertissement : La version du document de sortie doit \u00eatre \'\'{0}\'\'.  Cette version XML n\'\'est pas prise en charge.  La version du document de sortie sera \'\'1.0\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "Processus requis !"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "ER_FACTORY_PROPERTY_MISSING"

    const-string v1, "L\'\'objet Properties transmis \u00e0 SerializerFactory ne dispose pas de propri\u00e9t\u00e9 \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "ER_ENCODING_NOT_SUPPORTED"

    const-string v1, "Avertissement : Le codage \'\'{0}\'\' n\'\'est pas pris en charge par l\'\'environnement d\'\'ex\u00e9cution Java."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "FEATURE_NOT_FOUND"

    const-string v1, "Le param\u00e8tre \'\'{0}\'\' n\'\'est pas reconnu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "Le param\u00e8tre \'\'{0}\'\' est reconnu mas la valeur demand\u00e9e ne peut pas \u00eatre d\u00e9finie."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "DOMSTRING_SIZE_ERR"

    const-string v1, "La cha\u00eene obtenue est trop longue pour un DOMString : \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "TYPE_MISMATCH_ERR"

    const-string v1, "Le type de valeur de ce param\u00e8tre est incompatible avec le type de valeur attendu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "no-output-specified"

    const-string v1, "La sortie de destination des donn\u00e9es \u00e0 \u00e9crire \u00e9tait vide."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "unsupported-encoding"

    const-string v1, "Codage non pris en charge."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "ER_UNABLE_TO_SERIALIZE_NODE"

    const-string v1, "Le noeud ne peut pas \u00eatre s\u00e9rialis\u00e9."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "cdata-sections-splitted"

    const-string v1, "La section CDATA contient un ou plusieurs marqueurs de fin \']]>\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "ER_WARNING_WF_NOT_CHECKED"

    const-string v1, "Aucune instance du programme de v\u00e9rification de la formation n\'a pu \u00eatre cr\u00e9\u00e9e.  La valeur true a \u00e9t\u00e9 attribu\u00e9e au param\u00e8tre well-formed mais la v\u00e9rification de la formation n\'a pas pu \u00eatre effectu\u00e9e."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "wf-invalid-character"

    const-string v1, "Le noeud \'\'{0}\'\' contient des caract\u00e8res XML non valides."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const-string v1, "Un caract\u00e8re XML non valide (Unicode : 0x{0}) a \u00e9t\u00e9 trouv\u00e9 dans le commentaire."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_PI"

    const-string v1, "Un caract\u00e8re XML non valide (Unicode : 0x{0}) a \u00e9t\u00e9 trouv\u00e9 dans les donn\u00e9es de l\'\'instruction de traitement."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    const-string v1, "Un caract\u00e8re XML non valide (Unicode: 0x{0}) a \u00e9t\u00e9 trouv\u00e9 dans le contenu de la CDATASection"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    const-string v1, "Un caract\u00e8re XML non valide (Unicode : 0x{0}) a \u00e9t\u00e9 trouv\u00e9 dans le contenu des donn\u00e9es de type caract\u00e8res du noeud."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "wf-invalid-character-in-node-name"

    const-string v1, "Un ou plusieurs caract\u00e8res non valides ont \u00e9t\u00e9 trouv\u00e9s dans le noeud {0} nomm\u00e9 \'\'{1}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "ER_WF_DASH_IN_COMMENT"

    const-string v1, "La cha\u00eene \"--\" est interdite dans des commentaires."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "ER_WF_LT_IN_ATTVAL"

    const-string v1, "La valeur de l\'\'attribut \"{1}\" associ\u00e9 \u00e0 un type d\'\'\u00e9l\u00e9ment \"{0}\" ne doit pas contenir le caract\u00e8re \'\'<\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "ER_WF_REF_TO_UNPARSED_ENT"

    const-string v1, "La r\u00e9f\u00e9rence d\'\'entit\u00e9 non analys\u00e9e \"&{0};\" n\'\'est pas admise."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "ER_WF_REF_TO_EXTERNAL_ENT"

    const-string v1, "La r\u00e9f\u00e9rence d\'\'entit\u00e9 externe \"&{0};\" n\'\'est pas admise dans une valeur d\'\'attribut."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const-string v1, "Le pr\u00e9fixe \"{0}\" ne peut pas \u00eatre li\u00e9 \u00e0 l\'\'espace de noms \"{1}\"."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "ER_NULL_LOCAL_ELEMENT_NAME"

    const-string v1, "Le nom local de l\'\'\u00e9l\u00e9ment \"{0}\" a une valeur null."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "ER_NULL_LOCAL_ATTR_NAME"

    const-string v1, "Le nom local de l\'\'attribut \"{0}\" a une valeur null."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "le texte de remplacement du noeud de l\'\'entit\u00e9 \"{0}\" contaient un noeud d\'\'\u00e9l\u00e9ment \"{1}\" avec un pr\u00e9fixe non li\u00e9 \"{2}\"."

    const-string v1, "unbound-prefix-in-entity-reference"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "Le texte de remplacement du noeud de l\'\'entit\u00e9 \"{0}\" contient un noeud d\'\'attribut \"{1}\" avec un pr\u00e9fixe non li\u00e9 \"{2}\"."

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v60

    filled-new-array/range {v2 .. v60}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
