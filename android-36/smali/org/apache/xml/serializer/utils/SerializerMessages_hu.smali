.class public Lorg/apache/xml/serializer/utils/SerializerMessages_hu;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_hu.java"


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

    const-string v1, "A(z) \'\'{0}\'\' \u00fczenetkulcs nem tal\u00e1lhat\u00f3 a(z) \'\'{1}\'\' \u00fczenetoszt\u00e1lyban."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "BAD_MSGFORMAT"

    const-string v1, "A(z) \'\'{1}\'\' \u00fczenetoszt\u00e1ly \'\'{0}\'\' \u00fczenet\u00e9nek form\u00e1tuma hib\u00e1s."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const-string v1, "A(z) \'\'{0}\'\' p\u00e9ld\u00e1nyos\u00edt\u00f3 oszt\u00e1ly nem val\u00f3s\u00edtja meg az org.xml.sax.ContentHandler f\u00fcggv\u00e9nyt."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "ER_RESOURCE_COULD_NOT_FIND"

    const-string v1, "A(z) [ {0} ] er\u0151forr\u00e1s nem tal\u00e1lhat\u00f3.\n {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const-string v1, "A(z) [ {0} ] er\u0151forr\u00e1st nem lehet bet\u00f6lteni: {1} \n {2} \t {3}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    const-string v1, "Pufferm\u00e9ret <= 0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v1, "\u00c9rv\u00e9nytelen UTF-16 helyettes\u00edt\u00e9s: {0} ?"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "ER_OIERROR"

    const-string v1, "IO hiba"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const-string v1, "Nem lehet {0} attrib\u00fatumot hozz\u00e1adni ut\u00f3d csom\u00f3pontok ut\u00e1n vagy egy elem el\u0151\u00e1ll\u00edt\u00e1sa el\u0151tt.  Az attrib\u00fatum figyelmen k\u00edv\u00fcl marad."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "ER_NAMESPACE_PREFIX"

    const-string v1, "A(z) \'\'{0}\'\' el\u0151tag n\u00e9vtere nincs deklar\u00e1lva."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "ER_STRAY_ATTRIBUTE"

    const-string v1, "A(z) \'\'{0}\'\' attrib\u00fatum k\u00edv\u00fcl esik az elemen."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "ER_STRAY_NAMESPACE"

    const-string v1, "A(z) \'\'{0}\'\'=\'\'{1}\'\' n\u00e9vt\u00e9rdeklar\u00e1ci\u00f3 k\u00edv\u00fcl esik az elemen."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    const-string v1, "Nem lehet bet\u00f6lteni \'\'{0}\'\' er\u0151forr\u00e1st (ellen\u0151rizze a CLASSPATH be\u00e1ll\u00edt\u00e1st), a rendszer az alap\u00e9rtelmez\u00e9seket haszn\u00e1lja."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "ER_ILLEGAL_CHARACTER"

    const-string v1, "K\u00eds\u00e9rletet tett {0} \u00e9rt\u00e9k\u00e9nek karakteres ki\u00edr\u00e1s\u00e1ra, de nem jelen\u00edthet\u0151 meg a megadott {1} kimeneti k\u00f3dol\u00e1ssal."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const-string v1, "Nem lehet bet\u00f6lteni a(z) \'\'{0}\'\' tulajdons\u00e1gf\u00e1jlt a(z) \'\'{1}\'\' met\u00f3dushoz (ellen\u0151rizze a CLASSPATH be\u00e1ll\u00edt\u00e1st)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "\u00c9rv\u00e9nytelen portsz\u00e1m"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "A portot nem \u00e1ll\u00edthatja be, ha a hoszt null"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "A hoszt nem j\u00f3l form\u00e1zott c\u00edm"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "A s\u00e9ma nem megfelel\u0151."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "Nem lehet be\u00e1ll\u00edtani a s\u00e9m\u00e1t null karaktersorozatb\u00f3l"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "Az el\u00e9r\u00e9si \u00fat \u00e9rv\u00e9nytelen vez\u00e9rl\u0151 jelsorozatot tartalmaz"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "Az el\u00e9r\u00e9si \u00fat \u00e9rv\u00e9nytelen karaktert tartalmaz: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "A t\u00f6red\u00e9k \u00e9rv\u00e9nytelen karaktert tartalmaz"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "A t\u00f6red\u00e9ket nem \u00e1ll\u00edthatja be, ha az el\u00e9r\u00e9si \u00fat null"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "Csak \u00e1ltal\u00e1nos URI-hoz \u00e1ll\u00edthat be t\u00f6red\u00e9ket"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "Nem tal\u00e1lhat\u00f3 s\u00e9ma az URI-ban"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "Az URI nem inicializ\u00e1lhat\u00f3 \u00fcres param\u00e9terekkel"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "Nem adhat meg t\u00f6red\u00e9ket az el\u00e9r\u00e9si \u00fatban \u00e9s a t\u00f6red\u00e9kben is"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "Nem adhat meg lek\u00e9rdez\u00e9si karaktersorozatot az el\u00e9r\u00e9si \u00fatban \u00e9s a lek\u00e9rdez\u00e9si karaktersorozatban"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "Nem adhatja meg a portot, ha nincs megadva hoszt"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "Nem adhatja meg a felhaszn\u00e1l\u00f3i inform\u00e1ci\u00f3kat, ha nincs megadva hoszt"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "ER_XML_VERSION_NOT_SUPPORTED"

    const-string v1, "Figyelmeztet\u00e9s: A kimeneti dokumentum k\u00e9rt verzi\u00f3ja \'\'{0}\'\'.  Az XML ezen verzi\u00f3ja nem t\u00e1mogatott.  A kimeneti dokumentum verzi\u00f3ja \'\'1.0\'\' lesz."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "S\u00e9m\u00e1ra van sz\u00fcks\u00e9g!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "ER_FACTORY_PROPERTY_MISSING"

    const-string v1, "A SerializerFactory oszt\u00e1lynak \u00e1tadott Properties objektumnak nincs \'\'{0}\'\' tulajdons\u00e1ga."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "ER_ENCODING_NOT_SUPPORTED"

    const-string v1, "Figyelmeztet\u00e9s: A(z) \'\'{0}\'\' k\u00f3dol\u00e1st nem t\u00e1mogatja a Java fut\u00e1si k\u00f6rnyezet."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "FEATURE_NOT_FOUND"

    const-string v1, "A(z) \'\'{0}\'\' param\u00e9ter nem ismerhet\u0151 fel."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "A(z) \'\'{0}\'\' param\u00e9ter ismert, de a k\u00e9rt \u00e9rt\u00e9k nem \u00e1ll\u00edthat\u00f3 be."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "DOMSTRING_SIZE_ERR"

    const-string v1, "A l\u00e9trej\u00f6v\u0151 karaktersorozat t\u00fal hossz\u00fa, nem f\u00e9r el egy DOMString-ben: \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "TYPE_MISMATCH_ERR"

    const-string v1, "A param\u00e9tern\u00e9v \u00e9rt\u00e9k\u00e9nek t\u00edpusa nem kompatibilis a v\u00e1rt t\u00edpussal."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "no-output-specified"

    const-string v1, "Az adatki\u00edr\u00e1s c\u00e9ljak\u00e9nt megadott \u00e9rt\u00e9k \u00fcres volt."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "unsupported-encoding"

    const-string v1, "Nem t\u00e1mogatott k\u00f3dol\u00e1s."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "ER_UNABLE_TO_SERIALIZE_NODE"

    const-string v1, "A csom\u00f3pont nem p\u00e9ld\u00e1nyos\u00edthat\u00f3."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "cdata-sections-splitted"

    const-string v1, "A CDATA szakasz legal\u00e1bb egy \']]>\' lez\u00e1r\u00f3 jelz\u0151t tartalmaz."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "ER_WARNING_WF_NOT_CHECKED"

    const-string v1, "A szab\u00e1lyos form\u00e1z\u00e1st ellen\u0151rz\u0151 p\u00e9ld\u00e1nyt nem siker\u00fclt l\u00e9trehozni.  A well-formed param\u00e9ter \u00e9rt\u00e9ke true, de a szab\u00e1lyos form\u00e1z\u00e1st nem lehet ellen\u0151rizni."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "wf-invalid-character"

    const-string v1, "A(z) \'\'{0}\'\' csom\u00f3pont \u00e9rv\u00e9nytelen XML karaktereket tartalmaz."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const-string v1, "\u00c9rv\u00e9nytelen XML karakter (Unicode: 0x{0}) szerepelt a megjegyz\u00e9sben."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_PI"

    const-string v1, "\u00c9rv\u00e9nytelen XML karakter (Unicode: 0x{0}) szerepelt a feldolgoz\u00e1si utas\u00edt\u00e1sadatokban."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    const-string v1, "\u00c9rv\u00e9nytelen XML karakter (Unicode: 0x{0}) szerepelt a CDATASection tartalm\u00e1ban."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    const-string v1, "\u00c9rv\u00e9nytelen XML karakter (Unicode: 0x{0}) szerepelt a csom\u00f3pont karakteradat tartalm\u00e1ban."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "wf-invalid-character-in-node-name"

    const-string v1, "\u00c9rv\u00e9nytelen XML karakter tal\u00e1lhat\u00f3 a(z) \'\'{1}\'\' nev\u0171 {0} csom\u00f3pontban."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "ER_WF_DASH_IN_COMMENT"

    const-string v1, "A \"--\" karaktersorozat nem megengedett a megjegyz\u00e9sekben."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "ER_WF_LT_IN_ATTVAL"

    const-string v1, "A(z) \"{0}\" elemt\u00edpussal t\u00e1rs\u00edtott \"{1}\" attrib\u00fatum \u00e9rt\u00e9ke nem tartalmazhat \'\'<\'\' karaktert."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "ER_WF_REF_TO_UNPARSED_ENT"

    const-string v1, "Az \u00e9rtelmez\u00e9s n\u00e9lk\u00fcli \"&{0};\" entit\u00e1shivatkoz\u00e1s nem megengedett."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "ER_WF_REF_TO_EXTERNAL_ENT"

    const-string v1, "A(z) \"&{0};\" k\u00fcls\u0151 entit\u00e1shivatkoz\u00e1s nem megengedett egy attrib\u00fatum\u00e9rt\u00e9kben."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const-string v1, "A(z) \"{0}\" el\u0151tag nem k\u00f6thet\u0151 a(z) \"{1}\" n\u00e9vt\u00e9rhez."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "ER_NULL_LOCAL_ELEMENT_NAME"

    const-string v1, "A(z) \"{0}\" elem helyi neve null."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "ER_NULL_LOCAL_ATTR_NAME"

    const-string v1, "A(z) \"{0}\" attrib\u00fatum helyi neve null."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "A(z) \"{0}\" entit\u00e1scsom\u00f3pont helyettes\u00edt\u0151 sz\u00f6vege a(z) \"{1}\" elemcsom\u00f3pontot tartalmazza, amelynek nem k\u00f6t\u00f6tt el\u0151tagja \"{2}\"."

    const-string v1, "unbound-prefix-in-entity-reference"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "A(z) \"{0}\" entit\u00e1scsom\u00f3pont helyettes\u00edt\u0151 sz\u00f6vege a(z) \"{1}\" attrib\u00fatum-csom\u00f3pontot tartalmazza, amelynek nem k\u00f6t\u00f6tt el\u0151tagja \"{2}\"."

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v60

    filled-new-array/range {v2 .. v60}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
