.class public Lorg/apache/xml/serializer/utils/SerializerMessages_de;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_de.java"


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

    const-string v1, "Der Nachrichtenschl\u00fcssel \'\'{0}\'\' ist nicht in der Nachrichtenklasse \'\'{1}\'\' enthalten."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "BAD_MSGFORMAT"

    const-string v1, "Das Format der Nachricht \'\'{0}\'\' in der Nachrichtenklasse \'\'{1}\'\' ist fehlgeschlagen."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const-string v1, "Die Parallel-Seriell-Umsetzerklasse \'\'{0}\'\' implementiert org.xml.sax.ContentHandler nicht."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "ER_RESOURCE_COULD_NOT_FIND"

    const-string v1, "Die Ressource [ {0} ] konnte nicht gefunden werden.\n {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const-string v1, "Die Ressource [ {0} ] konnte nicht geladen werden: {1} \n {2} \t {3}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    const-string v1, "Puffergr\u00f6\u00dfe <=0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v1, "Ung\u00fcltige UTF-16-Ersetzung festgestellt: {0} ?"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "ER_OIERROR"

    const-string v1, "E/A-Fehler"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const-string v1, "Attribut {0} kann nicht nach Kindknoten oder vor dem Erstellen eines Elements hinzugef\u00fcgt werden.  Das Attribut wird ignoriert."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "ER_NAMESPACE_PREFIX"

    const-string v1, "Der Namensbereich f\u00fcr Pr\u00e4fix \'\'{0}\'\' wurde nicht deklariert."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "ER_STRAY_ATTRIBUTE"

    const-string v1, "Attribut \'\'{0}\'\' befindet sich nicht in einem Element."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "ER_STRAY_NAMESPACE"

    const-string v1, "Namensbereichdeklaration \'\'{0}\'\'=\'\'{1}\'\' befindet sich nicht in einem Element."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    const-string v1, "\'\'{0}\'\' konnte nicht geladen werden (CLASSPATH pr\u00fcfen). Es werden die Standardwerte verwendet."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "ER_ILLEGAL_CHARACTER"

    const-string v1, "Es wurde versucht, ein Zeichen des Integralwerts {0} auszugeben, der nicht in der angegebenen Ausgabeverschl\u00fcsselung von {1} dargestellt ist."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const-string v1, "Die Merkmaldatei \'\'{0}\'\' konnte f\u00fcr die Ausgabemethode \'\'{1}\'\' nicht geladen werden (CLASSPATH pr\u00fcfen)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "Ung\u00fcltige Portnummer"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "Der Port kann nicht festgelegt werden, wenn der Host gleich Null ist."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "Der Host ist keine syntaktisch korrekte Adresse."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "Das Schema ist nicht angepasst."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "Schema kann nicht von Nullzeichenfolge festgelegt werden."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "Der Pfad enth\u00e4lt eine ung\u00fcltige Escapezeichenfolge."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "Pfad enth\u00e4lt ung\u00fcltiges Zeichen: {0}."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "Fragment enth\u00e4lt ein ung\u00fcltiges Zeichen."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "Fragment kann nicht festgelegt werden, wenn der Pfad gleich Null ist."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "Fragment kann nur f\u00fcr eine generische URI (Uniform Resource Identifier) festgelegt werden."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "Kein Schema gefunden in URI"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "URI (Uniform Resource Identifier) kann nicht mit leeren Parametern initialisiert werden."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "Fragment kann nicht im Pfad und im Fragment angegeben werden."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "Abfragezeichenfolge kann nicht im Pfad und in der Abfragezeichenfolge angegeben werden."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "Der Port kann nicht angegeben werden, wenn der Host nicht angegeben wurde."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "Benutzerinformationen k\u00f6nnen nicht angegeben werden, wenn der Host nicht angegeben wurde."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "ER_XML_VERSION_NOT_SUPPORTED"

    const-string v1, "Warnung: Die Version des Ausgabedokuments muss \'\'{0}\'\' lauten.  Diese XML-Version wird nicht unterst\u00fctzt.  Die Version des Ausgabedokuments ist \'\'1.0\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "Schema ist erforderlich!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "ER_FACTORY_PROPERTY_MISSING"

    const-string v1, "Das an SerializerFactory \u00fcbermittelte Merkmalobjekt weist kein Merkmal \'\'{0}\'\' auf."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "ER_ENCODING_NOT_SUPPORTED"

    const-string v1, "Warnung:  Die Codierung \'\'{0}\'\' wird von Java Runtime nicht unterst\u00fctzt."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "FEATURE_NOT_FOUND"

    const-string v1, "Der Parameter \'\'{0}\'\' wird nicht erkannt."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "Der Parameter \'\'{0}\'\' wird erkannt, der angeforderte Wert kann jedoch nicht festgelegt werden."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "DOMSTRING_SIZE_ERR"

    const-string v1, "Die Ergebniszeichenfolge ist zu lang f\u00fcr eine DOM-Zeichenfolge: \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "TYPE_MISMATCH_ERR"

    const-string v1, "Der Werttyp f\u00fcr diesen Parameternamen ist nicht kompatibel mit dem erwarteten Werttyp."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "no-output-specified"

    const-string v1, "Das Ausgabeziel f\u00fcr die zu schreibenden Daten war leer."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "unsupported-encoding"

    const-string v1, "Eine nicht unterst\u00fctzte Codierung wurde festgestellt."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "ER_UNABLE_TO_SERIALIZE_NODE"

    const-string v1, "Der Knoten konnte nicht serialisiert werden."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "cdata-sections-splitted"

    const-string v1, "Der Abschnitt CDATA enth\u00e4lt mindestens eine Beendigungsmarkierung \']]>\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "ER_WARNING_WF_NOT_CHECKED"

    const-string v1, "Eine Instanz des Pr\u00fcfprogramms f\u00fcr korrekte Formatierung konnte nicht erstellt werden.  F\u00fcr den korrekt formatierten Parameter wurde der Wert \'True\' festgelegt, die Pr\u00fcfung auf korrekte Formatierung kann jedoch nicht durchgef\u00fchrt werden."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "wf-invalid-character"

    const-string v1, "Der Knoten \'\'{0}\'\' enth\u00e4lt ung\u00fcltige XML-Zeichen."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const-string v1, "Im Kommentar wurde ein ung\u00fcltiges XML-Zeichen (Unicode: 0x{0}) gefunden."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_PI"

    const-string v1, "In der Verarbeitungsanweisung wurde ein ung\u00fcltiges XML-Zeichen (Unicode: 0x{0}) gefunden."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    const-string v1, "Im Inhalt von CDATASection wurde ein ung\u00fcltiges XML-Zeichen (Unicode: 0x{0}) gefunden."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    const-string v1, "Ein ung\u00fcltiges XML-Zeichen  (Unicode: 0x{0}) wurde im Inhalt der Zeichendaten des Knotens gefunden."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "wf-invalid-character-in-node-name"

    const-string v1, "Ung\u00fcltige XML-Zeichen wurden gefunden in {0} im Knoten \'\'{1}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "ER_WF_DASH_IN_COMMENT"

    const-string v1, "Die Zeichenfolge \"--\" ist innerhalb von Kommentaren nicht zul\u00e4ssig."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "ER_WF_LT_IN_ATTVAL"

    const-string v1, "Der Wert des Attributs \"{1}\" mit einem Elementtyp \"{0}\" darf nicht das Zeichen \'\'<\'\' enthalten."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "ER_WF_REF_TO_UNPARSED_ENT"

    const-string v1, "Der syntaktisch nicht analysierte Entit\u00e4tenverweis \"&{0};\" ist nicht zul\u00e4ssig."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "ER_WF_REF_TO_EXTERNAL_ENT"

    const-string v1, "Der externe Entit\u00e4tenverweis \"&{0};\" ist in einem Attributwert nicht zul\u00e4ssig."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const-string v1, "Das Pr\u00e4fix \"{0}\" kann nicht an den Namensbereich \"{1}\" gebunden werden."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "ER_NULL_LOCAL_ELEMENT_NAME"

    const-string v1, "Der lokale Name von Element \"{0}\" ist nicht angegeben."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "ER_NULL_LOCAL_ATTR_NAME"

    const-string v1, "Der lokale Name des Attributs \"{0}\" ist nicht angegeben."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "Der Ersatztext des Entit\u00e4tenknotens \"{0}\" enth\u00e4lt einen Elementknoten \"{1}\" mit einem nicht gebundenen Pr\u00e4fix \"{2}\"."

    const-string v1, "unbound-prefix-in-entity-reference"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "Der Ersatztext des Entit\u00e4tenknotens \"{0}\" enth\u00e4lt einen Attributknoten \"{1}\" mit einem nicht gebundenen Pr\u00e4fix \"{2}\"."

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v60

    filled-new-array/range {v2 .. v60}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
