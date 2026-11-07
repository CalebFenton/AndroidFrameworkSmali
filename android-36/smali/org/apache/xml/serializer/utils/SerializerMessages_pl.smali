.class public Lorg/apache/xml/serializer/utils/SerializerMessages_pl;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_pl.java"


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

    const-string v1, "Klucz komunikatu \'\'{0}\'\' nie znajduje si\u0119 w klasie komunikat\u00f3w \'\'{1}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "BAD_MSGFORMAT"

    const-string v1, "Nie powiod\u0142o si\u0119 sformatowanie komunikatu \'\'{0}\'\' w klasie komunikat\u00f3w \'\'{1}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const-string v1, "Klasa szereguj\u0105ca \'\'{0}\'\' nie implementuje org.xml.sax.ContentHandler."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "ER_RESOURCE_COULD_NOT_FIND"

    const-string v1, "Nie mo\u017cna znale\u017a\u0107 zasobu [ {0} ].\n {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const-string v1, "Zas\u00f3b [ {0} ] nie m\u00f3g\u0142 za\u0142adowa\u0107: {1} \n {2} \t {3}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    const-string v1, "Wielko\u015b\u0107 buforu <=0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v1, "Wykryto niepoprawny odpowiednik UTF-16: {0} ?"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "ER_OIERROR"

    const-string v1, "B\u0142\u0105d we/wy"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const-string v1, "Nie mo\u017cna doda\u0107 atrybutu {0} po bezpo\u015brednich w\u0119z\u0142ach potomnych ani przed wyprodukowaniem elementu.  Atrybut zostanie zignorowany."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "ER_NAMESPACE_PREFIX"

    const-string v1, "Nie zadeklarowano przestrzeni nazw dla przedrostka \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "ER_STRAY_ATTRIBUTE"

    const-string v1, "Atrybut \'\'{0}\'\' znajduje si\u0119 poza elementem."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "ER_STRAY_NAMESPACE"

    const-string v1, "Deklaracja przestrzeni nazw \'\'{0}\'\'=\'\'{1}\'\' znajduje si\u0119 poza elementem."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    const-string v1, "Nie mo\u017cna za\u0142adowa\u0107 \'\'{0}\'\' (sprawd\u017a CLASSPATH) - u\u017cywane s\u0105 teraz warto\u015bci domy\u015blne"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "ER_ILLEGAL_CHARACTER"

    const-string v1, "Pr\u00f3ba wyprowadzenia znaku warto\u015bci ca\u0142kowitej {0}, kt\u00f3ry nie jest reprezentowany w podanym kodowaniu wyj\u015bciowym {1}."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const-string v1, "Nie mo\u017cna za\u0142adowa\u0107 pliku w\u0142a\u015bciwo\u015bci \'\'{0}\'\' dla metody wyj\u015bciowej \'\'{1}\'\' (sprawd\u017a CLASSPATH)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "Niepoprawny numer portu"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "Nie mo\u017cna ustawi\u0107 portu, kiedy host jest pusty"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "Host nie jest poprawnie skonstruowanym adresem"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "Schemat nie jest zgodny."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "Nie mo\u017cna ustawi\u0107 schematu z pustego ci\u0105gu znak\u00f3w"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "\u015acie\u017cka zawiera nieznan\u0105 sekwencj\u0119 o zmienionym znaczeniu"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "\u015acie\u017cka zawiera niepoprawny znak {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "Fragment zawiera niepoprawny znak"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "Nie mo\u017cna ustawi\u0107 fragmentu, kiedy \u015bcie\u017cka jest pusta"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "Fragment mo\u017cna ustawi\u0107 tylko dla og\u00f3lnego URI"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "Nie znaleziono schematu w URI"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "Nie mo\u017cna zainicjowa\u0107 URI z pustymi parametrami"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "Nie mo\u017cna poda\u0107 fragmentu jednocze\u015bnie w \u015bcie\u017cce i fragmencie"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "Tekstu zapytania nie mo\u017cna poda\u0107 w tek\u015bcie \u015bcie\u017cki i zapytania"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "Nie mo\u017cna poda\u0107 portu, je\u015bli nie podano hosta"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "Nie mo\u017cna poda\u0107 informacji o u\u017cytkowniku, je\u015bli nie podano hosta"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "ER_XML_VERSION_NOT_SUPPORTED"

    const-string v1, "Ostrze\u017cenie:  Wymagan\u0105 wersj\u0105 dokumentu wyj\u015bciowego jest \'\'{0}\'\'.  Ta wersja XML nie jest obs\u0142ugiwana.  Wersj\u0105 dokumentu wyj\u015bciowego b\u0119dzie \'\'1.0\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "Schemat jest wymagany!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "ER_FACTORY_PROPERTY_MISSING"

    const-string v1, "Obiekt klasy Properties przekazany do klasy SerializerFactory nie ma w\u0142a\u015bciwo\u015bci \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "ER_ENCODING_NOT_SUPPORTED"

    const-string v1, "Ostrze\u017cenie:  dekodowany \'\'{0}\'\' nie jest obs\u0142ugiwany przez \u015brodowisko wykonawcze Java."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "FEATURE_NOT_FOUND"

    const-string v1, "Parametr \'\'{0}\'\' nie zosta\u0142 rozpoznany."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "Parametr \'\'{0}\'\' zosta\u0142 rozpoznany, ale nie mo\u017cna ustawi\u0107 \u017c\u0105danej warto\u015bci."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "DOMSTRING_SIZE_ERR"

    const-string v1, "Wynikowy \u0142a\u0144cuch jest zbyt d\u0142ugi, aby si\u0119 zmie\u015bci\u0107 w obiekcie DOMString: \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "TYPE_MISMATCH_ERR"

    const-string v1, "Typ warto\u015bci parametru o tej nazwie jest niezgodny z oczekiwanym typem warto\u015bci. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "no-output-specified"

    const-string v1, "Docelowe miejsce zapisu danych wyj\u015bciowych by\u0142o puste (null)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "unsupported-encoding"

    const-string v1, "Napotkano nieobs\u0142ugiwane kodowanie."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "ER_UNABLE_TO_SERIALIZE_NODE"

    const-string v1, "Nie mo\u017cna przekszta\u0142ci\u0107 w\u0119z\u0142a do postaci szeregowej."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "cdata-sections-splitted"

    const-string v1, "Sekcja CDATA zawiera jeden lub kilka znacznik\u00f3w zako\u0144czenia \']]>\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "ER_WARNING_WF_NOT_CHECKED"

    const-string v1, "Nie mo\u017cna utworzy\u0107 instancji obiektu sprawdzaj\u0105cego Well-Formedness.  Parametr well-formed ustawiono na warto\u015b\u0107 true, ale nie mo\u017cna by\u0142o dokona\u0107 sprawdzenia poprawno\u015bci konstrukcji."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "wf-invalid-character"

    const-string v1, "W\u0119ze\u0142 \'\'{0}\'\' zawiera niepoprawne znaki XML."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const-string v1, "W komentarzu znaleziono niepoprawny znak XML (Unicode: 0x{0})."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_PI"

    const-string v1, "W danych instrukcji przetwarzania znaleziono niepoprawny znak XML (Unicode: 0x{0})."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    const-string v1, "W sekcji CDATA znaleziono niepoprawny znak XML (Unicode: 0x{0})."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    const-string v1, "W tre\u015bci danych znakowych w\u0119z\u0142a znaleziono niepoprawny znak XML (Unicode: 0x{0})."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "wf-invalid-character-in-node-name"

    const-string v1, "W {0} o nazwie \'\'{1}\'\' znaleziono niepoprawne znaki XML."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "ER_WF_DASH_IN_COMMENT"

    const-string v1, "Ci\u0105g znak\u00f3w \"--\" jest niedozwolony w komentarzu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "ER_WF_LT_IN_ATTVAL"

    const-string v1, "Warto\u015b\u0107 atrybutu \"{1}\" zwi\u0105zanego z typem elementu \"{0}\" nie mo\u017ce zawiera\u0107 znaku \'\'<\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "ER_WF_REF_TO_UNPARSED_ENT"

    const-string v1, "Odwo\u0142anie do encji nieprzetwarzanej \"&{0};\" jest niedozwolone."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "ER_WF_REF_TO_EXTERNAL_ENT"

    const-string v1, "Odwo\u0142anie do zewn\u0119trznej encji \"&{0};\" jest niedozwolone w warto\u015bci atrybutu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const-string v1, "Nie mo\u017cna zwi\u0105za\u0107 przedrostka \"{0}\" z przestrzeni\u0105 nazw \"{1}\"."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "ER_NULL_LOCAL_ELEMENT_NAME"

    const-string v1, "Nazwa lokalna elementu \"{0}\" jest pusta (null)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "ER_NULL_LOCAL_ATTR_NAME"

    const-string v1, "Nazwa lokalna atrybutu \"{0}\" jest pusta (null)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "Tekst zast\u0119puj\u0105cy w\u0119z\u0142a encji \"{0}\" zawiera w\u0119ze\u0142 elementu \"{1}\" o niezwi\u0105zanym przedrostku \"{2}\"."

    const-string v1, "unbound-prefix-in-entity-reference"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "Tekst zast\u0119puj\u0105cy w\u0119z\u0142a encji \"{0}\" zawiera w\u0119ze\u0142 atrybutu \"{1}\" o niezwi\u0105zanym przedrostku \"{2}\"."

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v60

    filled-new-array/range {v2 .. v60}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
