.class public Lorg/apache/xml/serializer/utils/SerializerMessages_es;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_es.java"


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

    const-string v1, "La clave de mensaje \'\'{0}\'\' no est\u00e1 en la clase de mensaje \'\'{1}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "BAD_MSGFORMAT"

    const-string v1, "Se ha producido un error en el formato de mensaje \'\'{0}\'\' de la clase de mensaje \'\'{1}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const-string v1, "La clase serializer \'\'{0}\'\' no implementa org.xml.sax.ContentHandler."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "ER_RESOURCE_COULD_NOT_FIND"

    const-string v1, "No se ha podido encontrar el recurso [ {0} ].\n {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const-string v1, "No se ha podido cargar el recurso [ {0} ]: {1} \n {2} \t {3}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    const-string v1, "Tama\u00f1o de almacenamiento intermedio <=0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v1, "\u00bfSe ha detectado un sustituto UTF-16 no v\u00e1lido: {0}?"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "ER_OIERROR"

    const-string v1, "Error de ES"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const-string v1, "No se puede a\u00f1adir el atributo {0} despu\u00e9s de nodos hijo o antes de que se produzca un elemento.  Se ignorar\u00e1 el atributo."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "ER_NAMESPACE_PREFIX"

    const-string v1, "No se ha declarado el espacio de nombres para el prefijo \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "ER_STRAY_ATTRIBUTE"

    const-string v1, "Atributo \'\'{0}\'\' fuera del elemento."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "ER_STRAY_NAMESPACE"

    const-string v1, "Declaraci\u00f3n del espacio de nombres \'\'{0}\'\'=\'\'{1}\'\' fuera del elemento."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    const-string v1, "No se ha podido cargar \'\'{0}\'\' (compruebe la CLASSPATH), ahora s\u00f3lo se est\u00e1n utilizando los valores predeterminados"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "ER_ILLEGAL_CHARACTER"

    const-string v1, "Se ha intentado dar salida a un car\u00e1cter del valor integral {0} que no est\u00e1 representado en la codificaci\u00f3n de salida especificada de {1}."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const-string v1, "No se ha podido cargar el archivo de propiedades \'\'{0}\'\' para el m\u00e9todo de salida \'\'{1}\'\' (compruebe la CLASSPATH)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "N\u00famero de puerto no v\u00e1lido"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "No se puede establecer el puerto si el sistema principal es nulo"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "El sistema principal no es una direcci\u00f3n bien formada"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "El esquema no es compatible."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "No se puede establecer un esquema de una serie nula"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "La v\u00eda de acceso contiene una secuencia de escape no v\u00e1lida"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "La v\u00eda de acceso contiene un car\u00e1cter no v\u00e1lido: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "El fragmento contiene un car\u00e1cter no v\u00e1lido"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "No se puede establecer el fragmento si la v\u00eda de acceso es nula"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "S\u00f3lo se puede establecer el fragmento para un URI gen\u00e9rico"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "No se ha encontrado un esquema en el URI"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "No se puede inicializar el URI con par\u00e1metros vac\u00edos"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "No se puede especificar el fragmento en la v\u00eda de acceso y en el fragmento"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "No se puede especificar la serie de consulta en la v\u00eda de acceso y en la serie de consulta"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "No se puede especificar el puerto si no se ha especificado el sistema principal"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "No se puede especificar la informaci\u00f3n de usuario si no se ha especificado el sistema principal"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "ER_XML_VERSION_NOT_SUPPORTED"

    const-string v1, "Aviso: la versi\u00f3n del documento de salida tiene que ser \'\'{0}\'\'.  No se admite esta versi\u00f3n de XML.  La versi\u00f3n del documento de salida ser\u00e1 \'\'1.0\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "\u00a1Se necesita un esquema!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "ER_FACTORY_PROPERTY_MISSING"

    const-string v1, "El objeto Properties pasado a SerializerFactory no tiene una propiedad \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "ER_ENCODING_NOT_SUPPORTED"

    const-string v1, "Aviso: La codificaci\u00f3n \'\'{0}\'\' no est\u00e1 soportada por Java Runtime."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "FEATURE_NOT_FOUND"

    const-string v1, "El par\u00e1metro \'\'{0}\'\' no se reconoce."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "Se reconoce el par\u00e1metro \'\'{0}\'\' pero no puede establecerse el valor solicitado."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "DOMSTRING_SIZE_ERR"

    const-string v1, "La serie producida es demasiado larga para ajustarse a DOMString: \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "TYPE_MISMATCH_ERR"

    const-string v1, "El tipo de valor para este nombre de par\u00e1metro es incompatible con el tipo de valor esperado."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "no-output-specified"

    const-string v1, "El destino de salida de escritura de los datos es nulo."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "unsupported-encoding"

    const-string v1, "Se ha encontrado una codificaci\u00f3n no soportada."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "ER_UNABLE_TO_SERIALIZE_NODE"

    const-string v1, "No se ha podido serializar el nodo."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "cdata-sections-splitted"

    const-string v1, "La secci\u00f3n CDATA contiene uno o m\u00e1s marcadores \']]>\' de terminaci\u00f3n."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "ER_WARNING_WF_NOT_CHECKED"

    const-string v1, "No se ha podido crear una instancia del comprobador de gram\u00e1tica correcta.  El par\u00e1metro well-formed se ha establecido en true pero no se puede realizar la comprobaci\u00f3n de gram\u00e1tica correcta."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "wf-invalid-character"

    const-string v1, "El nodo \'\'{0}\'\' contiene caracteres XML no v\u00e1lidos."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const-string v1, "Se ha encontrado un car\u00e1cter XML no v\u00e1lido (Unicode: 0x{0}) en el comentario."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_PI"

    const-string v1, "Se ha encontrado un car\u00e1cter XML no v\u00e1lido (Unicode: 0x{0}) en los datos de la instrucci\u00f3n de proceso."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    const-string v1, "Se ha encontrado un car\u00e1cter XML no v\u00e1lido (Unicode: 0x{0}) en el contenido de CDATASection."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    const-string v1, "Se ha encontrado un car\u00e1cter XML no v\u00e1lido (Unicode: 0x{0}) en el contenido de datos de caracteres del nodo."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "wf-invalid-character-in-node-name"

    const-string v1, "Se ha encontrado un car\u00e1cter o caracteres XML no v\u00e1lidos en el nodo {0} denominado \'\'{1}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "ER_WF_DASH_IN_COMMENT"

    const-string v1, "No se permite la serie \"--\" dentro de los comentarios."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "ER_WF_LT_IN_ATTVAL"

    const-string v1, "El valor del atributo \"{1}\" asociado a un tipo de elemento \"{0}\" no debe contener el car\u00e1cter \'\'\'\'<\'\'\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "ER_WF_REF_TO_UNPARSED_ENT"

    const-string v1, "No se permite la referencia de entidad no analizada \"&{0};\"."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "ER_WF_REF_TO_EXTERNAL_ENT"

    const-string v1, "La referencia de entidad externa \"&{0};\" no est\u00e1 permitida en un valor de atributo."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const-string v1, "No se puede encontrar el prefijo \"{0}\" en el espacio de nombres \"{1}\"."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "ER_NULL_LOCAL_ELEMENT_NAME"

    const-string v1, "El nombre local del elemento \"{0}\" es null."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "ER_NULL_LOCAL_ATTR_NAME"

    const-string v1, "El nombre local del atributo \"{0}\" es null."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "El texto de sustituci\u00f3n del nodo de entidad \"{0}\" contiene un nodo de elemento \"{1}\" con un prefijo no enlazado \"{2}\"."

    const-string v1, "unbound-prefix-in-entity-reference"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "El texto de sustituci\u00f3n del nodo de entidad \"{0}\" contiene un nodo de atributo \"{1}\" con un prefijo no enlazado \"{2}\"."

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v60

    filled-new-array/range {v2 .. v60}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
