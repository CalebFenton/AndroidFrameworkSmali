.class public Lorg/apache/xml/serializer/utils/SerializerMessages_sk;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_sk.java"


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

    const-string v1, "K\u013e\u00fa\u010d spr\u00e1vy \'\'{0}\'\' sa nenach\u00e1dza v triede spr\u00e1v \'\'{1}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "BAD_MSGFORMAT"

    const-string v1, "Zlyhal form\u00e1t spr\u00e1vy \'\'{0}\'\' v triede spr\u00e1v \'\'{1}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const-string v1, "Trieda serializ\u00e1tora \'\'{0}\'\' neimplementuje org.xml.sax.ContentHandler."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "ER_RESOURCE_COULD_NOT_FIND"

    const-string v1, "Prostriedok [ {0} ] nemohol by\u0165 n\u00e1jden\u00fd.\n {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const-string v1, "Prostriedok [ {0} ] sa nedal na\u010d\u00edta\u0165: {1} \n {2} \t {3}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    const-string v1, "Ve\u013ekos\u0165 vyrovn\u00e1vacej pam\u00e4te <=0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v1, "Bolo zisten\u00e9 neplatn\u00e9 nahradenie UTF-16: {0} ?"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "ER_OIERROR"

    const-string v1, "chyba IO"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const-string v1, "Nie je mo\u017en\u00e9 prida\u0165 atrib\u00fat {0} po uzloch potomka alebo pred vytvoren\u00edm elementu.  Atrib\u00fat bude ignorovan\u00fd."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "ER_NAMESPACE_PREFIX"

    const-string v1, "N\u00e1zvov\u00fd priestor pre predponu \'\'{0}\'\' nebol deklarovan\u00fd."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "ER_STRAY_ATTRIBUTE"

    const-string v1, "Atrib\u00fat \'\'{0}\'\' je mimo prvku."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "ER_STRAY_NAMESPACE"

    const-string v1, "Deklar\u00e1cia n\u00e1zvov\u00e9ho priestoru \'\'{0}\'\'=\'\'{1}\'\' je mimo prvku."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    const-string v1, "Nebolo mo\u017en\u00e9 zavies\u0165 \'\'{0}\'\' (skontrolujte CLASSPATH), teraz sa pou\u017e\u00edvaj\u00fa iba \u0161tandardn\u00e9 nastavenia"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "ER_ILLEGAL_CHARACTER"

    const-string v1, "Pokus o v\u00fdstup znaku integr\u00e1lnej hodnoty {0}, ktor\u00e1 nie je reprezentovan\u00e1 v zadanom v\u00fdstupnom k\u00f3dovan\u00ed {1}."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const-string v1, "Nebolo mo\u017en\u00e9 zavies\u0165 s\u00fabor vlastnost\u00ed \'\'{0}\'\' pre v\u00fdstupn\u00fa met\u00f3du \'\'{1}\'\' (skontrolujte CLASSPATH)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "Neplatn\u00e9 \u010d\u00edslo portu"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "Nem\u00f4\u017ee by\u0165 stanoven\u00fd port, ak je hostite\u013e nulov\u00fd"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "Hostite\u013e nie je spr\u00e1vne form\u00e1tovan\u00e1 adresa"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "Nezhodn\u00e1 sch\u00e9ma."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "Nie je mo\u017en\u00e9 stanovi\u0165 sch\u00e9mu z nulov\u00e9ho re\u0165azca"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "Cesta obsahuje neplatn\u00fa \u00fanikov\u00fa sekvenciu"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "Cesta obsahuje neplatn\u00fd znak: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "Fragment obsahuje neplatn\u00fd znak"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "Ak je cesta nulov\u00e1, nem\u00f4\u017ee by\u0165 stanoven\u00fd fragment"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "Fragment m\u00f4\u017ee by\u0165 stanoven\u00fd len pre v\u0161eobecn\u00e9 URI"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "V URI nebola n\u00e1jden\u00e1 \u017eiadna sch\u00e9ma"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "Nie je mo\u017en\u00e9 inicializova\u0165 URI s pr\u00e1zdnymi parametrami"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "Fragment nem\u00f4\u017ee by\u0165 zadan\u00fd v ceste, ani vo fragmente"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "Re\u0165azec dotazu nem\u00f4\u017ee by\u0165 zadan\u00fd v ceste a re\u0165azci dotazu"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "Ak nebol zadan\u00fd hostite\u013e, mo\u017eno nebol zadan\u00fd port"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "Ak nebol zadan\u00fd hostite\u013e, mo\u017eno nebolo zadan\u00e9 userinfo"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "ER_XML_VERSION_NOT_SUPPORTED"

    const-string v1, "Varovanie:  Verzia v\u00fdstupn\u00e9ho dokumentu mus\u00ed by\u0165 povinne \'\'{0}\'\'.  T\u00e1to verzia XML nie je podporovan\u00e1.  Verzia v\u00fdstupn\u00e9ho dokumentu bude \'\'1.0\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "Je po\u017eadovan\u00e1 sch\u00e9ma!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "ER_FACTORY_PROPERTY_MISSING"

    const-string v1, "Objekt Properties, ktor\u00fd pre\u0161iel do SerializerFactory, nem\u00e1 vlastnos\u0165 \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "ER_ENCODING_NOT_SUPPORTED"

    const-string v1, "Varovanie:  Java runtime nepodporuje k\u00f3dovanie \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "FEATURE_NOT_FOUND"

    const-string v1, "Parameter \'\'{0}\'\' nebol rozpoznan\u00fd."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "Parameter \'\'{0}\'\' bol rozpoznan\u00fd, ale vy\u017eadovan\u00e1 hodnota sa ned\u00e1 nastavi\u0165."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "DOMSTRING_SIZE_ERR"

    const-string v1, "V\u00fdsledn\u00fd re\u0165azec je pr\u00edli\u0161 dlh\u00fd a nezmest\u00ed sa do DOMString: \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "TYPE_MISMATCH_ERR"

    const-string v1, "Typ hodnoty pre tento n\u00e1zov parametra je nekompatibiln\u00fd s o\u010dak\u00e1van\u00fdm typom hodnoty."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "no-output-specified"

    const-string v1, "Cie\u013e v\u00fdstupu pre zap\u00edsanie \u00fadajov bol null."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "unsupported-encoding"

    const-string v1, "Bolo zaznamenan\u00e9 nepodporovan\u00e9 k\u00f3dovanie."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "ER_UNABLE_TO_SERIALIZE_NODE"

    const-string v1, "Uzol nebolo mo\u017en\u00e9 serializova\u0165."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "cdata-sections-splitted"

    const-string v1, "\u010cas\u0165 CDATA obsahuje jeden alebo viacer\u00e9 ozna\u010dova\u010de konca \']]>\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "ER_WARNING_WF_NOT_CHECKED"

    const-string v1, "Nebolo mo\u017en\u00e9 vytvori\u0165 in\u0161tanciu kontrol\u00f3ra Well-Formedness.  Parameter well-formed bol nastaven\u00fd na hodnotu true, ale kontrola well-formedness sa ned\u00e1 vykona\u0165."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "wf-invalid-character"

    const-string v1, "Uzol \'\'{0}\'\' obsahuje neplatn\u00e9 znaky XML."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const-string v1, "V koment\u00e1ri bol n\u00e1jden\u00fd neplatn\u00fd znak XML (Unicode: 0x{0})."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_PI"

    const-string v1, "Pri spracovan\u00ed d\u00e1t in\u0161trukci\u00ed sa na\u0161iel neplatn\u00fd znak XML (Unicode: 0x{0})."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    const-string v1, "V obsahu CDATASection sa na\u0161iel neplatn\u00fd znak XML (Unicode: 0x{0})."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    const-string v1, "V obsahu znakov\u00fdch d\u00e1t uzla sa na\u0161iel neplatn\u00fd znak XML (Unicode: 0x{0})."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "wf-invalid-character-in-node-name"

    const-string v1, "V uzle {0} s n\u00e1zvom \'\'{1}\'\' sa na\u0161iel neplatn\u00fd znak XML."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "ER_WF_DASH_IN_COMMENT"

    const-string v1, "Re\u0165azec \"--\" nie je povolen\u00fd v r\u00e1mci koment\u00e1rov."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "ER_WF_LT_IN_ATTVAL"

    const-string v1, "Hodnota atrib\u00fatu \"{1}\", ktor\u00e1 je priraden\u00e1 k prvku typu \"{0}\", nesmie obsahova\u0165 znak \'\'<\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "ER_WF_REF_TO_UNPARSED_ENT"

    const-string v1, "Neanalyzovan\u00fd odkaz na entitu \"&{0};\" nie je povolen\u00fd."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "ER_WF_REF_TO_EXTERNAL_ENT"

    const-string v1, "Odkaz na extern\u00fa entitu \"&{0};\" nie je povolen\u00fd v hodnote atrib\u00fatu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const-string v1, "Predpona \"{0}\" nem\u00f4\u017ee by\u0165 naviazan\u00e1 na n\u00e1zvov\u00fd priestor \"{1}\"."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "ER_NULL_LOCAL_ELEMENT_NAME"

    const-string v1, "Lok\u00e1lny n\u00e1zov prvku \"{0}\" je null."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "ER_NULL_LOCAL_ATTR_NAME"

    const-string v1, "Lok\u00e1lny n\u00e1zov atrib\u00fatu \"{0}\" je null."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "N\u00e1hradn\u00fd text pre uzol entity \"{0}\" obsahuje uzol prvku \"{1}\" s nenaviazanou predponou \"{2}\"."

    const-string v1, "unbound-prefix-in-entity-reference"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "N\u00e1hradn\u00fd text uzla entity \"{0}\" obsahuje uzol atrib\u00fatu \"{1}\" s nenaviazanou predponou \"{2}\"."

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v60

    filled-new-array/range {v2 .. v60}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
