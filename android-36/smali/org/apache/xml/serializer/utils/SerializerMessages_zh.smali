.class public Lorg/apache/xml/serializer/utils/SerializerMessages_zh;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_zh.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getContents()[[Ljava/lang/Object;
    .registers 61

    .line 74
    const-string v0, "BAD_MSGKEY"

    const-string v1, "\u6d88\u606f\u5bc6\u94a5\u201c{0}\u201d\u4e0d\u5728\u6d88\u606f\u7c7b\u201c{1}\u201d\u4e2d"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "BAD_MSGFORMAT"

    const-string v1, "\u6d88\u606f\u7c7b\u201c{1}\u201d\u4e2d\u7684\u6d88\u606f\u201c{0}\u201d\u7684\u683c\u5f0f\u65e0\u6548\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const-string v1, "\u4e32\u884c\u5668\u7c7b\u201c{0}\u201d\u4e0d\u80fd\u5b9e\u73b0 org.xml.sax.ContentHandler\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "ER_RESOURCE_COULD_NOT_FIND"

    const-string v1, "\u627e\u4e0d\u5230\u8d44\u6e90 [ {0} ]\u3002\n {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const-string v1, "\u8d44\u6e90 [ {0} ] \u65e0\u6cd5\u88c5\u5165\uff1a{1} \n {2} \t {3}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    const-string v1, "\u7f13\u51b2\u533a\u5927\u5c0f <=0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v1, "\u68c0\u6d4b\u5230\u65e0\u6548\u7684 UTF-16 \u8d85\u5927\u5b57\u7b26\u96c6\uff1a{0}\uff1f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "ER_OIERROR"

    const-string v1, "IO \u9519\u8bef"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const-string v1, "\u5728\u751f\u6210\u5b50\u8282\u70b9\u4e4b\u540e\u6216\u5728\u751f\u6210\u5143\u7d20\u4e4b\u524d\u65e0\u6cd5\u6dfb\u52a0\u5c5e\u6027 {0}\u3002\u5c06\u5ffd\u7565\u5c5e\u6027\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "ER_NAMESPACE_PREFIX"

    const-string v1, "\u5c1a\u672a\u58f0\u660e\u524d\u7f00\u201c{0}\u201d\u7684\u540d\u79f0\u7a7a\u95f4\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "ER_STRAY_ATTRIBUTE"

    const-string v1, "\u5c5e\u6027\u201c{0}\u201d\u5728\u5143\u7d20\u5916\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "ER_STRAY_NAMESPACE"

    const-string v1, "\u540d\u79f0\u7a7a\u95f4\u58f0\u660e\u201c{0}\u201d=\u201c{1}\u201d\u5728\u5143\u7d20\u5916\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    const-string v1, "\u65e0\u6cd5\u88c5\u5165\u201c{0}\u201d\uff08\u68c0\u67e5 CLASSPATH\uff09\uff0c\u73b0\u5728\u53ea\u4f7f\u7528\u7f3a\u7701\u503c"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "ER_ILLEGAL_CHARACTER"

    const-string v1, "\u5c1d\u8bd5\u8f93\u51fa\u6574\u6570\u503c {0}\uff08\u5b83\u4e0d\u662f\u4ee5\u6307\u5b9a\u7684 {1} \u8f93\u51fa\u7f16\u7801\u8868\u793a\uff09\u7684\u5b57\u7b26\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const-string v1, "\u65e0\u6cd5\u4e3a\u8f93\u51fa\u65b9\u6cd5\u201c{1}\u201d\u88c5\u5165\u5c5e\u6027\u6587\u4ef6\u201c{0}\u201d\uff08\u68c0\u67e5 CLASSPATH\uff09"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "\u7aef\u53e3\u53f7\u65e0\u6548"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "\u4e3b\u673a\u4e3a\u7a7a\u65f6\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u7aef\u53e3"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "\u4e3b\u673a\u4e0d\u662f\u683c\u5f0f\u6b63\u786e\u7684\u5730\u5740"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "\u6a21\u5f0f\u4e0d\u4e00\u81f4\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "\u65e0\u6cd5\u4ece\u7a7a\u5b57\u7b26\u4e32\u8bbe\u7f6e\u6a21\u5f0f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "\u8def\u5f84\u5305\u542b\u65e0\u6548\u7684\u8f6c\u4e49\u5e8f\u5217"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "\u8def\u5f84\u5305\u542b\u65e0\u6548\u7684\u5b57\u7b26\uff1a{0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "\u7247\u6bb5\u5305\u542b\u65e0\u6548\u7684\u5b57\u7b26"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "\u8def\u5f84\u4e3a\u7a7a\u65f6\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u7247\u6bb5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "\u53ea\u80fd\u4e3a\u7c7b\u5c5e URI \u8bbe\u7f6e\u7247\u6bb5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "URI \u4e2d\u627e\u4e0d\u5230\u4efb\u4f55\u6a21\u5f0f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "\u4e0d\u80fd\u4ee5\u7a7a\u53c2\u6570\u521d\u59cb\u5316 URI"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "\u8def\u5f84\u548c\u7247\u6bb5\u4e2d\u90fd\u4e0d\u80fd\u6307\u5b9a\u7247\u6bb5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "\u8def\u5f84\u548c\u67e5\u8be2\u5b57\u7b26\u4e32\u4e2d\u4e0d\u80fd\u6307\u5b9a\u67e5\u8be2\u5b57\u7b26\u4e32"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "\u5982\u679c\u6ca1\u6709\u6307\u5b9a\u4e3b\u673a\uff0c\u5219\u4e0d\u53ef\u4ee5\u6307\u5b9a\u7aef\u53e3"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "\u5982\u679c\u6ca1\u6709\u6307\u5b9a\u4e3b\u673a\uff0c\u5219\u4e0d\u53ef\u4ee5\u6307\u5b9a\u7528\u6237\u4fe1\u606f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "ER_XML_VERSION_NOT_SUPPORTED"

    const-string v1, "\u8b66\u544a\uff1a\u8981\u6c42\u8f93\u51fa\u6587\u6863\u7684\u7248\u672c\u662f\u201c{0}\u201d\u3002\u4e0d\u652f\u6301\u6b64 XML \u7248\u672c\u3002\u8f93\u51fa\u6587\u6863\u7684\u7248\u672c\u5c06\u4f1a\u662f\u201c1.0\u201d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "\u6a21\u5f0f\u662f\u5fc5\u9700\u7684\uff01"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "ER_FACTORY_PROPERTY_MISSING"

    const-string v1, "\u4f20\u9012\u7ed9 SerializerFactory \u7684 Properties \u5bf9\u8c61\u4e0d\u5177\u6709\u5c5e\u6027\u201c{0}\u201d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "FEATURE_NOT_FOUND"

    const-string v1, "\u672a\u8bc6\u522b\u51fa\u53c2\u6570\u201c{0}\u201d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "\u5df2\u8bc6\u522b\u51fa\u53c2\u6570\u201c{0}\u201d\uff0c\u4f46\u65e0\u6cd5\u8bbe\u7f6e\u8bf7\u6c42\u7684\u503c\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "DOMSTRING_SIZE_ERR"

    const-string v1, "\u4ea7\u751f\u7684\u5b57\u7b26\u4e32\u8fc7\u957f\u4e0d\u80fd\u88c5\u5165 DOMString\uff1a\u201c{0}\u201d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "TYPE_MISMATCH_ERR"

    const-string v1, "\u6b64\u53c2\u6570\u540d\u79f0\u7684\u503c\u7c7b\u578b\u4e0e\u671f\u671b\u7684\u503c\u7c7b\u578b\u4e0d\u517c\u5bb9\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "no-output-specified"

    const-string v1, "\u5c06\u8981\u5199\u5165\u6570\u636e\u7684\u8f93\u51fa\u76ee\u6807\u4e3a\u7a7a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "unsupported-encoding"

    const-string v1, "\u9047\u5230\u4e0d\u53d7\u652f\u6301\u7684\u7f16\u7801\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "ER_UNABLE_TO_SERIALIZE_NODE"

    const-string v1, "\u65e0\u6cd5\u5c06\u8282\u70b9\u5e8f\u5217\u5316\u3002 "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "cdata-sections-splitted"

    const-string v1, "CDATA \u90e8\u5206\u5305\u542b\u4e00\u4e2a\u6216\u591a\u4e2a\u7ec8\u6b62\u6807\u8bb0\u201c]]>\u201d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "ER_WARNING_WF_NOT_CHECKED"

    const-string v1, "\u65e0\u6cd5\u521b\u5efa\u683c\u5f0f\u6b63\u786e\u6027\u68c0\u67e5\u5668\u7684\u5b9e\u4f8b\u3002\u201c\u683c\u5f0f\u6b63\u786e\u201d\u53c2\u6570\u5df2\u8bbe\u7f6e\u4e3a true\uff0c\u4f46\u65e0\u6cd5\u6267\u884c\u683c\u5f0f\u6b63\u786e\u6027\u68c0\u67e5\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "wf-invalid-character"

    const-string v1, "\u8282\u70b9\u201c{0}\u201d\u5305\u542b\u65e0\u6548\u7684 XML \u5b57\u7b26\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const-string v1, "\u5728\u6ce8\u91ca\u4e2d\u627e\u5230\u65e0\u6548\u7684 XML \u5b57\u7b26 (Unicode: 0x\'\'{0})\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_PI"

    const-string v1, "\u5728\u5904\u7406\u6307\u4ee4\u6570\u636e\u4e2d\u627e\u5230\u65e0\u6548\u7684 XML \u5b57\u7b26 (Unicode: 0x\'\'{0})\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    const-string v1, "\u5728 CDATA \u90e8\u5206\u7684\u5185\u5bb9\u4e2d\u627e\u5230\u65e0\u6548\u7684 XML \u5b57\u7b26 (Unicode: 0x\'\'{0})\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    const-string v1, "\u5728\u8282\u70b9\u7684\u5b57\u7b26\u6570\u636e\u5185\u5bb9\u4e2d\u627e\u5230\u65e0\u6548\u7684 XML \u5b57\u7b26 (Unicode: 0x\'\'{0})\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "wf-invalid-character-in-node-name"

    const-string v1, "\u540d\u79f0\u4e3a\u201c{1})\u201d\u7684\u201c{0})\u201d\u4e2d\u627e\u5230\u65e0\u6548\u7684 XML \u5b57\u7b26\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "ER_WF_DASH_IN_COMMENT"

    const-string v1, "\u6ce8\u91ca\u4e2d\u4e0d\u5141\u8bb8\u6709\u5b57\u7b26\u4e32\u201c--\u201d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "ER_WF_LT_IN_ATTVAL"

    const-string v1, "\u4e0e\u5143\u7d20\u7c7b\u578b\u201c{0}\u201d\u5173\u8054\u7684\u5c5e\u6027\u201c{1}\u201d\u7684\u503c\u4e0d\u5f97\u5305\u542b\u201c<\u201d\u5b57\u7b26\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "ER_WF_REF_TO_UNPARSED_ENT"

    const-string v1, "\u4e0d\u5141\u8bb8\u6709\u672a\u89e3\u6790\u7684\u5b9e\u4f53\u5f15\u7528\u201c&{0};\u201d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "ER_WF_REF_TO_EXTERNAL_ENT"

    const-string v1, "\u5c5e\u6027\u503c\u4e2d\u4e0d\u5141\u8bb8\u6709\u5916\u90e8\u5b9e\u4f53\u5f15\u7528\u201c&{0};\u201d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const-string v1, "\u524d\u7f00\u201c{0}\u201d\u4e0d\u80fd\u7ed1\u5b9a\u5230\u540d\u79f0\u7a7a\u95f4\u201c{1}\u201d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "ER_NULL_LOCAL_ELEMENT_NAME"

    const-string v1, "\u5143\u7d20\u201c{0}\u201d\u7684\u5c40\u90e8\u540d\u4e3a\u7a7a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "ER_NULL_LOCAL_ATTR_NAME"

    const-string v1, "\u5c5e\u6027\u201c{0}\u201d\u7684\u5c40\u90e8\u540d\u4e3a\u7a7a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "\u5b9e\u4f53\u8282\u70b9\u201c{0}\u201d\u7684\u66ff\u4ee3\u6587\u672c\u4e2d\u5305\u542b\u5143\u7d20\u8282\u70b9\u201c{1}\u201d\uff0c\u8be5\u8282\u70b9\u5177\u6709\u672a\u7ed1\u5b9a\u7684\u524d\u7f00\u201c{2}\u201d\u3002"

    const-string v1, "unbound-prefix-in-entity-reference"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "\u5b9e\u4f53\u8282\u70b9\u201c{0}\u201d\u7684\u66ff\u4ee3\u6587\u672c\u4e2d\u5305\u542b\u5c5e\u6027\u8282\u70b9\u201c{1}\u201d\uff0c\u8be5\u8282\u70b9\u5177\u6709\u672a\u7ed1\u5b9a\u7684\u524d\u7f00\u201c{2}\u201d\u3002"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v59

    filled-new-array/range {v2 .. v59}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
