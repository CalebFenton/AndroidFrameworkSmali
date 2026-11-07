.class public Lorg/apache/xml/serializer/utils/SerializerMessages_pt_BR;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_pt_BR.java"


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

    const-string v1, "A chave de mensagem \'\'{0}\'\' n\u00e3o est\u00e1 na classe de mensagem \'\'{1}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "BAD_MSGFORMAT"

    const-string v1, "O formato da mensagem \'\'{0}\'\' na classe de mensagem \'\'{1}\'\' falhou."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const-string v1, "A classe de serializador \'\'{0}\'\' n\u00e3o implementa org.xml.sax.ContentHandler."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "ER_RESOURCE_COULD_NOT_FIND"

    const-string v1, "O recurso [ {0} ] n\u00e3o p\u00f4de ser encontrado.\n{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const-string v1, "O recurso [ {0} ] n\u00e3o p\u00f4de carregar: {1} \n {2} \t {3}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    const-string v1, "Tamanho do buffer <=0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v1, "Detectado substituto UTF-16 inv\u00e1lido: {0} ?"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "ER_OIERROR"

    const-string v1, "Erro de E/S"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const-string v1, "Imposs\u00edvel incluir atributo {0} depois de n\u00f3s filhos ou antes da gera\u00e7\u00e3o de um elemento. O atributo ser\u00e1 ignorado."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "ER_NAMESPACE_PREFIX"

    const-string v1, "O espa\u00e7o de nomes do prefixo \'\'{0}\'\' n\u00e3o foi declarado. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "ER_STRAY_ATTRIBUTE"

    const-string v1, "Atributo \'\'{0}\'\' fora do elemento. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "ER_STRAY_NAMESPACE"

    const-string v1, "Declara\u00e7\u00e3o de espa\u00e7o de nomes \'\'{0}\'\'=\'\'{1}\'\' fora do elemento. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    const-string v1, "N\u00e3o foi poss\u00edvel carregar \'\'{0}\'\' (verifique CLASSPATH) agora , utilizando somente os padr\u00f5es"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "ER_ILLEGAL_CHARACTER"

    const-string v1, "Tentativa de processar o caractere de um valor integral {0} que n\u00e3o \u00e9 representado na codifica\u00e7\u00e3o de sa\u00edda especificada de {1}."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const-string v1, "N\u00e3o foi poss\u00edvel carregar o arquivo de propriedade \'\'{0}\'\' para o m\u00e9todo de sa\u00edda \'\'{1}\'\' (verifique CLASSPATH)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "N\u00famero de porta inv\u00e1lido"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "A porta n\u00e3o pode ser definida quando o host \u00e9 nulo"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "O host n\u00e3o \u00e9 um endere\u00e7o formado corretamente"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "O esquema n\u00e3o est\u00e1 em conformidade."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "Imposs\u00edvel definir esquema a partir da cadeia nula"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "O caminho cont\u00e9m seq\u00fc\u00eancia de escape inv\u00e1lida"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "O caminho cont\u00e9m caractere inv\u00e1lido: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "O fragmento cont\u00e9m caractere inv\u00e1lido"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "O fragmento n\u00e3o pode ser definido quando o caminho \u00e9 nulo"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "O fragmento s\u00f3 pode ser definido para um URI gen\u00e9rico"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "Nenhum esquema encontrado no URI"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "Imposs\u00edvel inicializar URI com par\u00e2metros vazios"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "O fragmento n\u00e3o pode ser especificado no caminho e fragmento"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "A cadeia de consulta n\u00e3o pode ser especificada na cadeia de consulta e caminho"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "Port n\u00e3o pode ser especificado se host n\u00e3o for especificado"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "Userinfo n\u00e3o pode ser especificado se host n\u00e3o for especificado"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "ER_XML_VERSION_NOT_SUPPORTED"

    const-string v1, "Aviso:  A vers\u00e3o do documento de sa\u00edda precisa ser \'\'{0}\'\'.  Essa vers\u00e3o do XML n\u00e3o \u00e9 suportada. A vers\u00e3o do documento de sa\u00edda ser\u00e1 \'\'1.0\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "O esquema \u00e9 obrigat\u00f3rio!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "ER_FACTORY_PROPERTY_MISSING"

    const-string v1, "O objeto Properties transmitido para SerializerFactory n\u00e3o tem uma propriedade \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "ER_ENCODING_NOT_SUPPORTED"

    const-string v1, "Aviso:  A codifica\u00e7\u00e3o \'\'{0}\'\' n\u00e3o \u00e9 suportada pelo Java Runtime."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "FEATURE_NOT_FOUND"

    const-string v1, "O par\u00e2metro \'\'{0}\'\' n\u00e3o \u00e9 reconhecido."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "O par\u00e2metro \'\'{0}\'\' \u00e9 reconhecido, mas o valor pedido n\u00e3o pode ser definido. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "DOMSTRING_SIZE_ERR"

    const-string v1, "A cadeia resultante \u00e9 muito longa para caber em uma DOMString: \'\'{0}\'\'. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "TYPE_MISMATCH_ERR"

    const-string v1, "O tipo de valor para este nome de par\u00e2metro \u00e9 incompat\u00edvel com o tipo de valor esperado. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "no-output-specified"

    const-string v1, "O destino de sa\u00edda para os dados a serem gravados era nulo. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "unsupported-encoding"

    const-string v1, "Uma codifica\u00e7\u00e3o n\u00e3o suportada foi encontrada. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "ER_UNABLE_TO_SERIALIZE_NODE"

    const-string v1, "O n\u00f3 n\u00e3o p\u00f4de ser serializado."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "cdata-sections-splitted"

    const-string v1, "A Se\u00e7\u00e3o CDATA cont\u00e9m um ou mais marcadores de t\u00e9rmino \']]>\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "ER_WARNING_WF_NOT_CHECKED"

    const-string v1, "Uma inst\u00e2ncia do verificador Well-Formedness n\u00e3o p\u00f4de ser criada. O par\u00e2metro well-formed foi definido como true, mas a verifica\u00e7\u00e3o well-formedness n\u00e3o pode ser executada."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "wf-invalid-character"

    const-string v1, "O n\u00f3 \'\'{0}\'\' cont\u00e9m caracteres XML inv\u00e1lidos. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const-string v1, "Um caractere XML inv\u00e1lido (Unicode: 0x{0}) foi encontrado no coment\u00e1rio. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_PI"

    const-string v1, "Um caractere XML inv\u00e1lido (Unicode: 0x{0}) foi encontrado no processo instructiondata."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    const-string v1, "Um caractere XML inv\u00e1lido (Unicode: 0x{0}) foi encontrado nos conte\u00fados do CDATASection. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    const-string v1, "Um caractere XML inv\u00e1lido (Unicode: 0x{0}) foi encontrado no conte\u00fado dos dados de caractere dos n\u00f3s. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "wf-invalid-character-in-node-name"

    const-string v1, "Um caractere inv\u00e1lido foi encontrado no {0} do n\u00f3 denominado \'\'{1}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "ER_WF_DASH_IN_COMMENT"

    const-string v1, "A cadeia \"--\" n\u00e3o \u00e9 permitida dentro dos coment\u00e1rios. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "ER_WF_LT_IN_ATTVAL"

    const-string v1, "O valor do atributo \"{1}\" associado a um tipo de elemento \"{0}\" n\u00e3o deve conter o caractere \'\'<\'\'. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "ER_WF_REF_TO_UNPARSED_ENT"

    const-string v1, "A refer\u00eancia de entidade n\u00e3o analisada \"&{0};\" n\u00e3o \u00e9 permitida. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "ER_WF_REF_TO_EXTERNAL_ENT"

    const-string v1, "A refer\u00eancia de entidade externa \"&{0};\" n\u00e3o \u00e9 permitida em um valor de atributo. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const-string v1, "O prefixo \"{0}\" n\u00e3o pode ser vinculado ao espa\u00e7o de nomes \"{1}\"."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "ER_NULL_LOCAL_ELEMENT_NAME"

    const-string v1, "O nome local do elemento \"{0}\" \u00e9 nulo."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "ER_NULL_LOCAL_ATTR_NAME"

    const-string v1, "O nome local do atributo \"{0}\" \u00e9 nulo."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "O texto de substitui\u00e7\u00e3o do n\u00f3 de entidade \"{0}\" cont\u00e9m um n\u00f3 de elemento \"{1}\" com um prefixo n\u00e3o vinculado \"{2}\"."

    const-string v1, "unbound-prefix-in-entity-reference"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "O texto de substitui\u00e7\u00e3o do n\u00f3 de entidade \"{0}\" cont\u00e9m um n\u00f3 de atributo \"{1}\" com um prefixo n\u00e3o vinculado \"{2}\"."

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v60

    filled-new-array/range {v2 .. v60}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
