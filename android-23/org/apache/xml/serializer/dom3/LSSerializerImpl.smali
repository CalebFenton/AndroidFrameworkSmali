.class public final Lorg/apache/xml/serializer/dom3/LSSerializerImpl;
.super Ljava/lang/Object;
.source "LSSerializerImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMConfiguration;
.implements Lorg/w3c/dom/ls/LSSerializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;,
        Lorg/apache/xml/serializer/dom3/LSSerializerImpl$1;
    }
.end annotation


# static fields
.field private static final CANONICAL:I = 0x1

.field private static final CDATA:I = 0x2

.field private static final CHARNORMALIZE:I = 0x4

.field private static final COMMENTS:I = 0x8

.field private static final DEFAULT_END_OF_LINE:Ljava/lang/String;

.field private static final DISCARDDEFAULT:I = 0x8000

.field private static final DTNORMALIZE:I = 0x10

.field private static final ELEM_CONTENT_WHITESPACE:I = 0x20

.field private static final ENTITIES:I = 0x40

.field private static final IGNORE_CHAR_DENORMALIZE:I = 0x20000

.field private static final INFOSET:I = 0x80

.field private static final NAMESPACEDECLS:I = 0x200

.field private static final NAMESPACES:I = 0x100

.field private static final NORMALIZECHARS:I = 0x400

.field private static final PRETTY_PRINT:I = 0x10000

.field private static final SCHEMAVALIDATE:I = 0x2000

.field private static final SPLITCDATA:I = 0x800

.field private static final VALIDATE:I = 0x1000

.field private static final WELLFORMED:I = 0x4000

.field private static final XMLDECL:I = 0x40000


# instance fields
.field private fDOMConfigProperties:Ljava/util/Properties;

.field private fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

.field private fEncoding:Ljava/lang/String;

.field private fEndOfLine:Ljava/lang/String;

.field protected fFeatures:I

.field private fRecognizedParameters:[Ljava/lang/String;

.field private fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

.field private fVisitedNode:Lorg/w3c/dom/Node;

.field private fXMLSerializer:Lorg/apache/xml/serializer/Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 75
    new-instance v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$1;

    #@2
    invoke-direct {v1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$1;-><init>()V

    #@5
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    .line 87
    .local v0, "lineSeparator":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@d
    .line 88
    const-string/jumbo v1, "\r\n"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    const-string/jumbo v1, "\r"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    .line 87
    if-eqz v1, :cond_1

    #@1f
    .end local v0    # "lineSeparator":Ljava/lang/String;
    :cond_0
    :goto_0
    sput-object v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->DEFAULT_END_OF_LINE:Ljava/lang/String;

    #@21
    .line 70
    return-void

    #@22
    .line 88
    .restart local v0    # "lineSeparator":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "\n"

    #@25
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 92
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    #@7
    .line 95
    iput v3, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@9
    .line 98
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@b
    .line 101
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@d
    .line 104
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    #@f
    .line 107
    sget-object v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->DEFAULT_END_OF_LINE:Ljava/lang/String;

    #@11
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    #@13
    .line 110
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@15
    .line 113
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@17
    .line 182
    const/16 v1, 0x13

    #@19
    new-array v1, v1, [Ljava/lang/String;

    #@1b
    .line 183
    const-string/jumbo v2, "canonical-form"

    #@1e
    aput-object v2, v1, v3

    #@20
    .line 184
    const-string/jumbo v2, "cdata-sections"

    #@23
    const/4 v3, 0x1

    #@24
    aput-object v2, v1, v3

    #@26
    .line 185
    const-string/jumbo v2, "check-character-normalization"

    #@29
    const/4 v3, 0x2

    #@2a
    aput-object v2, v1, v3

    #@2c
    .line 186
    const-string/jumbo v2, "comments"

    #@2f
    const/4 v3, 0x3

    #@30
    aput-object v2, v1, v3

    #@32
    .line 187
    const-string/jumbo v2, "datatype-normalization"

    #@35
    const/4 v3, 0x4

    #@36
    aput-object v2, v1, v3

    #@38
    .line 188
    const-string/jumbo v2, "element-content-whitespace"

    #@3b
    const/4 v3, 0x5

    #@3c
    aput-object v2, v1, v3

    #@3e
    .line 189
    const-string/jumbo v2, "entities"

    #@41
    const/4 v3, 0x6

    #@42
    aput-object v2, v1, v3

    #@44
    .line 190
    const-string/jumbo v2, "infoset"

    #@47
    const/4 v3, 0x7

    #@48
    aput-object v2, v1, v3

    #@4a
    .line 191
    const-string/jumbo v2, "namespaces"

    #@4d
    const/16 v3, 0x8

    #@4f
    aput-object v2, v1, v3

    #@51
    .line 192
    const-string/jumbo v2, "namespace-declarations"

    #@54
    const/16 v3, 0x9

    #@56
    aput-object v2, v1, v3

    #@58
    .line 194
    const-string/jumbo v2, "split-cdata-sections"

    #@5b
    const/16 v3, 0xa

    #@5d
    aput-object v2, v1, v3

    #@5f
    .line 195
    const-string/jumbo v2, "validate"

    #@62
    const/16 v3, 0xb

    #@64
    aput-object v2, v1, v3

    #@66
    .line 196
    const-string/jumbo v2, "validate-if-schema"

    #@69
    const/16 v3, 0xc

    #@6b
    aput-object v2, v1, v3

    #@6d
    .line 197
    const-string/jumbo v2, "well-formed"

    #@70
    const/16 v3, 0xd

    #@72
    aput-object v2, v1, v3

    #@74
    .line 198
    const-string/jumbo v2, "discard-default-content"

    #@77
    const/16 v3, 0xe

    #@79
    aput-object v2, v1, v3

    #@7b
    .line 199
    const-string/jumbo v2, "format-pretty-print"

    #@7e
    const/16 v3, 0xf

    #@80
    aput-object v2, v1, v3

    #@82
    .line 200
    const-string/jumbo v2, "ignore-unknown-character-denormalizations"

    #@85
    const/16 v3, 0x10

    #@87
    aput-object v2, v1, v3

    #@89
    .line 201
    const-string/jumbo v2, "xml-declaration"

    #@8c
    const/16 v3, 0x11

    #@8e
    aput-object v2, v1, v3

    #@90
    .line 202
    const-string/jumbo v2, "error-handler"

    #@93
    const/16 v3, 0x12

    #@95
    aput-object v2, v1, v3

    #@97
    .line 182
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fRecognizedParameters:[Ljava/lang/String;

    #@99
    .line 215
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@9b
    or-int/lit8 v1, v1, 0x2

    #@9d
    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@9f
    .line 216
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@a1
    or-int/lit8 v1, v1, 0x8

    #@a3
    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@a5
    .line 217
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@a7
    or-int/lit8 v1, v1, 0x20

    #@a9
    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@ab
    .line 218
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@ad
    or-int/lit8 v1, v1, 0x40

    #@af
    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@b1
    .line 219
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@b3
    or-int/lit16 v1, v1, 0x100

    #@b5
    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@b7
    .line 220
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@b9
    or-int/lit16 v1, v1, 0x200

    #@bb
    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@bd
    .line 221
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@bf
    or-int/lit16 v1, v1, 0x800

    #@c1
    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@c3
    .line 222
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@c5
    or-int/lit16 v1, v1, 0x4000

    #@c7
    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@c9
    .line 223
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@cb
    const v2, 0x8000

    #@ce
    or-int/2addr v1, v2

    #@cf
    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@d1
    .line 224
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@d3
    const/high16 v2, 0x40000

    #@d5
    or-int/2addr v1, v2

    #@d6
    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@d8
    .line 227
    new-instance v1, Ljava/util/Properties;

    #@da
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    #@dd
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@df
    .line 230
    invoke-virtual {p0}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->initializeSerializerProps()V

    #@e2
    .line 233
    const-string/jumbo v1, "xml"

    #@e5
    invoke-static {v1}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    #@e8
    move-result-object v0

    #@e9
    .line 240
    .local v0, "configProps":Ljava/util/Properties;
    invoke-static {v0}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    #@ec
    move-result-object v1

    #@ed
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    #@ef
    .line 243
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    #@f1
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@f3
    invoke-interface {v1, v2}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    #@f6
    .line 213
    return-void
.end method

.method private static createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;
    .locals 5
    .param p0, "code"    # S
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1499
    new-instance v1, Lorg/w3c/dom/ls/LSException;

    #@3
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    :cond_0
    invoke-direct {v1, p0, v2}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    #@c
    .line 1500
    .local v1, "lse":Lorg/w3c/dom/ls/LSException;
    if-eqz p1, :cond_1

    #@e
    invoke-static {}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->-get1()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 1502
    :try_start_0
    invoke-static {}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->-get0()Ljava/lang/reflect/Method;

    #@17
    move-result-object v2

    #@18
    const/4 v3, 0x1

    #@19
    new-array v3, v3, [Ljava/lang/Object;

    #@1b
    const/4 v4, 0x0

    #@1c
    aput-object p1, v3, v4

    #@1e
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 1507
    :cond_1
    :goto_0
    return-object v1

    #@22
    .line 1505
    :catch_0
    move-exception v0

    #@23
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "origPath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x0

    #@2
    .line 1465
    if-eqz p0, :cond_2

    #@4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_2

    #@a
    const/16 v5, 0x25

    #@c
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v5

    #@10
    const/4 v6, -0x1

    #@11
    if-eq v5, v6, :cond_2

    #@13
    .line 1467
    new-instance v4, Ljava/util/StringTokenizer;

    #@15
    const-string/jumbo v5, "%"

    #@18
    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 1468
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/lang/StringBuffer;

    #@1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@20
    move-result v5

    #@21
    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    #@24
    .line 1469
    .local v1, "result":Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    #@27
    move-result v2

    #@28
    .line 1470
    .local v2, "size":I
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    .line 1471
    const/4 v0, 0x1

    #@30
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@32
    .line 1472
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 1473
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@39
    move-result v5

    #@3a
    if-lt v5, v8, :cond_0

    #@3c
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    #@3f
    move-result v5

    #@40
    invoke-static {v5}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->isHexDigit(C)Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_0

    #@46
    .line 1474
    const/4 v5, 0x1

    #@47
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    #@4a
    move-result v5

    #@4b
    invoke-static {v5}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->isHexDigit(C)Z

    #@4e
    move-result v5

    #@4f
    .line 1473
    if-eqz v5, :cond_0

    #@51
    .line 1476
    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    const/16 v6, 0x10

    #@57
    invoke-static {v5, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@5e
    move-result v5

    #@5f
    int-to-char v5, v5

    #@60
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@63
    .line 1477
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    .line 1479
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6a
    .line 1471
    add-int/lit8 v0, v0, 0x1

    #@6c
    goto :goto_0

    #@6d
    .line 1481
    .end local v3    # "token":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    return-object v5

    #@72
    .line 1483
    .end local v0    # "i":I
    .end local v1    # "result":Ljava/lang/StringBuffer;
    .end local v2    # "size":I
    .end local v4    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_2
    return-object p0
.end method

.method private static isHexDigit(C)Z
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1490
    const/16 v2, 0x30

    #@4
    if-lt p0, v2, :cond_1

    #@6
    const/16 v2, 0x39

    #@8
    if-gt p0, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    .line 1491
    :cond_1
    const/16 v2, 0x61

    #@d
    if-lt p0, v2, :cond_2

    #@f
    const/16 v2, 0x66

    #@11
    if-le p0, v2, :cond_0

    #@13
    .line 1492
    :cond_2
    const/16 v2, 0x41

    #@15
    if-lt p0, v2, :cond_3

    #@17
    const/16 v2, 0x46

    #@19
    if-le p0, v2, :cond_0

    #@1b
    :cond_3
    move v0, v1

    #@1c
    goto :goto_0
.end method


# virtual methods
.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 391
    instance-of v2, p2, Ljava/lang/Boolean;

    #@4
    if-eqz v2, :cond_5

    #@6
    .line 392
    const-string/jumbo v2, "cdata-sections"

    #@9
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 393
    const-string/jumbo v2, "comments"

    #@12
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    .line 392
    if-nez v2, :cond_0

    #@18
    .line 394
    const-string/jumbo v2, "entities"

    #@1b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v2

    #@1f
    .line 392
    if-nez v2, :cond_0

    #@21
    .line 395
    const-string/jumbo v2, "infoset"

    #@24
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v2

    #@28
    .line 392
    if-nez v2, :cond_0

    #@2a
    .line 396
    const-string/jumbo v2, "element-content-whitespace"

    #@2d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@30
    move-result v2

    #@31
    .line 392
    if-nez v2, :cond_0

    #@33
    .line 397
    const-string/jumbo v2, "namespaces"

    #@36
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@39
    move-result v2

    #@3a
    .line 392
    if-nez v2, :cond_0

    #@3c
    .line 398
    const-string/jumbo v2, "namespace-declarations"

    #@3f
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@42
    move-result v2

    #@43
    .line 392
    if-nez v2, :cond_0

    #@45
    .line 399
    const-string/jumbo v2, "split-cdata-sections"

    #@48
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4b
    move-result v2

    #@4c
    .line 392
    if-nez v2, :cond_0

    #@4e
    .line 400
    const-string/jumbo v2, "well-formed"

    #@51
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@54
    move-result v2

    #@55
    .line 392
    if-nez v2, :cond_0

    #@57
    .line 401
    const-string/jumbo v2, "discard-default-content"

    #@5a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5d
    move-result v2

    #@5e
    .line 392
    if-nez v2, :cond_0

    #@60
    .line 402
    const-string/jumbo v2, "format-pretty-print"

    #@63
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@66
    move-result v2

    #@67
    .line 392
    if-nez v2, :cond_0

    #@69
    .line 403
    const-string/jumbo v2, "xml-declaration"

    #@6c
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6f
    move-result v2

    #@70
    .line 392
    if-eqz v2, :cond_1

    #@72
    .line 405
    :cond_0
    return v1

    #@73
    .line 407
    :cond_1
    const-string/jumbo v2, "canonical-form"

    #@76
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@79
    move-result v2

    #@7a
    if-nez v2, :cond_2

    #@7c
    .line 408
    const-string/jumbo v2, "check-character-normalization"

    #@7f
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@82
    move-result v2

    #@83
    .line 407
    if-nez v2, :cond_2

    #@85
    .line 409
    const-string/jumbo v2, "datatype-normalization"

    #@88
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8b
    move-result v2

    #@8c
    .line 407
    if-nez v2, :cond_2

    #@8e
    .line 410
    const-string/jumbo v2, "validate-if-schema"

    #@91
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@94
    move-result v2

    #@95
    .line 407
    if-nez v2, :cond_2

    #@97
    .line 411
    const-string/jumbo v2, "validate"

    #@9a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9d
    move-result v2

    #@9e
    .line 407
    if-eqz v2, :cond_4

    #@a0
    .line 415
    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    #@a2
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@a5
    move-result v2

    #@a6
    if-eqz v2, :cond_3

    #@a8
    :goto_0
    return v0

    #@a9
    :cond_3
    move v0, v1

    #@aa
    goto :goto_0

    #@ab
    .line 417
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v1, "ignore-unknown-character-denormalizations"

    #@ae
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b1
    move-result v1

    #@b2
    if-eqz v1, :cond_8

    #@b4
    .line 419
    check-cast p2, Ljava/lang/Boolean;

    #@b6
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@b9
    move-result v0

    #@ba
    return v0

    #@bb
    .line 422
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v2, "error-handler"

    #@be
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c1
    move-result v2

    #@c2
    if-eqz v2, :cond_7

    #@c4
    .line 423
    if-nez p2, :cond_7

    #@c6
    .line 424
    :cond_6
    return v1

    #@c7
    .line 423
    :cond_7
    instance-of v2, p2, Lorg/w3c/dom/DOMErrorHandler;

    #@c9
    .line 422
    if-nez v2, :cond_6

    #@cb
    .line 426
    :cond_8
    return v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 0

    #@0
    .prologue
    .line 822
    return-object p0
.end method

.method public getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;
    .locals 1

    #@0
    .prologue
    .line 1458
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@2
    return-object v0
.end method

.method public getFilter()Lorg/w3c/dom/ls/LSSerializerFilter;
    .locals 1

    #@0
    .prologue
    .line 833
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@2
    return-object v0
.end method

.method protected getInputEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 5
    .param p1, "nodeArg"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1431
    const/4 v0, 0x0

    #@2
    .line 1434
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-eqz p1, :cond_1

    #@4
    .line 1435
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@7
    move-result v1

    #@8
    const/16 v2, 0x9

    #@a
    if-ne v1, v2, :cond_0

    #@c
    move-object v0, p1

    #@d
    .line 1437
    check-cast v0, Lorg/w3c/dom/Document;

    #@f
    .line 1444
    .local v0, "doc":Lorg/w3c/dom/Document;
    :goto_0
    if-eqz v0, :cond_1

    #@11
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, "Core"

    #@18
    const-string/jumbo v3, "3.0"

    #@1b
    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 1445
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getInputEncoding()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    return-object v1

    #@26
    .line 1440
    .local v0, "doc":Lorg/w3c/dom/Document;
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@29
    move-result-object v0

    #@2a
    .local v0, "doc":Lorg/w3c/dom/Document;
    goto :goto_0

    #@2b
    .line 1449
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :cond_1
    return-object v4
.end method

.method public getNewLine()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 846
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    const/high16 v2, 0x10000

    #@2
    const/4 v4, 0x0

    #@3
    .line 438
    const-string/jumbo v1, "comments"

    #@6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 439
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@e
    and-int/lit8 v1, v1, 0x8

    #@10
    if-eqz v1, :cond_0

    #@12
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@14
    :goto_0
    return-object v1

    #@15
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@17
    goto :goto_0

    #@18
    .line 440
    :cond_1
    const-string/jumbo v1, "cdata-sections"

    #@1b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_3

    #@21
    .line 441
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@23
    and-int/lit8 v1, v1, 0x2

    #@25
    if-eqz v1, :cond_2

    #@27
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@29
    :goto_1
    return-object v1

    #@2a
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@2c
    goto :goto_1

    #@2d
    .line 442
    :cond_3
    const-string/jumbo v1, "entities"

    #@30
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_5

    #@36
    .line 443
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@38
    and-int/lit8 v1, v1, 0x40

    #@3a
    if-eqz v1, :cond_4

    #@3c
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@3e
    :goto_2
    return-object v1

    #@3f
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@41
    goto :goto_2

    #@42
    .line 444
    :cond_5
    const-string/jumbo v1, "namespaces"

    #@45
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@48
    move-result v1

    #@49
    if-eqz v1, :cond_7

    #@4b
    .line 445
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@4d
    and-int/lit16 v1, v1, 0x100

    #@4f
    if-eqz v1, :cond_6

    #@51
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@53
    :goto_3
    return-object v1

    #@54
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@56
    goto :goto_3

    #@57
    .line 446
    :cond_7
    const-string/jumbo v1, "namespace-declarations"

    #@5a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5d
    move-result v1

    #@5e
    if-eqz v1, :cond_9

    #@60
    .line 447
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@62
    and-int/lit16 v1, v1, 0x200

    #@64
    if-eqz v1, :cond_8

    #@66
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@68
    :goto_4
    return-object v1

    #@69
    :cond_8
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@6b
    goto :goto_4

    #@6c
    .line 448
    :cond_9
    const-string/jumbo v1, "split-cdata-sections"

    #@6f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@72
    move-result v1

    #@73
    if-eqz v1, :cond_b

    #@75
    .line 449
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@77
    and-int/lit16 v1, v1, 0x800

    #@79
    if-eqz v1, :cond_a

    #@7b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@7d
    :goto_5
    return-object v1

    #@7e
    :cond_a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@80
    goto :goto_5

    #@81
    .line 450
    :cond_b
    const-string/jumbo v1, "well-formed"

    #@84
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@87
    move-result v1

    #@88
    if-eqz v1, :cond_d

    #@8a
    .line 451
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@8c
    and-int/lit16 v1, v1, 0x4000

    #@8e
    if-eqz v1, :cond_c

    #@90
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@92
    :goto_6
    return-object v1

    #@93
    :cond_c
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@95
    goto :goto_6

    #@96
    .line 452
    :cond_d
    const-string/jumbo v1, "discard-default-content"

    #@99
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9c
    move-result v1

    #@9d
    if-eqz v1, :cond_f

    #@9f
    .line 453
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@a1
    const v2, 0x8000

    #@a4
    and-int/2addr v1, v2

    #@a5
    if-eqz v1, :cond_e

    #@a7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@a9
    :goto_7
    return-object v1

    #@aa
    :cond_e
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@ac
    goto :goto_7

    #@ad
    .line 454
    :cond_f
    const-string/jumbo v1, "format-pretty-print"

    #@b0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b3
    move-result v1

    #@b4
    if-eqz v1, :cond_11

    #@b6
    .line 455
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@b8
    and-int/2addr v1, v2

    #@b9
    if-eqz v1, :cond_10

    #@bb
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@bd
    :goto_8
    return-object v1

    #@be
    :cond_10
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@c0
    goto :goto_8

    #@c1
    .line 456
    :cond_11
    const-string/jumbo v1, "xml-declaration"

    #@c4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c7
    move-result v1

    #@c8
    if-eqz v1, :cond_13

    #@ca
    .line 457
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@cc
    const/high16 v2, 0x40000

    #@ce
    and-int/2addr v1, v2

    #@cf
    if-eqz v1, :cond_12

    #@d1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@d3
    :goto_9
    return-object v1

    #@d4
    :cond_12
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@d6
    goto :goto_9

    #@d7
    .line 458
    :cond_13
    const-string/jumbo v1, "element-content-whitespace"

    #@da
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@dd
    move-result v1

    #@de
    if-eqz v1, :cond_15

    #@e0
    .line 459
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@e2
    and-int/lit8 v1, v1, 0x20

    #@e4
    if-eqz v1, :cond_14

    #@e6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@e8
    :goto_a
    return-object v1

    #@e9
    :cond_14
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@eb
    goto :goto_a

    #@ec
    .line 460
    :cond_15
    const-string/jumbo v1, "format-pretty-print"

    #@ef
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f2
    move-result v1

    #@f3
    if-eqz v1, :cond_17

    #@f5
    .line 461
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@f7
    and-int/2addr v1, v2

    #@f8
    if-eqz v1, :cond_16

    #@fa
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@fc
    :goto_b
    return-object v1

    #@fd
    :cond_16
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@ff
    goto :goto_b

    #@100
    .line 462
    :cond_17
    const-string/jumbo v1, "ignore-unknown-character-denormalizations"

    #@103
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@106
    move-result v1

    #@107
    if-eqz v1, :cond_18

    #@109
    .line 463
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@10b
    return-object v1

    #@10c
    .line 464
    :cond_18
    const-string/jumbo v1, "canonical-form"

    #@10f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@112
    move-result v1

    #@113
    if-nez v1, :cond_19

    #@115
    .line 465
    const-string/jumbo v1, "check-character-normalization"

    #@118
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11b
    move-result v1

    #@11c
    .line 464
    if-nez v1, :cond_19

    #@11e
    .line 466
    const-string/jumbo v1, "datatype-normalization"

    #@121
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@124
    move-result v1

    #@125
    .line 464
    if-nez v1, :cond_19

    #@127
    .line 468
    const-string/jumbo v1, "validate"

    #@12a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12d
    move-result v1

    #@12e
    .line 464
    if-nez v1, :cond_19

    #@130
    .line 469
    const-string/jumbo v1, "validate-if-schema"

    #@133
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@136
    move-result v1

    #@137
    .line 464
    if-eqz v1, :cond_1a

    #@139
    .line 470
    :cond_19
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@13b
    return-object v1

    #@13c
    .line 471
    :cond_1a
    const-string/jumbo v1, "infoset"

    #@13f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@142
    move-result v1

    #@143
    if-eqz v1, :cond_1c

    #@145
    .line 472
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@147
    and-int/lit8 v1, v1, 0x40

    #@149
    if-nez v1, :cond_1b

    #@14b
    .line 473
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@14d
    and-int/lit8 v1, v1, 0x2

    #@14f
    if-nez v1, :cond_1b

    #@151
    .line 474
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@153
    and-int/lit8 v1, v1, 0x20

    #@155
    if-eqz v1, :cond_1b

    #@157
    .line 475
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@159
    and-int/lit16 v1, v1, 0x100

    #@15b
    if-eqz v1, :cond_1b

    #@15d
    .line 476
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@15f
    and-int/lit16 v1, v1, 0x200

    #@161
    if-eqz v1, :cond_1b

    #@163
    .line 477
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@165
    and-int/lit16 v1, v1, 0x4000

    #@167
    if-eqz v1, :cond_1b

    #@169
    .line 478
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@16b
    and-int/lit8 v1, v1, 0x8

    #@16d
    if-eqz v1, :cond_1b

    #@16f
    .line 479
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@171
    return-object v1

    #@172
    .line 481
    :cond_1b
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@174
    return-object v1

    #@175
    .line 482
    :cond_1c
    const-string/jumbo v1, "error-handler"

    #@178
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17b
    move-result v1

    #@17c
    if-eqz v1, :cond_1d

    #@17e
    .line 483
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@180
    return-object v1

    #@181
    .line 485
    :cond_1d
    const-string/jumbo v1, "schema-location"

    #@184
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@187
    move-result v1

    #@188
    if-nez v1, :cond_1e

    #@18a
    .line 486
    const-string/jumbo v1, "schema-type"

    #@18d
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@190
    move-result v1

    #@191
    .line 484
    if-eqz v1, :cond_1f

    #@193
    .line 487
    :cond_1e
    const/4 v1, 0x0

    #@194
    return-object v1

    #@195
    .line 490
    :cond_1f
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@197
    .line 491
    const-string/jumbo v2, "FEATURE_NOT_FOUND"

    #@19a
    .line 492
    const/4 v3, 0x1

    #@19b
    new-array v3, v3, [Ljava/lang/Object;

    #@19d
    aput-object p1, v3, v4

    #@19f
    .line 490
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a2
    move-result-object v0

    #@1a3
    .line 493
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/w3c/dom/DOMException;

    #@1a5
    const/16 v2, 0x8

    #@1a7
    invoke-direct {v1, v2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@1aa
    throw v1
.end method

.method public getParameterNames()Lorg/w3c/dom/DOMStringList;
    .locals 2

    #@0
    .prologue
    .line 507
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;

    #@2
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fRecognizedParameters:[Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;-><init>([Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method protected getXMLEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .param p1, "nodeArg"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1402
    const/4 v0, 0x0

    #@1
    .line 1405
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-eqz p1, :cond_1

    #@3
    .line 1406
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@6
    move-result v1

    #@7
    const/16 v2, 0x9

    #@9
    if-ne v1, v2, :cond_0

    #@b
    move-object v0, p1

    #@c
    .line 1408
    check-cast v0, Lorg/w3c/dom/Document;

    #@e
    .line 1415
    .local v0, "doc":Lorg/w3c/dom/Document;
    :goto_0
    if-eqz v0, :cond_1

    #@10
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, "Core"

    #@17
    const-string/jumbo v3, "3.0"

    #@1a
    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 1416
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getXmlEncoding()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    return-object v1

    #@25
    .line 1411
    .local v0, "doc":Lorg/w3c/dom/Document;
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@28
    move-result-object v0

    #@29
    .local v0, "doc":Lorg/w3c/dom/Document;
    goto :goto_0

    #@2a
    .line 1420
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :cond_1
    const-string/jumbo v1, "UTF-8"

    #@2d
    return-object v1
.end method

.method protected getXMLVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .param p1, "nodeArg"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1370
    const/4 v0, 0x0

    #@1
    .line 1373
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-eqz p1, :cond_1

    #@3
    .line 1374
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@6
    move-result v1

    #@7
    const/16 v2, 0x9

    #@9
    if-ne v1, v2, :cond_0

    #@b
    move-object v0, p1

    #@c
    .line 1376
    check-cast v0, Lorg/w3c/dom/Document;

    #@e
    .line 1383
    .local v0, "doc":Lorg/w3c/dom/Document;
    :goto_0
    if-eqz v0, :cond_1

    #@10
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, "Core"

    #@17
    const-string/jumbo v3, "3.0"

    #@1a
    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 1384
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getXmlVersion()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    return-object v1

    #@25
    .line 1379
    .local v0, "doc":Lorg/w3c/dom/Document;
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@28
    move-result-object v0

    #@29
    .local v0, "doc":Lorg/w3c/dom/Document;
    goto :goto_0

    #@2a
    .line 1390
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :cond_1
    const-string/jumbo v1, "1.0"

    #@2d
    return-object v1
.end method

.method public initializeSerializerProps()V
    .locals 3

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@2
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}canonical-form"

    #@5
    .line 256
    const-string/jumbo v2, "default:no"

    #@8
    .line 255
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@b
    .line 259
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@d
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    #@10
    .line 260
    const-string/jumbo v2, "default:yes"

    #@13
    .line 259
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@16
    .line 263
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@18
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}check-character-normalization"

    #@1b
    .line 265
    const-string/jumbo v2, "default:no"

    #@1e
    .line 263
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@21
    .line 268
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@23
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    #@26
    .line 269
    const-string/jumbo v2, "default:yes"

    #@29
    .line 268
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@2c
    .line 272
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@2e
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}datatype-normalization"

    #@31
    .line 274
    const-string/jumbo v2, "default:no"

    #@34
    .line 272
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@37
    .line 277
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@39
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    #@3c
    .line 279
    const-string/jumbo v2, "default:yes"

    #@3f
    .line 277
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@42
    .line 282
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@44
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    #@47
    .line 283
    const-string/jumbo v2, "default:yes"

    #@4a
    .line 282
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@4d
    .line 285
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@4f
    const-string/jumbo v1, "{http://xml.apache.org/xerces-2j}entities"

    #@52
    .line 286
    const-string/jumbo v2, "default:yes"

    #@55
    .line 285
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@58
    .line 297
    iget v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@5a
    and-int/lit16 v0, v0, 0x80

    #@5c
    if-eqz v0, :cond_0

    #@5e
    .line 298
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@60
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    #@63
    .line 299
    const-string/jumbo v2, "default:yes"

    #@66
    .line 298
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@69
    .line 300
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@6b
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    #@6e
    .line 302
    const-string/jumbo v2, "default:yes"

    #@71
    .line 300
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@74
    .line 303
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@76
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    #@79
    .line 304
    const-string/jumbo v2, "default:yes"

    #@7c
    .line 303
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@7f
    .line 305
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@81
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    #@84
    .line 307
    const-string/jumbo v2, "default:yes"

    #@87
    .line 305
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@8a
    .line 308
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@8c
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    #@8f
    .line 309
    const-string/jumbo v2, "default:yes"

    #@92
    .line 308
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@95
    .line 310
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@97
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    #@9a
    .line 311
    const-string/jumbo v2, "default:no"

    #@9d
    .line 310
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@a0
    .line 313
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@a2
    const-string/jumbo v1, "{http://xml.apache.org/xerces-2j}entities"

    #@a5
    .line 314
    const-string/jumbo v2, "default:no"

    #@a8
    .line 313
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@ab
    .line 315
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@ad
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    #@b0
    .line 317
    const-string/jumbo v2, "default:no"

    #@b3
    .line 315
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@b6
    .line 318
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@b8
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}validate-if-schema"

    #@bb
    .line 320
    const-string/jumbo v2, "default:no"

    #@be
    .line 318
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@c1
    .line 321
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@c3
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}datatype-normalization"

    #@c6
    .line 323
    const-string/jumbo v2, "default:no"

    #@c9
    .line 321
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@cc
    .line 327
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@ce
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    #@d1
    .line 328
    const-string/jumbo v2, "default:yes"

    #@d4
    .line 327
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@d7
    .line 331
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@d9
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    #@dc
    .line 333
    const-string/jumbo v2, "default:yes"

    #@df
    .line 331
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@e2
    .line 343
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@e4
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}split-cdata-sections"

    #@e7
    .line 344
    const-string/jumbo v2, "default:yes"

    #@ea
    .line 343
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@ed
    .line 347
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@ef
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}validate"

    #@f2
    .line 348
    const-string/jumbo v2, "default:no"

    #@f5
    .line 347
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@f8
    .line 351
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@fa
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}validate-if-schema"

    #@fd
    .line 353
    const-string/jumbo v2, "default:no"

    #@100
    .line 351
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@103
    .line 356
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@105
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    #@108
    .line 357
    const-string/jumbo v2, "default:yes"

    #@10b
    .line 356
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@10e
    .line 360
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@110
    .line 361
    const-string/jumbo v1, "indent"

    #@113
    .line 362
    const-string/jumbo v2, "default:yes"

    #@116
    .line 360
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@119
    .line 363
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@11b
    .line 364
    const-string/jumbo v1, "{http://xml.apache.org/xalan}indent-amount"

    #@11e
    const/4 v2, 0x3

    #@11f
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@122
    move-result-object v2

    #@123
    .line 363
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@126
    .line 369
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@128
    const-string/jumbo v1, "{http://www.w3.org/TR/DOM-Level-3-LS}discard-default-content"

    #@12b
    .line 371
    const-string/jumbo v2, "default:yes"

    #@12e
    .line 369
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@131
    .line 374
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@133
    const-string/jumbo v1, "omit-xml-declaration"

    #@136
    const-string/jumbo v2, "no"

    #@139
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@13c
    .line 253
    return-void
.end method

.method public setFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/w3c/dom/ls/LSSerializerFilter;

    #@0
    .prologue
    .line 859
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@2
    .line 858
    return-void
.end method

.method public setNewLine(Ljava/lang/String;)V
    .locals 0
    .param p1, "newLine"    # Ljava/lang/String;

    #@0
    .prologue
    .line 873
    if-eqz p1, :cond_0

    #@2
    .end local p1    # "newLine":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    #@4
    .line 872
    return-void

    #@5
    .line 873
    .restart local p1    # "newLine":Ljava/lang/String;
    :cond_0
    sget-object p1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->DEFAULT_END_OF_LINE:Ljava/lang/String;

    #@7
    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x8

    #@2
    const/16 v7, 0x9

    #@4
    const/16 v6, 0x11

    #@6
    const/4 v4, 0x1

    #@7
    const/4 v5, 0x0

    #@8
    .line 520
    instance-of v2, p2, Ljava/lang/Boolean;

    #@a
    if-eqz v2, :cond_2e

    #@c
    .line 521
    check-cast p2, Ljava/lang/Boolean;

    #@e
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v1

    #@12
    .line 523
    .local v1, "state":Z
    const-string/jumbo v2, "comments"

    #@15
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_3

    #@1b
    .line 524
    if-eqz v1, :cond_1

    #@1d
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@1f
    or-int/lit8 v2, v2, 0x8

    #@21
    :goto_0
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@23
    .line 527
    if-eqz v1, :cond_2

    #@25
    .line 528
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@27
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    #@2a
    .line 529
    const-string/jumbo v4, "explicit:yes"

    #@2d
    .line 528
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@30
    .line 518
    .end local v1    # "state":Z
    :cond_0
    :goto_1
    return-void

    #@31
    .line 524
    .restart local v1    # "state":Z
    :cond_1
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@33
    and-int/lit8 v2, v2, -0x9

    #@35
    goto :goto_0

    #@36
    .line 531
    :cond_2
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@38
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    #@3b
    .line 532
    const-string/jumbo v4, "explicit:no"

    #@3e
    .line 531
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@41
    goto :goto_1

    #@42
    .line 534
    :cond_3
    const-string/jumbo v2, "cdata-sections"

    #@45
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_6

    #@4b
    .line 535
    if-eqz v1, :cond_4

    #@4d
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@4f
    or-int/lit8 v2, v2, 0x2

    #@51
    :goto_2
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@53
    .line 538
    if-eqz v1, :cond_5

    #@55
    .line 539
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@57
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    #@5a
    .line 540
    const-string/jumbo v4, "explicit:yes"

    #@5d
    .line 539
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@60
    goto :goto_1

    #@61
    .line 535
    :cond_4
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@63
    and-int/lit8 v2, v2, -0x3

    #@65
    goto :goto_2

    #@66
    .line 542
    :cond_5
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@68
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    #@6b
    .line 543
    const-string/jumbo v4, "explicit:no"

    #@6e
    .line 542
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@71
    goto :goto_1

    #@72
    .line 545
    :cond_6
    const-string/jumbo v2, "entities"

    #@75
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@78
    move-result v2

    #@79
    if-eqz v2, :cond_9

    #@7b
    .line 546
    if-eqz v1, :cond_7

    #@7d
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@7f
    or-int/lit8 v2, v2, 0x40

    #@81
    :goto_3
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@83
    .line 549
    if-eqz v1, :cond_8

    #@85
    .line 550
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@87
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    #@8a
    .line 551
    const-string/jumbo v4, "explicit:yes"

    #@8d
    .line 550
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@90
    .line 552
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@92
    .line 553
    const-string/jumbo v3, "{http://xml.apache.org/xerces-2j}entities"

    #@95
    .line 554
    const-string/jumbo v4, "explicit:yes"

    #@98
    .line 552
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@9b
    goto :goto_1

    #@9c
    .line 546
    :cond_7
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@9e
    and-int/lit8 v2, v2, -0x41

    #@a0
    goto :goto_3

    #@a1
    .line 556
    :cond_8
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@a3
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    #@a6
    .line 557
    const-string/jumbo v4, "explicit:no"

    #@a9
    .line 556
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@ac
    .line 558
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@ae
    .line 559
    const-string/jumbo v3, "{http://xml.apache.org/xerces-2j}entities"

    #@b1
    .line 560
    const-string/jumbo v4, "explicit:no"

    #@b4
    .line 558
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@b7
    goto/16 :goto_1

    #@b9
    .line 562
    :cond_9
    const-string/jumbo v2, "namespaces"

    #@bc
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@bf
    move-result v2

    #@c0
    if-eqz v2, :cond_c

    #@c2
    .line 563
    if-eqz v1, :cond_a

    #@c4
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@c6
    or-int/lit16 v2, v2, 0x100

    #@c8
    :goto_4
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@ca
    .line 566
    if-eqz v1, :cond_b

    #@cc
    .line 567
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@ce
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    #@d1
    .line 568
    const-string/jumbo v4, "explicit:yes"

    #@d4
    .line 567
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@d7
    goto/16 :goto_1

    #@d9
    .line 563
    :cond_a
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@db
    and-int/lit16 v2, v2, -0x101

    #@dd
    goto :goto_4

    #@de
    .line 570
    :cond_b
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@e0
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    #@e3
    .line 571
    const-string/jumbo v4, "explicit:no"

    #@e6
    .line 570
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@e9
    goto/16 :goto_1

    #@eb
    .line 574
    :cond_c
    const-string/jumbo v2, "namespace-declarations"

    #@ee
    .line 573
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f1
    move-result v2

    #@f2
    if-eqz v2, :cond_f

    #@f4
    .line 575
    if-eqz v1, :cond_d

    #@f6
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@f8
    or-int/lit16 v2, v2, 0x200

    #@fa
    :goto_5
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@fc
    .line 578
    if-eqz v1, :cond_e

    #@fe
    .line 579
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@100
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    #@103
    .line 580
    const-string/jumbo v4, "explicit:yes"

    #@106
    .line 579
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@109
    goto/16 :goto_1

    #@10b
    .line 576
    :cond_d
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@10d
    and-int/lit16 v2, v2, -0x201

    #@10f
    goto :goto_5

    #@110
    .line 582
    :cond_e
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@112
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    #@115
    .line 583
    const-string/jumbo v4, "explicit:no"

    #@118
    .line 582
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@11b
    goto/16 :goto_1

    #@11d
    .line 585
    :cond_f
    const-string/jumbo v2, "split-cdata-sections"

    #@120
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@123
    move-result v2

    #@124
    if-eqz v2, :cond_12

    #@126
    .line 586
    if-eqz v1, :cond_10

    #@128
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@12a
    or-int/lit16 v2, v2, 0x800

    #@12c
    :goto_6
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@12e
    .line 589
    if-eqz v1, :cond_11

    #@130
    .line 590
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@132
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}split-cdata-sections"

    #@135
    .line 591
    const-string/jumbo v4, "explicit:yes"

    #@138
    .line 590
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@13b
    goto/16 :goto_1

    #@13d
    .line 586
    :cond_10
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@13f
    and-int/lit16 v2, v2, -0x801

    #@141
    goto :goto_6

    #@142
    .line 593
    :cond_11
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@144
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}split-cdata-sections"

    #@147
    .line 594
    const-string/jumbo v4, "explicit:no"

    #@14a
    .line 593
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@14d
    goto/16 :goto_1

    #@14f
    .line 596
    :cond_12
    const-string/jumbo v2, "well-formed"

    #@152
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@155
    move-result v2

    #@156
    if-eqz v2, :cond_15

    #@158
    .line 597
    if-eqz v1, :cond_13

    #@15a
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@15c
    or-int/lit16 v2, v2, 0x4000

    #@15e
    :goto_7
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@160
    .line 600
    if-eqz v1, :cond_14

    #@162
    .line 601
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@164
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    #@167
    .line 602
    const-string/jumbo v4, "explicit:yes"

    #@16a
    .line 601
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@16d
    goto/16 :goto_1

    #@16f
    .line 597
    :cond_13
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@171
    and-int/lit16 v2, v2, -0x4001

    #@173
    goto :goto_7

    #@174
    .line 604
    :cond_14
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@176
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    #@179
    .line 605
    const-string/jumbo v4, "explicit:no"

    #@17c
    .line 604
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@17f
    goto/16 :goto_1

    #@181
    .line 608
    :cond_15
    const-string/jumbo v2, "discard-default-content"

    #@184
    .line 607
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@187
    move-result v2

    #@188
    if-eqz v2, :cond_18

    #@18a
    .line 609
    if-eqz v1, :cond_16

    #@18c
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@18e
    const v3, 0x8000

    #@191
    or-int/2addr v2, v3

    #@192
    :goto_8
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@194
    .line 612
    if-eqz v1, :cond_17

    #@196
    .line 613
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@198
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}discard-default-content"

    #@19b
    .line 614
    const-string/jumbo v4, "explicit:yes"

    #@19e
    .line 613
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@1a1
    goto/16 :goto_1

    #@1a3
    .line 610
    :cond_16
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@1a5
    const v3, -0x8001

    #@1a8
    and-int/2addr v2, v3

    #@1a9
    goto :goto_8

    #@1aa
    .line 616
    :cond_17
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@1ac
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}discard-default-content"

    #@1af
    .line 617
    const-string/jumbo v4, "explicit:no"

    #@1b2
    .line 616
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@1b5
    goto/16 :goto_1

    #@1b7
    .line 619
    :cond_18
    const-string/jumbo v2, "format-pretty-print"

    #@1ba
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1bd
    move-result v2

    #@1be
    if-eqz v2, :cond_1b

    #@1c0
    .line 620
    if-eqz v1, :cond_19

    #@1c2
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@1c4
    const/high16 v3, 0x10000

    #@1c6
    or-int/2addr v2, v3

    #@1c7
    :goto_9
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@1c9
    .line 623
    if-eqz v1, :cond_1a

    #@1cb
    .line 624
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@1cd
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}format-pretty-print"

    #@1d0
    .line 625
    const-string/jumbo v4, "explicit:yes"

    #@1d3
    .line 624
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@1d6
    goto/16 :goto_1

    #@1d8
    .line 620
    :cond_19
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@1da
    .line 621
    const v3, -0x10001

    #@1dd
    .line 620
    and-int/2addr v2, v3

    #@1de
    goto :goto_9

    #@1df
    .line 628
    :cond_1a
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@1e1
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}format-pretty-print"

    #@1e4
    .line 629
    const-string/jumbo v4, "explicit:no"

    #@1e7
    .line 628
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@1ea
    goto/16 :goto_1

    #@1ec
    .line 631
    :cond_1b
    const-string/jumbo v2, "xml-declaration"

    #@1ef
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1f2
    move-result v2

    #@1f3
    if-eqz v2, :cond_1e

    #@1f5
    .line 632
    if-eqz v1, :cond_1c

    #@1f7
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@1f9
    const/high16 v3, 0x40000

    #@1fb
    or-int/2addr v2, v3

    #@1fc
    :goto_a
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@1fe
    .line 634
    if-eqz v1, :cond_1d

    #@200
    .line 635
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@202
    const-string/jumbo v3, "omit-xml-declaration"

    #@205
    const-string/jumbo v4, "no"

    #@208
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@20b
    goto/16 :goto_1

    #@20d
    .line 632
    :cond_1c
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@20f
    .line 633
    const v3, -0x40001

    #@212
    .line 632
    and-int/2addr v2, v3

    #@213
    goto :goto_a

    #@214
    .line 637
    :cond_1d
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@216
    const-string/jumbo v3, "omit-xml-declaration"

    #@219
    const-string/jumbo v4, "yes"

    #@21c
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@21f
    goto/16 :goto_1

    #@221
    .line 639
    :cond_1e
    const-string/jumbo v2, "element-content-whitespace"

    #@224
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@227
    move-result v2

    #@228
    if-eqz v2, :cond_21

    #@22a
    .line 640
    if-eqz v1, :cond_1f

    #@22c
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@22e
    or-int/lit8 v2, v2, 0x20

    #@230
    :goto_b
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@232
    .line 643
    if-eqz v1, :cond_20

    #@234
    .line 644
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@236
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    #@239
    .line 645
    const-string/jumbo v4, "explicit:yes"

    #@23c
    .line 644
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@23f
    goto/16 :goto_1

    #@241
    .line 640
    :cond_1f
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@243
    and-int/lit8 v2, v2, -0x21

    #@245
    goto :goto_b

    #@246
    .line 647
    :cond_20
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@248
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    #@24b
    .line 648
    const-string/jumbo v4, "explicit:no"

    #@24e
    .line 647
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@251
    goto/16 :goto_1

    #@253
    .line 650
    :cond_21
    const-string/jumbo v2, "ignore-unknown-character-denormalizations"

    #@256
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@259
    move-result v2

    #@25a
    if-eqz v2, :cond_23

    #@25c
    .line 652
    if-nez v1, :cond_22

    #@25e
    .line 654
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@260
    .line 655
    const-string/jumbo v3, "FEATURE_NOT_SUPPORTED"

    #@263
    .line 656
    new-array v4, v4, [Ljava/lang/Object;

    #@265
    aput-object p1, v4, v5

    #@267
    .line 654
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26a
    move-result-object v0

    #@26b
    .line 657
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    #@26d
    invoke-direct {v2, v7, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@270
    throw v2

    #@271
    .line 659
    .end local v0    # "msg":Ljava/lang/String;
    :cond_22
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@273
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}ignore-unknown-character-denormalizations"

    #@276
    .line 660
    const-string/jumbo v4, "explicit:yes"

    #@279
    .line 659
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@27c
    goto/16 :goto_1

    #@27e
    .line 662
    :cond_23
    const-string/jumbo v2, "canonical-form"

    #@281
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@284
    move-result v2

    #@285
    if-nez v2, :cond_24

    #@287
    .line 663
    const-string/jumbo v2, "validate-if-schema"

    #@28a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@28d
    move-result v2

    #@28e
    .line 662
    if-nez v2, :cond_24

    #@290
    .line 664
    const-string/jumbo v2, "validate"

    #@293
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@296
    move-result v2

    #@297
    .line 662
    if-nez v2, :cond_24

    #@299
    .line 665
    const-string/jumbo v2, "check-character-normalization"

    #@29c
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@29f
    move-result v2

    #@2a0
    .line 662
    if-nez v2, :cond_24

    #@2a2
    .line 666
    const-string/jumbo v2, "datatype-normalization"

    #@2a5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2a8
    move-result v2

    #@2a9
    .line 662
    if-eqz v2, :cond_2a

    #@2ab
    .line 670
    :cond_24
    if-eqz v1, :cond_25

    #@2ad
    .line 671
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@2af
    .line 672
    const-string/jumbo v3, "FEATURE_NOT_SUPPORTED"

    #@2b2
    .line 673
    new-array v4, v4, [Ljava/lang/Object;

    #@2b4
    aput-object p1, v4, v5

    #@2b6
    .line 671
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b9
    move-result-object v0

    #@2ba
    .line 674
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    #@2bc
    invoke-direct {v2, v7, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@2bf
    throw v2

    #@2c0
    .line 676
    .end local v0    # "msg":Ljava/lang/String;
    :cond_25
    const-string/jumbo v2, "canonical-form"

    #@2c3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2c6
    move-result v2

    #@2c7
    if-eqz v2, :cond_26

    #@2c9
    .line 677
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@2cb
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}canonical-form"

    #@2ce
    .line 678
    const-string/jumbo v4, "explicit:no"

    #@2d1
    .line 677
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@2d4
    goto/16 :goto_1

    #@2d6
    .line 679
    :cond_26
    const-string/jumbo v2, "validate-if-schema"

    #@2d9
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2dc
    move-result v2

    #@2dd
    if-eqz v2, :cond_27

    #@2df
    .line 680
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@2e1
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}validate-if-schema"

    #@2e4
    .line 681
    const-string/jumbo v4, "explicit:no"

    #@2e7
    .line 680
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@2ea
    goto/16 :goto_1

    #@2ec
    .line 682
    :cond_27
    const-string/jumbo v2, "validate"

    #@2ef
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2f2
    move-result v2

    #@2f3
    if-eqz v2, :cond_28

    #@2f5
    .line 683
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@2f7
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}validate"

    #@2fa
    .line 684
    const-string/jumbo v4, "explicit:no"

    #@2fd
    .line 683
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@300
    goto/16 :goto_1

    #@302
    .line 685
    :cond_28
    const-string/jumbo v2, "validate-if-schema"

    #@305
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@308
    move-result v2

    #@309
    if-eqz v2, :cond_29

    #@30b
    .line 686
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@30d
    const-string/jumbo v3, "check-character-normalizationcheck-character-normalization"

    #@310
    .line 687
    const-string/jumbo v4, "explicit:no"

    #@313
    .line 686
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@316
    goto/16 :goto_1

    #@318
    .line 688
    :cond_29
    const-string/jumbo v2, "datatype-normalization"

    #@31b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@31e
    move-result v2

    #@31f
    if-eqz v2, :cond_0

    #@321
    .line 689
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@323
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}datatype-normalization"

    #@326
    .line 690
    const-string/jumbo v4, "explicit:no"

    #@329
    .line 689
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@32c
    goto/16 :goto_1

    #@32e
    .line 696
    :cond_2a
    const-string/jumbo v2, "infoset"

    #@331
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@334
    move-result v2

    #@335
    if-eqz v2, :cond_2b

    #@337
    .line 698
    if-eqz v1, :cond_0

    #@339
    .line 699
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@33b
    and-int/lit8 v2, v2, -0x41

    #@33d
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@33f
    .line 700
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@341
    and-int/lit8 v2, v2, -0x3

    #@343
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@345
    .line 701
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@347
    and-int/lit16 v2, v2, -0x2001

    #@349
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@34b
    .line 702
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@34d
    and-int/lit8 v2, v2, -0x11

    #@34f
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@351
    .line 703
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@353
    or-int/lit16 v2, v2, 0x100

    #@355
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@357
    .line 704
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@359
    or-int/lit16 v2, v2, 0x200

    #@35b
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@35d
    .line 705
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@35f
    or-int/lit16 v2, v2, 0x4000

    #@361
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@363
    .line 706
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@365
    or-int/lit8 v2, v2, 0x20

    #@367
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@369
    .line 707
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@36b
    or-int/lit8 v2, v2, 0x8

    #@36d
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@36f
    .line 709
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@371
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    #@374
    .line 710
    const-string/jumbo v4, "explicit:yes"

    #@377
    .line 709
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@37a
    .line 711
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@37c
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    #@37f
    .line 712
    const-string/jumbo v4, "explicit:yes"

    #@382
    .line 711
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@385
    .line 713
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@387
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    #@38a
    .line 714
    const-string/jumbo v4, "explicit:yes"

    #@38d
    .line 713
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@390
    .line 715
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@392
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    #@395
    .line 716
    const-string/jumbo v4, "explicit:yes"

    #@398
    .line 715
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@39b
    .line 717
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@39d
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    #@3a0
    .line 718
    const-string/jumbo v4, "explicit:yes"

    #@3a3
    .line 717
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@3a6
    .line 720
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@3a8
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    #@3ab
    .line 721
    const-string/jumbo v4, "explicit:no"

    #@3ae
    .line 720
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@3b1
    .line 722
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@3b3
    const-string/jumbo v3, "{http://xml.apache.org/xerces-2j}entities"

    #@3b6
    .line 723
    const-string/jumbo v4, "explicit:no"

    #@3b9
    .line 722
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@3bc
    .line 725
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@3be
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    #@3c1
    .line 726
    const-string/jumbo v4, "explicit:no"

    #@3c4
    .line 725
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@3c7
    .line 727
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@3c9
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}validate-if-schema"

    #@3cc
    .line 728
    const-string/jumbo v4, "explicit:no"

    #@3cf
    .line 727
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@3d2
    .line 729
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@3d4
    const-string/jumbo v3, "{http://www.w3.org/TR/DOM-Level-3-LS}datatype-normalization"

    #@3d7
    .line 730
    const-string/jumbo v4, "explicit:no"

    #@3da
    .line 729
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@3dd
    goto/16 :goto_1

    #@3df
    .line 734
    :cond_2b
    const-string/jumbo v2, "error-handler"

    #@3e2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3e5
    move-result v2

    #@3e6
    if-nez v2, :cond_2c

    #@3e8
    .line 735
    const-string/jumbo v2, "schema-location"

    #@3eb
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3ee
    move-result v2

    #@3ef
    .line 734
    if-nez v2, :cond_2c

    #@3f1
    .line 736
    const-string/jumbo v2, "schema-type"

    #@3f4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3f7
    move-result v2

    #@3f8
    .line 734
    if-eqz v2, :cond_2d

    #@3fa
    .line 737
    :cond_2c
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@3fc
    .line 738
    const-string/jumbo v3, "TYPE_MISMATCH_ERR"

    #@3ff
    .line 739
    new-array v4, v4, [Ljava/lang/Object;

    #@401
    aput-object p1, v4, v5

    #@403
    .line 737
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@406
    move-result-object v0

    #@407
    .line 740
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    #@409
    invoke-direct {v2, v6, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@40c
    throw v2

    #@40d
    .line 744
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2d
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@40f
    .line 745
    const-string/jumbo v3, "FEATURE_NOT_FOUND"

    #@412
    .line 746
    new-array v4, v4, [Ljava/lang/Object;

    #@414
    aput-object p1, v4, v5

    #@416
    .line 744
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@419
    move-result-object v0

    #@41a
    .line 747
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    #@41c
    invoke-direct {v2, v8, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@41f
    throw v2

    #@420
    .line 750
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "state":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2e
    const-string/jumbo v2, "error-handler"

    #@423
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@426
    move-result v2

    #@427
    if-eqz v2, :cond_31

    #@429
    .line 751
    if-eqz p2, :cond_2f

    #@42b
    instance-of v2, p2, Lorg/w3c/dom/DOMErrorHandler;

    #@42d
    if-eqz v2, :cond_30

    #@42f
    .line 752
    :cond_2f
    check-cast p2, Lorg/w3c/dom/DOMErrorHandler;

    #@431
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@433
    goto/16 :goto_1

    #@435
    .line 754
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_30
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@437
    .line 755
    const-string/jumbo v3, "TYPE_MISMATCH_ERR"

    #@43a
    .line 756
    new-array v4, v4, [Ljava/lang/Object;

    #@43c
    aput-object p1, v4, v5

    #@43e
    .line 754
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@441
    move-result-object v0

    #@442
    .line 757
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    #@444
    invoke-direct {v2, v6, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@447
    throw v2

    #@448
    .line 760
    .end local v0    # "msg":Ljava/lang/String;
    :cond_31
    const-string/jumbo v2, "schema-location"

    #@44b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@44e
    move-result v2

    #@44f
    if-nez v2, :cond_32

    #@451
    .line 761
    const-string/jumbo v2, "schema-type"

    #@454
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@457
    move-result v2

    #@458
    .line 759
    if-eqz v2, :cond_34

    #@45a
    .line 762
    :cond_32
    if-eqz p2, :cond_0

    #@45c
    .line 763
    instance-of v2, p2, Ljava/lang/String;

    #@45e
    if-nez v2, :cond_33

    #@460
    .line 764
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@462
    .line 765
    const-string/jumbo v3, "TYPE_MISMATCH_ERR"

    #@465
    .line 766
    new-array v4, v4, [Ljava/lang/Object;

    #@467
    aput-object p1, v4, v5

    #@469
    .line 764
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@46c
    move-result-object v0

    #@46d
    .line 767
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    #@46f
    invoke-direct {v2, v6, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@472
    throw v2

    #@473
    .line 769
    .end local v0    # "msg":Ljava/lang/String;
    :cond_33
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@475
    .line 770
    const-string/jumbo v3, "FEATURE_NOT_SUPPORTED"

    #@478
    .line 771
    new-array v4, v4, [Ljava/lang/Object;

    #@47a
    aput-object p1, v4, v5

    #@47c
    .line 769
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@47f
    move-result-object v0

    #@480
    .line 772
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    #@482
    invoke-direct {v2, v7, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@485
    throw v2

    #@486
    .line 776
    .end local v0    # "msg":Ljava/lang/String;
    :cond_34
    const-string/jumbo v2, "comments"

    #@489
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@48c
    move-result v2

    #@48d
    if-nez v2, :cond_35

    #@48f
    .line 777
    const-string/jumbo v2, "cdata-sections"

    #@492
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@495
    move-result v2

    #@496
    .line 776
    if-nez v2, :cond_35

    #@498
    .line 778
    const-string/jumbo v2, "entities"

    #@49b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@49e
    move-result v2

    #@49f
    .line 776
    if-nez v2, :cond_35

    #@4a1
    .line 779
    const-string/jumbo v2, "namespaces"

    #@4a4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4a7
    move-result v2

    #@4a8
    .line 776
    if-nez v2, :cond_35

    #@4aa
    .line 780
    const-string/jumbo v2, "namespace-declarations"

    #@4ad
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4b0
    move-result v2

    #@4b1
    .line 776
    if-nez v2, :cond_35

    #@4b3
    .line 781
    const-string/jumbo v2, "split-cdata-sections"

    #@4b6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4b9
    move-result v2

    #@4ba
    .line 776
    if-nez v2, :cond_35

    #@4bc
    .line 782
    const-string/jumbo v2, "well-formed"

    #@4bf
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4c2
    move-result v2

    #@4c3
    .line 776
    if-nez v2, :cond_35

    #@4c5
    .line 783
    const-string/jumbo v2, "discard-default-content"

    #@4c8
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4cb
    move-result v2

    #@4cc
    .line 776
    if-nez v2, :cond_35

    #@4ce
    .line 784
    const-string/jumbo v2, "format-pretty-print"

    #@4d1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4d4
    move-result v2

    #@4d5
    .line 776
    if-nez v2, :cond_35

    #@4d7
    .line 785
    const-string/jumbo v2, "xml-declaration"

    #@4da
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4dd
    move-result v2

    #@4de
    .line 776
    if-nez v2, :cond_35

    #@4e0
    .line 786
    const-string/jumbo v2, "element-content-whitespace"

    #@4e3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4e6
    move-result v2

    #@4e7
    .line 776
    if-nez v2, :cond_35

    #@4e9
    .line 787
    const-string/jumbo v2, "ignore-unknown-character-denormalizations"

    #@4ec
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4ef
    move-result v2

    #@4f0
    .line 776
    if-nez v2, :cond_35

    #@4f2
    .line 788
    const-string/jumbo v2, "canonical-form"

    #@4f5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4f8
    move-result v2

    #@4f9
    .line 776
    if-nez v2, :cond_35

    #@4fb
    .line 789
    const-string/jumbo v2, "validate-if-schema"

    #@4fe
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@501
    move-result v2

    #@502
    .line 776
    if-nez v2, :cond_35

    #@504
    .line 790
    const-string/jumbo v2, "validate"

    #@507
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@50a
    move-result v2

    #@50b
    .line 776
    if-nez v2, :cond_35

    #@50d
    .line 791
    const-string/jumbo v2, "check-character-normalization"

    #@510
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@513
    move-result v2

    #@514
    .line 776
    if-nez v2, :cond_35

    #@516
    .line 792
    const-string/jumbo v2, "datatype-normalization"

    #@519
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@51c
    move-result v2

    #@51d
    .line 776
    if-nez v2, :cond_35

    #@51f
    .line 793
    const-string/jumbo v2, "infoset"

    #@522
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@525
    move-result v2

    #@526
    .line 776
    if-eqz v2, :cond_36

    #@528
    .line 794
    :cond_35
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@52a
    .line 795
    const-string/jumbo v3, "TYPE_MISMATCH_ERR"

    #@52d
    .line 796
    new-array v4, v4, [Ljava/lang/Object;

    #@52f
    aput-object p1, v4, v5

    #@531
    .line 794
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@534
    move-result-object v0

    #@535
    .line 797
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    #@537
    invoke-direct {v2, v6, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@53a
    throw v2

    #@53b
    .line 801
    .end local v0    # "msg":Ljava/lang/String;
    :cond_36
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@53d
    .line 802
    const-string/jumbo v3, "FEATURE_NOT_FOUND"

    #@540
    .line 803
    new-array v4, v4, [Ljava/lang/Object;

    #@542
    aput-object p1, v4, v5

    #@544
    .line 801
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@547
    move-result-object v0

    #@548
    .line 804
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    #@54a
    invoke-direct {v2, v8, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@54d
    throw v2
.end method

.method public write(Lorg/w3c/dom/Node;Lorg/w3c/dom/ls/LSOutput;)Z
    .locals 26
    .param p1, "nodeArg"    # Lorg/w3c/dom/Node;
    .param p2, "destination"    # Lorg/w3c/dom/ls/LSOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    #@0
    .prologue
    .line 889
    if-nez p2, :cond_1

    #@2
    .line 890
    sget-object v21, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@4
    .line 892
    const-string/jumbo v22, "no-output-specified"

    #@7
    .line 893
    const/16 v23, 0x0

    #@9
    .line 890
    invoke-virtual/range {v21 .. v23}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c
    move-result-object v10

    #@d
    .line 894
    .local v10, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@11
    move-object/from16 v21, v0

    #@13
    if-eqz v21, :cond_0

    #@15
    .line 895
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@19
    move-object/from16 v21, v0

    #@1b
    new-instance v22, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@1d
    .line 897
    const-string/jumbo v23, "no-output-specified"

    #@20
    .line 896
    const/16 v24, 0x3

    #@22
    .line 895
    move-object/from16 v0, v22

    #@24
    move/from16 v1, v24

    #@26
    move-object/from16 v2, v23

    #@28
    invoke-direct {v0, v1, v10, v2}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    #@2b
    invoke-interface/range {v21 .. v22}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@2e
    .line 899
    :cond_0
    new-instance v21, Lorg/w3c/dom/ls/LSException;

    #@30
    const/16 v22, 0x52

    #@32
    move-object/from16 v0, v21

    #@34
    move/from16 v1, v22

    #@36
    invoke-direct {v0, v1, v10}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    #@39
    throw v21

    #@3a
    .line 903
    .end local v10    # "msg":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    #@3c
    .line 904
    const/16 v21, 0x0

    #@3e
    return v21

    #@3f
    .line 909
    :cond_2
    move-object/from16 v0, p0

    #@41
    iget-object v13, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    #@43
    .line 910
    .local v13, "serializer":Lorg/apache/xml/serializer/Serializer;
    invoke-interface {v13}, Lorg/apache/xml/serializer/Serializer;->reset()Z

    #@46
    .line 913
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    #@4a
    move-object/from16 v21, v0

    #@4c
    move-object/from16 v0, p1

    #@4e
    move-object/from16 v1, v21

    #@50
    if-eq v0, v1, :cond_a

    #@52
    .line 915
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@55
    move-result-object v20

    #@56
    .line 918
    .local v20, "xmlVersion":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/ls/LSOutput;->getEncoding()Ljava/lang/String;

    #@59
    move-result-object v21

    #@5a
    move-object/from16 v0, v21

    #@5c
    move-object/from16 v1, p0

    #@5e
    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    #@60
    .line 919
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    #@64
    move-object/from16 v21, v0

    #@66
    if-nez v21, :cond_3

    #@68
    .line 920
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getInputEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@6b
    move-result-object v21

    #@6c
    move-object/from16 v0, v21

    #@6e
    move-object/from16 v1, p0

    #@70
    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    #@72
    .line 921
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    #@76
    move-object/from16 v21, v0

    #@78
    if-eqz v21, :cond_5

    #@7a
    move-object/from16 v0, p0

    #@7c
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    #@7e
    move-object/from16 v21, v0

    #@80
    :goto_0
    move-object/from16 v0, v21

    #@82
    move-object/from16 v1, p0

    #@84
    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    #@86
    .line 926
    :cond_3
    move-object/from16 v0, p0

    #@88
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    #@8a
    move-object/from16 v21, v0

    #@8c
    invoke-static/range {v21 .. v21}, Lorg/apache/xml/serializer/Encodings;->isRecognizedEncoding(Ljava/lang/String;)Z

    #@8f
    move-result v21

    #@90
    if-nez v21, :cond_7

    #@92
    .line 927
    sget-object v21, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@94
    .line 929
    const-string/jumbo v22, "unsupported-encoding"

    #@97
    .line 930
    const/16 v23, 0x0

    #@99
    .line 927
    invoke-virtual/range {v21 .. v23}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9c
    move-result-object v10

    #@9d
    .line 931
    .restart local v10    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9f
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@a1
    move-object/from16 v21, v0

    #@a3
    if-eqz v21, :cond_4

    #@a5
    .line 932
    move-object/from16 v0, p0

    #@a7
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@a9
    move-object/from16 v21, v0

    #@ab
    new-instance v22, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@ad
    .line 934
    const-string/jumbo v23, "unsupported-encoding"

    #@b0
    .line 933
    const/16 v24, 0x3

    #@b2
    .line 932
    move-object/from16 v0, v22

    #@b4
    move/from16 v1, v24

    #@b6
    move-object/from16 v2, v23

    #@b8
    invoke-direct {v0, v1, v10, v2}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    #@bb
    invoke-interface/range {v21 .. v22}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@be
    .line 936
    :cond_4
    new-instance v21, Lorg/w3c/dom/ls/LSException;

    #@c0
    const/16 v22, 0x52

    #@c2
    move-object/from16 v0, v21

    #@c4
    move/from16 v1, v22

    #@c6
    invoke-direct {v0, v1, v10}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    #@c9
    throw v21

    #@ca
    .line 921
    .end local v10    # "msg":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@cd
    move-result-object v21

    #@ce
    if-nez v21, :cond_6

    #@d0
    const-string/jumbo v21, "UTF-8"

    #@d3
    goto :goto_0

    #@d4
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@d7
    move-result-object v21

    #@d8
    goto :goto_0

    #@d9
    .line 939
    :cond_7
    invoke-interface {v13}, Lorg/apache/xml/serializer/Serializer;->getOutputFormat()Ljava/util/Properties;

    #@dc
    move-result-object v21

    #@dd
    const-string/jumbo v22, "version"

    #@e0
    move-object/from16 v0, v21

    #@e2
    move-object/from16 v1, v22

    #@e4
    move-object/from16 v2, v20

    #@e6
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@e9
    .line 942
    move-object/from16 v0, p0

    #@eb
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@ed
    move-object/from16 v21, v0

    #@ef
    const-string/jumbo v22, "{http://xml.apache.org/xerces-2j}xml-version"

    #@f2
    move-object/from16 v0, v21

    #@f4
    move-object/from16 v1, v22

    #@f6
    move-object/from16 v2, v20

    #@f8
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@fb
    .line 943
    move-object/from16 v0, p0

    #@fd
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@ff
    move-object/from16 v21, v0

    #@101
    const-string/jumbo v22, "encoding"

    #@104
    move-object/from16 v0, p0

    #@106
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    #@108
    move-object/from16 v23, v0

    #@10a
    invoke-virtual/range {v21 .. v23}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@10d
    .line 949
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@110
    move-result v21

    #@111
    const/16 v22, 0x9

    #@113
    move/from16 v0, v21

    #@115
    move/from16 v1, v22

    #@117
    if-ne v0, v1, :cond_8

    #@119
    .line 950
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@11c
    move-result v21

    #@11d
    const/16 v22, 0x1

    #@11f
    move/from16 v0, v21

    #@121
    move/from16 v1, v22

    #@123
    if-eq v0, v1, :cond_d

    #@125
    .line 952
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    #@127
    iget v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@129
    move/from16 v21, v0

    #@12b
    const/high16 v22, 0x40000

    #@12d
    and-int v21, v21, v22

    #@12f
    if-eqz v21, :cond_9

    #@131
    .line 953
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@135
    move-object/from16 v21, v0

    #@137
    .line 954
    const-string/jumbo v22, "omit-xml-declaration"

    #@13a
    .line 955
    const-string/jumbo v23, "default:no"

    #@13d
    .line 953
    invoke-virtual/range {v21 .. v23}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@140
    .line 958
    :cond_9
    move-object/from16 v0, p1

    #@142
    move-object/from16 v1, p0

    #@144
    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    #@146
    .line 962
    .end local v20    # "xmlVersion":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    #@148
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    #@14a
    move-object/from16 v21, v0

    #@14c
    move-object/from16 v0, p0

    #@14e
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@150
    move-object/from16 v22, v0

    #@152
    invoke-interface/range {v21 .. v22}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    #@155
    .line 973
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/ls/LSOutput;->getCharacterStream()Ljava/io/Writer;

    #@158
    move-result-object v19

    #@159
    .line 974
    .local v19, "writer":Ljava/io/Writer;
    if-nez v19, :cond_17

    #@15b
    .line 977
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/ls/LSOutput;->getByteStream()Ljava/io/OutputStream;

    #@15e
    move-result-object v11

    #@15f
    .line 978
    .local v11, "outputStream":Ljava/io/OutputStream;
    if-nez v11, :cond_16

    #@161
    .line 981
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/ls/LSOutput;->getSystemId()Ljava/lang/String;

    #@164
    move-result-object v15

    #@165
    .line 982
    .local v15, "uri":Ljava/lang/String;
    if-nez v15, :cond_e

    #@167
    .line 983
    sget-object v21, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@169
    .line 985
    const-string/jumbo v22, "no-output-specified"

    #@16c
    .line 986
    const/16 v23, 0x0

    #@16e
    .line 983
    invoke-virtual/range {v21 .. v23}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@171
    move-result-object v10

    #@172
    .line 987
    .restart local v10    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@174
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@176
    move-object/from16 v21, v0

    #@178
    if-eqz v21, :cond_b

    #@17a
    .line 988
    move-object/from16 v0, p0

    #@17c
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@17e
    move-object/from16 v21, v0

    #@180
    new-instance v22, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@182
    .line 990
    const-string/jumbo v23, "no-output-specified"

    #@185
    .line 989
    const/16 v24, 0x3

    #@187
    .line 988
    move-object/from16 v0, v22

    #@189
    move/from16 v1, v24

    #@18b
    move-object/from16 v2, v23

    #@18d
    invoke-direct {v0, v1, v10, v2}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    #@190
    invoke-interface/range {v21 .. v22}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@193
    .line 992
    :cond_b
    new-instance v21, Lorg/w3c/dom/ls/LSException;

    #@195
    const/16 v22, 0x52

    #@197
    move-object/from16 v0, v21

    #@199
    move/from16 v1, v22

    #@19b
    invoke-direct {v0, v1, v10}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    #@19e
    throw v21
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    #@19f
    .line 1071
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .end local v15    # "uri":Ljava/lang/String;
    .end local v19    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v14

    #@1a0
    .line 1073
    .local v14, "ue":Ljava/io/UnsupportedEncodingException;
    sget-object v21, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@1a2
    .line 1075
    const-string/jumbo v22, "unsupported-encoding"

    #@1a5
    .line 1076
    const/16 v23, 0x0

    #@1a7
    .line 1073
    invoke-virtual/range {v21 .. v23}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1aa
    move-result-object v10

    #@1ab
    .line 1077
    .restart local v10    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1ad
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@1af
    move-object/from16 v21, v0

    #@1b1
    if-eqz v21, :cond_c

    #@1b3
    .line 1078
    move-object/from16 v0, p0

    #@1b5
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@1b7
    move-object/from16 v21, v0

    #@1b9
    new-instance v22, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@1bb
    .line 1080
    const-string/jumbo v23, "unsupported-encoding"

    #@1be
    .line 1079
    const/16 v24, 0x3

    #@1c0
    .line 1078
    move-object/from16 v0, v22

    #@1c2
    move/from16 v1, v24

    #@1c4
    move-object/from16 v2, v23

    #@1c6
    invoke-direct {v0, v1, v10, v2, v14}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@1c9
    invoke-interface/range {v21 .. v22}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@1cc
    .line 1082
    :cond_c
    const/16 v21, 0x52

    #@1ce
    move/from16 v0, v21

    #@1d0
    invoke-static {v0, v14}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    #@1d3
    move-result-object v21

    #@1d4
    invoke-virtual/range {v21 .. v21}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    #@1d7
    move-result-object v21

    #@1d8
    check-cast v21, Lorg/w3c/dom/ls/LSException;

    #@1da
    throw v21

    #@1db
    .line 951
    .end local v10    # "msg":Ljava/lang/String;
    .end local v14    # "ue":Ljava/io/UnsupportedEncodingException;
    .restart local v20    # "xmlVersion":Ljava/lang/String;
    :cond_d
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@1de
    move-result v21

    #@1df
    const/16 v22, 0x6

    #@1e1
    move/from16 v0, v21

    #@1e3
    move/from16 v1, v22

    #@1e5
    if-eq v0, v1, :cond_9

    #@1e7
    goto/16 :goto_1

    #@1e9
    .line 996
    .end local v20    # "xmlVersion":Ljava/lang/String;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v15    # "uri":Ljava/lang/String;
    .restart local v19    # "writer":Ljava/io/Writer;
    :cond_e
    :try_start_1
    invoke-static {v15}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    #@1ec
    move-result-object v4

    #@1ed
    .line 998
    .local v4, "absoluteURI":Ljava/lang/String;
    new-instance v16, Ljava/net/URL;

    #@1ef
    move-object/from16 v0, v16

    #@1f1
    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@1f4
    .line 999
    .local v16, "url":Ljava/net/URL;
    const/16 v18, 0x0

    #@1f6
    .line 1000
    .local v18, "urlOutStream":Ljava/io/OutputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@1f9
    move-result-object v12

    #@1fa
    .line 1001
    .local v12, "protocol":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@1fd
    move-result-object v7

    #@1fe
    .line 1011
    .local v7, "host":Ljava/lang/String;
    const-string/jumbo v21, "file"

    #@201
    move-object/from16 v0, v21

    #@203
    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@206
    move-result v21

    #@207
    if-eqz v21, :cond_14

    #@209
    .line 1012
    if-eqz v7, :cond_f

    #@20b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@20e
    move-result v21

    #@20f
    if-nez v21, :cond_13

    #@211
    .line 1014
    :cond_f
    new-instance v18, Ljava/io/FileOutputStream;

    #@213
    .end local v18    # "urlOutStream":Ljava/io/OutputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@216
    move-result-object v21

    #@217
    invoke-static/range {v21 .. v21}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;

    #@21a
    move-result-object v21

    #@21b
    move-object/from16 v0, v18

    #@21d
    move-object/from16 v1, v21

    #@21f
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@222
    .line 1034
    .local v18, "urlOutStream":Ljava/io/OutputStream;
    :goto_2
    move-object/from16 v0, v18

    #@224
    invoke-interface {v13, v0}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    #@227
    .line 1050
    .end local v4    # "absoluteURI":Ljava/lang/String;
    .end local v7    # "host":Ljava/lang/String;
    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .end local v12    # "protocol":Ljava/lang/String;
    .end local v15    # "uri":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    .end local v18    # "urlOutStream":Ljava/io/OutputStream;
    :goto_3
    move-object/from16 v0, p0

    #@229
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@22b
    move-object/from16 v21, v0

    #@22d
    if-nez v21, :cond_10

    #@22f
    .line 1051
    invoke-interface {v13}, Lorg/apache/xml/serializer/Serializer;->asDOM3Serializer()Ljava/lang/Object;

    #@232
    move-result-object v21

    #@233
    check-cast v21, Lorg/apache/xml/serializer/DOM3Serializer;

    #@235
    move-object/from16 v0, v21

    #@237
    move-object/from16 v1, p0

    #@239
    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@23b
    .line 1055
    :cond_10
    move-object/from16 v0, p0

    #@23d
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@23f
    move-object/from16 v21, v0

    #@241
    if-eqz v21, :cond_11

    #@243
    .line 1056
    move-object/from16 v0, p0

    #@245
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@247
    move-object/from16 v21, v0

    #@249
    move-object/from16 v0, p0

    #@24b
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@24d
    move-object/from16 v22, v0

    #@24f
    invoke-interface/range {v21 .. v22}, Lorg/apache/xml/serializer/DOM3Serializer;->setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V

    #@252
    .line 1060
    :cond_11
    move-object/from16 v0, p0

    #@254
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@256
    move-object/from16 v21, v0

    #@258
    if-eqz v21, :cond_12

    #@25a
    .line 1061
    move-object/from16 v0, p0

    #@25c
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@25e
    move-object/from16 v21, v0

    #@260
    move-object/from16 v0, p0

    #@262
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@264
    move-object/from16 v22, v0

    #@266
    invoke-interface/range {v21 .. v22}, Lorg/apache/xml/serializer/DOM3Serializer;->setNodeFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V

    #@269
    .line 1065
    :cond_12
    move-object/from16 v0, p0

    #@26b
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@26d
    move-object/from16 v21, v0

    #@26f
    move-object/from16 v0, p0

    #@271
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    #@273
    move-object/from16 v22, v0

    #@275
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toCharArray()[C

    #@278
    move-result-object v22

    #@279
    invoke-interface/range {v21 .. v22}, Lorg/apache/xml/serializer/DOM3Serializer;->setNewLine([C)V

    #@27c
    .line 1069
    move-object/from16 v0, p0

    #@27e
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@280
    move-object/from16 v21, v0

    #@282
    move-object/from16 v0, v21

    #@284
    move-object/from16 v1, p1

    #@286
    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/DOM3Serializer;->serializeDOM3(Lorg/w3c/dom/Node;)V

    #@289
    .line 1096
    const/16 v21, 0x1

    #@28b
    return v21

    #@28c
    .line 1012
    .restart local v4    # "absoluteURI":Ljava/lang/String;
    .restart local v7    # "host":Ljava/lang/String;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "protocol":Ljava/lang/String;
    .restart local v15    # "uri":Ljava/lang/String;
    .restart local v16    # "url":Ljava/net/URL;
    .local v18, "urlOutStream":Ljava/io/OutputStream;
    :cond_13
    const-string/jumbo v21, "localhost"

    #@28f
    move-object/from16 v0, v21

    #@291
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@294
    move-result v21

    #@295
    .line 1011
    if-nez v21, :cond_f

    #@297
    .line 1020
    :cond_14
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@29a
    move-result-object v17

    #@29b
    .line 1021
    .local v17, "urlCon":Ljava/net/URLConnection;
    const/16 v21, 0x0

    #@29d
    move-object/from16 v0, v17

    #@29f
    move/from16 v1, v21

    #@2a1
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    #@2a4
    .line 1022
    const/16 v21, 0x1

    #@2a6
    move-object/from16 v0, v17

    #@2a8
    move/from16 v1, v21

    #@2aa
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    #@2ad
    .line 1023
    const/16 v21, 0x0

    #@2af
    move-object/from16 v0, v17

    #@2b1
    move/from16 v1, v21

    #@2b3
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    #@2b6
    .line 1024
    const/16 v21, 0x0

    #@2b8
    move-object/from16 v0, v17

    #@2ba
    move/from16 v1, v21

    #@2bc
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    #@2bf
    .line 1027
    move-object/from16 v0, v17

    #@2c1
    instance-of v0, v0, Ljava/net/HttpURLConnection;

    #@2c3
    move/from16 v21, v0

    #@2c5
    if-eqz v21, :cond_15

    #@2c7
    .line 1028
    move-object/from16 v0, v17

    #@2c9
    check-cast v0, Ljava/net/HttpURLConnection;

    #@2cb
    move-object v8, v0

    #@2cc
    .line 1029
    .local v8, "httpCon":Ljava/net/HttpURLConnection;
    const-string/jumbo v21, "PUT"

    #@2cf
    move-object/from16 v0, v21

    #@2d1
    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    #@2d4
    .line 1031
    .end local v8    # "httpCon":Ljava/net/HttpURLConnection;
    :cond_15
    invoke-virtual/range {v17 .. v17}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    #@2d7
    move-result-object v18

    #@2d8
    .local v18, "urlOutStream":Ljava/io/OutputStream;
    goto/16 :goto_2

    #@2da
    .line 1038
    .end local v4    # "absoluteURI":Ljava/lang/String;
    .end local v7    # "host":Ljava/lang/String;
    .end local v12    # "protocol":Ljava/lang/String;
    .end local v15    # "uri":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    .end local v17    # "urlCon":Ljava/net/URLConnection;
    .end local v18    # "urlOutStream":Ljava/io/OutputStream;
    :cond_16
    invoke-interface {v13, v11}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    #@2dd
    goto/16 :goto_3

    #@2df
    .line 1083
    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .end local v19    # "writer":Ljava/io/Writer;
    :catch_1
    move-exception v9

    #@2e0
    .line 1085
    .local v9, "lse":Lorg/w3c/dom/ls/LSException;
    throw v9

    #@2e1
    .line 1042
    .end local v9    # "lse":Lorg/w3c/dom/ls/LSException;
    .restart local v19    # "writer":Ljava/io/Writer;
    :cond_17
    :try_start_2
    move-object/from16 v0, v19

    #@2e3
    invoke-interface {v13, v0}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    #@2e6
    goto/16 :goto_3

    #@2e8
    .line 1086
    .end local v19    # "writer":Ljava/io/Writer;
    :catch_2
    move-exception v6

    #@2e9
    .line 1087
    .local v6, "e":Ljava/lang/RuntimeException;
    const/16 v21, 0x52

    #@2eb
    move/from16 v0, v21

    #@2ed
    invoke-static {v0, v6}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    #@2f0
    move-result-object v21

    #@2f1
    invoke-virtual/range {v21 .. v21}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    #@2f4
    move-result-object v21

    #@2f5
    check-cast v21, Lorg/w3c/dom/ls/LSException;

    #@2f7
    throw v21

    #@2f8
    .line 1088
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v5

    #@2f9
    .line 1089
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@2fb
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@2fd
    move-object/from16 v21, v0

    #@2ff
    if-eqz v21, :cond_18

    #@301
    .line 1090
    move-object/from16 v0, p0

    #@303
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@305
    move-object/from16 v21, v0

    #@307
    new-instance v22, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@309
    .line 1091
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@30c
    move-result-object v23

    #@30d
    const/16 v24, 0x3

    #@30f
    .line 1092
    const/16 v25, 0x0

    #@311
    .line 1090
    move-object/from16 v0, v22

    #@313
    move/from16 v1, v24

    #@315
    move-object/from16 v2, v23

    #@317
    move-object/from16 v3, v25

    #@319
    invoke-direct {v0, v1, v2, v3, v5}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@31c
    invoke-interface/range {v21 .. v22}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@31f
    .line 1094
    :cond_18
    const/16 v21, 0x52

    #@321
    move/from16 v0, v21

    #@323
    invoke-static {v0, v5}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    #@326
    move-result-object v21

    #@327
    invoke-virtual/range {v21 .. v21}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    #@32a
    move-result-object v21

    #@32b
    check-cast v21, Lorg/w3c/dom/ls/LSException;

    #@32d
    throw v21
.end method

.method public writeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 12
    .param p1, "nodeArg"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v11, 0x52

    #@2
    const/4 v10, 0x0

    #@3
    .line 1112
    if-nez p1, :cond_0

    #@5
    .line 1113
    return-object v10

    #@6
    .line 1118
    :cond_0
    iget-object v4, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    #@8
    .line 1119
    .local v4, "serializer":Lorg/apache/xml/serializer/Serializer;
    invoke-interface {v4}, Lorg/apache/xml/serializer/Serializer;->reset()Z

    #@b
    .line 1121
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    #@d
    if-eq p1, v6, :cond_3

    #@f
    .line 1123
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    .line 1125
    .local v5, "xmlVersion":Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/xml/serializer/Serializer;->getOutputFormat()Ljava/util/Properties;

    #@16
    move-result-object v6

    #@17
    const-string/jumbo v7, "version"

    #@1a
    invoke-virtual {v6, v7, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@1d
    .line 1128
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@1f
    const-string/jumbo v7, "{http://xml.apache.org/xerces-2j}xml-version"

    #@22
    invoke-virtual {v6, v7, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@25
    .line 1129
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@27
    const-string/jumbo v7, "encoding"

    #@2a
    const-string/jumbo v8, "UTF-16"

    #@2d
    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@30
    .line 1135
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@33
    move-result v6

    #@34
    const/16 v7, 0x9

    #@36
    if-ne v6, v7, :cond_1

    #@38
    .line 1136
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@3b
    move-result v6

    #@3c
    const/4 v7, 0x1

    #@3d
    if-eq v6, v7, :cond_7

    #@3f
    .line 1138
    :cond_1
    :goto_0
    iget v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@41
    const/high16 v7, 0x40000

    #@43
    and-int/2addr v6, v7

    #@44
    if-eqz v6, :cond_2

    #@46
    .line 1139
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@48
    .line 1140
    const-string/jumbo v7, "omit-xml-declaration"

    #@4b
    .line 1141
    const-string/jumbo v8, "default:no"

    #@4e
    .line 1139
    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@51
    .line 1144
    :cond_2
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    #@53
    .line 1147
    .end local v5    # "xmlVersion":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    #@55
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@57
    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    #@5a
    .line 1150
    new-instance v3, Ljava/io/StringWriter;

    #@5c
    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    #@5f
    .line 1156
    .local v3, "output":Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v4, v3}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    #@62
    .line 1160
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@64
    if-nez v6, :cond_4

    #@66
    .line 1161
    invoke-interface {v4}, Lorg/apache/xml/serializer/Serializer;->asDOM3Serializer()Ljava/lang/Object;

    #@69
    move-result-object v6

    #@6a
    check-cast v6, Lorg/apache/xml/serializer/DOM3Serializer;

    #@6c
    iput-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@6e
    .line 1165
    :cond_4
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@70
    if-eqz v6, :cond_5

    #@72
    .line 1166
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@74
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@76
    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/DOM3Serializer;->setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V

    #@79
    .line 1170
    :cond_5
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@7b
    if-eqz v6, :cond_6

    #@7d
    .line 1171
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@7f
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@81
    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/DOM3Serializer;->setNodeFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V

    #@84
    .line 1175
    :cond_6
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@86
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    #@88
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    #@8b
    move-result-object v7

    #@8c
    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/DOM3Serializer;->setNewLine([C)V

    #@8f
    .line 1178
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@91
    invoke-interface {v6, p1}, Lorg/apache/xml/serializer/DOM3Serializer;->serializeDOM3(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@94
    .line 1194
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@97
    move-result-object v6

    #@98
    return-object v6

    #@99
    .line 1137
    .end local v3    # "output":Ljava/io/StringWriter;
    .restart local v5    # "xmlVersion":Ljava/lang/String;
    :cond_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@9c
    move-result v6

    #@9d
    const/4 v7, 0x6

    #@9e
    if-eq v6, v7, :cond_2

    #@a0
    goto :goto_0

    #@a1
    .line 1184
    .end local v5    # "xmlVersion":Ljava/lang/String;
    .restart local v3    # "output":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    #@a2
    .line 1185
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@a4
    if-eqz v6, :cond_8

    #@a6
    .line 1186
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@a8
    new-instance v7, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@aa
    .line 1187
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@ad
    move-result-object v8

    #@ae
    const/4 v9, 0x3

    #@af
    .line 1186
    invoke-direct {v7, v9, v8, v10, v0}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@b2
    invoke-interface {v6, v7}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@b5
    .line 1190
    :cond_8
    invoke-static {v11, v0}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    #@b8
    move-result-object v6

    #@b9
    invoke-virtual {v6}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    #@bc
    move-result-object v6

    #@bd
    check-cast v6, Lorg/w3c/dom/ls/LSException;

    #@bf
    throw v6

    #@c0
    .line 1182
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@c1
    .line 1183
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v11, v1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    #@c4
    move-result-object v6

    #@c5
    invoke-virtual {v6}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    #@c8
    move-result-object v6

    #@c9
    check-cast v6, Lorg/w3c/dom/ls/LSException;

    #@cb
    throw v6

    #@cc
    .line 1179
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    #@cd
    .line 1181
    .local v2, "lse":Lorg/w3c/dom/ls/LSException;
    throw v2
.end method

.method public writeToURI(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .locals 22
    .param p1, "nodeArg"    # Lorg/w3c/dom/Node;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    #@0
    .prologue
    .line 1210
    if-nez p1, :cond_0

    #@2
    .line 1211
    const/16 v17, 0x0

    #@4
    return v17

    #@5
    .line 1215
    :cond_0
    move-object/from16 v0, p0

    #@7
    iget-object v12, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    #@9
    .line 1216
    .local v12, "serializer":Lorg/apache/xml/serializer/Serializer;
    invoke-interface {v12}, Lorg/apache/xml/serializer/Serializer;->reset()Z

    #@c
    .line 1218
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    #@10
    move-object/from16 v17, v0

    #@12
    move-object/from16 v0, p1

    #@14
    move-object/from16 v1, v17

    #@16
    if-eq v0, v1, :cond_4

    #@18
    .line 1220
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@1b
    move-result-object v16

    #@1c
    .line 1224
    .local v16, "xmlVersion":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getInputEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@1f
    move-result-object v17

    #@20
    move-object/from16 v0, v17

    #@22
    move-object/from16 v1, p0

    #@24
    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    #@26
    .line 1225
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    #@2a
    move-object/from16 v17, v0

    #@2c
    if-nez v17, :cond_1

    #@2e
    .line 1226
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    #@32
    move-object/from16 v17, v0

    #@34
    if-eqz v17, :cond_6

    #@36
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    #@3a
    move-object/from16 v17, v0

    #@3c
    :goto_0
    move-object/from16 v0, v17

    #@3e
    move-object/from16 v1, p0

    #@40
    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    #@42
    .line 1229
    :cond_1
    invoke-interface {v12}, Lorg/apache/xml/serializer/Serializer;->getOutputFormat()Ljava/util/Properties;

    #@45
    move-result-object v17

    #@46
    const-string/jumbo v18, "version"

    #@49
    move-object/from16 v0, v17

    #@4b
    move-object/from16 v1, v18

    #@4d
    move-object/from16 v2, v16

    #@4f
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@52
    .line 1232
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@56
    move-object/from16 v17, v0

    #@58
    const-string/jumbo v18, "{http://xml.apache.org/xerces-2j}xml-version"

    #@5b
    move-object/from16 v0, v17

    #@5d
    move-object/from16 v1, v18

    #@5f
    move-object/from16 v2, v16

    #@61
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@64
    .line 1233
    move-object/from16 v0, p0

    #@66
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@68
    move-object/from16 v17, v0

    #@6a
    const-string/jumbo v18, "encoding"

    #@6d
    move-object/from16 v0, p0

    #@6f
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    #@71
    move-object/from16 v19, v0

    #@73
    invoke-virtual/range {v17 .. v19}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@76
    .line 1239
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@79
    move-result v17

    #@7a
    const/16 v18, 0x9

    #@7c
    move/from16 v0, v17

    #@7e
    move/from16 v1, v18

    #@80
    if-ne v0, v1, :cond_2

    #@82
    .line 1240
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@85
    move-result v17

    #@86
    const/16 v18, 0x1

    #@88
    move/from16 v0, v17

    #@8a
    move/from16 v1, v18

    #@8c
    if-eq v0, v1, :cond_8

    #@8e
    .line 1242
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    #@90
    iget v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    #@92
    move/from16 v17, v0

    #@94
    const/high16 v18, 0x40000

    #@96
    and-int v17, v17, v18

    #@98
    if-eqz v17, :cond_3

    #@9a
    .line 1243
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@9e
    move-object/from16 v17, v0

    #@a0
    .line 1244
    const-string/jumbo v18, "omit-xml-declaration"

    #@a3
    .line 1245
    const-string/jumbo v19, "default:no"

    #@a6
    .line 1243
    invoke-virtual/range {v17 .. v19}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@a9
    .line 1248
    :cond_3
    move-object/from16 v0, p1

    #@ab
    move-object/from16 v1, p0

    #@ad
    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    #@af
    .line 1252
    .end local v16    # "xmlVersion":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    #@b1
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    #@b3
    move-object/from16 v17, v0

    #@b5
    move-object/from16 v0, p0

    #@b7
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    #@b9
    move-object/from16 v18, v0

    #@bb
    invoke-interface/range {v17 .. v18}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    #@be
    .line 1258
    if-nez p2, :cond_9

    #@c0
    .line 1259
    :try_start_0
    sget-object v17, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@c2
    .line 1260
    const-string/jumbo v18, "no-output-specified"

    #@c5
    const/16 v19, 0x0

    #@c7
    .line 1259
    invoke-virtual/range {v17 .. v19}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ca
    move-result-object v10

    #@cb
    .line 1261
    .local v10, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@cd
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@cf
    move-object/from16 v17, v0

    #@d1
    if-eqz v17, :cond_5

    #@d3
    .line 1262
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@d7
    move-object/from16 v17, v0

    #@d9
    new-instance v18, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@db
    .line 1264
    const-string/jumbo v19, "no-output-specified"

    #@de
    .line 1263
    const/16 v20, 0x3

    #@e0
    .line 1262
    move-object/from16 v0, v18

    #@e2
    move/from16 v1, v20

    #@e4
    move-object/from16 v2, v19

    #@e6
    invoke-direct {v0, v1, v10, v2}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    #@e9
    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@ec
    .line 1266
    :cond_5
    new-instance v17, Lorg/w3c/dom/ls/LSException;

    #@ee
    const/16 v18, 0x52

    #@f0
    move-object/from16 v0, v17

    #@f2
    move/from16 v1, v18

    #@f4
    invoke-direct {v0, v1, v10}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    #@f7
    throw v17
    :try_end_0
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@f8
    .line 1337
    .end local v10    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v9

    #@f9
    .line 1339
    .local v9, "lse":Lorg/w3c/dom/ls/LSException;
    throw v9

    #@fa
    .line 1226
    .end local v9    # "lse":Lorg/w3c/dom/ls/LSException;
    .restart local v16    # "xmlVersion":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@fd
    move-result-object v17

    #@fe
    if-nez v17, :cond_7

    #@100
    const-string/jumbo v17, "UTF-8"

    #@103
    goto/16 :goto_0

    #@105
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@108
    move-result-object v17

    #@109
    goto/16 :goto_0

    #@10b
    .line 1241
    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@10e
    move-result v17

    #@10f
    const/16 v18, 0x6

    #@111
    move/from16 v0, v17

    #@113
    move/from16 v1, v18

    #@115
    if-eq v0, v1, :cond_3

    #@117
    goto/16 :goto_1

    #@119
    .line 1270
    .end local v16    # "xmlVersion":Ljava/lang/String;
    :cond_9
    :try_start_1
    invoke-static/range {p2 .. p2}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    #@11c
    move-result-object v4

    #@11d
    .line 1272
    .local v4, "absoluteURI":Ljava/lang/String;
    new-instance v13, Ljava/net/URL;

    #@11f
    invoke-direct {v13, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@122
    .line 1273
    .local v13, "url":Ljava/net/URL;
    const/4 v15, 0x0

    #@123
    .line 1274
    .local v15, "urlOutStream":Ljava/io/OutputStream;
    invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@126
    move-result-object v11

    #@127
    .line 1275
    .local v11, "protocol":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@12a
    move-result-object v7

    #@12b
    .line 1286
    .local v7, "host":Ljava/lang/String;
    const-string/jumbo v17, "file"

    #@12e
    move-object/from16 v0, v17

    #@130
    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@133
    move-result v17

    #@134
    if-eqz v17, :cond_f

    #@136
    .line 1287
    if-eqz v7, :cond_a

    #@138
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@13b
    move-result v17

    #@13c
    if-nez v17, :cond_e

    #@13e
    .line 1290
    :cond_a
    new-instance v15, Ljava/io/FileOutputStream;

    #@140
    .end local v15    # "urlOutStream":Ljava/io/OutputStream;
    invoke-virtual {v13}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@143
    move-result-object v17

    #@144
    invoke-static/range {v17 .. v17}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;

    #@147
    move-result-object v17

    #@148
    move-object/from16 v0, v17

    #@14a
    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@14d
    .line 1310
    .local v15, "urlOutStream":Ljava/io/OutputStream;
    :goto_2
    invoke-interface {v12, v15}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    #@150
    .line 1315
    move-object/from16 v0, p0

    #@152
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@154
    move-object/from16 v17, v0

    #@156
    if-nez v17, :cond_b

    #@158
    .line 1316
    invoke-interface {v12}, Lorg/apache/xml/serializer/Serializer;->asDOM3Serializer()Ljava/lang/Object;

    #@15b
    move-result-object v17

    #@15c
    check-cast v17, Lorg/apache/xml/serializer/DOM3Serializer;

    #@15e
    move-object/from16 v0, v17

    #@160
    move-object/from16 v1, p0

    #@162
    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@164
    .line 1320
    :cond_b
    move-object/from16 v0, p0

    #@166
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@168
    move-object/from16 v17, v0

    #@16a
    if-eqz v17, :cond_c

    #@16c
    .line 1321
    move-object/from16 v0, p0

    #@16e
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@170
    move-object/from16 v17, v0

    #@172
    move-object/from16 v0, p0

    #@174
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@176
    move-object/from16 v18, v0

    #@178
    invoke-interface/range {v17 .. v18}, Lorg/apache/xml/serializer/DOM3Serializer;->setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V

    #@17b
    .line 1325
    :cond_c
    move-object/from16 v0, p0

    #@17d
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@17f
    move-object/from16 v17, v0

    #@181
    if-eqz v17, :cond_d

    #@183
    .line 1326
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@187
    move-object/from16 v17, v0

    #@189
    move-object/from16 v0, p0

    #@18b
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@18d
    move-object/from16 v18, v0

    #@18f
    invoke-interface/range {v17 .. v18}, Lorg/apache/xml/serializer/DOM3Serializer;->setNodeFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V

    #@192
    .line 1330
    :cond_d
    move-object/from16 v0, p0

    #@194
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@196
    move-object/from16 v17, v0

    #@198
    move-object/from16 v0, p0

    #@19a
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    #@19c
    move-object/from16 v18, v0

    #@19e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    #@1a1
    move-result-object v18

    #@1a2
    invoke-interface/range {v17 .. v18}, Lorg/apache/xml/serializer/DOM3Serializer;->setNewLine([C)V

    #@1a5
    .line 1335
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    #@1a9
    move-object/from16 v17, v0

    #@1ab
    move-object/from16 v0, v17

    #@1ad
    move-object/from16 v1, p1

    #@1af
    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/DOM3Serializer;->serializeDOM3(Lorg/w3c/dom/Node;)V

    #@1b2
    .line 1351
    const/16 v17, 0x1

    #@1b4
    return v17

    #@1b5
    .line 1288
    .local v15, "urlOutStream":Ljava/io/OutputStream;
    :cond_e
    const-string/jumbo v17, "localhost"

    #@1b8
    .line 1287
    move-object/from16 v0, v17

    #@1ba
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bd
    move-result v17

    #@1be
    .line 1286
    if-nez v17, :cond_a

    #@1c0
    .line 1296
    :cond_f
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@1c3
    move-result-object v14

    #@1c4
    .line 1297
    .local v14, "urlCon":Ljava/net/URLConnection;
    const/16 v17, 0x0

    #@1c6
    move/from16 v0, v17

    #@1c8
    invoke-virtual {v14, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    #@1cb
    .line 1298
    const/16 v17, 0x1

    #@1cd
    move/from16 v0, v17

    #@1cf
    invoke-virtual {v14, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    #@1d2
    .line 1299
    const/16 v17, 0x0

    #@1d4
    move/from16 v0, v17

    #@1d6
    invoke-virtual {v14, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    #@1d9
    .line 1300
    const/16 v17, 0x0

    #@1db
    move/from16 v0, v17

    #@1dd
    invoke-virtual {v14, v0}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    #@1e0
    .line 1303
    instance-of v0, v14, Ljava/net/HttpURLConnection;

    #@1e2
    move/from16 v17, v0

    #@1e4
    if-eqz v17, :cond_10

    #@1e6
    .line 1304
    move-object v0, v14

    #@1e7
    check-cast v0, Ljava/net/HttpURLConnection;

    #@1e9
    move-object v8, v0

    #@1ea
    .line 1305
    .local v8, "httpCon":Ljava/net/HttpURLConnection;
    const-string/jumbo v17, "PUT"

    #@1ed
    move-object/from16 v0, v17

    #@1ef
    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    #@1f2
    .line 1307
    .end local v8    # "httpCon":Ljava/net/HttpURLConnection;
    :cond_10
    invoke-virtual {v14}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@1f5
    move-result-object v15

    #@1f6
    .local v15, "urlOutStream":Ljava/io/OutputStream;
    goto/16 :goto_2

    #@1f8
    .line 1342
    .end local v4    # "absoluteURI":Ljava/lang/String;
    .end local v7    # "host":Ljava/lang/String;
    .end local v11    # "protocol":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    .end local v14    # "urlCon":Ljava/net/URLConnection;
    .end local v15    # "urlOutStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v5

    #@1f9
    .line 1343
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@1fb
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@1fd
    move-object/from16 v17, v0

    #@1ff
    if-eqz v17, :cond_11

    #@201
    .line 1344
    move-object/from16 v0, p0

    #@203
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@205
    move-object/from16 v17, v0

    #@207
    new-instance v18, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@209
    .line 1345
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@20c
    move-result-object v19

    #@20d
    const/16 v20, 0x3

    #@20f
    .line 1346
    const/16 v21, 0x0

    #@211
    .line 1344
    move-object/from16 v0, v18

    #@213
    move/from16 v1, v20

    #@215
    move-object/from16 v2, v19

    #@217
    move-object/from16 v3, v21

    #@219
    invoke-direct {v0, v1, v2, v3, v5}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@21c
    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@21f
    .line 1348
    :cond_11
    const/16 v17, 0x52

    #@221
    move/from16 v0, v17

    #@223
    invoke-static {v0, v5}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    #@226
    move-result-object v17

    #@227
    invoke-virtual/range {v17 .. v17}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    #@22a
    move-result-object v17

    #@22b
    check-cast v17, Lorg/w3c/dom/ls/LSException;

    #@22d
    throw v17

    #@22e
    .line 1340
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    #@22f
    .line 1341
    .local v6, "e":Ljava/lang/RuntimeException;
    const/16 v17, 0x52

    #@231
    move/from16 v0, v17

    #@233
    invoke-static {v0, v6}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    #@236
    move-result-object v17

    #@237
    invoke-virtual/range {v17 .. v17}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    #@23a
    move-result-object v17

    #@23b
    check-cast v17, Lorg/w3c/dom/ls/LSException;

    #@23d
    throw v17
.end method
