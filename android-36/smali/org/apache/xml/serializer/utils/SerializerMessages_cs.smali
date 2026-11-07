.class public Lorg/apache/xml/serializer/utils/SerializerMessages_cs;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_cs.java"


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

    const-string v1, "Kl\u00ed\u010d zpr\u00e1vy \'\'{0}\'\' nen\u00ed obsa\u017een ve t\u0159\u00edd\u011b zpr\u00e1v \'\'{1}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "BAD_MSGFORMAT"

    const-string v1, "Form\u00e1t zpr\u00e1vy \'\'{0}\'\' ve t\u0159\u00edd\u011b zpr\u00e1v \'\'{1}\'\' selhal. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const-string v1, "T\u0159\u00edda serializace \'\'{0}\'\' neimplementuje obslu\u017en\u00fd program org.xml.sax.ContentHandler."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "ER_RESOURCE_COULD_NOT_FIND"

    const-string v1, "Nelze naj\u00edt zdroj [ {0} ].\n {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const-string v1, "Nelze zav\u00e9st zdroj [ {0} ]: {1} \n {2} \t {3}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    const-string v1, "Velikost vyrovn\u00e1vac\u00ed pam\u011bti <=0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v1, "Byla zji\u0161t\u011bna neplatn\u00e1 n\u00e1hrada UTF-16: {0} ?"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "ER_OIERROR"

    const-string v1, "Chyba vstupu/v\u00fdstupu"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const-string v1, "Nelze p\u0159idat atribut {0} po uzlech potomk\u016f ani p\u0159ed t\u00edm, ne\u017e je vytvo\u0159en prvek. Atribut bude ignorov\u00e1n."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "ER_NAMESPACE_PREFIX"

    const-string v1, "Obor n\u00e1zv\u016f pro p\u0159edponu \'\'{0}\'\' nebyl deklarov\u00e1n."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "ER_STRAY_ATTRIBUTE"

    const-string v1, "Atribut \'\'{0}\'\' se nach\u00e1z\u00ed vn\u011b prvku."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "ER_STRAY_NAMESPACE"

    const-string v1, "Deklarace oboru n\u00e1zv\u016f \'\'{0}\'\'=\'\'{1}\'\' se nach\u00e1z\u00ed vn\u011b prvku."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    const-string v1, "Nelze zav\u00e9st prost\u0159edek \'\'{0}\'\' (zkontrolujte prom\u011bnnou CLASSPATH) - budou pou\u017eity pouze v\u00fdchoz\u00ed prost\u0159edky"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "ER_ILLEGAL_CHARACTER"

    const-string v1, "Byl proveden pokus o v\u00fdstup znaku s celo\u010d\u00edselnou hodnotou {0}, kter\u00e1 nen\u00ed reprezentov\u00e1na v ur\u010den\u00e9m v\u00fdstupn\u00edm k\u00f3dov\u00e1n\u00ed {1}."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const-string v1, "Nelze na\u010d\u00edst soubor vlastnost\u00ed \'\'{0}\'\' pro v\u00fdstupn\u00ed metodu \'\'{1}\'\' (zkontrolujte prom\u011bnnou CLASSPATH)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "Neplatn\u00e9 \u010d\u00edslo portu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "M\u00e1-li hostitel hodnotu null, nelze nastavit port."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "Adresa hostitele m\u00e1 nespr\u00e1vn\u00fd form\u00e1t."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "Sch\u00e9ma nevyhovuje."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "Nelze nastavit sch\u00e9ma \u0159et\u011bzce s hodnotou null."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "Cesta obsahuje neplatnou escape sekvenci"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "Cesta obsahuje neplatn\u00fd znak: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "Fragment obsahuje neplatn\u00fd znak."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "M\u00e1-li cesta hodnotu null, nelze nastavit fragment."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "Fragment lze nastavit jen u generick\u00e9ho URI."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "V URI nebylo nalezeno \u017e\u00e1dn\u00e9 sch\u00e9ma"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "URI nelze inicializovat s pr\u00e1zdn\u00fdmi parametry."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "Fragment nelze ur\u010dit z\u00e1rove\u0148 v cest\u011b i ve fragmentu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "V \u0159et\u011bzci cesty a dotazu nelze zadat \u0159et\u011bzec dotazu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "Nen\u00ed-li ur\u010den hostitel, nelze zadat port."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "Nen\u00ed-li ur\u010den hostitel, nelze zadat \u00fadaje o u\u017eivateli."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "ER_XML_VERSION_NOT_SUPPORTED"

    const-string v1, "Varov\u00e1n\u00ed: Je po\u017eadov\u00e1na verze \'\'{0}\'\' v\u00fdstupn\u00edho dokumentu. Tato verze form\u00e1tu XML nen\u00ed podporov\u00e1na. Bude pou\u017eita verze \'\'1.0\'\' v\u00fdstupn\u00edho dokumentu. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "Je vy\u017eadov\u00e1no sch\u00e9ma!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "ER_FACTORY_PROPERTY_MISSING"

    const-string v1, "Objekt vlastnost\u00ed p\u0159edan\u00fd faktorii SerializerFactory neobsahuje vlastnost \'\'{0}\'\'. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "ER_ENCODING_NOT_SUPPORTED"

    const-string v1, "Varov\u00e1n\u00ed: K\u00f3dov\u00e1n\u00ed \'\'{0}\'\' nen\u00ed v b\u011bhov\u00e9m prost\u0159ed\u00ed Java podporov\u00e1no."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "FEATURE_NOT_FOUND"

    const-string v1, "Parametr \'\'{0}\'\' nebyl rozpozn\u00e1n."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "Parametr \'\'{0}\'\' byl rozpozn\u00e1n, ale nelze nastavit po\u017eadovanou hodnotu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "DOMSTRING_SIZE_ERR"

    const-string v1, "V\u00fdsledn\u00fd \u0159et\u011bzec je p\u0159\u00edli\u0161 dlouh\u00fd pro \u0159et\u011bzec DOMString: \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "TYPE_MISMATCH_ERR"

    const-string v1, "Typ hodnoty pro tento n\u00e1zev parametru nen\u00ed kompatibiln\u00ed s o\u010dek\u00e1van\u00fdm typem hodnoty."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "no-output-specified"

    const-string v1, "C\u00edlov\u00e9 um\u00edst\u011bn\u00ed v\u00fdstupu pro data ur\u010den\u00e1 k z\u00e1pisu je rovno hodnot\u011b Null. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "unsupported-encoding"

    const-string v1, "Bylo nalezeno nepodporovan\u00e9 k\u00f3dov\u00e1n\u00ed."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "ER_UNABLE_TO_SERIALIZE_NODE"

    const-string v1, "Nelze prov\u00e9st serializaci uzlu. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "cdata-sections-splitted"

    const-string v1, "Sekce CDATA obsahuje jednu nebo v\u00edce ukon\u010dovac\u00edch zna\u010dek \']]>\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "ER_WARNING_WF_NOT_CHECKED"

    const-string v1, "Nelze vytvo\u0159it instanci modulu pro kontrolu spr\u00e1vn\u00e9ho utvo\u0159en\u00ed. Parametr spr\u00e1vn\u00e9ho utvo\u0159en\u00ed byl nastaven na hodnotu true, nepoda\u0159ilo se v\u0161ak zkontrolovat spr\u00e1vnost utvo\u0159en\u00ed. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "wf-invalid-character"

    const-string v1, "Uzel \'\'{0}\'\' obsahuje neplatn\u00e9 znaky XML. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const-string v1, "V pozn\u00e1mce byl zji\u0161t\u011bn neplatn\u00fd znak XML (Unicode: 0x{0})."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_PI"

    const-string v1, "V datech instrukce zpracov\u00e1n\u00ed byl nalezen neplatn\u00fd znak XML (Unicode: 0x{0})."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    const-string v1, "V odd\u00edlu CDATASection byl nalezen neplatn\u00fd znak XML (Unicode: 0x{0})."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    const-string v1, "V obsahu znakov\u00fdch dat uzlu byl nalezen neplatn\u00fd znak XML (Unicode: 0x{0})."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "wf-invalid-character-in-node-name"

    const-string v1, "V objektu {0} s n\u00e1zvem \'\'{1}\'\' byl nalezen neplatn\u00fd znak XML. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "ER_WF_DASH_IN_COMMENT"

    const-string v1, "V pozn\u00e1mk\u00e1ch nen\u00ed povolen \u0159et\u011bzec \"--\"."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "ER_WF_LT_IN_ATTVAL"

    const-string v1, "Hodnota atributu \"{1}\" souvisej\u00edc\u00edho s typem prvku \"{0}\" nesm\u00ed obsahovat znak \'\'<\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "ER_WF_REF_TO_UNPARSED_ENT"

    const-string v1, "Odkaz na neanalyzovanou entitu \"&{0};\" nen\u00ed povolen."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "ER_WF_REF_TO_EXTERNAL_ENT"

    const-string v1, "Extern\u00ed odkaz na entitu \"&{0};\" nen\u00ed v hodnot\u011b atributu povolen."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const-string v1, "P\u0159edpona \"{0}\" nesm\u00ed b\u00fdt v\u00e1zan\u00e1 k oboru n\u00e1zv\u016f \"{1}\"."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "ER_NULL_LOCAL_ELEMENT_NAME"

    const-string v1, "Lok\u00e1ln\u00ed n\u00e1zev prvku \"{0}\" m\u00e1 hodnotu Null. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "ER_NULL_LOCAL_ATTR_NAME"

    const-string v1, "Lok\u00e1ln\u00ed n\u00e1zev atributu \"{0}\" m\u00e1 hodnotu Null. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "Nov\u00fd text uzlu entity \"{0}\" obsahuje uzel prvku \"{1}\" s nesv\u00e1zanou p\u0159edponou \"{2}\"."

    const-string v1, "unbound-prefix-in-entity-reference"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "Nov\u00fd text uzlu entity \"{0}\" obsahuje uzel atributu \"{1}\" s nesv\u00e1zanou p\u0159edponou \"{2}\". "

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v60

    filled-new-array/range {v2 .. v60}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
