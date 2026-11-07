.class public final Lorg/apache/xml/serializer/dom3/LSSerializerImpl;
.super Ljava/lang/Object;
.source "LSSerializerImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMConfiguration;
.implements Lorg/w3c/dom/ls/LSSerializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;
    }
.end annotation


# static fields
.field private static final greylist CANONICAL:I = 0x1

.field private static final greylist CDATA:I = 0x2

.field private static final greylist CHARNORMALIZE:I = 0x4

.field private static final greylist COMMENTS:I = 0x8

.field private static final greylist DEFAULT_END_OF_LINE:Ljava/lang/String;

.field private static final greylist DISCARDDEFAULT:I = 0x8000

.field private static final greylist DTNORMALIZE:I = 0x10

.field private static final greylist ELEM_CONTENT_WHITESPACE:I = 0x20

.field private static final greylist ENTITIES:I = 0x40

.field private static final greylist IGNORE_CHAR_DENORMALIZE:I = 0x20000

.field private static final greylist INFOSET:I = 0x80

.field private static final greylist NAMESPACEDECLS:I = 0x200

.field private static final greylist NAMESPACES:I = 0x100

.field private static final greylist NORMALIZECHARS:I = 0x400

.field private static final greylist PRETTY_PRINT:I = 0x10000

.field private static final greylist SCHEMAVALIDATE:I = 0x2000

.field private static final greylist SPLITCDATA:I = 0x800

.field private static final greylist VALIDATE:I = 0x1000

.field private static final greylist WELLFORMED:I = 0x4000

.field private static final greylist XMLDECL:I = 0x40000


# instance fields
.field private greylist fDOMConfigProperties:Ljava/util/Properties;

.field private greylist fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private greylist fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

.field private greylist fEncoding:Ljava/lang/String;

.field private greylist fEndOfLine:Ljava/lang/String;

.field protected greylist fFeatures:I

.field private greylist fRecognizedParameters:[Ljava/lang/String;

.field private greylist fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

.field private greylist fVisitedNode:Lorg/w3c/dom/Node;

.field private greylist fXMLSerializer:Lorg/apache/xml/serializer/Serializer;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 2

    .line 75
    new-instance v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$1;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 87
    const-string v1, "\r\n"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_20

    :cond_1e
    const-string v0, "\n"

    :cond_20
    :goto_20
    sput-object v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->DEFAULT_END_OF_LINE:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 23

    move-object/from16 v0, p0

    .line 213
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 92
    iput-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    .line 98
    iput-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    .line 101
    iput-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    .line 104
    iput-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    .line 107
    sget-object v2, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->DEFAULT_END_OF_LINE:Ljava/lang/String;

    iput-object v2, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    .line 110
    iput-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    .line 113
    iput-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    .line 182
    const-string v20, "xml-declaration"

    const-string v21, "error-handler"

    const-string v3, "canonical-form"

    const-string v4, "cdata-sections"

    const-string v5, "check-character-normalization"

    const-string v6, "comments"

    const-string v7, "datatype-normalization"

    const-string v8, "element-content-whitespace"

    const-string v9, "entities"

    const-string v10, "infoset"

    const-string v11, "namespaces"

    const-string v12, "namespace-declarations"

    const-string v13, "split-cdata-sections"

    const-string v14, "validate"

    const-string v15, "validate-if-schema"

    const-string v16, "well-formed"

    const-string v17, "discard-default-content"

    const-string v18, "format-pretty-print"

    const-string v19, "ignore-unknown-character-denormalizations"

    filled-new-array/range {v3 .. v21}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fRecognizedParameters:[Ljava/lang/String;

    const/4 v1, 0x2

    or-int/lit8 v1, v1, 0x8

    const v2, 0x4cb60

    or-int/2addr v1, v2

    .line 224
    iput v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 227
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    .line 230
    invoke-virtual {v0}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->initializeSerializerProps()V

    .line 233
    const-string v1, "xml"

    invoke-static {v1}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    .line 240
    invoke-static {v1}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    .line 243
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-interface {v1, v0}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    return-void
.end method

.method private static greylist createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;
    .registers 4

    .line 1499
    new-instance v0, Lorg/w3c/dom/ls/LSException;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-direct {v0, p0, v1}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    if-eqz p1, :cond_20

    .line 1500
    invoke-static {}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->-$$Nest$sfgetfgThrowableMethodsAvailable()Z

    move-result p0

    if-eqz p0, :cond_20

    .line 1502
    :try_start_15
    invoke-static {}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->-$$Nest$sfgetfgThrowableInitCauseMethod()Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    return-object v0
.end method

.method private static greylist getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-eqz p0, :cond_70

    .line 1465
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_70

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_70

    .line 1467
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "%"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1469
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    .line 1470
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    move v3, v2

    :goto_2e
    if-ge v3, p0, :cond_6c

    .line 1472
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1473
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_66

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->isHexDigit(C)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 1474
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->isHexDigit(C)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 1476
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1477
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1479
    :cond_66
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 1481
    :cond_6c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_70
    return-object p0
.end method

.method private static greylist isHexDigit(C)Z
    .registers 2

    .line 0
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public whitelist test-api canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4

    .line 391
    instance-of p0, p2, Ljava/lang/Boolean;

    const/4 v0, 0x1

    if-eqz p0, :cond_a7

    .line 392
    const-string p0, "cdata-sections"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a6

    const-string p0, "comments"

    .line 393
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a6

    const-string p0, "entities"

    .line 394
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a6

    const-string p0, "infoset"

    .line 395
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a6

    const-string p0, "element-content-whitespace"

    .line 396
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a6

    const-string p0, "namespaces"

    .line 397
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a6

    const-string p0, "namespace-declarations"

    .line 398
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a6

    const-string p0, "split-cdata-sections"

    .line 399
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a6

    const-string p0, "well-formed"

    .line 400
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a6

    const-string p0, "discard-default-content"

    .line 401
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a6

    const-string p0, "format-pretty-print"

    .line 402
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a6

    const-string p0, "xml-declaration"

    .line 403
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_66

    goto :goto_a6

    .line 407
    :cond_66
    const-string p0, "canonical-form"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9e

    const-string p0, "check-character-normalization"

    .line 408
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9e

    const-string p0, "datatype-normalization"

    .line 409
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9e

    const-string p0, "validate-if-schema"

    .line 410
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9e

    const-string p0, "validate"

    .line 411
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8f

    goto :goto_9e

    .line 417
    :cond_8f
    const-string p0, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b6

    .line 419
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 415
    :cond_9e
    :goto_9e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_a6
    :goto_a6
    return v0

    .line 422
    :cond_a7
    const-string p0, "error-handler"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b1

    if-eqz p2, :cond_b5

    :cond_b1
    instance-of p0, p2, Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p0, :cond_b6

    :cond_b5
    return v0

    :cond_b6
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .registers 1

    .line 0
    return-object p0
.end method

.method public greylist getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;
    .registers 1

    .line 1458
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-object p0
.end method

.method public greylist getFilter()Lorg/w3c/dom/ls/LSSerializerFilter;
    .registers 1

    .line 833
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-object p0
.end method

.method protected greylist getInputEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_26

    .line 1435
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_d

    .line 1437
    check-cast p1, Lorg/w3c/dom/Document;

    goto :goto_11

    .line 1440
    :cond_d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_11
    if-eqz p1, :cond_26

    .line 1444
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object p0

    const-string v0, "Core"

    const-string v1, "3.0"

    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1445
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getInputEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getNewLine()Ljava/lang/String;
    .registers 1

    .line 846
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 438
    const-string v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_15

    .line 439
    iget p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_12

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 440
    :cond_15
    const-string v0, "cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 441
    iget p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_26

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_26
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 442
    :cond_29
    const-string v0, "entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 443
    iget p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_3a

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_3a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 444
    :cond_3d
    const-string v0, "namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 445
    iget p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_4e

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_4e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 446
    :cond_51
    const-string v0, "namespace-declarations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 447
    iget p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_62

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_62
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 448
    :cond_65
    const-string v0, "split-cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 449
    iget p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_76

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_76
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 450
    :cond_79
    const-string v0, "well-formed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 451
    iget p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_8a

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_8a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 452
    :cond_8d
    const-string v0, "discard-default-content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 453
    iget p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const p1, 0x8000

    and-int/2addr p0, p1

    if-eqz p0, :cond_a0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_a0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 454
    :cond_a3
    const-string v0, "format-pretty-print"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/high16 v3, 0x10000

    if-eqz v2, :cond_b8

    .line 455
    iget p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/2addr p0, v3

    if-eqz p0, :cond_b5

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_b5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 456
    :cond_b8
    const-string v2, "xml-declaration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 457
    iget p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const/high16 p1, 0x40000

    and-int/2addr p0, p1

    if-eqz p0, :cond_ca

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_ca
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 458
    :cond_cd
    const-string v2, "element-content-whitespace"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 459
    iget p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_de

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_de
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 460
    :cond_e1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 461
    iget p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/2addr p0, v3

    if-eqz p0, :cond_ef

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_ef
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 462
    :cond_f2
    const-string v0, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 463
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 464
    :cond_fd
    const-string v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_181

    const-string v0, "check-character-normalization"

    .line 465
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_181

    const-string v0, "datatype-normalization"

    .line 466
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_181

    const-string v0, "validate"

    .line 468
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_181

    const-string v0, "validate-if-schema"

    .line 469
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_126

    goto :goto_181

    .line 471
    :cond_126
    const-string v0, "infoset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_151

    .line 472
    iget p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 p1, p0, 0x40

    if-nez p1, :cond_14e

    and-int/lit8 p1, p0, 0x2

    if-nez p1, :cond_14e

    and-int/lit8 p1, p0, 0x20

    if-eqz p1, :cond_14e

    and-int/lit16 p1, p0, 0x100

    if-eqz p1, :cond_14e

    and-int/lit16 p1, p0, 0x200

    if-eqz p1, :cond_14e

    and-int/lit16 p1, p0, 0x4000

    if-eqz p1, :cond_14e

    and-int/2addr p0, v1

    if-eqz p0, :cond_14e

    .line 479
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 481
    :cond_14e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 482
    :cond_151
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 483
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-object p0

    .line 484
    :cond_15c
    const-string p0, "schema-location"

    .line 485
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_17f

    const-string p0, "schema-type"

    .line 486
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16d

    goto :goto_17f

    .line 490
    :cond_16d
    sget-object p0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v0, "FEATURE_NOT_FOUND"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 493
    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_17f
    :goto_17f
    const/4 p0, 0x0

    return-object p0

    .line 470
    :cond_181
    :goto_181
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public whitelist test-api getParameterNames()Lorg/w3c/dom/DOMStringList;
    .registers 2

    .line 507
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;

    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fRecognizedParameters:[Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method protected greylist getXMLEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_26

    .line 1406
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_d

    .line 1408
    check-cast p1, Lorg/w3c/dom/Document;

    goto :goto_11

    .line 1411
    :cond_d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_11
    if-eqz p1, :cond_26

    .line 1415
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object p0

    const-string v0, "Core"

    const-string v1, "3.0"

    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1416
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getXmlEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1420
    :cond_26
    const-string p0, "UTF-8"

    return-object p0
.end method

.method protected greylist getXMLVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_26

    .line 1374
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_d

    .line 1376
    check-cast p1, Lorg/w3c/dom/Document;

    goto :goto_11

    .line 1379
    :cond_d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_11
    if-eqz p1, :cond_26

    .line 1383
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object p0

    const-string v0, "Core"

    const-string v1, "3.0"

    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1384
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getXmlVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1390
    :cond_26
    const-string p0, "1.0"

    return-object p0
.end method

.method public greylist initializeSerializerProps()V
    .registers 14

    .line 255
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}canonical-form"

    const-string v2, "default:no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    const-string v3, "default:yes"

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v4, "{http://www.w3.org/TR/DOM-Level-3-LS}check-character-normalization"

    invoke-virtual {v0, v4, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v4, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    invoke-virtual {v0, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v5, "{http://www.w3.org/TR/DOM-Level-3-LS}datatype-normalization"

    invoke-virtual {v0, v5, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v6, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    invoke-virtual {v0, v6, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v7, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    invoke-virtual {v0, v7, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v8, "{http://xml.apache.org/xerces-2j}entities"

    invoke-virtual {v0, v8, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 297
    iget v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v0, v0, 0x80

    const-string v9, "{http://www.w3.org/TR/DOM-Level-3-LS}validate-if-schema"

    const-string v10, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    const-string v12, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    if-eqz v0, :cond_7c

    .line 298
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v12, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v11, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v6, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v10, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v7, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v8, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v9, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v5, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    :cond_7c
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v12, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v11, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}split-cdata-sections"

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}validate"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v9, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v10, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "indent"

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const/4 v1, 0x3

    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    const-string v2, "{http://xml.apache.org/xalan}indent-amount"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}discard-default-content"

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 374
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v0, "omit-xml-declaration"

    const-string v1, "no"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public greylist setFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V
    .registers 2

    .line 859
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-void
.end method

.method public whitelist test-api setNewLine(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    .line 873
    :cond_3
    sget-object p1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->DEFAULT_END_OF_LINE:Ljava/lang/String;

    :goto_5
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 520
    instance-of v3, v2, Ljava/lang/Boolean;

    const-string v4, "entities"

    const-string v5, "cdata-sections"

    const-string v6, "comments"

    const-string v7, "datatype-normalization"

    const-string v8, "validate"

    const-string v9, "canonical-form"

    const-string v11, "FEATURE_NOT_SUPPORTED"

    const-string v14, "TYPE_MISMATCH_ERR"

    const-string v15, "validate-if-schema"

    if-eqz v3, :cond_317

    .line 521
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 523
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v6, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    const-string v13, "explicit:yes"

    const/16 v16, 0x8

    const-string v12, "explicit:no"

    if-eqz v3, :cond_4b

    if-eqz v2, :cond_37

    .line 524
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit8 v1, v1, 0x8

    goto :goto_3b

    .line 525
    :cond_37
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v1, v1, -0x9

    :goto_3b
    iput v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    if-eqz v2, :cond_45

    .line 528
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v6, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 531
    :cond_45
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v6, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 534
    :cond_4b
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    if-eqz v3, :cond_6e

    if-eqz v2, :cond_5a

    .line 535
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit8 v1, v1, 0x2

    goto :goto_5e

    .line 536
    :cond_5a
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v1, v1, -0x3

    :goto_5e
    iput v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    if-eqz v2, :cond_68

    .line 539
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v5, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 542
    :cond_68
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v5, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 545
    :cond_6e
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "{http://xml.apache.org/xerces-2j}entities"

    const-string v10, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    if-eqz v3, :cond_9d

    if-eqz v2, :cond_7f

    .line 546
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit8 v1, v1, 0x40

    goto :goto_83

    .line 547
    :cond_7f
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v1, v1, -0x41

    :goto_83
    iput v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    if-eqz v2, :cond_92

    .line 550
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v1, v10, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 552
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v4, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 556
    :cond_92
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v1, v10, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 558
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v4, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 562
    :cond_9d
    const-string v3, "namespaces"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move/from16 p2, v2

    const-string v2, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    if-eqz v3, :cond_c4

    if-eqz p2, :cond_b0

    .line 563
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit16 v1, v1, 0x100

    goto :goto_b4

    .line 564
    :cond_b0
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v1, v1, -0x101

    :goto_b4
    iput v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    if-eqz p2, :cond_be

    .line 567
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v2, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 570
    :cond_be
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v2, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 573
    :cond_c4
    const-string v3, "namespace-declarations"

    .line 574
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move/from16 v17, v3

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    if-eqz v17, :cond_eb

    if-eqz p2, :cond_d7

    .line 575
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit16 v1, v1, 0x200

    goto :goto_db

    .line 576
    :cond_d7
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v1, v1, -0x201

    :goto_db
    iput v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    if-eqz p2, :cond_e5

    .line 579
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v3, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 582
    :cond_e5
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v3, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_eb
    move-object/from16 v17, v14

    .line 585
    const-string v14, "split-cdata-sections"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_114

    if-eqz p2, :cond_fc

    .line 586
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit16 v1, v1, 0x800

    goto :goto_100

    .line 587
    :cond_fc
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v1, v1, -0x801

    :goto_100
    iput v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    if-eqz p2, :cond_10c

    .line 590
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}split-cdata-sections"

    invoke-virtual {v0, v1, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 593
    :cond_10c
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}split-cdata-sections"

    invoke-virtual {v0, v1, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 596
    :cond_114
    const-string v14, "well-formed"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    move/from16 v18, v14

    const-string v14, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    if-eqz v18, :cond_13b

    if-eqz p2, :cond_127

    .line 597
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit16 v1, v1, 0x4000

    goto :goto_12b

    .line 598
    :cond_127
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v1, v1, -0x4001

    :goto_12b
    iput v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    if-eqz p2, :cond_135

    .line 601
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v14, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 604
    :cond_135
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v14, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_13b
    move-object/from16 v18, v5

    .line 607
    const-string v5, "discard-default-content"

    .line 608
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_168

    if-eqz p2, :cond_14e

    .line 609
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const v2, 0x8000

    or-int/2addr v1, v2

    goto :goto_154

    .line 610
    :cond_14e
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const v2, -0x8001

    and-int/2addr v1, v2

    :goto_154
    iput v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    if-eqz p2, :cond_160

    .line 613
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}discard-default-content"

    invoke-virtual {v0, v1, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 616
    :cond_160
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}discard-default-content"

    invoke-virtual {v0, v1, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 619
    :cond_168
    const-string v5, "format-pretty-print"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_192

    if-eqz p2, :cond_178

    .line 620
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    goto :goto_17e

    .line 621
    :cond_178
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const v2, -0x10001

    and-int/2addr v1, v2

    :goto_17e
    iput v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    if-eqz p2, :cond_18a

    .line 624
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}format-pretty-print"

    invoke-virtual {v0, v1, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 628
    :cond_18a
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}format-pretty-print"

    invoke-virtual {v0, v1, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 631
    :cond_192
    const-string v5, "xml-declaration"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c0

    if-eqz p2, :cond_1a2

    .line 632
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    goto :goto_1a8

    .line 633
    :cond_1a2
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const v2, -0x40001

    and-int/2addr v1, v2

    :goto_1a8
    iput v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    if-eqz p2, :cond_1b6

    .line 635
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "omit-xml-declaration"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 637
    :cond_1b6
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "omit-xml-declaration"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 639
    :cond_1c0
    const-string v5, "element-content-whitespace"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    move/from16 v19, v5

    const-string v5, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    if-eqz v19, :cond_1e7

    if-eqz p2, :cond_1d3

    .line 640
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit8 v1, v1, 0x20

    goto :goto_1d7

    .line 641
    :cond_1d3
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v1, v1, -0x21

    :goto_1d7
    iput v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    if-eqz p2, :cond_1e1

    .line 644
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v5, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 647
    :cond_1e1
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v0, v5, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_1e7
    move-object/from16 v19, v4

    .line 650
    const-string v4, "ignore-unknown-character-denormalizations"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20d

    if-eqz p2, :cond_1fb

    .line 659
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}ignore-unknown-character-denormalizations"

    invoke-virtual {v0, v1, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 654
    :cond_1fb
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 657
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 662
    :cond_20d
    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2bd

    .line 663
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2bd

    .line 664
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2bd

    const-string v4, "check-character-normalization"

    .line 665
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2bd

    .line 666
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22f

    goto/16 :goto_2bd

    .line 696
    :cond_22f
    const-string v4, "infoset"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27c

    if-eqz p2, :cond_424

    .line 699
    iget v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v1, v1, -0x2053

    or-int/lit16 v1, v1, 0x4328

    .line 707
    iput v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 709
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v1, v2, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 711
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v1, v3, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 713
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v1, v6, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 715
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v1, v5, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 717
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v1, v14, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 720
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {v1, v10, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 722
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    move-object/from16 v2, v19

    invoke-virtual {v1, v2, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 725
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    move-object/from16 v2, v18

    invoke-virtual {v1, v2, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 727
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v2, "{http://www.w3.org/TR/DOM-Level-3-LS}validate-if-schema"

    invoke-virtual {v1, v2, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 729
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}datatype-normalization"

    invoke-virtual {v0, v1, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 734
    :cond_27c
    const-string v0, "error-handler"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a9

    const-string v0, "schema-location"

    .line 735
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a9

    const-string v0, "schema-type"

    .line 736
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_295

    goto :goto_2a9

    .line 744
    :cond_295
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "FEATURE_NOT_FOUND"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 747
    new-instance v1, Lorg/w3c/dom/DOMException;

    move/from16 v2, v16

    invoke-direct {v1, v2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 737
    :cond_2a9
    :goto_2a9
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v3, v17

    invoke-virtual {v0, v3, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 740
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x11

    invoke-direct {v1, v2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_2bd
    :goto_2bd
    if-nez p2, :cond_305

    .line 676
    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2cd

    .line 677
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}canonical-form"

    invoke-virtual {v0, v1, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 679
    :cond_2cd
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2db

    .line 680
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}validate-if-schema"

    invoke-virtual {v0, v1, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 682
    :cond_2db
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e9

    .line 683
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}validate"

    invoke-virtual {v0, v1, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 685
    :cond_2e9
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f7

    .line 686
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "check-character-normalizationcheck-character-normalization"

    invoke-virtual {v0, v1, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 688
    :cond_2f7
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_424

    .line 689
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}datatype-normalization"

    invoke-virtual {v0, v1, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 671
    :cond_305
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 674
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_317
    move-object v3, v14

    .line 750
    const-string v10, "error-handler"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33f

    if-eqz v2, :cond_339

    .line 751
    instance-of v4, v2, Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v4, :cond_327

    goto :goto_339

    .line 754
    :cond_327
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 757
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x11

    invoke-direct {v1, v2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 752
    :cond_339
    :goto_339
    move-object v1, v2

    check-cast v1, Lorg/w3c/dom/DOMErrorHandler;

    iput-object v1, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-void

    .line 759
    :cond_33f
    const-string v0, "schema-location"

    .line 760
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34f

    const-string v0, "schema-type"

    .line 761
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_353

    :cond_34f
    const/16 v4, 0x11

    goto/16 :goto_3fc

    .line 776
    :cond_353
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    .line 777
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    .line 778
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    const-string v0, "namespaces"

    .line 779
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    const-string v0, "namespace-declarations"

    .line 780
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    const-string v0, "split-cdata-sections"

    .line 781
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    const-string v0, "well-formed"

    .line 782
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    const-string v0, "discard-default-content"

    .line 783
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    const-string v0, "format-pretty-print"

    .line 784
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    const-string v0, "xml-declaration"

    .line 785
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    const-string v0, "element-content-whitespace"

    .line 786
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    const-string v0, "ignore-unknown-character-denormalizations"

    .line 787
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    .line 788
    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    .line 789
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    .line 790
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    const-string v0, "check-character-normalization"

    .line 791
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    .line 792
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ea

    const-string v0, "infoset"

    .line 793
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d6

    goto :goto_3ea

    .line 801
    :cond_3d6
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "FEATURE_NOT_FOUND"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 804
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 794
    :cond_3ea
    :goto_3ea
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 797
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v4, 0x11

    invoke-direct {v1, v4, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :goto_3fc
    if-eqz v2, :cond_424

    .line 763
    instance-of v0, v2, Ljava/lang/String;

    if-nez v0, :cond_412

    .line 764
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 767
    new-instance v1, Lorg/w3c/dom/DOMException;

    invoke-direct {v1, v4, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 769
    :cond_412
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 772
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_424
    return-void
.end method

.method public whitelist test-api write(Lorg/w3c/dom/Node;Lorg/w3c/dom/ls/LSOutput;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    .line 889
    const-string v0, "no-output-specified"

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x52

    if-nez p2, :cond_20

    .line 890
    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 891
    invoke-virtual {p1, v0, v2}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 894
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p0, :cond_1a

    .line 895
    new-instance p2, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    invoke-direct {p2, v1, p1, v0}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 899
    :cond_1a
    new-instance p0, Lorg/w3c/dom/ls/LSException;

    invoke-direct {p0, v3, p1}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_20
    const/4 v4, 0x0

    if-nez p1, :cond_24

    return v4

    .line 909
    :cond_24
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    .line 910
    invoke-interface {v5}, Lorg/apache/xml/serializer/Serializer;->reset()Z

    .line 913
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    const/4 v7, 0x1

    const-string v8, "unsupported-encoding"

    if-eq p1, v6, :cond_b4

    .line 915
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 918
    invoke-interface {p2}, Lorg/w3c/dom/ls/LSOutput;->getEncoding()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    if-nez v9, :cond_54

    .line 920
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getInputEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    if-eqz v9, :cond_45

    goto :goto_52

    .line 921
    :cond_45
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4e

    const-string v9, "UTF-8"

    goto :goto_52

    :cond_4e
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    :goto_52
    iput-object v9, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    .line 926
    :cond_54
    iget-object v9, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    invoke-static {v9}, Lorg/apache/xml/serializer/Encodings;->isRecognizedEncoding(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_74

    .line 927
    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 928
    invoke-virtual {p1, v8, v2}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 931
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p0, :cond_6e

    .line 932
    new-instance p2, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    invoke-direct {p2, v1, p1, v8}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 936
    :cond_6e
    new-instance p0, Lorg/w3c/dom/ls/LSException;

    invoke-direct {p0, v3, p1}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p0

    .line 939
    :cond_74
    invoke-interface {v5}, Lorg/apache/xml/serializer/Serializer;->getOutputFormat()Ljava/util/Properties;

    move-result-object v9

    const-string v10, "version"

    invoke-virtual {v9, v10, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 942
    iget-object v9, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v10, "{http://xml.apache.org/xerces-2j}xml-version"

    invoke-virtual {v9, v10, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 943
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v9, "encoding"

    iget-object v10, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 949
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/16 v9, 0x9

    if-ne v6, v9, :cond_a2

    .line 950
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-ne v6, v7, :cond_a2

    .line 951
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v9, 0x6

    if-eq v6, v9, :cond_b2

    :cond_a2
    iget v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const/high16 v9, 0x40000

    and-int/2addr v6, v9

    if-eqz v6, :cond_b2

    .line 953
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v9, "omit-xml-declaration"

    const-string v10, "default:no"

    invoke-virtual {v6, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 958
    :cond_b2
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    .line 962
    :cond_b4
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    iget-object v9, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-interface {v6, v9}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    .line 973
    :try_start_bb
    invoke-interface {p2}, Lorg/w3c/dom/ls/LSOutput;->getCharacterStream()Ljava/io/Writer;

    move-result-object v6

    if-nez v6, :cond_14e

    .line 977
    invoke-interface {p2}, Lorg/w3c/dom/ls/LSOutput;->getByteStream()Ljava/io/OutputStream;

    move-result-object v6

    if-nez v6, :cond_14a

    .line 981
    invoke-interface {p2}, Lorg/w3c/dom/ls/LSOutput;->getSystemId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_ef

    .line 983
    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 984
    invoke-virtual {p1, v0, v2}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 987
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p2, :cond_e9

    .line 988
    new-instance v4, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    invoke-direct {v4, v1, p1, v0}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    goto :goto_e9

    :catch_e0
    move-exception p1

    goto/16 :goto_180

    :catch_e3
    move-exception p0

    goto/16 :goto_19b

    :catch_e6
    move-exception p1

    goto/16 :goto_1a8

    .line 992
    :cond_e9
    :goto_e9
    new-instance p2, Lorg/w3c/dom/ls/LSException;

    invoke-direct {p2, v3, p1}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p2

    .line 996
    :cond_ef
    invoke-static {p2}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 998
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    .line 1001
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 1011
    const-string v9, "file"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_126

    if-eqz v6, :cond_118

    .line 1012
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_118

    const-string p2, "localhost"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_126

    .line 1014
    :cond_118
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_146

    .line 1020
    :cond_126
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    .line 1021
    invoke-virtual {p2, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 1022
    invoke-virtual {p2, v7}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 1023
    invoke-virtual {p2, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 1024
    invoke-virtual {p2, v4}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 1027
    instance-of v0, p2, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_142

    .line 1028
    move-object v0, p2

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1029
    const-string v4, "PUT"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1031
    :cond_142
    invoke-virtual {p2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 1034
    :goto_146
    invoke-interface {v5, p2}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_151

    .line 1038
    :cond_14a
    invoke-interface {v5, v6}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_151

    .line 1042
    :cond_14e
    invoke-interface {v5, v6}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    .line 1050
    :goto_151
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    if-nez p2, :cond_15d

    .line 1051
    invoke-interface {v5}, Lorg/apache/xml/serializer/Serializer;->asDOM3Serializer()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xml/serializer/DOM3Serializer;

    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    .line 1055
    :cond_15d
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p2, :cond_166

    .line 1056
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    invoke-interface {v0, p2}, Lorg/apache/xml/serializer/DOM3Serializer;->setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V

    .line 1060
    :cond_166
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz p2, :cond_16f

    .line 1061
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    invoke-interface {v0, p2}, Lorg/apache/xml/serializer/DOM3Serializer;->setNodeFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V

    .line 1065
    :cond_16f
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/xml/serializer/DOM3Serializer;->setNewLine([C)V

    .line 1069
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    invoke-interface {p2, p1}, Lorg/apache/xml/serializer/DOM3Serializer;->serializeDOM3(Lorg/w3c/dom/Node;)V
    :try_end_17f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_bb .. :try_end_17f} :catch_e6
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_bb .. :try_end_17f} :catch_1a6
    .catch Ljava/lang/RuntimeException; {:try_start_bb .. :try_end_17f} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_17f} :catch_e0

    return v7

    .line 1089
    :goto_180
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p0, :cond_190

    .line 1090
    new-instance p2, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    .line 1091
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v0, v2, p1}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1090
    invoke-interface {p0, p2}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1094
    :cond_190
    invoke-static {v3, p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object p0

    invoke-virtual {p0}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ls/LSException;

    throw p0

    .line 1087
    :goto_19b
    invoke-static {v3, p0}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object p0

    invoke-virtual {p0}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ls/LSException;

    throw p0

    :catch_1a6
    move-exception p0

    .line 1085
    throw p0

    .line 1073
    :goto_1a8
    sget-object p2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 1074
    invoke-virtual {p2, v8, v2}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1077
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p0, :cond_1ba

    .line 1078
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    invoke-direct {v0, v1, p2, v8, p1}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {p0, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1082
    :cond_1ba
    invoke-static {v3, p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object p0

    invoke-virtual {p0}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ls/LSException;

    throw p0
.end method

.method public whitelist test-api writeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1118
    :cond_4
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    .line 1119
    invoke-interface {v1}, Lorg/apache/xml/serializer/Serializer;->reset()Z

    .line 1121
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    if-eq p1, v2, :cond_52

    .line 1123
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 1125
    invoke-interface {v1}, Lorg/apache/xml/serializer/Serializer;->getOutputFormat()Ljava/util/Properties;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v3, v4, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1128
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v4, "{http://xml.apache.org/xerces-2j}xml-version"

    invoke-virtual {v3, v4, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1129
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "encoding"

    const-string v4, "UTF-16"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1135
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_40

    .line 1136
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_40

    .line 1137
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_50

    :cond_40
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_50

    .line 1139
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "omit-xml-declaration"

    const-string v4, "default:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1144
    :cond_50
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    .line 1147
    :cond_52
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-interface {v2, v3}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    .line 1150
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    const/16 v3, 0x52

    .line 1156
    :try_start_60
    invoke-interface {v1, v2}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    .line 1160
    iget-object v4, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    if-nez v4, :cond_74

    .line 1161
    invoke-interface {v1}, Lorg/apache/xml/serializer/Serializer;->asDOM3Serializer()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/serializer/DOM3Serializer;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    goto :goto_74

    :catch_70
    move-exception p1

    goto :goto_9b

    :catch_72
    move-exception p0

    goto :goto_b7

    .line 1165
    :cond_74
    :goto_74
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_7d

    .line 1166
    iget-object v4, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    invoke-interface {v4, v1}, Lorg/apache/xml/serializer/DOM3Serializer;->setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V

    .line 1170
    :cond_7d
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v1, :cond_86

    .line 1171
    iget-object v4, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    invoke-interface {v4, v1}, Lorg/apache/xml/serializer/DOM3Serializer;->setNodeFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V

    .line 1175
    :cond_86
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    iget-object v4, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/xml/serializer/DOM3Serializer;->setNewLine([C)V

    .line 1178
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    invoke-interface {v1, p1}, Lorg/apache/xml/serializer/DOM3Serializer;->serializeDOM3(Lorg/w3c/dom/Node;)V
    :try_end_96
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_60 .. :try_end_96} :catch_c2
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_96} :catch_72
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_96} :catch_70

    .line 1194
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1185
    :goto_9b
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p0, :cond_ac

    .line 1186
    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v2, 0x3

    .line 1187
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4, v0, p1}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1186
    invoke-interface {p0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1190
    :cond_ac
    invoke-static {v3, p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object p0

    invoke-virtual {p0}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ls/LSException;

    throw p0

    .line 1183
    :goto_b7
    invoke-static {v3, p0}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object p0

    invoke-virtual {p0}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ls/LSException;

    throw p0

    :catch_c2
    move-exception p0

    .line 1181
    throw p0
.end method

.method public whitelist test-api writeToURI(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    .line 1210
    const-string v0, "no-output-specified"

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return v1

    .line 1215
    :cond_6
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    .line 1216
    invoke-interface {v2}, Lorg/apache/xml/serializer/Serializer;->reset()Z

    .line 1218
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    const/4 v4, 0x1

    if-eq p1, v3, :cond_6e

    .line 1220
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 1224
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getInputEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    if-nez v5, :cond_2e

    if-eqz v5, :cond_1f

    goto :goto_2c

    .line 1226
    :cond_1f
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_28

    const-string v5, "UTF-8"

    goto :goto_2c

    :cond_28
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    :goto_2c
    iput-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    .line 1229
    :cond_2e
    invoke-interface {v2}, Lorg/apache/xml/serializer/Serializer;->getOutputFormat()Ljava/util/Properties;

    move-result-object v5

    const-string v6, "version"

    invoke-virtual {v5, v6, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1232
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v6, "{http://xml.apache.org/xerces-2j}xml-version"

    invoke-virtual {v5, v6, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1233
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v5, "encoding"

    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1239
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v5, 0x9

    if-ne v3, v5, :cond_5c

    .line 1240
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v4, :cond_5c

    .line 1241
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v5, 0x6

    if-eq v3, v5, :cond_6c

    :cond_5c
    iget v3, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const/high16 v5, 0x40000

    and-int/2addr v3, v5

    if-eqz v3, :cond_6c

    .line 1243
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v5, "omit-xml-declaration"

    const-string v6, "default:no"

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1248
    :cond_6c
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    .line 1252
    :cond_6e
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-interface {v3, v5}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x52

    if-nez p2, :cond_9a

    .line 1259
    :try_start_7b
    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    invoke-virtual {p1, v0, v5}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1261
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p2, :cond_94

    .line 1262
    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    invoke-direct {v1, v3, p1, v0}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    goto :goto_94

    :catch_8e
    move-exception p1

    goto/16 :goto_123

    :catch_91
    move-exception p0

    goto/16 :goto_13e

    .line 1266
    :cond_94
    :goto_94
    new-instance p2, Lorg/w3c/dom/ls/LSException;

    invoke-direct {p2, v6, p1}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p2

    .line 1270
    :cond_9a
    invoke-static {p2}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1272
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    .line 1275
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 1286
    const-string v8, "file"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d1

    if-eqz v7, :cond_c3

    .line 1287
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_c3

    const-string p2, "localhost"

    .line 1288
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d1

    .line 1290
    :cond_c3
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_f1

    .line 1296
    :cond_d1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    .line 1297
    invoke-virtual {p2, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 1298
    invoke-virtual {p2, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 1299
    invoke-virtual {p2, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 1300
    invoke-virtual {p2, v1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 1303
    instance-of v0, p2, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_ed

    .line 1304
    move-object v0, p2

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1305
    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1307
    :cond_ed
    invoke-virtual {p2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 1310
    :goto_f1
    invoke-interface {v2, p2}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    .line 1315
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    if-nez p2, :cond_100

    .line 1316
    invoke-interface {v2}, Lorg/apache/xml/serializer/Serializer;->asDOM3Serializer()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xml/serializer/DOM3Serializer;

    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    .line 1320
    :cond_100
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p2, :cond_109

    .line 1321
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    invoke-interface {v0, p2}, Lorg/apache/xml/serializer/DOM3Serializer;->setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V

    .line 1325
    :cond_109
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz p2, :cond_112

    .line 1326
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    invoke-interface {v0, p2}, Lorg/apache/xml/serializer/DOM3Serializer;->setNodeFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V

    .line 1330
    :cond_112
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/xml/serializer/DOM3Serializer;->setNewLine([C)V

    .line 1335
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    invoke-interface {p2, p1}, Lorg/apache/xml/serializer/DOM3Serializer;->serializeDOM3(Lorg/w3c/dom/Node;)V
    :try_end_122
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_7b .. :try_end_122} :catch_149
    .catch Ljava/lang/RuntimeException; {:try_start_7b .. :try_end_122} :catch_91
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_122} :catch_8e

    return v4

    .line 1343
    :goto_123
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p0, :cond_133

    .line 1344
    new-instance p2, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    .line 1345
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v3, v0, v5, p1}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1344
    invoke-interface {p0, p2}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1348
    :cond_133
    invoke-static {v6, p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object p0

    invoke-virtual {p0}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ls/LSException;

    throw p0

    .line 1341
    :goto_13e
    invoke-static {v6, p0}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object p0

    invoke-virtual {p0}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ls/LSException;

    throw p0

    :catch_149
    move-exception p0

    .line 1339
    throw p0
.end method
