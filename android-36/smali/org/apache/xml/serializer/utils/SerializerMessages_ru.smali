.class public Lorg/apache/xml/serializer/utils/SerializerMessages_ru;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_ru.java"


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

    const-string v1, "\u041a\u043b\u044e\u0447 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f \'\'{0}\'\' \u043d\u0435 \u043e\u0442\u043d\u043e\u0441\u0438\u0442\u0441\u044f \u043a \u043a\u043b\u0430\u0441\u0441\u0443 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f \'\'{1}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "BAD_MSGFORMAT"

    const-string v1, "\u0424\u043e\u0440\u043c\u0430\u0442 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f \'\'{0}\'\' \u0432 \u043a\u043b\u0430\u0441\u0441\u0435 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f \'\'{1}\'\' \u0432\u044b\u0437\u0432\u0430\u043b \u043e\u0448\u0438\u0431\u043a\u0443. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const-string v1, "\u041a\u043b\u0430\u0441\u0441 \u0441\u0435\u0440\u0438\u0430\u043b\u0438\u0437\u0430\u0442\u043e\u0440\u0430 \'\'{0}\'\' \u043d\u0435 \u043f\u0440\u0438\u043c\u0435\u043d\u044f\u0435\u0442 org.xml.sax.ContentHandler. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "ER_RESOURCE_COULD_NOT_FIND"

    const-string v1, "\u0420\u0435\u0441\u0443\u0440\u0441 [ {0} ] \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d.\n {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0440\u0435\u0441\u0443\u0440\u0441 [ {0} ]: {1} \n {2} \t {3}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    const-string v1, "\u0420\u0430\u0437\u043c\u0435\u0440 \u0431\u0443\u0444\u0435\u0440\u0430 <=0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v1, "\u041e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d\u043e \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u043e\u0435 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435 UTF-16: {0} ?"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "ER_OIERROR"

    const-string v1, "\u041e\u0448\u0438\u0431\u043a\u0430 \u0432\u0432\u043e\u0434\u0430-\u0432\u044b\u0432\u043e\u0434\u0430"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const-string v1, "\u0410\u0442\u0440\u0438\u0431\u0443\u0442 {0} \u043d\u0435\u043b\u044c\u0437\u044f \u0434\u043e\u0431\u0430\u0432\u043b\u044f\u0442\u044c \u043f\u043e\u0441\u043b\u0435 \u0434\u043e\u0447\u0435\u0440\u043d\u0438\u0445 \u0443\u0437\u043b\u043e\u0432 \u0438 \u0434\u043e \u0441\u043e\u0437\u0434\u0430\u043d\u0438\u044f \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430. \u0410\u0442\u0440\u0438\u0431\u0443\u0442 \u0431\u0443\u0434\u0435\u0442 \u043f\u0440\u043e\u0438\u0433\u043d\u043e\u0440\u0438\u0440\u043e\u0432\u0430\u043d. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "ER_NAMESPACE_PREFIX"

    const-string v1, "\u041f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u043e \u0438\u043c\u0435\u043d \u0434\u043b\u044f \u043f\u0440\u0435\u0444\u0438\u043a\u0441\u0430 \'\'{0}\'\' \u043d\u0435 \u043e\u0431\u044a\u044f\u0432\u043b\u0435\u043d\u043e. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "ER_STRAY_ATTRIBUTE"

    const-string v1, "\u0410\u0442\u0440\u0438\u0431\u0443\u0442 \'\'{0}\'\' \u0432\u043d\u0435 \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "ER_STRAY_NAMESPACE"

    const-string v1, "\u041e\u0431\u044a\u044f\u0432\u043b\u0435\u043d\u0438\u0435 \u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u0430 \u0438\u043c\u0435\u043d \'\'{0}\'\'=\'\'{1}\'\' \u0432\u043d\u0435 \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \'\'{0}\'\' (\u043f\u0440\u043e\u0432\u0435\u0440\u044c\u0442\u0435 CLASSPATH), \u043f\u0440\u0438\u043c\u0435\u043d\u044f\u044e\u0442\u0441\u044f \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u044f \u043f\u043e \u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "ER_ILLEGAL_CHARACTER"

    const-string v1, "\u041f\u043e\u043f\u044b\u0442\u043a\u0430 \u0432\u044b\u0432\u043e\u0434\u0430 \u0441\u0438\u043c\u0432\u043e\u043b\u0430, \u0438\u043d\u0442\u0435\u0433\u0440\u0430\u043b\u044c\u043d\u043e\u0435 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435 {0} \u043a\u043e\u0442\u043e\u0440\u043e\u0433\u043e \u043d\u0435 \u043f\u0440\u0435\u0434\u0441\u0442\u0430\u0432\u043b\u0435\u043d\u043e \u0432 \u0443\u043a\u0430\u0437\u0430\u043d\u043d\u043e\u0439 \u043a\u043e\u0434\u0438\u0440\u043e\u0432\u043a\u0435 \u0432\u044b\u0432\u043e\u0434\u0430 {1}. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const-string v1, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0444\u0430\u0439\u043b \u0441\u0432\u043e\u0439\u0441\u0442\u0432 \'\'{0}\'\' \u0434\u043b\u044f \u043c\u0435\u0442\u043e\u0434\u0430 \u0432\u044b\u0432\u043e\u0434\u0430 \'\'{1}\'\' (\u043f\u0440\u043e\u0432\u0435\u0440\u044c\u0442\u0435 CLASSPATH)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "\u041d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u043d\u043e\u043c\u0435\u0440 \u043f\u043e\u0440\u0442\u0430"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0437\u0430\u0434\u0430\u0442\u044c \u043f\u043e\u0440\u0442 \u0434\u043b\u044f \u043f\u0443\u0441\u0442\u043e\u0433\u043e \u0430\u0434\u0440\u0435\u0441\u0430 \u0445\u043e\u0441\u0442\u0430"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "\u041d\u0435\u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u043e \u0441\u0444\u043e\u0440\u043c\u0438\u0440\u043e\u0432\u0430\u043d \u0430\u0434\u0440\u0435\u0441 \u0445\u043e\u0441\u0442\u0430"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "\u0421\u0445\u0435\u043c\u0430 \u043d\u0435 \u043a\u043e\u043d\u0444\u043e\u0440\u043c\u0430\u0442\u0438\u0432\u043d\u0430."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0437\u0430\u0434\u0430\u0442\u044c \u0441\u0445\u0435\u043c\u0443 \u0434\u043b\u044f \u043f\u0443\u0441\u0442\u043e\u0439 \u0441\u0442\u0440\u043e\u043a\u0438"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "\u0412 \u0438\u043c\u0435\u043d\u0438 \u043f\u0443\u0442\u0438 \u0432\u0441\u0442\u0440\u0435\u0447\u0430\u0435\u0442\u0441\u044f \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u0430\u044f Esc-\u043f\u043e\u0441\u043b\u0435\u0434\u043e\u0432\u0430\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u044c"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "\u0412 \u0438\u043c\u0435\u043d\u0438 \u043f\u0443\u0442\u0438 \u043e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u0441\u0438\u043c\u0432\u043e\u043b: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "\u0424\u0440\u0430\u0433\u043c\u0435\u043d\u0442 \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u0442 \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u0441\u0438\u043c\u0432\u043e\u043b"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0437\u0430\u0434\u0430\u0442\u044c \u0444\u0440\u0430\u0433\u043c\u0435\u043d\u0442 \u0434\u043b\u044f \u043f\u0443\u0441\u0442\u043e\u0433\u043e \u043f\u0443\u0442\u0438"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "\u0424\u0440\u0430\u0433\u043c\u0435\u043d\u0442 \u043c\u043e\u0436\u043d\u043e \u0437\u0430\u0434\u0430\u0442\u044c \u0442\u043e\u043b\u044c\u043a\u043e \u0434\u043b\u044f \u0448\u0430\u0431\u043b\u043e\u043d\u0430 URI"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "\u0412 URI \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u0430 \u0441\u0445\u0435\u043c\u0430"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0438\u043d\u0438\u0446\u0438\u0430\u043b\u0438\u0437\u0438\u0440\u043e\u0432\u0430\u0442\u044c URI \u0441 \u043f\u0443\u0441\u0442\u044b\u043c\u0438 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0430\u043c\u0438"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0437\u0430\u0434\u0430\u0442\u044c \u0444\u0440\u0430\u0433\u043c\u0435\u043d\u0442 \u043e\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u0434\u043b\u044f \u043f\u0443\u0442\u0438 \u0438 \u0444\u0440\u0430\u0433\u043c\u0435\u043d\u0442\u0430"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "\u041d\u0435\u043b\u044c\u0437\u044f \u0443\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0441\u0442\u0440\u043e\u043a\u0443 \u0437\u0430\u043f\u0440\u043e\u0441\u0430 \u0432 \u0441\u0442\u0440\u043e\u043a\u0435 \u043f\u0443\u0442\u0438 \u0438 \u0437\u0430\u043f\u0440\u043e\u0441\u0430"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "\u041d\u0435\u043b\u044c\u0437\u044f \u0443\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u043f\u043e\u0440\u0442, \u0435\u0441\u043b\u0438 \u043d\u0435 \u0437\u0430\u0434\u0430\u043d \u0445\u043e\u0441\u0442"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "\u041d\u0435\u043b\u044c\u0437\u044f \u0443\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044e \u043e \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u0435, \u0435\u0441\u043b\u0438 \u043d\u0435 \u0437\u0430\u0434\u0430\u043d \u0445\u043e\u0441\u0442"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "ER_XML_VERSION_NOT_SUPPORTED"

    const-string v1, "\u041f\u0440\u0435\u0434\u0443\u043f\u0440\u0435\u0436\u0434\u0435\u043d\u0438\u0435: \u041d\u0435\u043e\u0431\u0445\u043e\u0434\u0438\u043c\u0430 \u0432\u0435\u0440\u0441\u0438\u044f \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0430 \u0432\u044b\u0432\u043e\u0434\u0430 \'\'{0}\'\'. \u042d\u0442\u0430 \u0432\u0435\u0440\u0441\u0438\u044f XML \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u0442\u0441\u044f. \u0412\u0435\u0440\u0441\u0438\u0435\u0439 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0430 \u0432\u044b\u0432\u043e\u0434\u0430 \u0431\u0443\u0434\u0435\u0442 \'\'1.0\'\'. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "\u041d\u0435\u043e\u0431\u0445\u043e\u0434\u0438\u043c\u0430 \u0441\u0445\u0435\u043c\u0430!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "ER_FACTORY_PROPERTY_MISSING"

    const-string v1, "\u041e\u0431\u044a\u0435\u043a\u0442 \u0441\u0432\u043e\u0439\u0441\u0442\u0432, \u043f\u0435\u0440\u0435\u0434\u0430\u043d\u043d\u044b\u0439 \u0432 SerializerFactory, \u043d\u0435 \u043e\u0431\u043b\u0430\u0434\u0430\u0435\u0442 \u0441\u0432\u043e\u0439\u0441\u0442\u0432\u043e\u043c \'\'{0}\'\'. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "ER_ENCODING_NOT_SUPPORTED"

    const-string v1, "\u041f\u0440\u0435\u0434\u0443\u043f\u0440\u0435\u0436\u0434\u0435\u043d\u0438\u0435:  \u041a\u043e\u0434\u0438\u0440\u043e\u0432\u043a\u0430 \'\'{0}\'\' \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u0442\u0441\u044f \u0441\u0440\u0435\u0434\u043e\u0439 \u0432\u044b\u043f\u043e\u043b\u043d\u0435\u043d\u0438\u044f Java."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "FEATURE_NOT_FOUND"

    const-string v1, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440 \'\'{0}\'\' \u043d\u0435 \u0440\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u043d. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440 \'\'{0}\'\' \u0440\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u043d, \u043d\u043e \u0437\u0430\u043f\u0440\u043e\u0448\u0435\u043d\u043d\u043e\u0435 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435 \u0437\u0430\u0434\u0430\u0442\u044c \u043d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "DOMSTRING_SIZE_ERR"

    const-string v1, "\u0421\u0442\u0440\u043e\u043a\u0430 \u0440\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442\u0430 \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u0434\u043b\u0438\u043d\u043d\u0430\u044f \u0434\u043b\u044f \u0440\u0430\u0437\u043c\u0435\u0449\u0435\u043d\u0438\u044f \u0432 DOMString: \'\'{0}\'\'. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "TYPE_MISMATCH_ERR"

    const-string v1, "\u0422\u0438\u043f \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u044f \u0434\u043b\u044f \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0430 \u0441 \u044d\u0442\u0438 \u0438\u043c\u0435\u043d\u0435\u043c \u043d\u0435\u0441\u043e\u0432\u043c\u0435\u0441\u0442\u0438\u043c \u0441 \u043e\u0436\u0438\u0434\u0430\u0435\u043c\u044b\u043c \u0442\u0438\u043f\u043e\u043c \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u044f. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "no-output-specified"

    const-string v1, "\u041d\u0435 \u0443\u043a\u0430\u0437\u0430\u043d \u0446\u0435\u043b\u0435\u0432\u043e\u0439 \u043a\u0430\u0442\u0430\u043b\u043e\u0433 \u0434\u043b\u044f \u0432\u044b\u0432\u043e\u0434\u0430 \u0434\u0430\u043d\u043d\u044b\u0445. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "unsupported-encoding"

    const-string v1, "\u041e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d\u0430 \u043d\u0435\u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u043c\u0430\u044f \u043a\u043e\u0434\u0438\u0440\u043e\u0432\u043a\u0430. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "ER_UNABLE_TO_SERIALIZE_NODE"

    const-string v1, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0441\u0435\u0440\u0438\u0430\u043b\u0438\u0437\u043e\u0432\u0430\u0442\u044c \u0443\u0437\u0435\u043b. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "cdata-sections-splitted"

    const-string v1, "\u0420\u0430\u0437\u0434\u0435\u043b CDATA \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u0442 \u043e\u0434\u0438\u043d \u0438\u043b\u0438 \u043d\u0435\u0441\u043a\u043e\u043b\u044c\u043a\u043e \u043c\u0430\u0440\u043a\u0435\u0440\u043e\u0432 \u0440\u0430\u0437\u0434\u0435\u043b\u0438\u0442\u0435\u043b\u0435\u0439 \']]>\'. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "ER_WARNING_WF_NOT_CHECKED"

    const-string v1, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0441\u043e\u0437\u0434\u0430\u0442\u044c \u044d\u043a\u0437\u0435\u043c\u043f\u043b\u044f\u0440 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0438 \u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u043e\u0441\u0442\u0438. \u0414\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440 \u0438\u043c\u0435\u0435\u0442 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435 true, \u043d\u043e \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0443 \u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u043e\u0441\u0442\u0438 \u0432\u044b\u043f\u043e\u043b\u043d\u0438\u0442\u044c \u043d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "wf-invalid-character"

    const-string v1, "\u0423\u0437\u0435\u043b \'\'{0}\'\' \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u0442 \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0435 \u0441\u0438\u043c\u0432\u043e\u043b\u044b XML. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const-string v1, "\u0412 \u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0438 \u043e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u0441\u0438\u043c\u0432\u043e\u043b XML (\u042e\u043d\u0438\u043a\u043e\u0434: 0x{0})."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_PI"

    const-string v1, "\u041f\u0440\u0438 \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0435 instructiondata \u0431\u044b\u043b \u043e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u0441\u0438\u043c\u0432\u043e\u043b XML (\u042e\u043d\u0438\u043a\u043e\u0434: 0x{0}). "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    const-string v1, "\u0412 \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u043c\u043e\u043c CDATASection \u043e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u0441\u0438\u043c\u0432\u043e\u043b XML (\u042e\u043d\u0438\u043a\u043e\u0434: 0x{0})."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    const-string v1, "\u0412 \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u043c\u043e\u043c \u0441\u0438\u043c\u0432\u043e\u043b\u044c\u043d\u044b\u0445 \u0434\u0430\u043d\u043d\u044b\u0445 \u0443\u0437\u043b\u0430 \u043e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u0441\u0438\u043c\u0432\u043e\u043b XML (\u042e\u043d\u0438\u043a\u043e\u0434: 0x{0})."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "wf-invalid-character-in-node-name"

    const-string v1, "\u041d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0435 \u0441\u0438\u043c\u0432\u043e\u043b\u044b XML \u043e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d\u044b \u0432 \u0443\u0437\u043b\u0435 {0} \u0441 \u0438\u043c\u0435\u043d\u0435\u043c \'\'{1}\'\'. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "ER_WF_DASH_IN_COMMENT"

    const-string v1, "\u0421\u0442\u0440\u043e\u043a\u0430 \"--\" \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u0430 \u0432 \u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0438. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "ER_WF_LT_IN_ATTVAL"

    const-string v1, "\u0417\u043d\u0430\u0447\u0435\u043d\u0438\u0435 \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u0430 \"{1}\", \u0441\u0432\u044f\u0437\u0430\u043d\u043d\u043e\u0433\u043e \u0441 \u0442\u0438\u043f\u043e\u043c \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430 \"{0}\", \u043d\u0435 \u0434\u043e\u043b\u0436\u043d\u043e \u0441\u043e\u0434\u0435\u0440\u0436\u0430\u0442\u044c \u0441\u0438\u043c\u0432\u043e\u043b \'\'<\'\'. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "ER_WF_REF_TO_UNPARSED_ENT"

    const-string v1, "\u041d\u0435\u043e\u0431\u0440\u0430\u0431\u043e\u0442\u0430\u043d\u043d\u0430\u044f \u0441\u0441\u044b\u043b\u043a\u0430 \u043d\u0430 \u044d\u043b\u0435\u043c\u0435\u043d\u0442 \"&{0};\" \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u0430. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "ER_WF_REF_TO_EXTERNAL_ENT"

    const-string v1, "\u0412\u043d\u0435\u0448\u043d\u044f\u044f \u0441\u0441\u044b\u043b\u043a\u0430 \u043d\u0430 \u044d\u043b\u0435\u043c\u0435\u043d\u0442 \"&{0};\" \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u0430 \u0432 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0438 \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u0430. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const-string v1, "\u041f\u0440\u0435\u0444\u0438\u043a\u0441 \"{0}\" \u043d\u0435 \u043c\u043e\u0436\u0435\u0442 \u043d\u0430\u0445\u043e\u0434\u0438\u0442\u044c\u0441\u044f \u0432 \u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u0435  \u0438\u043c\u0435\u043d \"{1}\". "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "ER_NULL_LOCAL_ELEMENT_NAME"

    const-string v1, "\u041b\u043e\u043a\u0430\u043b\u044c\u043d\u043e\u0435 \u0438\u043c\u044f \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430 \"{0}\" \u043f\u0443\u0441\u0442\u043e. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "ER_NULL_LOCAL_ATTR_NAME"

    const-string v1, "\u041b\u043e\u043a\u0430\u043b\u044c\u043d\u043e\u0435 \u0438\u043c\u044f \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u0430 \"{0}\" \u043f\u0443\u0441\u0442\u043e.  "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "\u0422\u0435\u043a\u0441\u0442 \u0437\u0430\u043c\u0435\u043d\u044b \u0434\u043b\u044f \u0443\u0437\u043b\u0430 \u0437\u0430\u043f\u0438\u0441\u0438 \"{0}\" \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u0442 \u0443\u0437\u0435\u043b \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u043e\u0432 \"{1}\" \u0441 \u043d\u0435\u0441\u0432\u044f\u0437\u0430\u043d\u043d\u044b\u043c \u043f\u0440\u0435\u0444\u0438\u043a\u0441\u043e\u043c \"{2}\". "

    const-string v1, "unbound-prefix-in-entity-reference"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "\u0422\u0435\u043a\u0441\u0442 \u0437\u0430\u043c\u0435\u043d\u044b \u0434\u043b\u044f \u0443\u0437\u043b\u0430 \u0437\u0430\u043f\u0438\u0441\u0438 \"{0}\" \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u0442 \u0443\u0437\u0435\u043b \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u043e\u0432 \"{1}\" \u0441 \u043d\u0435\u0441\u0432\u044f\u0437\u0430\u043d\u043d\u044b\u043c \u043f\u0440\u0435\u0444\u0438\u043a\u0441\u043e\u043c \"{2}\". "

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v60

    filled-new-array/range {v2 .. v60}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
