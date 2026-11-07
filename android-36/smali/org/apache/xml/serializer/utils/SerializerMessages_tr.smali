.class public Lorg/apache/xml/serializer/utils/SerializerMessages_tr;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_tr.java"


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

    const-string v1, "\'\'{0}\'\' ileti anahtar\u0131 \'\'{1}\'\' ileti s\u0131n\u0131f\u0131nda yok"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "BAD_MSGFORMAT"

    const-string v1, "\'\'{1}\'\' ileti s\u0131n\u0131f\u0131ndaki \'\'{0}\'\' iletisinin bi\u00e7imi ba\u015far\u0131s\u0131z."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const-string v1, "\'\'{0}\'\' diziselle\u015ftirme s\u0131n\u0131f\u0131 org.xml.sax.ContentHandler s\u0131n\u0131f\u0131n\u0131 ger\u00e7ekle\u015ftirmiyor."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "ER_RESOURCE_COULD_NOT_FIND"

    const-string v1, "Kaynak [ {0} ] bulunamad\u0131.\n {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const-string v1, "Kaynak [ {0} ] y\u00fckleyemedi: {1} \n {2} \t {3}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    const-string v1, "Arabellek b\u00fcy\u00fckl\u00fc\u011f\u00fc <=0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v1, "UTF-16 yerine kullan\u0131lan de\u011fer ge\u00e7ersiz: {0} ?"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "ER_OIERROR"

    const-string v1, "G\u00c7 hatas\u0131"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const-string v1, "Alt d\u00fc\u011f\u00fcmlerden sonra ya da bir \u00f6\u011fe \u00fcretilmeden \u00f6nce {0} \u00f6zniteli\u011fi eklenemez.  \u00d6znitelik yoksay\u0131lacak."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "ER_NAMESPACE_PREFIX"

    const-string v1, "\'\'{0}\'\' \u00f6nekine ili\u015fkin ad alan\u0131 bildirilmedi."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "ER_STRAY_ATTRIBUTE"

    const-string v1, "\'\'{0}\'\' \u00f6zniteli\u011fi \u00f6\u011fenin d\u0131\u015f\u0131nda."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "ER_STRAY_NAMESPACE"

    const-string v1, "\'\'{0}\'\'=\'\'{1}\'\' ad alan\u0131 bildirimi \u00f6\u011fenin d\u0131\u015f\u0131nda."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    const-string v1, "\'\'{0}\'\' y\u00fcklenemedi (CLASSPATH de\u011fi\u015fkeninizi inceleyin), yaln\u0131zca varsay\u0131lanlar kullan\u0131l\u0131yor"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "ER_ILLEGAL_CHARACTER"

    const-string v1, "Belirtilen {1} \u00e7\u0131k\u0131\u015f kodlamas\u0131nda g\u00f6sterilmeyen {0} t\u00fcmlev de\u011feri karakteri \u00e7\u0131k\u0131\u015f giri\u015fimi."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const-string v1, "\'\'{1}\'\' \u00e7\u0131k\u0131\u015f y\u00f6ntemi i\u00e7in \'\'{0}\'\' \u00f6zellik dosyas\u0131 y\u00fcklenemedi (CLASSPATH de\u011fi\u015fkenini inceleyin)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "Kap\u0131 numaras\u0131 ge\u00e7ersiz"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "Anasistem bo\u015f de\u011ferliyken kap\u0131 tan\u0131mlanamaz"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "Anasistem do\u011fru bi\u00e7imli bir adres de\u011fil"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "\u015eema uyumlu de\u011fil."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "Bo\u015f de\u011ferli dizgiden \u015fema tan\u0131mlanamaz"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "Yol ge\u00e7ersiz ka\u00e7\u0131\u015f dizisi i\u00e7eriyor"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "Yol ge\u00e7ersiz karakter i\u00e7eriyor: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "Par\u00e7a ge\u00e7ersiz karakter i\u00e7eriyor"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "Yol bo\u015f de\u011ferliyken par\u00e7a tan\u0131mlanamaz"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "Par\u00e7a yaln\u0131zca soysal URI i\u00e7in tan\u0131mlanabilir"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "URI i\u00e7inde \u015fema bulunamad\u0131"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "Bo\u015f de\u011fi\u015ftirgelerle URI kullan\u0131ma haz\u0131rlanamaz"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "Par\u00e7a hem yolda, hem de par\u00e7ada belirtilemez"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "Yol ve sorgu dizgisinde sorgu dizgisi belirtilemez"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "Anasistem belirtilmediyse kap\u0131 belirtilemez"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "Anasistem belirtilmediyse kullan\u0131c\u0131 bilgisi belirtilemez"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "ER_XML_VERSION_NOT_SUPPORTED"

    const-string v1, "Uyar\u0131:  \u00c7\u0131k\u0131\u015f belgesinin s\u00fcr\u00fcm\u00fcn\u00fcn \'\'{0}\'\' olmas\u0131 isteniyor.  Bu XML s\u00fcr\u00fcm\u00fc desteklenmez.  \u00c7\u0131k\u0131\u015f dosyas\u0131n\u0131n s\u00fcr\u00fcm\u00fc \'\'1.0\'\' olacak."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "\u015eema gerekli!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "ER_FACTORY_PROPERTY_MISSING"

    const-string v1, "SerializerFactory\'\'ye ge\u00e7irilen Properties nesnesinin bir \'\'{0}\'\' \u00f6zelli\u011fi yok."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "ER_ENCODING_NOT_SUPPORTED"

    const-string v1, "Uyar\u0131: \'\'{0}\'\' kodlamas\u0131 Java Runtime taraf\u0131ndan desteklenmiyor."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "FEATURE_NOT_FOUND"

    const-string v1, "\'\'{0}\'\' de\u011fi\u015ftirgesi tan\u0131nm\u0131yor."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "\'\'{0}\'\' de\u011fi\u015ftirgesi tan\u0131n\u0131yor, ancak istenen de\u011fer tan\u0131mlanam\u0131yor."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "DOMSTRING_SIZE_ERR"

    const-string v1, "Sonu\u00e7 dizgisi DOMString i\u00e7in \u00e7ok uzun: \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "TYPE_MISMATCH_ERR"

    const-string v1, "Bu de\u011fi\u015ftirge ad\u0131na ili\u015fkin de\u011fer tipi, beklenen de\u011fer tipiyle uyumlu de\u011fil."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "no-output-specified"

    const-string v1, "Yaz\u0131lacak verilerin \u00e7\u0131k\u0131\u015f hedefi bo\u015f de\u011ferli."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "unsupported-encoding"

    const-string v1, "Desteklenmeyen bir kodlama saptand\u0131."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "ER_UNABLE_TO_SERIALIZE_NODE"

    const-string v1, "D\u00fc\u011f\u00fcm diziselle\u015ftirilemedi."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "cdata-sections-splitted"

    const-string v1, "CDATA k\u0131sm\u0131nda bir ya da daha \u00e7ok \']]>\' sonland\u0131rma imleyicisi var."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "ER_WARNING_WF_NOT_CHECKED"

    const-string v1, "Well-Formedness denet\u015feyicisinin somut \u00f6rne\u011fi yarat\u0131lamad\u0131.  well-formed de\u011fi\u015ftirgesi true de\u011ferine ayarland\u0131, ancak do\u011fru bi\u00e7im denetimi ger\u00e7ekle\u015ftirilemiyor."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "wf-invalid-character"

    const-string v1, "\'\'{0}\'\' d\u00fc\u011f\u00fcm\u00fc ge\u00e7ersiz XML karakterleri i\u00e7eriyor."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const-string v1, "A\u00e7\u0131klamada ge\u00e7ersiz bir XML karakteri (Unicode: 0x{0}) saptand\u0131."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_PI"

    const-string v1, "\u0130\u015fleme y\u00f6nergesi verilerinde ge\u00e7ersiz bir XML karakteri (Unicode: 0x{0}) saptand\u0131."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    const-string v1, "CDATASection i\u00e7eri\u011finde ge\u00e7ersiz bir XML karakteri (Unicode: 0x{0}) saptand\u0131."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    const-string v1, "D\u00fc\u011f\u00fcm\u00fcn karakter verileri i\u00e7eri\u011finde ge\u00e7ersiz bir XML karakteri (Unicode: 0x{0}) saptand\u0131."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "wf-invalid-character-in-node-name"

    const-string v1, "\'\'{1}\'\' adl\u0131 {0} d\u00fc\u011f\u00fcm\u00fcnde ge\u00e7ersiz XML karakteri saptand\u0131."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "ER_WF_DASH_IN_COMMENT"

    const-string v1, "A\u00e7\u0131klamalar i\u00e7inde \"--\" dizgisine izin verilmez."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "ER_WF_LT_IN_ATTVAL"

    const-string v1, "\"{0}\" \u00f6\u011fe tipiyle ili\u015fkilendirilen \"{1}\" \u00f6zniteli\u011finin de\u011feri \'\'<\'\' karakteri i\u00e7ermemelidir."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "ER_WF_REF_TO_UNPARSED_ENT"

    const-string v1, "\"&{0};\" ayr\u0131\u015ft\u0131r\u0131lmam\u0131\u015f varl\u0131k ba\u015fvurusuna izin verilmez."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "ER_WF_REF_TO_EXTERNAL_ENT"

    const-string v1, "\u00d6znitelik de\u011ferinde \"&{0};\" d\u0131\u015f varl\u0131k ba\u015fvurusuna izin verilmez."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const-string v1, "\"{0}\" \u00f6neki \"{1}\" ad alan\u0131na ba\u011flanam\u0131yor."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "ER_NULL_LOCAL_ELEMENT_NAME"

    const-string v1, "\"{0}\" \u00f6\u011fesinin yerel ad\u0131 bo\u015f de\u011ferli."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "ER_NULL_LOCAL_ATTR_NAME"

    const-string v1, "\"{0}\" \u00f6zniteli\u011finin yerel ad\u0131 bo\u015f de\u011ferli."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "\"{0}\" varl\u0131k d\u00fc\u011f\u00fcm\u00fcn\u00fcn yerine koyma metninde, ba\u011flanmam\u0131\u015f \"{2}\" \u00f6neki bulunan bir \u00f6\u011fe d\u00fc\u011f\u00fcm\u00fc (\"{1}\") var."

    const-string v1, "unbound-prefix-in-entity-reference"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "\"{0}\" varl\u0131k d\u00fc\u011f\u00fcm\u00fcn\u00fcn yerine koyma metninde, ba\u011flanmam\u0131\u015f \"{2}\" \u00f6neki bulunan bir \u00f6znitelik d\u00fc\u011f\u00fcm\u00fc (\"{1}\") var."

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v60

    filled-new-array/range {v2 .. v60}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
