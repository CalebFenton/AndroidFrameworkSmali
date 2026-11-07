.class public Lorg/apache/xml/serializer/utils/SerializerMessages_ko;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_ko.java"


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

    const-string v1, "\'\'{0}\'\' \uba54\uc2dc\uc9c0 \ud0a4\uac00 \'\'{1}\'\' \uba54\uc2dc\uc9c0 \ud074\ub798\uc2a4\uc5d0 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "BAD_MSGFORMAT"

    const-string v1, "\'\'{1}\'\' \uba54\uc2dc\uc9c0 \ud074\ub798\uc2a4\uc5d0 \uc788\ub294 \'\'{0}\'\' \uba54\uc2dc\uc9c0\uc758 \ud615\uc2dd\uc774 \uc798\ubabb \ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const-string v1, "\'\'{0}\'\' \uc9c1\ub82c \ud504\ub85c\uadf8\ub7a8 \ud074\ub798\uc2a4\uac00 org.xml.sax.ContentHandler\ub97c \uad6c\ud604\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "ER_RESOURCE_COULD_NOT_FIND"

    const-string v1, "[ {0} ] \uc790\uc6d0\uc744 \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4.\n{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const-string v1, "[ {0} ] \uc790\uc6d0\uc774 {1} \n {2} \t {3}\uc744(\ub97c) \ub85c\ub4dc\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    const-string v1, "\ubc84\ud37c \ud06c\uae30 <=0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v1, "\uc798\ubabb\ub41c UTF-16 \ub300\ub9ac\uc790(surrogate)\uac00 \ubc1c\uacac\ub418\uc5c8\uc2b5\ub2c8\ub2e4: {0} ?"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "ER_OIERROR"

    const-string v1, "IO \uc624\ub958"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const-string v1, "\ud558\uc704 \ub178\ub4dc\uac00 \uc0dd\uc131\ub41c \uc774\ud6c4 \ub610\ub294 \uc694\uc18c\uac00 \uc791\uc131\ub418\uae30 \uc774\uc804\uc5d0 {0} \uc18d\uc131\uc744 \ucd94\uac00\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. \uc18d\uc131\uc774 \ubb34\uc2dc\ub429\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "ER_NAMESPACE_PREFIX"

    const-string v1, "\'\'{0}\'\' \uc811\ub450\ubd80\uc5d0 \ub300\ud55c \uc774\ub984 \uacf5\uac04\uc774 \uc120\uc5b8\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "ER_STRAY_ATTRIBUTE"

    const-string v1, "\'\'{0}\'\' \uc18d\uc131\uc774 \uc694\uc18c\uc758 \uc678\ubd80\uc5d0 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "ER_STRAY_NAMESPACE"

    const-string v1, "\'\'{0}\'\'=\'\'{1}\'\' \uc774\ub984 \uacf5\uac04 \uc120\uc5b8\uc774 \uc694\uc18c\uc758 \uc678\ubd80\uc5d0 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    const-string v1, "\'\'{0}\'\'(CLASSPATH \ud655\uc778)\uc744(\ub97c) \ub85c\ub4dc\ud560 \uc218 \uc5c6\uc73c\ubbc0\ub85c, \ud604\uc7ac \uae30\ubcf8\uac12\ub9cc\uc744 \uc0ac\uc6a9\ud558\ub294 \uc911\uc785\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "ER_ILLEGAL_CHARACTER"

    const-string v1, "{1}\uc758 \uc9c0\uc815\ub41c \ucd9c\ub825 \uc778\ucf54\ub529\uc5d0 \ud45c\uc2dc\ub418\uc9c0 \uc54a\uc740 \ubb34\uacb0\uc131 \uac12 {0}\uc758 \ubb38\uc790\ub97c \ucd9c\ub825\ud558\uc2ed\uc2dc\uc624. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const-string v1, "\'\'{1}\'\' \ucd9c\ub825 \uba54\uc18c\ub4dc(CLASSPATH \ud655\uc778)\uc5d0 \ub300\ud55c \'\'{0}\'\' \ud2b9\uc131 \ud30c\uc77c\uc744 \ub85c\ub4dc\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "\uc798\ubabb\ub41c \ud3ec\ud2b8 \ubc88\ud638"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "\ud638\uc2a4\ud2b8\uac00 \ub110(null)\uc774\uba74 \ud3ec\ud2b8\ub97c \uc124\uc815\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "\ud638\uc2a4\ud2b8\uac00 \uc644\uc804\ud55c \uc8fc\uc18c\uac00 \uc544\ub2d9\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "\uc2a4\ud0a4\ub9c8\uac00 \uc77c\uce58\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "\ub110(null) \ubb38\uc790\uc5f4\uc5d0\uc11c \uc2a4\ud0a4\ub9c8\ub97c \uc124\uc815\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "\uacbd\ub85c\uc5d0 \uc798\ubabb\ub41c \uc774\uc2a4\ucf00\uc774\ud504 \uc21c\uc11c\uac00 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "\uacbd\ub85c\uc5d0 \uc798\ubabb\ub41c \ubb38\uc790\uac00 \uc788\uc2b5\ub2c8\ub2e4: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "\ub2e8\ud3b8\uc5d0 \uc798\ubabb\ub41c \ubb38\uc790\uac00 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "\uacbd\ub85c\uac00 \ub110(null)\uc774\uba74 \ub2e8\ud3b8\uc744 \uc124\uc815\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "\uc77c\ubc18 URI\uc5d0 \ub300\ud574\uc11c\ub9cc \ub2e8\ud3b8\uc744 \uc124\uc815\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "URI\uc5d0 \uc2a4\ud0a4\ub9c8\uac00 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "\ube48 \ub9e4\uac1c\ubcc0\uc218\ub85c URI\ub97c \ucd08\uae30\ud654\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "\uacbd\ub85c \ubc0f \ub2e8\ud3b8 \ub458 \ub2e4\uc5d0 \ub2e8\ud3b8\uc744 \uc9c0\uc815\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "\uacbd\ub85c \ubc0f \uc870\ud68c \ubb38\uc790\uc5f4\uc5d0 \uc870\ud68c \ubb38\uc790\uc5f4\uc744 \uc9c0\uc815\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "\ud638\uc2a4\ud2b8\ub97c \uc9c0\uc815\ud558\uc9c0 \uc54a\uc740 \uacbd\uc6b0\uc5d0\ub294 \ud3ec\ud2b8\ub97c \uc9c0\uc815\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "\ud638\uc2a4\ud2b8\ub97c \uc9c0\uc815\ud558\uc9c0 \uc54a\uc740 \uacbd\uc6b0\uc5d0\ub294 Userinfo\ub97c \uc9c0\uc815\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "ER_XML_VERSION_NOT_SUPPORTED"

    const-string v1, "\uacbd\uace0:  \uc694\uccad\ub41c \ucd9c\ub825 \ubb38\uc11c\uc758 \ubc84\uc804\uc740 \'\'{0}\'\'\uc785\ub2c8\ub2e4. \ud558\uc9c0\ub9cc \uc774 XML \ubc84\uc804\uc740 \uc9c0\uc6d0\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ucd9c\ub825 \ubb38\uc11c\uc758 \ubc84\uc804\uc740 \'\'1.0\'\'\uc774 \ub429\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "\uc2a4\ud0a4\ub9c8\uac00 \ud544\uc694\ud569\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "ER_FACTORY_PROPERTY_MISSING"

    const-string v1, "SerializerFactory\uc5d0 \uc804\ub2ec\ub41c \ud2b9\uc131 \uc624\ube0c\uc81d\ud2b8\uc5d0 \'\'{0}\'\' \ud2b9\uc131\uc774 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "ER_ENCODING_NOT_SUPPORTED"

    const-string v1, "\uacbd\uace0: \'\'{0}\'\' \uc778\ucf54\ub529\uc740 Java Runtime\uc744 \uc9c0\uc6d0\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "FEATURE_NOT_FOUND"

    const-string v1, "\'\'{0}\'\' \ub9e4\uac1c\ubcc0\uc218\ub97c \uc778\uc2dd\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "\'\'{0}\'\' \ub9e4\uac1c\ubcc0\uc218\ub294 \uc778\uc2dd\ud560 \uc218 \uc788\uc73c\ub098 \uc694\uccad\ub41c \uac12\uc744 \uc124\uc815\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "DOMSTRING_SIZE_ERR"

    const-string v1, "\uacb0\uacfc \ubb38\uc790\uc5f4\uc774 \ub108\ubb34 \uae38\uc5b4 DOMString\uc5d0 \ub9de\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4: \'\'{0}\'\' "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "TYPE_MISMATCH_ERR"

    const-string v1, "\uc774 \ub9e4\uac1c\ubcc0\uc218 \uc774\ub984\uc5d0 \ub300\ud55c \uac12 \uc720\ud615\uc774 \uc608\uc0c1 \uac12 \uc720\ud615\uacfc \ud638\ud658\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "no-output-specified"

    const-string v1, "\ub370\uc774\ud130\ub97c \uae30\ub85d\ud560 \ucd9c\ub825 \ub300\uc0c1\uc774 \ub110(null)\uc785\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "unsupported-encoding"

    const-string v1, "\uc9c0\uc6d0\ub418\uc9c0 \uc54a\ub294 \uc778\ucf54\ub529\uc774 \ubc1c\uacac\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "ER_UNABLE_TO_SERIALIZE_NODE"

    const-string v1, "\ub178\ub4dc\ub97c \uc9c1\ub82c\ud654\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "cdata-sections-splitted"

    const-string v1, "CDATA \uc139\uc158\uc5d0 \uc885\ub8cc \ud45c\uc2dc \ubb38\uc790\uc778 \']]>\'\uac00 \ud558\ub098 \uc774\uc0c1 \ud3ec\ud568\ub418\uc5b4 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "ER_WARNING_WF_NOT_CHECKED"

    const-string v1, "Well-Formedness \uac80\uc0ac\uae30\uc758 \uc778\uc2a4\ud134\uc2a4\ub97c \uc791\uc131\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. Well-Formed \ub9e4\uac1c\ubcc0\uc218\uac00 true\ub85c \uc124\uc815\ub418\uc5c8\uc9c0\ub9cc Well-Formedness \uac80\uc0ac\ub97c \uc218\ud589\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "wf-invalid-character"

    const-string v1, "\'\'{0}\'\' \ub178\ub4dc\uc5d0 \uc720\ud6a8\ud558\uc9c0 \uc54a\uc740 XML \ubb38\uc790\uac00 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const-string v1, "\uc124\uba85\uc5d0 \uc720\ud6a8\ud558\uc9c0 \uc54a\uc740 XML \ubb38\uc790(Unicode: 0x{0})\uac00 \uc788\uc2b5\ub2c8\ub2e4. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_PI"

    const-string v1, "\ucc98\ub9ac \uba85\ub839\uc5b4 \ub370\uc774\ud130\uc5d0 \uc720\ud6a8\ud558\uc9c0 \uc54a\uc740 XML \ubb38\uc790(Unicode: 0x{0})\uac00 \uc788\uc2b5\ub2c8\ub2e4 "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    const-string v1, "CDATASection\uc758 \ub0b4\uc6a9\uc5d0 \uc720\ud6a8\ud558\uc9c0 \uc54a\uc740 XML \ubb38\uc790(Unicode: 0x{0})\uac00 \uc788\uc2b5\ub2c8\ub2e4. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    const-string v1, "\ub178\ub4dc\uc758 \ubb38\uc790 \ub370\uc774\ud130 \ub0b4\uc6a9\uc5d0 \uc720\ud6a8\ud558\uc9c0 \uc54a\uc740 XML \ubb38\uc790(Unicode: 0x{0})\uac00 \uc788\uc2b5\ub2c8\ub2e4. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "wf-invalid-character-in-node-name"

    const-string v1, "\uc774\ub984\uc774 \'\'{1}\'\'\uc778 {0} \ub178\ub4dc\uc5d0 \uc720\ud6a8\ud558\uc9c0 \uc54a\uc740 XML \ubb38\uc790\uac00 \uc788\uc2b5\ub2c8\ub2e4. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "ER_WF_DASH_IN_COMMENT"

    const-string v1, "\uc124\uba85 \ub0b4\uc5d0\uc11c\ub294 \"--\" \ubb38\uc790\uc5f4\uc774 \ud5c8\uc6a9\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "ER_WF_LT_IN_ATTVAL"

    const-string v1, "\"{0}\" \uc694\uc18c \uc720\ud615\uacfc \uc5f0\uad00\ub41c \"{1}\" \uc18d\uc131\uac12\uc5d0 \'\'<\'\' \ubb38\uc790\uac00 \ud3ec\ud568\ub418\uba74 \uc548\ub429\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "ER_WF_REF_TO_UNPARSED_ENT"

    const-string v1, "\"&{0};\"\uc758 \uad6c\ubd84 \ubd84\uc11d\ub418\uc9c0 \uc54a\uc740 \uc5d4\ud2f0\ud2f0 \ucc38\uc870\ub294 \ud5c8\uc6a9\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "ER_WF_REF_TO_EXTERNAL_ENT"

    const-string v1, "\uc18d\uc131\uac12\uc5d0\ub294 \"&{0};\" \uc678\ubd80 \uc5d4\ud2f0\ud2f0 \ucc38\uc870\uac00 \ud5c8\uc6a9\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const-string v1, "\"{0}\" \uc811\ub450\ubd80\ub97c \"{1}\" \uc774\ub984 \uacf5\uac04\uc5d0 \ubc14\uc778\ub4dc\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "ER_NULL_LOCAL_ELEMENT_NAME"

    const-string v1, "\"{0}\" \uc694\uc18c\uc758 \ub85c\uceec \uc774\ub984\uc774 \ub110(null)\uc785\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "ER_NULL_LOCAL_ATTR_NAME"

    const-string v1, "\"{0}\" \uc18d\uc131\uc758 \ub85c\uceec \uc774\ub984\uc774 \ub110(null)\uc785\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "\"{0}\" \uc5d4\ud2f0\ud2f0 \ub178\ub4dc\uc758 \ub300\uccb4 \ud14d\uc2a4\ud2b8\uc5d0 \ubc14\uc778\ub4dc\ub418\uc9c0 \uc54a\uc740 \uc811\ub450\ubd80 \"{2}\"\uc744(\ub97c) \uac16\ub294 \"{1}\" \uc694\uc18c \ub178\ub4dc\uac00 \uc788\uc2b5\ub2c8\ub2e4."

    const-string v1, "unbound-prefix-in-entity-reference"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "\"{0}\" \uc5d4\ud2f0\ud2f0 \ub178\ub4dc\uc758 \ub300\uccb4 \ud14d\uc2a4\ud2b8\uc5d0 \ubc14\uc778\ub4dc\ub418\uc9c0 \uc54a\uc740 \uc811\ub450\ubd80 \"{2}\"\uc744(\ub97c) \uac16\ub294 \"{1}\" \uc18d\uc131 \ub178\ub4dc\uac00 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v60

    filled-new-array/range {v2 .. v60}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
