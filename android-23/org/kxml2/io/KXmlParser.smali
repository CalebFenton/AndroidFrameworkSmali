.class public Lorg/kxml2/io/KXmlParser;
.super Ljava/lang/Object;
.source "KXmlParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kxml2/io/KXmlParser$ValueContext;,
        Lorg/kxml2/io/KXmlParser$ContentSource;
    }
.end annotation


# static fields
.field private static final ANY:[C

.field private static final ATTLISTDECL:I = 0xd

.field private static final COMMENT_DOUBLE_DASH:[C

.field private static final DEFAULT_ENTITIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOUBLE_QUOTE:[C

.field private static final ELEMENTDECL:I = 0xb

.field private static final EMPTY:[C

.field private static final END_CDATA:[C

.field private static final END_COMMENT:[C

.field private static final END_PROCESSING_INSTRUCTION:[C

.field private static final ENTITYDECL:I = 0xc

.field private static final FEATURE_RELAXED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#relaxed"

.field private static final FIXED:[C

.field private static final ILLEGAL_TYPE:Ljava/lang/String; = "Wrong event type"

.field private static final IMPLIED:[C

.field private static final NDATA:[C

.field private static final NOTATION:[C

.field private static final NOTATIONDECL:I = 0xe

.field private static final PARAMETER_ENTITY_REF:I = 0xf

.field private static final PROPERTY_LOCATION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#location"

.field private static final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

.field private static final PROPERTY_XMLDECL_VERSION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

.field private static final PUBLIC:[C

.field private static final REQUIRED:[C

.field private static final SINGLE_QUOTE:[C

.field private static final START_ATTLIST:[C

.field private static final START_CDATA:[C

.field private static final START_COMMENT:[C

.field private static final START_DOCTYPE:[C

.field private static final START_ELEMENT:[C

.field private static final START_ENTITY:[C

.field private static final START_NOTATION:[C

.field private static final START_PROCESSING_INSTRUCTION:[C

.field private static final SYSTEM:[C

.field private static final UNEXPECTED_EOF:Ljava/lang/String; = "Unexpected EOF"

.field private static final XML_DECLARATION:I = 0x3e6


# instance fields
.field private attributeCount:I

.field private attributes:[Ljava/lang/String;

.field private buffer:[C

.field private bufferCapture:Ljava/lang/StringBuilder;

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private defaultAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private degenerated:Z

.field private depth:I

.field private documentEntities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private isWhitespace:Z

.field private keepNamespaceAttributes:Z

.field private limit:I

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private parsedTopLevelStartTag:Z

.field private position:I

.field private prefix:Ljava/lang/String;

.field private processDocDecl:Z

.field private processNsp:Z

.field private publicId:Ljava/lang/String;

.field private reader:Ljava/io/Reader;

.field private relaxed:Z

.field private rootElementName:Ljava/lang/String;

.field private standalone:Ljava/lang/Boolean;

.field public final stringPool:Llibcore/internal/StringPool;

.field private systemId:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:I

.field private unresolved:Z

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x8

    #@2
    const/4 v6, 0x5

    #@3
    const/4 v5, 0x3

    #@4
    const/4 v4, 0x2

    #@5
    const/16 v3, 0x9

    #@7
    .line 48
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    #@e
    .line 50
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    #@10
    const-string/jumbo v1, "lt"

    #@13
    const-string/jumbo v2, "<"

    #@16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 51
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    #@1b
    const-string/jumbo v1, "gt"

    #@1e
    const-string/jumbo v2, ">"

    #@21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 52
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    #@26
    const-string/jumbo v1, "amp"

    #@29
    const-string/jumbo v2, "&"

    #@2c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 53
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    #@31
    const-string/jumbo v1, "apos"

    #@34
    const-string/jumbo v2, "\'"

    #@37
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 54
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    #@3c
    const-string/jumbo v1, "quot"

    #@3f
    const-string/jumbo v2, "\""

    #@42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 62
    const/4 v0, 0x4

    #@46
    new-array v0, v0, [C

    #@48
    fill-array-data v0, :array_0

    #@4b
    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_COMMENT:[C

    #@4d
    .line 63
    new-array v0, v5, [C

    #@4f
    fill-array-data v0, :array_1

    #@52
    sput-object v0, Lorg/kxml2/io/KXmlParser;->END_COMMENT:[C

    #@54
    .line 64
    new-array v0, v4, [C

    #@56
    fill-array-data v0, :array_2

    #@59
    sput-object v0, Lorg/kxml2/io/KXmlParser;->COMMENT_DOUBLE_DASH:[C

    #@5b
    .line 65
    new-array v0, v3, [C

    #@5d
    fill-array-data v0, :array_3

    #@60
    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_CDATA:[C

    #@62
    .line 66
    new-array v0, v5, [C

    #@64
    fill-array-data v0, :array_4

    #@67
    sput-object v0, Lorg/kxml2/io/KXmlParser;->END_CDATA:[C

    #@69
    .line 67
    new-array v0, v4, [C

    #@6b
    fill-array-data v0, :array_5

    #@6e
    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    #@70
    .line 68
    new-array v0, v4, [C

    #@72
    fill-array-data v0, :array_6

    #@75
    sput-object v0, Lorg/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    #@77
    .line 69
    new-array v0, v3, [C

    #@79
    fill-array-data v0, :array_7

    #@7c
    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_DOCTYPE:[C

    #@7e
    .line 70
    const/4 v0, 0x6

    #@7f
    new-array v0, v0, [C

    #@81
    fill-array-data v0, :array_8

    #@84
    sput-object v0, Lorg/kxml2/io/KXmlParser;->SYSTEM:[C

    #@86
    .line 71
    const/4 v0, 0x6

    #@87
    new-array v0, v0, [C

    #@89
    fill-array-data v0, :array_9

    #@8c
    sput-object v0, Lorg/kxml2/io/KXmlParser;->PUBLIC:[C

    #@8e
    .line 72
    new-array v0, v3, [C

    #@90
    fill-array-data v0, :array_a

    #@93
    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_ELEMENT:[C

    #@95
    .line 73
    new-array v0, v3, [C

    #@97
    fill-array-data v0, :array_b

    #@9a
    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_ATTLIST:[C

    #@9c
    .line 74
    new-array v0, v7, [C

    #@9e
    fill-array-data v0, :array_c

    #@a1
    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_ENTITY:[C

    #@a3
    .line 75
    const/16 v0, 0xa

    #@a5
    new-array v0, v0, [C

    #@a7
    fill-array-data v0, :array_d

    #@aa
    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_NOTATION:[C

    #@ac
    .line 76
    new-array v0, v6, [C

    #@ae
    fill-array-data v0, :array_e

    #@b1
    sput-object v0, Lorg/kxml2/io/KXmlParser;->EMPTY:[C

    #@b3
    .line 77
    new-array v0, v5, [C

    #@b5
    fill-array-data v0, :array_f

    #@b8
    sput-object v0, Lorg/kxml2/io/KXmlParser;->ANY:[C

    #@ba
    .line 78
    new-array v0, v6, [C

    #@bc
    fill-array-data v0, :array_10

    #@bf
    sput-object v0, Lorg/kxml2/io/KXmlParser;->NDATA:[C

    #@c1
    .line 79
    new-array v0, v7, [C

    #@c3
    fill-array-data v0, :array_11

    #@c6
    sput-object v0, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    #@c8
    .line 80
    new-array v0, v7, [C

    #@ca
    fill-array-data v0, :array_12

    #@cd
    sput-object v0, Lorg/kxml2/io/KXmlParser;->REQUIRED:[C

    #@cf
    .line 81
    const/4 v0, 0x7

    #@d0
    new-array v0, v0, [C

    #@d2
    fill-array-data v0, :array_13

    #@d5
    sput-object v0, Lorg/kxml2/io/KXmlParser;->IMPLIED:[C

    #@d7
    .line 82
    new-array v0, v6, [C

    #@d9
    fill-array-data v0, :array_14

    #@dc
    sput-object v0, Lorg/kxml2/io/KXmlParser;->FIXED:[C

    #@de
    .line 656
    const/4 v0, 0x1

    #@df
    new-array v0, v0, [C

    #@e1
    const/16 v1, 0x27

    #@e3
    const/4 v2, 0x0

    #@e4
    aput-char v1, v0, v2

    #@e6
    sput-object v0, Lorg/kxml2/io/KXmlParser;->SINGLE_QUOTE:[C

    #@e8
    .line 657
    const/4 v0, 0x1

    #@e9
    new-array v0, v0, [C

    #@eb
    const/16 v1, 0x22

    #@ed
    const/4 v2, 0x0

    #@ee
    aput-char v1, v0, v2

    #@f0
    sput-object v0, Lorg/kxml2/io/KXmlParser;->DOUBLE_QUOTE:[C

    #@f2
    .line 39
    return-void

    #@f3
    .line 62
    nop

    #@f4
    :array_0
    .array-data 2
        0x3cs
        0x21s
        0x2ds
        0x2ds
    .end array-data

    #@fc
    .line 63
    :array_1
    .array-data 2
        0x2ds
        0x2ds
        0x3es
    .end array-data

    #@103
    .line 64
    nop

    #@104
    :array_2
    .array-data 2
        0x2ds
        0x2ds
    .end array-data

    #@10a
    .line 65
    :array_3
    .array-data 2
        0x3cs
        0x21s
        0x5bs
        0x43s
        0x44s
        0x41s
        0x54s
        0x41s
        0x5bs
    .end array-data

    #@117
    .line 66
    nop

    #@118
    :array_4
    .array-data 2
        0x5ds
        0x5ds
        0x3es
    .end array-data

    #@11f
    .line 67
    nop

    #@120
    :array_5
    .array-data 2
        0x3cs
        0x3fs
    .end array-data

    #@126
    .line 68
    :array_6
    .array-data 2
        0x3fs
        0x3es
    .end array-data

    #@12c
    .line 69
    :array_7
    .array-data 2
        0x3cs
        0x21s
        0x44s
        0x4fs
        0x43s
        0x54s
        0x59s
        0x50s
        0x45s
    .end array-data

    #@139
    .line 70
    nop

    #@13a
    :array_8
    .array-data 2
        0x53s
        0x59s
        0x53s
        0x54s
        0x45s
        0x4ds
    .end array-data

    #@144
    .line 71
    :array_9
    .array-data 2
        0x50s
        0x55s
        0x42s
        0x4cs
        0x49s
        0x43s
    .end array-data

    #@14e
    .line 72
    :array_a
    .array-data 2
        0x3cs
        0x21s
        0x45s
        0x4cs
        0x45s
        0x4ds
        0x45s
        0x4es
        0x54s
    .end array-data

    #@15b
    .line 73
    nop

    #@15c
    :array_b
    .array-data 2
        0x3cs
        0x21s
        0x41s
        0x54s
        0x54s
        0x4cs
        0x49s
        0x53s
        0x54s
    .end array-data

    #@169
    .line 74
    nop

    #@16a
    :array_c
    .array-data 2
        0x3cs
        0x21s
        0x45s
        0x4es
        0x54s
        0x49s
        0x54s
        0x59s
    .end array-data

    #@176
    .line 75
    :array_d
    .array-data 2
        0x3cs
        0x21s
        0x4es
        0x4fs
        0x54s
        0x41s
        0x54s
        0x49s
        0x4fs
        0x4es
    .end array-data

    #@184
    .line 76
    :array_e
    .array-data 2
        0x45s
        0x4ds
        0x50s
        0x54s
        0x59s
    .end array-data

    #@18d
    .line 77
    nop

    #@18e
    :array_f
    .array-data 2
        0x41s
        0x4es
        0x59s
    .end array-data

    #@195
    .line 78
    nop

    #@196
    :array_10
    .array-data 2
        0x4es
        0x44s
        0x41s
        0x54s
        0x41s
    .end array-data

    #@19f
    .line 79
    nop

    #@1a0
    :array_11
    .array-data 2
        0x4es
        0x4fs
        0x54s
        0x41s
        0x54s
        0x49s
        0x4fs
        0x4es
    .end array-data

    #@1ac
    .line 80
    :array_12
    .array-data 2
        0x52s
        0x45s
        0x51s
        0x55s
        0x49s
        0x52s
        0x45s
        0x44s
    .end array-data

    #@1b8
    .line 81
    :array_13
    .array-data 2
        0x49s
        0x4ds
        0x50s
        0x4cs
        0x49s
        0x45s
        0x44s
    .end array-data

    #@1c3
    .line 82
    nop

    #@1c4
    :array_14
    .array-data 2
        0x46s
        0x49s
        0x58s
        0x45s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x10

    #@2
    const/4 v1, 0x0

    #@3
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 133
    new-array v0, v2, [Ljava/lang/String;

    #@8
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    #@a
    .line 134
    const/16 v0, 0x8

    #@c
    new-array v0, v0, [Ljava/lang/String;

    #@e
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    #@10
    .line 135
    const/4 v0, 0x4

    #@11
    new-array v0, v0, [I

    #@13
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    #@15
    .line 142
    const/16 v0, 0x2000

    #@17
    new-array v0, v0, [C

    #@19
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@1b
    .line 143
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@1d
    .line 144
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@1f
    .line 176
    new-array v0, v2, [Ljava/lang/String;

    #@21
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@23
    .line 182
    new-instance v0, Llibcore/internal/StringPool;

    #@25
    invoke-direct {v0}, Llibcore/internal/StringPool;-><init>()V

    #@28
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    #@2a
    .line 39
    return-void
.end method

.method private adjustNsp()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v14, 0x3a

    #@2
    const/4 v13, -0x1

    #@3
    const/4 v12, 0x0

    #@4
    .line 195
    const/4 v0, 0x0

    #@5
    .line 197
    .local v0, "any":Z
    const/4 v5, 0x0

    #@6
    .local v5, "i":I
    :goto_0
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@8
    shl-int/lit8 v8, v8, 0x2

    #@a
    if-ge v5, v8, :cond_5

    #@c
    .line 198
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@e
    add-int/lit8 v9, v5, 0x2

    #@10
    aget-object v1, v8, v9

    #@12
    .line 199
    .local v1, "attrName":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    #@15
    move-result v4

    #@16
    .line 202
    .local v4, "cut":I
    if-eq v4, v13, :cond_1

    #@18
    .line 203
    invoke-virtual {v1, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object v7

    #@1c
    .line 204
    .local v7, "prefix":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    #@1e
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 212
    .end local v1    # "attrName":Ljava/lang/String;
    :goto_1
    const-string/jumbo v8, "xmlns"

    #@25
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v8

    #@29
    if-nez v8, :cond_2

    #@2b
    .line 213
    const/4 v0, 0x1

    #@2c
    .line 197
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x4

    #@2e
    goto :goto_0

    #@2f
    .line 205
    .restart local v1    # "attrName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "xmlns"

    #@32
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v8

    #@36
    if-eqz v8, :cond_0

    #@38
    .line 206
    move-object v7, v1

    #@39
    .line 207
    .restart local v7    # "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    #@3a
    .local v1, "attrName":Ljava/lang/String;
    goto :goto_1

    #@3b
    .line 215
    .end local v1    # "attrName":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    #@3d
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@3f
    aget v10, v8, v9

    #@41
    add-int/lit8 v11, v10, 0x1

    #@43
    aput v11, v8, v9

    #@45
    shl-int/lit8 v6, v10, 0x1

    #@47
    .line 217
    .local v6, "j":I
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    #@49
    add-int/lit8 v9, v6, 0x2

    #@4b
    invoke-direct {p0, v8, v9}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    #@51
    .line 218
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    #@53
    aput-object v1, v8, v6

    #@55
    .line 219
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    #@57
    add-int/lit8 v9, v6, 0x1

    #@59
    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@5b
    add-int/lit8 v11, v5, 0x3

    #@5d
    aget-object v10, v10, v11

    #@5f
    aput-object v10, v8, v9

    #@61
    .line 221
    if-eqz v1, :cond_3

    #@63
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@65
    add-int/lit8 v9, v5, 0x3

    #@67
    aget-object v8, v8, v9

    #@69
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    #@6c
    move-result v8

    #@6d
    if-eqz v8, :cond_3

    #@6f
    .line 222
    const-string/jumbo v8, "illegal empty namespace"

    #@72
    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@75
    .line 225
    :cond_3
    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->keepNamespaceAttributes:Z

    #@77
    if-eqz v8, :cond_4

    #@79
    .line 228
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@7b
    const-string/jumbo v9, "http://www.w3.org/2000/xmlns/"

    #@7e
    aput-object v9, v8, v5

    #@80
    .line 229
    const/4 v0, 0x1

    #@81
    goto :goto_2

    #@82
    .line 232
    :cond_4
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@84
    .line 233
    add-int/lit8 v9, v5, 0x4

    #@86
    .line 234
    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@88
    .line 236
    iget v11, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@8a
    add-int/lit8 v11, v11, -0x1

    #@8c
    iput v11, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@8e
    shl-int/lit8 v11, v11, 0x2

    #@90
    sub-int/2addr v11, v5

    #@91
    .line 231
    invoke-static {v8, v9, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@94
    .line 238
    add-int/lit8 v5, v5, -0x4

    #@96
    goto :goto_2

    #@97
    .line 243
    .end local v4    # "cut":I
    .end local v6    # "j":I
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_b

    #@99
    .line 244
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@9b
    shl-int/lit8 v8, v8, 0x2

    #@9d
    add-int/lit8 v5, v8, -0x4

    #@9f
    :goto_3
    if-ltz v5, :cond_b

    #@a1
    .line 246
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@a3
    add-int/lit8 v9, v5, 0x2

    #@a5
    aget-object v1, v8, v9

    #@a7
    .line 247
    .local v1, "attrName":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    #@aa
    move-result v4

    #@ab
    .line 249
    .restart local v4    # "cut":I
    if-nez v4, :cond_6

    #@ad
    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    #@af
    if-eqz v8, :cond_9

    #@b1
    .line 252
    :cond_6
    if-eq v4, v13, :cond_8

    #@b3
    .line 253
    invoke-virtual {v1, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b6
    move-result-object v3

    #@b7
    .line 255
    .local v3, "attrPrefix":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    #@b9
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@bc
    move-result-object v1

    #@bd
    .line 257
    invoke-virtual {p0, v3}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    #@c0
    move-result-object v2

    #@c1
    .line 259
    .local v2, "attrNs":Ljava/lang/String;
    if-nez v2, :cond_7

    #@c3
    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    #@c5
    if-eqz v8, :cond_a

    #@c7
    .line 264
    :cond_7
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@c9
    aput-object v2, v8, v5

    #@cb
    .line 265
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@cd
    add-int/lit8 v9, v5, 0x1

    #@cf
    aput-object v3, v8, v9

    #@d1
    .line 266
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@d3
    add-int/lit8 v9, v5, 0x2

    #@d5
    aput-object v1, v8, v9

    #@d7
    .line 244
    .end local v2    # "attrNs":Ljava/lang/String;
    .end local v3    # "attrPrefix":Ljava/lang/String;
    :cond_8
    add-int/lit8 v5, v5, -0x4

    #@d9
    goto :goto_3

    #@da
    .line 250
    :cond_9
    new-instance v8, Ljava/lang/RuntimeException;

    #@dc
    .line 251
    new-instance v9, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v10, "illegal attribute name: "

    #@e4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v9

    #@e8
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v9

    #@ec
    const-string/jumbo v10, " at "

    #@ef
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v9

    #@f3
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v9

    #@f7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v9

    #@fb
    .line 250
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@fe
    throw v8

    #@ff
    .line 260
    .restart local v2    # "attrNs":Ljava/lang/String;
    .restart local v3    # "attrPrefix":Ljava/lang/String;
    :cond_a
    new-instance v8, Ljava/lang/RuntimeException;

    #@101
    .line 261
    new-instance v9, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v10, "Undefined Prefix: "

    #@109
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v9

    #@10d
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v9

    #@111
    const-string/jumbo v10, " in "

    #@114
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v9

    #@118
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v9

    #@11c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11f
    move-result-object v9

    #@120
    .line 260
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@123
    throw v8

    #@124
    .line 271
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v2    # "attrNs":Ljava/lang/String;
    .end local v3    # "attrPrefix":Ljava/lang/String;
    .end local v4    # "cut":I
    :cond_b
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@126
    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    #@129
    move-result v4

    #@12a
    .line 273
    .restart local v4    # "cut":I
    if-nez v4, :cond_c

    #@12c
    .line 274
    new-instance v8, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    const-string/jumbo v9, "illegal tag name: "

    #@134
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v8

    #@138
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@13a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v8

    #@13e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@141
    move-result-object v8

    #@142
    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@145
    .line 277
    :cond_c
    if-eq v4, v13, :cond_d

    #@147
    .line 278
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@149
    invoke-virtual {v8, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14c
    move-result-object v8

    #@14d
    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    #@14f
    .line 279
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@151
    add-int/lit8 v9, v4, 0x1

    #@153
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@156
    move-result-object v8

    #@157
    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@159
    .line 282
    :cond_d
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    #@15b
    invoke-virtual {p0, v8}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    #@15e
    move-result-object v8

    #@15f
    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    #@161
    .line 284
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    #@163
    if-nez v8, :cond_f

    #@165
    .line 285
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    #@167
    if-eqz v8, :cond_e

    #@169
    .line 286
    new-instance v8, Ljava/lang/StringBuilder;

    #@16b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@16e
    const-string/jumbo v9, "undefined prefix: "

    #@171
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v8

    #@175
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    #@177
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v8

    #@17b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17e
    move-result-object v8

    #@17f
    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@182
    .line 288
    :cond_e
    const-string/jumbo v8, ""

    #@185
    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    #@187
    .line 291
    :cond_f
    return v0
.end method

.method private checkRelaxed(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 304
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 305
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@7
    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@a
    throw v0

    #@b
    .line 307
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v1, "Error: "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    #@25
    .line 303
    :cond_1
    return-void
.end method

.method private defineAttributeDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 878
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 879
    new-instance v1, Ljava/util/HashMap;

    #@6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    #@b
    .line 881
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    #@d
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/util/Map;

    #@13
    .line 882
    .local v0, "elementAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    #@15
    .line 883
    new-instance v0, Ljava/util/HashMap;

    #@17
    .end local v0    # "elementAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1a
    .line 884
    .restart local v0    # "elementAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    #@1c
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 886
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 877
    return-void
.end method

.method private ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "required"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 295
    array-length v1, p1

    #@2
    if-lt v1, p2, :cond_0

    #@4
    .line 296
    return-object p1

    #@5
    .line 298
    :cond_0
    add-int/lit8 v1, p2, 0x10

    #@7
    new-array v0, v1, [Ljava/lang/String;

    #@9
    .line 299
    .local v0, "bigger":[Ljava/lang/String;
    array-length v1, p1

    #@a
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@d
    .line 300
    return-object v0
.end method

.method private fillBuffer(I)Z
    .locals 9
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 1482
    :cond_0
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #@5
    if-eqz v2, :cond_2

    #@7
    .line 1483
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@9
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@b
    if-ge v2, v3, :cond_1

    #@d
    .line 1484
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@f
    const-string/jumbo v3, "Unbalanced entity!"

    #@12
    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@15
    throw v2

    #@16
    .line 1486
    :cond_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->popContentSource()V

    #@19
    .line 1487
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@1b
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@1d
    sub-int/2addr v2, v3

    #@1e
    if-lt v2, p1, :cond_0

    #@20
    .line 1488
    return v8

    #@21
    .line 1493
    :cond_2
    const/4 v0, 0x0

    #@22
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@24
    if-ge v0, v2, :cond_4

    #@26
    .line 1494
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@28
    aget-char v2, v2, v0

    #@2a
    const/16 v3, 0xa

    #@2c
    if-ne v2, v3, :cond_3

    #@2e
    .line 1495
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    #@30
    add-int/lit8 v2, v2, 0x1

    #@32
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    #@34
    .line 1496
    iput v7, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    #@36
    .line 1493
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 1498
    :cond_3
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    #@3b
    add-int/lit8 v2, v2, 0x1

    #@3d
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    #@3f
    goto :goto_1

    #@40
    .line 1502
    :cond_4
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    #@42
    if-eqz v2, :cond_5

    #@44
    .line 1503
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    #@46
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@48
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@4a
    invoke-virtual {v2, v3, v7, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@4d
    .line 1506
    :cond_5
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@4f
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@51
    if-eq v2, v3, :cond_7

    #@53
    .line 1507
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@55
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@57
    sub-int/2addr v2, v3

    #@58
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@5a
    .line 1508
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@5c
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@5e
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@60
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@62
    invoke-static {v2, v3, v4, v7, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@65
    .line 1513
    :goto_2
    iput v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@67
    .line 1515
    :cond_6
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    #@69
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@6b
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@6d
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@6f
    array-length v5, v5

    #@70
    iget v6, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@72
    sub-int/2addr v5, v6

    #@73
    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    #@76
    move-result v1

    #@77
    .local v1, "total":I
    const/4 v2, -0x1

    #@78
    if-eq v1, v2, :cond_8

    #@7a
    .line 1516
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@7c
    add-int/2addr v2, v1

    #@7d
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@7f
    .line 1517
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@81
    if-lt v2, p1, :cond_6

    #@83
    .line 1518
    return v8

    #@84
    .line 1510
    .end local v1    # "total":I
    :cond_7
    iput v7, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@86
    goto :goto_2

    #@87
    .line 1521
    .restart local v1    # "total":I
    :cond_8
    return v7
.end method

.method private next(Z)I
    .locals 12
    .param p1, "justOneToken"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v11, 0x4

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v10, 0x0

    #@5
    .line 321
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    #@7
    if-nez v5, :cond_0

    #@9
    .line 322
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    #@b
    const-string/jumbo v6, "setInput() must be called first."

    #@e
    invoke-direct {v5, v6, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@11
    throw v5

    #@12
    .line 325
    :cond_0
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@14
    if-ne v5, v8, :cond_1

    #@16
    .line 326
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@18
    add-int/lit8 v5, v5, -0x1

    #@1a
    iput v5, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@1c
    .line 332
    :cond_1
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    #@1e
    if-eqz v5, :cond_2

    #@20
    .line 333
    iput-boolean v6, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    #@22
    .line 334
    iput v8, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@24
    .line 335
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@26
    return v5

    #@27
    .line 338
    :cond_2
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    #@29
    if-eqz v5, :cond_4

    #@2b
    .line 339
    if-eqz p1, :cond_3

    #@2d
    .line 340
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    #@2f
    iput-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@31
    .line 341
    const/16 v5, 0x9

    #@33
    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@35
    .line 342
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    #@37
    .line 343
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@39
    return v5

    #@3a
    .line 345
    :cond_3
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    #@3c
    .line 349
    :cond_4
    invoke-direct {p0, v6}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    #@3f
    move-result v5

    #@40
    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@42
    .line 351
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@44
    const/16 v8, 0x3e6

    #@46
    if-ne v5, v8, :cond_5

    #@48
    .line 352
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readXmlDeclaration()V

    #@4b
    .line 353
    invoke-direct {p0, v6}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    #@4e
    move-result v5

    #@4f
    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@51
    .line 356
    :cond_5
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@53
    .line 357
    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    #@55
    .line 358
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    #@57
    .line 359
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@59
    .line 360
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    #@5b
    .line 361
    const/4 v5, -0x1

    #@5c
    iput v5, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@5e
    .line 362
    if-eqz p1, :cond_6

    #@60
    const/4 v4, 0x0

    #@61
    .line 365
    .local v4, "throwOnResolveFailure":Z
    :goto_0
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@63
    packed-switch v5, :pswitch_data_0

    #@66
    .line 428
    :pswitch_0
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    #@68
    const-string/jumbo v6, "Unexpected token"

    #@6b
    invoke-direct {v5, v6, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@6e
    throw v5

    #@6f
    .line 362
    .end local v4    # "throwOnResolveFailure":Z
    :cond_6
    const/4 v4, 0x1

    #@70
    .restart local v4    # "throwOnResolveFailure":Z
    goto :goto_0

    #@71
    .line 372
    :pswitch_1
    invoke-direct {p0, v6, v4}, Lorg/kxml2/io/KXmlParser;->parseStartTag(ZZ)V

    #@74
    .line 373
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@76
    return v5

    #@77
    .line 375
    :pswitch_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readEndTag()V

    #@7a
    .line 376
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@7c
    return v5

    #@7d
    .line 378
    :pswitch_3
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@7f
    return v5

    #@80
    .line 385
    :pswitch_4
    if-eqz p1, :cond_9

    #@82
    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    .line 387
    .local v1, "entityTextBuilder":Ljava/lang/StringBuilder;
    sget-object v5, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@89
    invoke-direct {p0, v1, v7, v4, v5}, Lorg/kxml2/io/KXmlParser;->readEntity(Ljava/lang/StringBuilder;ZZLorg/kxml2/io/KXmlParser$ValueContext;)V

    #@8c
    .line 388
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v5

    #@90
    iput-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@92
    .line 431
    .end local v1    # "entityTextBuilder":Ljava/lang/StringBuilder;
    :cond_7
    :goto_1
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@94
    if-nez v5, :cond_c

    #@96
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@98
    const/4 v8, 0x6

    #@99
    if-eq v5, v8, :cond_8

    #@9b
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@9d
    if-ne v5, v11, :cond_b

    #@9f
    .line 432
    :cond_8
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    #@a1
    const-string/jumbo v6, "Unexpected token"

    #@a4
    invoke-direct {v5, v6, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@a7
    throw v5

    #@a8
    .line 393
    :cond_9
    :pswitch_5
    if-eqz p1, :cond_a

    #@aa
    move v5, v6

    #@ab
    :goto_2
    sget-object v8, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@ad
    const/16 v9, 0x3c

    #@af
    invoke-direct {p0, v9, v5, v4, v8}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    #@b2
    move-result-object v5

    #@b3
    iput-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@b5
    .line 394
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@b7
    if-nez v5, :cond_7

    #@b9
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    #@bb
    if-eqz v5, :cond_7

    #@bd
    .line 395
    const/4 v5, 0x7

    #@be
    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@c0
    goto :goto_1

    #@c1
    :cond_a
    move v5, v7

    #@c2
    .line 393
    goto :goto_2

    #@c3
    .line 399
    :pswitch_6
    sget-object v5, Lorg/kxml2/io/KXmlParser;->START_CDATA:[C

    #@c5
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@c8
    .line 400
    sget-object v5, Lorg/kxml2/io/KXmlParser;->END_CDATA:[C

    #@ca
    invoke-direct {p0, v5, v7}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    #@cd
    move-result-object v5

    #@ce
    iput-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@d0
    goto :goto_1

    #@d1
    .line 408
    :pswitch_7
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->readComment(Z)Ljava/lang/String;

    #@d4
    move-result-object v0

    #@d5
    .line 409
    .local v0, "commentText":Ljava/lang/String;
    if-eqz p1, :cond_7

    #@d7
    .line 410
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@d9
    goto :goto_1

    #@da
    .line 414
    .end local v0    # "commentText":Ljava/lang/String;
    :pswitch_8
    sget-object v5, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    #@dc
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@df
    .line 415
    sget-object v5, Lorg/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    #@e1
    invoke-direct {p0, v5, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    #@e4
    move-result-object v3

    #@e5
    .line 416
    .local v3, "processingInstruction":Ljava/lang/String;
    if-eqz p1, :cond_7

    #@e7
    .line 417
    iput-object v3, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@e9
    goto :goto_1

    #@ea
    .line 421
    .end local v3    # "processingInstruction":Ljava/lang/String;
    :pswitch_9
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->readDoctype(Z)V

    #@ed
    .line 422
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->parsedTopLevelStartTag:Z

    #@ef
    if-eqz v5, :cond_7

    #@f1
    .line 423
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    #@f3
    const-string/jumbo v6, "Unexpected token"

    #@f6
    invoke-direct {v5, v6, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@f9
    throw v5

    #@fa
    .line 431
    :cond_b
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@fc
    const/4 v8, 0x5

    #@fd
    if-eq v5, v8, :cond_8

    #@ff
    .line 435
    :cond_c
    if-eqz p1, :cond_d

    #@101
    .line 436
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@103
    return v5

    #@104
    .line 439
    :cond_d
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@106
    const/4 v8, 0x7

    #@107
    if-ne v5, v8, :cond_e

    #@109
    .line 440
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@10b
    .line 448
    :cond_e
    invoke-direct {p0, v6}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    #@10e
    move-result v2

    #@10f
    .line 449
    .local v2, "peek":I
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@111
    if-eqz v5, :cond_f

    #@113
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@115
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@118
    move-result v5

    #@119
    if-eqz v5, :cond_10

    #@11b
    .line 454
    :cond_f
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@11d
    goto/16 :goto_0

    #@11f
    .line 449
    :cond_10
    if-ge v2, v11, :cond_f

    #@121
    .line 450
    iput v11, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@123
    .line 451
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@125
    return v5

    #@126
    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private parseStartTag(ZZ)V
    .locals 13
    .param p1, "xmldecl"    # Z
    .param p2, "throwOnResolveFailure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1055
    if-nez p1, :cond_0

    #@2
    .line 1056
    const/16 v9, 0x3c

    #@4
    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->read(C)V

    #@7
    .line 1058
    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    #@a
    move-result-object v9

    #@b
    iput-object v9, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@d
    .line 1059
    const/4 v9, 0x0

    #@e
    iput v9, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@10
    .line 1062
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@13
    .line 1064
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@15
    iget v10, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@17
    if-lt v9, v10, :cond_2

    #@19
    const/4 v9, 0x1

    #@1a
    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@1d
    move-result v9

    #@1e
    if-eqz v9, :cond_3

    #@20
    .line 1069
    :cond_2
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@22
    iget v10, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@24
    aget-char v2, v9, v10

    #@26
    .line 1071
    .local v2, "c":I
    if-eqz p1, :cond_4

    #@28
    .line 1072
    const/16 v9, 0x3f

    #@2a
    if-ne v2, v9, :cond_9

    #@2c
    .line 1073
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@2e
    add-int/lit8 v9, v9, 0x1

    #@30
    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@32
    .line 1074
    const/16 v9, 0x3e

    #@34
    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->read(C)V

    #@37
    .line 1075
    return-void

    #@38
    .line 1065
    .end local v2    # "c":I
    :cond_3
    const-string/jumbo v9, "Unexpected EOF"

    #@3b
    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@3e
    .line 1066
    return-void

    #@3f
    .line 1078
    .restart local v2    # "c":I
    :cond_4
    const/16 v9, 0x2f

    #@41
    if-ne v2, v9, :cond_8

    #@43
    .line 1079
    const/4 v9, 0x1

    #@44
    iput-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    #@46
    .line 1080
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@48
    add-int/lit8 v9, v9, 0x1

    #@4a
    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@4c
    .line 1081
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@4f
    .line 1082
    const/16 v9, 0x3e

    #@51
    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->read(C)V

    #@54
    .line 1136
    :goto_1
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@56
    add-int/lit8 v10, v9, 0x1

    #@58
    iput v10, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@5a
    mul-int/lit8 v8, v9, 0x4

    #@5c
    .line 1137
    .local v8, "sp":I
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@5e
    const/4 v10, 0x1

    #@5f
    if-ne v9, v10, :cond_5

    #@61
    .line 1138
    const/4 v9, 0x1

    #@62
    iput-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->parsedTopLevelStartTag:Z

    #@64
    .line 1140
    :cond_5
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    #@66
    add-int/lit8 v10, v8, 0x4

    #@68
    invoke-direct {p0, v9, v10}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    #@6b
    move-result-object v9

    #@6c
    iput-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    #@6e
    .line 1141
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    #@70
    add-int/lit8 v10, v8, 0x3

    #@72
    iget-object v11, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@74
    aput-object v11, v9, v10

    #@76
    .line 1143
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@78
    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    #@7a
    array-length v10, v10

    #@7b
    if-lt v9, v10, :cond_6

    #@7d
    .line 1144
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@7f
    add-int/lit8 v9, v9, 0x4

    #@81
    new-array v1, v9, [I

    #@83
    .line 1145
    .local v1, "bigger":[I
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    #@85
    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    #@87
    array-length v10, v10

    #@88
    const/4 v11, 0x0

    #@89
    const/4 v12, 0x0

    #@8a
    invoke-static {v9, v11, v1, v12, v10}, Ljava/lang/System;->arraycopy([II[III)V

    #@8d
    .line 1146
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    #@8f
    .line 1149
    .end local v1    # "bigger":[I
    :cond_6
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    #@91
    iget v10, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@93
    iget-object v11, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    #@95
    iget v12, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@97
    add-int/lit8 v12, v12, -0x1

    #@99
    aget v11, v11, v12

    #@9b
    aput v11, v9, v10

    #@9d
    .line 1151
    iget-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    #@9f
    if-eqz v9, :cond_13

    #@a1
    .line 1152
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->adjustNsp()Z

    #@a4
    .line 1158
    :goto_2
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    #@a6
    if-eqz v9, :cond_14

    #@a8
    .line 1159
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    #@aa
    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@ac
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@af
    move-result-object v4

    #@b0
    check-cast v4, Ljava/util/Map;

    #@b2
    .line 1160
    .local v4, "elementDefaultAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_14

    #@b4
    .line 1161
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@b7
    move-result-object v9

    #@b8
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@bb
    move-result-object v6

    #@bc
    .local v6, "entry$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@bf
    move-result v9

    #@c0
    if-eqz v9, :cond_14

    #@c2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c5
    move-result-object v5

    #@c6
    check-cast v5, Ljava/util/Map$Entry;

    #@c8
    .line 1162
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@cb
    move-result-object v9

    #@cc
    check-cast v9, Ljava/lang/String;

    #@ce
    const/4 v10, 0x0

    #@cf
    invoke-virtual {p0, v10, v9}, Lorg/kxml2/io/KXmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d2
    move-result-object v9

    #@d3
    if-nez v9, :cond_7

    #@d5
    .line 1166
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@d7
    add-int/lit8 v10, v9, 0x1

    #@d9
    iput v10, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@db
    mul-int/lit8 v7, v9, 0x4

    #@dd
    .line 1167
    .local v7, "i":I
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@df
    add-int/lit8 v10, v7, 0x4

    #@e1
    invoke-direct {p0, v9, v10}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    #@e4
    move-result-object v9

    #@e5
    iput-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@e7
    .line 1168
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@e9
    const-string/jumbo v10, ""

    #@ec
    aput-object v10, v9, v7

    #@ee
    .line 1169
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@f0
    add-int/lit8 v10, v7, 0x1

    #@f2
    const/4 v11, 0x0

    #@f3
    aput-object v11, v9, v10

    #@f5
    .line 1170
    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@f7
    add-int/lit8 v11, v7, 0x2

    #@f9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@fc
    move-result-object v9

    #@fd
    check-cast v9, Ljava/lang/String;

    #@ff
    aput-object v9, v10, v11

    #@101
    .line 1171
    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@103
    add-int/lit8 v11, v7, 0x3

    #@105
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@108
    move-result-object v9

    #@109
    check-cast v9, Ljava/lang/String;

    #@10b
    aput-object v9, v10, v11

    #@10d
    goto :goto_3

    #@10e
    .line 1084
    .end local v4    # "elementDefaultAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "entry$iterator":Ljava/util/Iterator;
    .end local v7    # "i":I
    .end local v8    # "sp":I
    :cond_8
    const/16 v9, 0x3e

    #@110
    if-ne v2, v9, :cond_9

    #@112
    .line 1085
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@114
    add-int/lit8 v9, v9, 0x1

    #@116
    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@118
    goto/16 :goto_1

    #@11a
    .line 1090
    :cond_9
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    #@11d
    move-result-object v0

    #@11e
    .line 1092
    .local v0, "attrName":Ljava/lang/String;
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@120
    add-int/lit8 v10, v9, 0x1

    #@122
    iput v10, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@124
    mul-int/lit8 v7, v9, 0x4

    #@126
    .line 1093
    .restart local v7    # "i":I
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@128
    add-int/lit8 v10, v7, 0x4

    #@12a
    invoke-direct {p0, v9, v10}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    #@12d
    move-result-object v9

    #@12e
    iput-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@130
    .line 1094
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@132
    const-string/jumbo v10, ""

    #@135
    aput-object v10, v9, v7

    #@137
    .line 1095
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@139
    add-int/lit8 v10, v7, 0x1

    #@13b
    const/4 v11, 0x0

    #@13c
    aput-object v11, v9, v10

    #@13e
    .line 1096
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@140
    add-int/lit8 v10, v7, 0x2

    #@142
    aput-object v0, v9, v10

    #@144
    .line 1098
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@147
    .line 1099
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@149
    iget v10, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@14b
    if-lt v9, v10, :cond_a

    #@14d
    const/4 v9, 0x1

    #@14e
    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@151
    move-result v9

    #@152
    if-eqz v9, :cond_d

    #@154
    .line 1104
    :cond_a
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@156
    iget v10, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@158
    aget-char v9, v9, v10

    #@15a
    const/16 v10, 0x3d

    #@15c
    if-ne v9, v10, :cond_11

    #@15e
    .line 1105
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@160
    add-int/lit8 v9, v9, 0x1

    #@162
    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@164
    .line 1107
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@167
    .line 1108
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@169
    iget v10, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@16b
    if-lt v9, v10, :cond_b

    #@16d
    const/4 v9, 0x1

    #@16e
    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@171
    move-result v9

    #@172
    if-eqz v9, :cond_e

    #@174
    .line 1112
    :cond_b
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@176
    iget v10, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@178
    aget-char v3, v9, v10

    #@17a
    .line 1114
    .local v3, "delimiter":C
    const/16 v9, 0x27

    #@17c
    if-eq v3, v9, :cond_c

    #@17e
    const/16 v9, 0x22

    #@180
    if-ne v3, v9, :cond_f

    #@182
    .line 1115
    :cond_c
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@184
    add-int/lit8 v9, v9, 0x1

    #@186
    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@188
    .line 1122
    .end local v3    # "delimiter":C
    :goto_4
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@18a
    add-int/lit8 v10, v7, 0x3

    #@18c
    .line 1123
    sget-object v11, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@18e
    .line 1122
    const/4 v12, 0x1

    #@18f
    invoke-direct {p0, v3, v12, p2, v11}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    #@192
    move-result-object v11

    #@193
    aput-object v11, v9, v10

    #@195
    .line 1125
    const/16 v9, 0x20

    #@197
    if-eq v3, v9, :cond_1

    #@199
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@19c
    move-result v9

    #@19d
    if-ne v9, v3, :cond_1

    #@19f
    .line 1126
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@1a1
    add-int/lit8 v9, v9, 0x1

    #@1a3
    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@1a5
    goto/16 :goto_0

    #@1a7
    .line 1100
    :cond_d
    const-string/jumbo v9, "Unexpected EOF"

    #@1aa
    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@1ad
    .line 1101
    return-void

    #@1ae
    .line 1109
    :cond_e
    const-string/jumbo v9, "Unexpected EOF"

    #@1b1
    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@1b4
    .line 1110
    return-void

    #@1b5
    .line 1116
    .restart local v3    # "delimiter":C
    :cond_f
    iget-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    #@1b7
    if-eqz v9, :cond_10

    #@1b9
    .line 1117
    const/16 v3, 0x20

    #@1bb
    .local v3, "delimiter":C
    goto :goto_4

    #@1bc
    .line 1119
    .local v3, "delimiter":C
    :cond_10
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    #@1be
    const-string/jumbo v10, "attr value delimiter missing!"

    #@1c1
    const/4 v11, 0x0

    #@1c2
    invoke-direct {v9, v10, p0, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@1c5
    throw v9

    #@1c6
    .line 1128
    .end local v3    # "delimiter":C
    :cond_11
    iget-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    #@1c8
    if-eqz v9, :cond_12

    #@1ca
    .line 1129
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@1cc
    add-int/lit8 v10, v7, 0x3

    #@1ce
    aput-object v0, v9, v10

    #@1d0
    goto/16 :goto_0

    #@1d2
    .line 1131
    :cond_12
    new-instance v9, Ljava/lang/StringBuilder;

    #@1d4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1d7
    const-string/jumbo v10, "Attr.value missing f. "

    #@1da
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v9

    #@1de
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v9

    #@1e2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e5
    move-result-object v9

    #@1e6
    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@1e9
    .line 1132
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@1eb
    add-int/lit8 v10, v7, 0x3

    #@1ed
    aput-object v0, v9, v10

    #@1ef
    goto/16 :goto_0

    #@1f1
    .line 1154
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v7    # "i":I
    .restart local v8    # "sp":I
    :cond_13
    const-string/jumbo v9, ""

    #@1f4
    iput-object v9, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    #@1f6
    goto/16 :goto_2

    #@1f8
    .line 1176
    :cond_14
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    #@1fa
    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    #@1fc
    aput-object v10, v9, v8

    #@1fe
    .line 1177
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    #@200
    add-int/lit8 v10, v8, 0x1

    #@202
    iget-object v11, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    #@204
    aput-object v11, v9, v10

    #@206
    .line 1178
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    #@208
    add-int/lit8 v10, v8, 0x2

    #@20a
    iget-object v11, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@20c
    aput-object v11, v9, v10

    #@20e
    .line 1054
    return-void
.end method

.method private peekCharacter()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1469
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@2
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1470
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@f
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@11
    aget-char v0, v0, v1

    #@13
    return v0

    #@14
    .line 1472
    :cond_1
    const/4 v0, -0x1

    #@15
    return v0
.end method

.method private peekType(Z)I
    .locals 6
    .param p1, "inDeclaration"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x6

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v0, 0x4

    #@4
    .line 992
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@6
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@8
    if-lt v1, v2, :cond_0

    #@a
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 996
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@12
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@14
    aget-char v1, v1, v2

    #@16
    sparse-switch v1, :sswitch_data_0

    #@19
    .line 1046
    return v0

    #@1a
    .line 993
    :cond_1
    return v3

    #@1b
    .line 998
    :sswitch_0
    return v4

    #@1c
    .line 1000
    :sswitch_1
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@1e
    add-int/lit8 v1, v1, 0x3

    #@20
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@22
    if-lt v1, v2, :cond_2

    #@24
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 1004
    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@2c
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@2e
    add-int/lit8 v1, v1, 0x1

    #@30
    aget-char v0, v0, v1

    #@32
    sparse-switch v0, :sswitch_data_1

    #@35
    .line 1041
    const/4 v0, 0x2

    #@36
    return v0

    #@37
    .line 1001
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@39
    const-string/jumbo v1, "Dangling <"

    #@3c
    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@3f
    throw v0

    #@40
    .line 1006
    :sswitch_2
    const/4 v0, 0x3

    #@41
    return v0

    #@42
    .line 1009
    :sswitch_3
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@44
    add-int/lit8 v0, v0, 0x5

    #@46
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@48
    if-lt v0, v1, :cond_4

    #@4a
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@4d
    move-result v0

    #@4e
    if-eqz v0, :cond_8

    #@50
    .line 1010
    :cond_4
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@52
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@54
    add-int/lit8 v1, v1, 0x2

    #@56
    aget-char v0, v0, v1

    #@58
    const/16 v1, 0x78

    #@5a
    if-eq v0, v1, :cond_5

    #@5c
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@5e
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@60
    add-int/lit8 v1, v1, 0x2

    #@62
    aget-char v0, v0, v1

    #@64
    const/16 v1, 0x58

    #@66
    if-ne v0, v1, :cond_8

    #@68
    .line 1011
    :cond_5
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@6a
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@6c
    add-int/lit8 v1, v1, 0x3

    #@6e
    aget-char v0, v0, v1

    #@70
    const/16 v1, 0x6d

    #@72
    if-eq v0, v1, :cond_6

    #@74
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@76
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@78
    add-int/lit8 v1, v1, 0x3

    #@7a
    aget-char v0, v0, v1

    #@7c
    const/16 v1, 0x4d

    #@7e
    if-ne v0, v1, :cond_8

    #@80
    .line 1012
    :cond_6
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@82
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@84
    add-int/lit8 v1, v1, 0x4

    #@86
    aget-char v0, v0, v1

    #@88
    const/16 v1, 0x6c

    #@8a
    if-eq v0, v1, :cond_7

    #@8c
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@8e
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@90
    add-int/lit8 v1, v1, 0x4

    #@92
    aget-char v0, v0, v1

    #@94
    const/16 v1, 0x4c

    #@96
    if-ne v0, v1, :cond_8

    #@98
    .line 1013
    :cond_7
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@9a
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@9c
    add-int/lit8 v1, v1, 0x5

    #@9e
    aget-char v0, v0, v1

    #@a0
    const/16 v1, 0x20

    #@a2
    if-ne v0, v1, :cond_8

    #@a4
    .line 1014
    const/16 v0, 0x3e6

    #@a6
    return v0

    #@a7
    .line 1016
    :cond_8
    const/16 v0, 0x8

    #@a9
    return v0

    #@aa
    .line 1019
    :sswitch_4
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@ac
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@ae
    add-int/lit8 v1, v1, 0x2

    #@b0
    aget-char v0, v0, v1

    #@b2
    sparse-switch v0, :sswitch_data_2

    #@b5
    .line 1039
    :goto_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@b7
    const-string/jumbo v1, "Unexpected <!"

    #@ba
    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@bd
    throw v0

    #@be
    .line 1021
    :sswitch_5
    const/16 v0, 0xa

    #@c0
    return v0

    #@c1
    .line 1023
    :sswitch_6
    const/4 v0, 0x5

    #@c2
    return v0

    #@c3
    .line 1025
    :sswitch_7
    const/16 v0, 0x9

    #@c5
    return v0

    #@c6
    .line 1027
    :sswitch_8
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@c8
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@ca
    add-int/lit8 v1, v1, 0x3

    #@cc
    aget-char v0, v0, v1

    #@ce
    packed-switch v0, :pswitch_data_0

    #@d1
    :pswitch_0
    goto :goto_0

    #@d2
    .line 1029
    :pswitch_1
    const/16 v0, 0xb

    #@d4
    return v0

    #@d5
    .line 1031
    :pswitch_2
    const/16 v0, 0xc

    #@d7
    return v0

    #@d8
    .line 1035
    :sswitch_9
    const/16 v0, 0xd

    #@da
    return v0

    #@db
    .line 1037
    :sswitch_a
    const/16 v0, 0xe

    #@dd
    return v0

    #@de
    .line 1044
    :sswitch_b
    if-eqz p1, :cond_9

    #@e0
    const/16 v0, 0xf

    #@e2
    :cond_9
    return v0

    #@e3
    .line 996
    nop

    #@e4
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_b
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
    .end sparse-switch

    #@f2
    .line 1004
    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_4
        0x2f -> :sswitch_2
        0x3f -> :sswitch_3
    .end sparse-switch

    #@100
    .line 1019
    :sswitch_data_2
    .sparse-switch
        0x2d -> :sswitch_7
        0x41 -> :sswitch_9
        0x44 -> :sswitch_5
        0x45 -> :sswitch_8
        0x4e -> :sswitch_a
        0x5b -> :sswitch_6
    .end sparse-switch

    #@11a
    .line 1027
    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private popContentSource()V
    .locals 1

    #@0
    .prologue
    .line 2171
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #@2
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->-get0(Lorg/kxml2/io/KXmlParser$ContentSource;)[C

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@8
    .line 2172
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #@a
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->-get3(Lorg/kxml2/io/KXmlParser$ContentSource;)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@10
    .line 2173
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #@12
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->-get1(Lorg/kxml2/io/KXmlParser$ContentSource;)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@18
    .line 2174
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #@1a
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->-get2(Lorg/kxml2/io/KXmlParser$ContentSource;)Lorg/kxml2/io/KXmlParser$ContentSource;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #@20
    .line 2170
    return-void
.end method

.method private pushContentSource([C)V
    .locals 5
    .param p1, "newBuffer"    # [C

    #@0
    .prologue
    .line 2161
    new-instance v0, Lorg/kxml2/io/KXmlParser$ContentSource;

    #@2
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #@4
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@6
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@8
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@a
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/kxml2/io/KXmlParser$ContentSource;-><init>(Lorg/kxml2/io/KXmlParser$ContentSource;[CII)V

    #@d
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #@f
    .line 2162
    iput-object p1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@11
    .line 2163
    const/4 v0, 0x0

    #@12
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@14
    .line 2164
    array-length v0, p1

    #@15
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@17
    .line 2160
    return-void
.end method

.method private read(C)V
    .locals 3
    .param p1, "expected"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1440
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@3
    move-result v0

    #@4
    .line 1441
    .local v0, "c":I
    if-eq v0, p1, :cond_0

    #@6
    .line 1442
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "expected: \'"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, "\' actual: \'"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    int-to-char v2, v0

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, "\'"

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@30
    .line 1443
    const/4 v1, -0x1

    #@31
    if-ne v0, v1, :cond_0

    #@33
    .line 1444
    return-void

    #@34
    .line 1447
    :cond_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@36
    add-int/lit8 v1, v1, 0x1

    #@38
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@3a
    .line 1439
    return-void
.end method

.method private read([C)V
    .locals 6
    .param p1, "chars"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1451
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@2
    array-length v2, p1

    #@3
    add-int/2addr v1, v2

    #@4
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@6
    if-le v1, v2, :cond_0

    #@8
    array-length v1, p1

    #@9
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_2

    #@f
    .line 1458
    :cond_0
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@11
    if-ge v0, v1, :cond_3

    #@13
    .line 1459
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@15
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@17
    add-int/2addr v2, v0

    #@18
    aget-char v1, v1, v2

    #@1a
    aget-char v2, p1, v0

    #@1c
    if-eq v1, v2, :cond_1

    #@1e
    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "expected: \""

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    new-instance v2, Ljava/lang/String;

    #@2c
    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const-string/jumbo v2, "\" but was \""

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 1461
    new-instance v2, Ljava/lang/String;

    #@3c
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@3e
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@40
    array-length v5, p1

    #@41
    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    #@44
    .line 1460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    .line 1461
    const-string/jumbo v2, "...\""

    #@4b
    .line 1460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@56
    .line 1458
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@58
    goto :goto_0

    #@59
    .line 1452
    .end local v0    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v2, "expected: \'"

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    new-instance v2, Ljava/lang/String;

    #@67
    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    const-string/jumbo v2, "\' but was EOF"

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@7c
    .line 1453
    return-void

    #@7d
    .line 1465
    .restart local v0    # "i":I
    :cond_3
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@7f
    array-length v2, p1

    #@80
    add-int/2addr v1, v2

    #@81
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@83
    .line 1450
    return-void
.end method

.method private readAttributeListDeclaration()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 802
    sget-object v4, Lorg/kxml2/io/KXmlParser;->START_ATTLIST:[C

    #@4
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@7
    .line 803
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@a
    .line 804
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 807
    .local v2, "elementName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@11
    .line 808
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@14
    move-result v1

    #@15
    .line 809
    .local v1, "c":I
    const/16 v4, 0x3e

    #@17
    if-ne v1, v4, :cond_1

    #@19
    .line 810
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@1b
    add-int/lit8 v4, v4, 0x1

    #@1d
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@1f
    .line 811
    return-void

    #@20
    .line 815
    :cond_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 818
    .local v0, "attributeName":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@27
    .line 819
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@29
    add-int/lit8 v4, v4, 0x1

    #@2b
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@2d
    if-lt v4, v5, :cond_2

    #@2f
    const/4 v4, 0x2

    #@30
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_7

    #@36
    .line 822
    :cond_2
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@38
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@3a
    aget-char v4, v4, v5

    #@3c
    sget-object v5, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    #@3e
    const/4 v6, 0x0

    #@3f
    aget-char v5, v5, v6

    #@41
    if-ne v4, v5, :cond_3

    #@43
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@45
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@47
    add-int/lit8 v5, v5, 0x1

    #@49
    aget-char v4, v4, v5

    #@4b
    sget-object v5, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    #@4d
    aget-char v5, v5, v7

    #@4f
    if-ne v4, v5, :cond_3

    #@51
    .line 823
    sget-object v4, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    #@53
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@56
    .line 824
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@59
    .line 826
    :cond_3
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@5c
    move-result v1

    #@5d
    .line 827
    const/16 v4, 0x28

    #@5f
    if-ne v1, v4, :cond_a

    #@61
    .line 828
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@63
    add-int/lit8 v4, v4, 0x1

    #@65
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@67
    .line 830
    :goto_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@6a
    .line 831
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    #@6d
    .line 832
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@70
    .line 833
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@73
    move-result v1

    #@74
    .line 834
    const/16 v4, 0x29

    #@76
    if-ne v1, v4, :cond_8

    #@78
    .line 835
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@7a
    add-int/lit8 v4, v4, 0x1

    #@7c
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@7e
    .line 848
    :goto_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@81
    .line 849
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@84
    move-result v1

    #@85
    .line 850
    const/16 v4, 0x23

    #@87
    if-ne v1, v4, :cond_4

    #@89
    .line 851
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@8b
    add-int/lit8 v4, v4, 0x1

    #@8d
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@8f
    .line 852
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@92
    move-result v1

    #@93
    .line 853
    const/16 v4, 0x52

    #@95
    if-ne v1, v4, :cond_b

    #@97
    .line 854
    sget-object v4, Lorg/kxml2/io/KXmlParser;->REQUIRED:[C

    #@99
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@9c
    .line 862
    :goto_3
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@9f
    .line 863
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@a2
    move-result v1

    #@a3
    .line 865
    :cond_4
    const/16 v4, 0x22

    #@a5
    if-eq v1, v4, :cond_5

    #@a7
    const/16 v4, 0x27

    #@a9
    if-ne v1, v4, :cond_0

    #@ab
    .line 866
    :cond_5
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@ad
    add-int/lit8 v4, v4, 0x1

    #@af
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@b1
    .line 868
    int-to-char v4, v1

    #@b2
    sget-object v5, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@b4
    invoke-direct {p0, v4, v7, v7, v5}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    #@b7
    move-result-object v3

    #@b8
    .line 869
    .local v3, "value":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@bb
    move-result v4

    #@bc
    if-ne v4, v1, :cond_6

    #@be
    .line 870
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@c0
    add-int/lit8 v4, v4, 0x1

    #@c2
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@c4
    .line 872
    :cond_6
    invoke-direct {p0, v2, v0, v3}, Lorg/kxml2/io/KXmlParser;->defineAttributeDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c7
    goto/16 :goto_0

    #@c9
    .line 820
    .end local v3    # "value":Ljava/lang/String;
    :cond_7
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@cb
    const-string/jumbo v5, "Malformed attribute list"

    #@ce
    invoke-direct {v4, v5, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@d1
    throw v4

    #@d2
    .line 837
    :cond_8
    const/16 v4, 0x7c

    #@d4
    if-ne v1, v4, :cond_9

    #@d6
    .line 838
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@d8
    add-int/lit8 v4, v4, 0x1

    #@da
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@dc
    goto :goto_1

    #@dd
    .line 840
    :cond_9
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@df
    const-string/jumbo v5, "Malformed attribute type"

    #@e2
    invoke-direct {v4, v5, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@e5
    throw v4

    #@e6
    .line 844
    :cond_a
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    #@e9
    goto :goto_2

    #@ea
    .line 855
    :cond_b
    const/16 v4, 0x49

    #@ec
    if-ne v1, v4, :cond_c

    #@ee
    .line 856
    sget-object v4, Lorg/kxml2/io/KXmlParser;->IMPLIED:[C

    #@f0
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@f3
    goto :goto_3

    #@f4
    .line 857
    :cond_c
    const/16 v4, 0x46

    #@f6
    if-ne v1, v4, :cond_d

    #@f8
    .line 858
    sget-object v4, Lorg/kxml2/io/KXmlParser;->FIXED:[C

    #@fa
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@fd
    goto :goto_3

    #@fe
    .line 860
    :cond_d
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@100
    const-string/jumbo v5, "Malformed attribute type"

    #@103
    invoke-direct {v4, v5, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@106
    throw v4
.end method

.method private readComment(Z)Ljava/lang/String;
    .locals 4
    .param p1, "returnText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 562
    sget-object v1, Lorg/kxml2/io/KXmlParser;->START_COMMENT:[C

    #@2
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@5
    .line 564
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 565
    sget-object v1, Lorg/kxml2/io/KXmlParser;->END_COMMENT:[C

    #@b
    invoke-direct {p0, v1, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 568
    :cond_0
    sget-object v1, Lorg/kxml2/io/KXmlParser;->COMMENT_DOUBLE_DASH:[C

    #@12
    invoke-direct {p0, v1, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 569
    .local v0, "commentText":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@19
    move-result v1

    #@1a
    const/16 v2, 0x3e

    #@1c
    if-eq v1, v2, :cond_1

    #@1e
    .line 570
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@20
    const-string/jumbo v2, "Comments may not contain --"

    #@23
    const/4 v3, 0x0

    #@24
    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@27
    throw v1

    #@28
    .line 572
    :cond_1
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@2e
    .line 573
    return-object v0
.end method

.method private readContentSpec()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/16 v4, 0x28

    #@3
    const/4 v3, 0x0

    #@4
    .line 756
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@7
    .line 757
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@a
    move-result v0

    #@b
    .line 758
    .local v0, "c":I
    if-ne v0, v4, :cond_7

    #@d
    .line 759
    const/4 v1, 0x0

    #@e
    .line 761
    .local v1, "depth":I
    :cond_0
    if-ne v0, v4, :cond_4

    #@10
    .line 762
    add-int/lit8 v1, v1, 0x1

    #@12
    .line 769
    :cond_1
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@14
    add-int/lit8 v2, v2, 0x1

    #@16
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@18
    .line 770
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@1b
    move-result v0

    #@1c
    .line 771
    if-gtz v1, :cond_0

    #@1e
    .line 773
    const/16 v2, 0x2a

    #@20
    if-eq v0, v2, :cond_2

    #@22
    const/16 v2, 0x3f

    #@24
    if-ne v0, v2, :cond_6

    #@26
    .line 774
    :cond_2
    :goto_1
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@28
    add-int/lit8 v2, v2, 0x1

    #@2a
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@2c
    .line 754
    .end local v1    # "depth":I
    :cond_3
    :goto_2
    return-void

    #@2d
    .line 763
    .restart local v1    # "depth":I
    :cond_4
    const/16 v2, 0x29

    #@2f
    if-ne v0, v2, :cond_5

    #@31
    .line 764
    add-int/lit8 v1, v1, -0x1

    #@33
    goto :goto_0

    #@34
    .line 765
    :cond_5
    const/4 v2, -0x1

    #@35
    if-ne v0, v2, :cond_1

    #@37
    .line 766
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@39
    .line 767
    const-string/jumbo v3, "Unterminated element content spec"

    #@3c
    .line 766
    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@3f
    throw v2

    #@40
    .line 773
    :cond_6
    const/16 v2, 0x2b

    #@42
    if-ne v0, v2, :cond_3

    #@44
    goto :goto_1

    #@45
    .line 776
    .end local v1    # "depth":I
    :cond_7
    sget-object v2, Lorg/kxml2/io/KXmlParser;->EMPTY:[C

    #@47
    aget-char v2, v2, v3

    #@49
    if-ne v0, v2, :cond_8

    #@4b
    .line 777
    sget-object v2, Lorg/kxml2/io/KXmlParser;->EMPTY:[C

    #@4d
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@50
    goto :goto_2

    #@51
    .line 778
    :cond_8
    sget-object v2, Lorg/kxml2/io/KXmlParser;->ANY:[C

    #@53
    aget-char v2, v2, v3

    #@55
    if-ne v0, v2, :cond_9

    #@57
    .line 779
    sget-object v2, Lorg/kxml2/io/KXmlParser;->ANY:[C

    #@59
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@5c
    goto :goto_2

    #@5d
    .line 781
    :cond_9
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@5f
    const-string/jumbo v3, "Expected element content spec"

    #@62
    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@65
    throw v2
.end method

.method private readDoctype(Z)V
    .locals 7
    .param p1, "saveDtdText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 581
    sget-object v1, Lorg/kxml2/io/KXmlParser;->START_DOCTYPE:[C

    #@4
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@7
    .line 583
    const/4 v0, -0x1

    #@8
    .line 584
    .local v0, "startPosition":I
    if-eqz p1, :cond_0

    #@a
    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    #@11
    .line 586
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@13
    .line 589
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@16
    .line 590
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->rootElementName:Ljava/lang/String;

    #@1c
    .line 591
    const/4 v1, 0x1

    #@1d
    const/4 v2, 0x1

    #@1e
    invoke-direct {p0, v1, v2}, Lorg/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    #@21
    .line 592
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@24
    .line 593
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@27
    move-result v1

    #@28
    const/16 v2, 0x5b

    #@2a
    if-ne v1, v2, :cond_1

    #@2c
    .line 594
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readInternalSubset()V

    #@2f
    .line 596
    :cond_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 598
    if-eqz p1, :cond_2

    #@34
    .line 599
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    #@36
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@38
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@3a
    invoke-virtual {v1, v2, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@3d
    .line 600
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    #@3f
    invoke-virtual {v1, v5, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@42
    .line 601
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@4a
    .line 602
    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    #@4c
    .line 606
    :cond_2
    const/16 v1, 0x3e

    #@4e
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    #@51
    .line 580
    return-void

    #@52
    .line 597
    :catchall_0
    move-exception v1

    #@53
    .line 598
    if-eqz p1, :cond_3

    #@55
    .line 599
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    #@57
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@59
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@5b
    invoke-virtual {v2, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@5e
    .line 600
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    #@60
    invoke-virtual {v2, v5, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@63
    .line 601
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    #@65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@6b
    .line 602
    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    #@6d
    .line 597
    :cond_3
    throw v1
.end method

.method private readElementDeclaration()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 730
    sget-object v0, Lorg/kxml2/io/KXmlParser;->START_ELEMENT:[C

    #@2
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@5
    .line 731
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@8
    .line 732
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    #@b
    .line 733
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readContentSpec()V

    #@e
    .line 734
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@11
    .line 735
    const/16 v0, 0x3e

    #@13
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read(C)V

    #@16
    .line 729
    return-void
.end method

.method private readEndTag()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 964
    const/16 v1, 0x3c

    #@2
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    #@5
    .line 965
    const/16 v1, 0x2f

    #@7
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    #@a
    .line 966
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@10
    .line 967
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@13
    .line 968
    const/16 v1, 0x3e

    #@15
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    #@18
    .line 970
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@1a
    add-int/lit8 v1, v1, -0x1

    #@1c
    mul-int/lit8 v0, v1, 0x4

    #@1e
    .line 972
    .local v0, "sp":I
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@20
    if-nez v1, :cond_0

    #@22
    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "read end tag "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    const-string/jumbo v2, " with no tags open"

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@42
    .line 974
    const/16 v1, 0x9

    #@44
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@46
    .line 975
    return-void

    #@47
    .line 978
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@49
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    #@4b
    add-int/lit8 v3, v0, 0x3

    #@4d
    aget-object v2, v2, v3

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_2

    #@55
    .line 979
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    #@57
    aget-object v1, v1, v0

    #@59
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    #@5b
    .line 980
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    #@5d
    add-int/lit8 v2, v0, 0x1

    #@5f
    aget-object v1, v1, v2

    #@61
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    #@63
    .line 981
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    #@65
    add-int/lit8 v2, v0, 0x2

    #@67
    aget-object v1, v1, v2

    #@69
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@6b
    .line 963
    :cond_1
    return-void

    #@6c
    .line 982
    :cond_2
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    #@6e
    if-nez v1, :cond_1

    #@70
    .line 983
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@72
    .line 984
    new-instance v2, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v3, "expected: /"

    #@7a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    #@80
    add-int/lit8 v4, v0, 0x3

    #@82
    aget-object v3, v3, v4

    #@84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    const-string/jumbo v3, " read: "

    #@8b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v2

    #@95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v2

    #@99
    const/4 v3, 0x0

    #@9a
    .line 983
    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@9d
    throw v1
.end method

.method private readEntity(Ljava/lang/StringBuilder;ZZLorg/kxml2/io/KXmlParser$ValueContext;)V
    .locals 10
    .param p1, "out"    # Ljava/lang/StringBuilder;
    .param p2, "isEntityToken"    # Z
    .param p3, "throwOnResolveFailure"    # Z
    .param p4, "valueContext"    # Lorg/kxml2/io/KXmlParser$ValueContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1188
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@3
    move-result v6

    #@4
    .line 1190
    .local v6, "start":I
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@6
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@8
    add-int/lit8 v9, v8, 0x1

    #@a
    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@c
    aget-char v7, v7, v8

    #@e
    const/16 v8, 0x26

    #@10
    if-eq v7, v8, :cond_0

    #@12
    .line 1191
    new-instance v7, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v7

    #@18
    .line 1194
    :cond_0
    const/16 v7, 0x26

    #@1a
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 1197
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@20
    move-result v0

    #@21
    .line 1199
    .local v0, "c":I
    const/16 v7, 0x3b

    #@23
    if-ne v0, v7, :cond_2

    #@25
    .line 1200
    const/16 v7, 0x3b

    #@27
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    .line 1201
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@2c
    add-int/lit8 v7, v7, 0x1

    #@2e
    iput v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@30
    .line 1223
    add-int/lit8 v7, v6, 0x1

    #@32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@35
    move-result v8

    #@36
    add-int/lit8 v8, v8, -0x1

    #@38
    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    .line 1225
    .local v1, "code":Ljava/lang/String;
    if-eqz p2, :cond_1

    #@3e
    .line 1226
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@40
    .line 1229
    :cond_1
    const-string/jumbo v7, "#"

    #@43
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@46
    move-result v7

    #@47
    if-eqz v7, :cond_9

    #@49
    .line 1231
    :try_start_0
    const-string/jumbo v7, "#x"

    #@4c
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4f
    move-result v7

    #@50
    if-eqz v7, :cond_8

    #@52
    .line 1232
    const/4 v7, 0x2

    #@53
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@56
    move-result-object v7

    #@57
    const/16 v8, 0x10

    #@59
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@5c
    move-result v0

    #@5d
    .line 1234
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@60
    move-result v7

    #@61
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@64
    .line 1235
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@67
    .line 1236
    const/4 v7, 0x0

    #@68
    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@6a
    .line 1237
    return-void

    #@6b
    .line 1204
    .end local v1    # "code":Ljava/lang/String;
    :cond_2
    const/16 v7, 0x80

    #@6d
    if-ge v0, v7, :cond_3

    #@6f
    .line 1205
    const/16 v7, 0x30

    #@71
    if-lt v0, v7, :cond_4

    #@73
    const/16 v7, 0x39

    #@75
    if-gt v0, v7, :cond_4

    #@77
    .line 1211
    :cond_3
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@79
    add-int/lit8 v7, v7, 0x1

    #@7b
    iput v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@7d
    .line 1212
    int-to-char v7, v0

    #@7e
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@81
    goto :goto_0

    #@82
    .line 1206
    :cond_4
    const/16 v7, 0x61

    #@84
    if-lt v0, v7, :cond_5

    #@86
    const/16 v7, 0x7a

    #@88
    if-le v0, v7, :cond_3

    #@8a
    .line 1207
    :cond_5
    const/16 v7, 0x41

    #@8c
    if-lt v0, v7, :cond_6

    #@8e
    const/16 v7, 0x5a

    #@90
    if-le v0, v7, :cond_3

    #@92
    .line 1208
    :cond_6
    const/16 v7, 0x5f

    #@94
    if-eq v0, v7, :cond_3

    #@96
    .line 1209
    const/16 v7, 0x2d

    #@98
    if-eq v0, v7, :cond_3

    #@9a
    .line 1210
    const/16 v7, 0x23

    #@9c
    if-eq v0, v7, :cond_3

    #@9e
    .line 1214
    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    #@a0
    if-eqz v7, :cond_7

    #@a2
    .line 1216
    return-void

    #@a3
    .line 1219
    :cond_7
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    #@a5
    const-string/jumbo v8, "unterminated entity ref"

    #@a8
    const/4 v9, 0x0

    #@a9
    invoke-direct {v7, v8, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@ac
    throw v7

    #@ad
    .line 1233
    .restart local v1    # "code":Ljava/lang/String;
    :cond_8
    const/4 v7, 0x1

    #@ae
    :try_start_1
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b1
    move-result-object v7

    #@b2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@b5
    move-result v0

    #@b6
    goto :goto_1

    #@b7
    .line 1240
    :catch_0
    move-exception v3

    #@b8
    .line 1241
    .local v3, "invalidCodePoint":Ljava/lang/IllegalArgumentException;
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    #@ba
    new-instance v8, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v9, "Invalid character reference: &"

    #@c2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v8

    #@c6
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v8

    #@ca
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v8

    #@ce
    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@d1
    throw v7

    #@d2
    .line 1238
    .end local v3    # "invalidCodePoint":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    #@d3
    .line 1239
    .local v4, "notANumber":Ljava/lang/NumberFormatException;
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    #@d5
    new-instance v8, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v9, "Invalid character reference: &"

    #@dd
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v8

    #@e1
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v8

    #@e5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v8

    #@e9
    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@ec
    throw v7

    #@ed
    .line 1245
    .end local v4    # "notANumber":Ljava/lang/NumberFormatException;
    :cond_9
    sget-object v7, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@ef
    if-ne p4, v7, :cond_a

    #@f1
    .line 1247
    return-void

    #@f2
    .line 1250
    :cond_a
    sget-object v7, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    #@f4
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f7
    move-result-object v2

    #@f8
    check-cast v2, Ljava/lang/String;

    #@fa
    .line 1251
    .local v2, "defaultEntity":Ljava/lang/String;
    if-eqz v2, :cond_b

    #@fc
    .line 1252
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@ff
    move-result v7

    #@100
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@103
    .line 1253
    const/4 v7, 0x0

    #@104
    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    #@106
    .line 1254
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    .line 1255
    return-void

    #@10a
    .line 1259
    :cond_b
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    #@10c
    if-eqz v7, :cond_d

    #@10e
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    #@110
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@113
    move-result-object v5

    #@114
    check-cast v5, [C

    #@116
    .local v5, "resolved":[C
    if-eqz v5, :cond_d

    #@118
    .line 1260
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@11b
    move-result v7

    #@11c
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@11f
    .line 1261
    const/4 v7, 0x0

    #@120
    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    #@122
    .line 1262
    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    #@124
    if-eqz v7, :cond_c

    #@126
    .line 1263
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->pushContentSource([C)V

    #@129
    .line 1267
    :goto_2
    return-void

    #@12a
    .line 1265
    :cond_c
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@12d
    goto :goto_2

    #@12e
    .line 1276
    .end local v5    # "resolved":[C
    :cond_d
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    #@130
    if-eqz v7, :cond_e

    #@132
    .line 1277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@135
    move-result v7

    #@136
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@139
    .line 1278
    return-void

    #@13a
    .line 1282
    :cond_e
    const/4 v7, 0x1

    #@13b
    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    #@13d
    .line 1283
    if-eqz p3, :cond_f

    #@13f
    .line 1284
    new-instance v7, Ljava/lang/StringBuilder;

    #@141
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@144
    const-string/jumbo v8, "unresolved: &"

    #@147
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v7

    #@14b
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v7

    #@14f
    const-string/jumbo v8, ";"

    #@152
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v7

    #@156
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@159
    move-result-object v7

    #@15a
    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@15d
    .line 1187
    :cond_f
    return-void
.end method

.method private readEntityDeclaration()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 903
    sget-object v4, Lorg/kxml2/io/KXmlParser;->START_ENTITY:[C

    #@5
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@8
    .line 904
    const/4 v1, 0x1

    #@9
    .line 906
    .local v1, "generalEntity":Z
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@c
    .line 907
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@f
    move-result v4

    #@10
    const/16 v5, 0x25

    #@12
    if-ne v4, v5, :cond_0

    #@14
    .line 908
    const/4 v1, 0x0

    #@15
    .line 909
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@17
    add-int/lit8 v4, v4, 0x1

    #@19
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@1b
    .line 910
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@1e
    .line 913
    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 915
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@25
    .line 916
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@28
    move-result v3

    #@29
    .line 918
    .local v3, "quote":I
    const/16 v4, 0x22

    #@2b
    if-eq v3, v4, :cond_1

    #@2d
    const/16 v4, 0x27

    #@2f
    if-ne v3, v4, :cond_5

    #@31
    .line 919
    :cond_1
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@33
    add-int/lit8 v4, v4, 0x1

    #@35
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@37
    .line 920
    int-to-char v4, v3

    #@38
    sget-object v5, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@3a
    invoke-direct {p0, v4, v7, v6, v5}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    .line 921
    .local v0, "entityValue":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@41
    move-result v4

    #@42
    if-ne v4, v3, :cond_2

    #@44
    .line 922
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@46
    add-int/lit8 v4, v4, 0x1

    #@48
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@4a
    .line 940
    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    #@4c
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    #@4e
    if-eqz v4, :cond_4

    #@50
    .line 941
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    #@52
    if-nez v4, :cond_3

    #@54
    .line 942
    new-instance v4, Ljava/util/HashMap;

    #@56
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@59
    iput-object v4, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    #@5b
    .line 944
    :cond_3
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    #@5d
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@60
    move-result-object v5

    #@61
    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    .line 947
    :cond_4
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@67
    .line 948
    const/16 v4, 0x3e

    #@69
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read(C)V

    #@6c
    .line 902
    return-void

    #@6d
    .line 924
    .end local v0    # "entityValue":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v7, v6}, Lorg/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    #@70
    move-result v4

    #@71
    if-eqz v4, :cond_6

    #@73
    .line 929
    const-string/jumbo v0, ""

    #@76
    .line 930
    .restart local v0    # "entityValue":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@79
    .line 931
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@7c
    move-result v4

    #@7d
    sget-object v5, Lorg/kxml2/io/KXmlParser;->NDATA:[C

    #@7f
    aget-char v5, v5, v6

    #@81
    if-ne v4, v5, :cond_2

    #@83
    .line 932
    sget-object v4, Lorg/kxml2/io/KXmlParser;->NDATA:[C

    #@85
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@88
    .line 933
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@8b
    .line 934
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    #@8e
    goto :goto_0

    #@8f
    .line 937
    .end local v0    # "entityValue":Ljava/lang/String;
    :cond_6
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@91
    const-string/jumbo v5, "Expected entity value or external ID"

    #@94
    invoke-direct {v4, v5, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@97
    throw v4
.end method

.method private readExternalId(ZZ)Z
    .locals 5
    .param p1, "requireSystemName"    # Z
    .param p2, "assignFields"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 622
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@5
    .line 623
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@8
    move-result v0

    #@9
    .line 625
    .local v0, "c":I
    const/16 v2, 0x53

    #@b
    if-ne v0, v2, :cond_0

    #@d
    .line 626
    sget-object v2, Lorg/kxml2/io/KXmlParser;->SYSTEM:[C

    #@f
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@12
    .line 639
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@15
    .line 641
    if-nez p1, :cond_3

    #@17
    .line 642
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@1a
    move-result v1

    #@1b
    .line 643
    .local v1, "delimiter":I
    const/16 v2, 0x22

    #@1d
    if-eq v1, v2, :cond_3

    #@1f
    const/16 v2, 0x27

    #@21
    if-eq v1, v2, :cond_3

    #@23
    .line 644
    return v3

    #@24
    .line 627
    .end local v1    # "delimiter":I
    :cond_0
    const/16 v2, 0x50

    #@26
    if-ne v0, v2, :cond_2

    #@28
    .line 628
    sget-object v2, Lorg/kxml2/io/KXmlParser;->PUBLIC:[C

    #@2a
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@2d
    .line 629
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@30
    .line 630
    if-eqz p2, :cond_1

    #@32
    .line 631
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->publicId:Ljava/lang/String;

    #@38
    goto :goto_0

    #@39
    .line 633
    :cond_1
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    #@3c
    goto :goto_0

    #@3d
    .line 636
    :cond_2
    return v4

    #@3e
    .line 648
    :cond_3
    if-eqz p2, :cond_4

    #@40
    .line 649
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    #@46
    .line 653
    :goto_1
    return v3

    #@47
    .line 651
    :cond_4
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    #@4a
    goto :goto_1
.end method

.method private readInternalSubset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 677
    const/16 v1, 0x5b

    #@4
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    #@7
    .line 680
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@a
    .line 681
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@d
    move-result v1

    #@e
    const/16 v2, 0x5d

    #@10
    if-ne v1, v2, :cond_0

    #@12
    .line 682
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@18
    .line 683
    return-void

    #@19
    .line 686
    :cond_0
    const/4 v1, 0x1

    #@1a
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    #@1d
    move-result v0

    #@1e
    .line 687
    .local v0, "declarationType":I
    packed-switch v0, :pswitch_data_0

    #@21
    .line 718
    :pswitch_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@23
    const-string/jumbo v2, "Unexpected token"

    #@26
    invoke-direct {v1, v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@29
    throw v1

    #@2a
    .line 689
    :pswitch_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readElementDeclaration()V

    #@2d
    goto :goto_0

    #@2e
    .line 693
    :pswitch_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readAttributeListDeclaration()V

    #@31
    goto :goto_0

    #@32
    .line 697
    :pswitch_3
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readEntityDeclaration()V

    #@35
    goto :goto_0

    #@36
    .line 701
    :pswitch_4
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readNotationDeclaration()V

    #@39
    goto :goto_0

    #@3a
    .line 705
    :pswitch_5
    sget-object v1, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    #@3c
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@3f
    .line 706
    sget-object v1, Lorg/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    #@41
    invoke-direct {p0, v1, v3}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    #@44
    goto :goto_0

    #@45
    .line 710
    :pswitch_6
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->readComment(Z)Ljava/lang/String;

    #@48
    goto :goto_0

    #@49
    .line 714
    :pswitch_7
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@4b
    .line 715
    const-string/jumbo v2, "Parameter entity references are not supported"

    #@4e
    .line 714
    invoke-direct {v1, v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@51
    throw v1

    #@52
    .line 687
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private readName()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x5f

    #@2
    const/16 v8, 0x5a

    #@4
    const/16 v7, 0x41

    #@6
    const/16 v6, 0x3a

    #@8
    const/4 v5, 0x1

    #@9
    .line 1529
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@b
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@d
    if-lt v3, v4, :cond_0

    #@f
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_3

    #@15
    .line 1534
    :cond_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@17
    .line 1535
    .local v2, "start":I
    const/4 v1, 0x0

    #@18
    .line 1538
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@1a
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@1c
    aget-char v0, v3, v4

    #@1e
    .line 1539
    .local v0, "c":C
    const/16 v3, 0x61

    #@20
    if-lt v0, v3, :cond_4

    #@22
    const/16 v3, 0x7a

    #@24
    if-gt v0, v3, :cond_4

    #@26
    .line 1545
    :cond_1
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@28
    add-int/lit8 v3, v3, 0x1

    #@2a
    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@2c
    .line 1557
    .end local v1    # "result":Ljava/lang/StringBuilder;
    :goto_0
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@2e
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@30
    if-lt v3, v4, :cond_7

    #@32
    .line 1558
    if-nez v1, :cond_2

    #@34
    .line 1559
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    .line 1561
    :cond_2
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@3b
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@3d
    sub-int/2addr v4, v2

    #@3e
    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@41
    .line 1562
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@44
    move-result v3

    #@45
    if-nez v3, :cond_6

    #@47
    .line 1563
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    return-object v3

    #@4c
    .line 1530
    .end local v0    # "c":C
    .end local v2    # "start":I
    :cond_3
    const-string/jumbo v3, "name expected"

    #@4f
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@52
    .line 1531
    const-string/jumbo v3, ""

    #@55
    return-object v3

    #@56
    .line 1540
    .restart local v0    # "c":C
    .restart local v1    # "result":Ljava/lang/StringBuilder;
    .restart local v2    # "start":I
    :cond_4
    if-lt v0, v7, :cond_5

    #@58
    if-le v0, v8, :cond_1

    #@5a
    .line 1541
    :cond_5
    if-eq v0, v9, :cond_1

    #@5c
    .line 1542
    if-eq v0, v6, :cond_1

    #@5e
    .line 1543
    const/16 v3, 0xc0

    #@60
    if-ge v0, v3, :cond_1

    #@62
    .line 1544
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    #@64
    .line 1539
    if-nez v3, :cond_1

    #@66
    .line 1547
    const-string/jumbo v3, "name expected"

    #@69
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@6c
    .line 1548
    const-string/jumbo v3, ""

    #@6f
    return-object v3

    #@70
    .line 1565
    .end local v1    # "result":Ljava/lang/StringBuilder;
    :cond_6
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@72
    .line 1569
    :cond_7
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@74
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@76
    aget-char v0, v3, v4

    #@78
    .line 1570
    const/16 v3, 0x61

    #@7a
    if-lt v0, v3, :cond_9

    #@7c
    const/16 v3, 0x7a

    #@7e
    if-gt v0, v3, :cond_9

    #@80
    .line 1578
    :cond_8
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@82
    add-int/lit8 v3, v3, 0x1

    #@84
    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@86
    goto :goto_0

    #@87
    .line 1571
    :cond_9
    if-lt v0, v7, :cond_a

    #@89
    if-le v0, v8, :cond_8

    #@8b
    .line 1572
    :cond_a
    const/16 v3, 0x30

    #@8d
    if-lt v0, v3, :cond_b

    #@8f
    const/16 v3, 0x39

    #@91
    if-le v0, v3, :cond_8

    #@93
    .line 1573
    :cond_b
    if-eq v0, v9, :cond_8

    #@95
    .line 1574
    const/16 v3, 0x2d

    #@97
    if-eq v0, v3, :cond_8

    #@99
    .line 1575
    if-eq v0, v6, :cond_8

    #@9b
    .line 1576
    const/16 v3, 0x2e

    #@9d
    if-eq v0, v3, :cond_8

    #@9f
    .line 1577
    const/16 v3, 0xb7

    #@a1
    if-ge v0, v3, :cond_8

    #@a3
    .line 1583
    if-nez v1, :cond_c

    #@a5
    .line 1584
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    #@a7
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@a9
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@ab
    sub-int/2addr v5, v2

    #@ac
    invoke-virtual {v3, v4, v2, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    #@af
    move-result-object v3

    #@b0
    return-object v3

    #@b1
    .line 1586
    :cond_c
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@b3
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@b5
    sub-int/2addr v4, v2

    #@b6
    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@b9
    .line 1587
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v3

    #@bd
    return-object v3
.end method

.method private readNotationDeclaration()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 952
    sget-object v0, Lorg/kxml2/io/KXmlParser;->START_NOTATION:[C

    #@3
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@6
    .line 953
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@9
    .line 954
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    #@c
    .line 955
    invoke-direct {p0, v1, v1}, Lorg/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 956
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@14
    .line 957
    const-string/jumbo v1, "Expected external ID or public ID for notation"

    #@17
    const/4 v2, 0x0

    #@18
    .line 956
    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@1b
    throw v0

    #@1c
    .line 959
    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    #@1f
    .line 960
    const/16 v0, 0x3e

    #@21
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read(C)V

    #@24
    .line 951
    return-void
.end method

.method private readQuotedId(Z)Ljava/lang/String;
    .locals 5
    .param p1, "returnText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 663
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@3
    move-result v1

    #@4
    .line 665
    .local v1, "quote":I
    const/16 v2, 0x22

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 666
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DOUBLE_QUOTE:[C

    #@a
    .line 672
    .local v0, "delimiter":[C
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@c
    add-int/lit8 v2, v2, 0x1

    #@e
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@10
    .line 673
    invoke-direct {p0, v0, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 667
    .end local v0    # "delimiter":[C
    :cond_0
    const/16 v2, 0x27

    #@17
    if-ne v1, v2, :cond_1

    #@19
    .line 668
    sget-object v0, Lorg/kxml2/io/KXmlParser;->SINGLE_QUOTE:[C

    #@1b
    .restart local v0    # "delimiter":[C
    goto :goto_0

    #@1c
    .line 670
    .end local v0    # "delimiter":[C
    :cond_1
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@1e
    const-string/jumbo v3, "Expected a quoted string"

    #@21
    const/4 v4, 0x0

    #@22
    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@25
    throw v2
.end method

.method private readUntil([CZ)Ljava/lang/String;
    .locals 7
    .param p1, "delimiter"    # [C
    .param p2, "returnText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 467
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@3
    .line 468
    .local v3, "start":I
    const/4 v2, 0x0

    #@4
    .line 470
    .local v2, "result":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    #@6
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    .end local v2    # "result":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    .line 472
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 477
    .end local v2    # "result":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@16
    array-length v5, p1

    #@17
    add-int/2addr v4, v5

    #@18
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@1a
    if-le v4, v5, :cond_4

    #@1c
    .line 478
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@1e
    if-ge v3, v4, :cond_2

    #@20
    if-eqz p2, :cond_2

    #@22
    .line 479
    if-nez v2, :cond_1

    #@24
    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    .line 482
    :cond_1
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@2b
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@2d
    sub-int/2addr v5, v3

    #@2e
    invoke-virtual {v2, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@31
    .line 484
    :cond_2
    array-length v4, p1

    #@32
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@35
    move-result v4

    #@36
    if-nez v4, :cond_3

    #@38
    .line 485
    const-string/jumbo v4, "Unexpected EOF"

    #@3b
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@3e
    .line 486
    const/16 v4, 0x9

    #@40
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@42
    .line 487
    return-object v6

    #@43
    .line 489
    :cond_3
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@45
    .line 494
    :cond_4
    const/4 v1, 0x0

    #@46
    .local v1, "i":I
    :goto_1
    array-length v4, p1

    #@47
    if-ge v1, v4, :cond_6

    #@49
    .line 495
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@4b
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@4d
    add-int/2addr v5, v1

    #@4e
    aget-char v4, v4, v5

    #@50
    aget-char v5, p1, v1

    #@52
    if-eq v4, v5, :cond_5

    #@54
    .line 496
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@56
    add-int/lit8 v4, v4, 0x1

    #@58
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@5a
    goto :goto_0

    #@5b
    .line 494
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 504
    :cond_6
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@60
    .line 505
    .local v0, "end":I
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@62
    array-length v5, p1

    #@63
    add-int/2addr v4, v5

    #@64
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@66
    .line 507
    if-nez p2, :cond_7

    #@68
    .line 508
    return-object v6

    #@69
    .line 509
    :cond_7
    if-nez v2, :cond_8

    #@6b
    .line 510
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    #@6d
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@6f
    sub-int v6, v0, v3

    #@71
    invoke-virtual {v4, v5, v3, v6}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    return-object v4

    #@76
    .line 512
    :cond_8
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@78
    sub-int v5, v0, v3

    #@7a
    invoke-virtual {v2, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@7d
    .line 513
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    return-object v4
.end method

.method private readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;
    .locals 10
    .param p1, "delimiter"    # C
    .param p2, "resolveEntities"    # Z
    .param p3, "throwOnResolveFailure"    # Z
    .param p4, "valueContext"    # Lorg/kxml2/io/KXmlParser$ValueContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x26

    #@2
    const/16 v8, 0x20

    #@4
    const/16 v7, 0xa

    #@6
    const/4 v4, 0x0

    #@7
    const/4 v6, 0x0

    #@8
    .line 1333
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@a
    .line 1334
    .local v2, "start":I
    const/4 v1, 0x0

    #@b
    .line 1337
    .local v1, "result":Ljava/lang/StringBuilder;
    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@d
    if-ne p4, v3, :cond_0

    #@f
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    .end local v1    # "result":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    .line 1339
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 1349
    .end local v1    # "result":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@1f
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@21
    if-lt v3, v5, :cond_5

    #@23
    .line 1350
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@25
    if-ge v2, v3, :cond_2

    #@27
    .line 1351
    if-nez v1, :cond_1

    #@29
    .line 1352
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    .line 1354
    :cond_1
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@30
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@32
    sub-int/2addr v5, v2

    #@33
    invoke-virtual {v1, v3, v2, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@36
    .line 1356
    :cond_2
    const/4 v3, 0x1

    #@37
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@3a
    move-result v3

    #@3b
    if-nez v3, :cond_4

    #@3d
    .line 1357
    if-eqz v1, :cond_3

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    :goto_1
    return-object v3

    #@44
    :cond_3
    const-string/jumbo v3, ""

    #@47
    goto :goto_1

    #@48
    .line 1359
    :cond_4
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@4a
    .line 1362
    :cond_5
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@4c
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@4e
    aget-char v0, v3, v5

    #@50
    .line 1364
    .local v0, "c":C
    if-eq v0, p1, :cond_6

    #@52
    .line 1365
    if-ne p1, v8, :cond_7

    #@54
    if-le v0, v8, :cond_6

    #@56
    const/16 v3, 0x3e

    #@58
    if-ne v0, v3, :cond_7

    #@5a
    .line 1431
    :cond_6
    if-nez v1, :cond_1b

    #@5c
    .line 1432
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    #@5e
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@60
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@62
    sub-int/2addr v5, v2

    #@63
    invoke-virtual {v3, v4, v2, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    return-object v3

    #@68
    .line 1366
    :cond_7
    if-ne v0, v9, :cond_8

    #@6a
    if-eqz p2, :cond_6

    #@6c
    .line 1370
    :cond_8
    const/16 v3, 0xd

    #@6e
    if-eq v0, v3, :cond_d

    #@70
    .line 1371
    if-ne v0, v7, :cond_9

    #@72
    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@74
    if-eq p4, v3, :cond_d

    #@76
    .line 1372
    :cond_9
    if-eq v0, v9, :cond_d

    #@78
    .line 1373
    const/16 v3, 0x3c

    #@7a
    if-eq v0, v3, :cond_d

    #@7c
    .line 1374
    const/16 v3, 0x5d

    #@7e
    if-ne v0, v3, :cond_a

    #@80
    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@82
    if-eq p4, v3, :cond_d

    #@84
    .line 1375
    :cond_a
    const/16 v3, 0x25

    #@86
    if-ne v0, v3, :cond_b

    #@88
    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@8a
    if-eq p4, v3, :cond_d

    #@8c
    .line 1376
    :cond_b
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    #@8e
    if-gt v0, v8, :cond_c

    #@90
    const/4 v3, 0x1

    #@91
    :goto_2
    and-int/2addr v3, v5

    #@92
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    #@94
    .line 1377
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@96
    add-int/lit8 v3, v3, 0x1

    #@98
    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@9a
    goto :goto_0

    #@9b
    :cond_c
    move v3, v4

    #@9c
    .line 1376
    goto :goto_2

    #@9d
    .line 1385
    :cond_d
    if-nez v1, :cond_e

    #@9f
    .line 1386
    new-instance v1, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    .line 1388
    :cond_e
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@a6
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@a8
    sub-int/2addr v5, v2

    #@a9
    invoke-virtual {v1, v3, v2, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@ac
    .line 1390
    const/16 v3, 0xd

    #@ae
    if-ne v0, v3, :cond_12

    #@b0
    .line 1391
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@b2
    add-int/lit8 v3, v3, 0x1

    #@b4
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@b6
    if-lt v3, v5, :cond_f

    #@b8
    const/4 v3, 0x2

    #@b9
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@bc
    move-result v3

    #@bd
    if-eqz v3, :cond_10

    #@bf
    :cond_f
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@c1
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@c3
    add-int/lit8 v5, v5, 0x1

    #@c5
    aget-char v3, v3, v5

    #@c7
    if-ne v3, v7, :cond_10

    #@c9
    .line 1392
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@cb
    add-int/lit8 v3, v3, 0x1

    #@cd
    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@cf
    .line 1394
    :cond_10
    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@d1
    if-ne p4, v3, :cond_11

    #@d3
    const/16 v0, 0x20

    #@d5
    .line 1426
    .end local v0    # "c":C
    :goto_3
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@d7
    add-int/lit8 v3, v3, 0x1

    #@d9
    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@db
    .line 1427
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@de
    .line 1428
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@e0
    goto/16 :goto_0

    #@e2
    .line 1394
    .restart local v0    # "c":C
    :cond_11
    const/16 v0, 0xa

    #@e4
    .local v0, "c":C
    goto :goto_3

    #@e5
    .line 1396
    .local v0, "c":C
    :cond_12
    if-ne v0, v7, :cond_13

    #@e7
    .line 1397
    const/16 v0, 0x20

    #@e9
    .local v0, "c":C
    goto :goto_3

    #@ea
    .line 1399
    .local v0, "c":C
    :cond_13
    if-ne v0, v9, :cond_14

    #@ec
    .line 1400
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    #@ee
    .line 1401
    invoke-direct {p0, v1, v4, p3, p4}, Lorg/kxml2/io/KXmlParser;->readEntity(Ljava/lang/StringBuilder;ZZLorg/kxml2/io/KXmlParser$ValueContext;)V

    #@f1
    .line 1402
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@f3
    goto/16 :goto_0

    #@f5
    .line 1405
    :cond_14
    const/16 v3, 0x3c

    #@f7
    if-ne v0, v3, :cond_16

    #@f9
    .line 1406
    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@fb
    if-ne p4, v3, :cond_15

    #@fd
    .line 1407
    const-string/jumbo v3, "Illegal: \"<\" inside attribute value"

    #@100
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@103
    .line 1409
    :cond_15
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    #@105
    goto :goto_3

    #@106
    .line 1411
    :cond_16
    const/16 v3, 0x5d

    #@108
    if-ne v0, v3, :cond_19

    #@10a
    .line 1412
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@10c
    add-int/lit8 v3, v3, 0x2

    #@10e
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@110
    if-lt v3, v5, :cond_17

    #@112
    const/4 v3, 0x3

    #@113
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@116
    move-result v3

    #@117
    if-eqz v3, :cond_18

    #@119
    .line 1413
    :cond_17
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@11b
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@11d
    add-int/lit8 v5, v5, 0x1

    #@11f
    aget-char v3, v3, v5

    #@121
    const/16 v5, 0x5d

    #@123
    if-ne v3, v5, :cond_18

    #@125
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@127
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@129
    add-int/lit8 v5, v5, 0x2

    #@12b
    aget-char v3, v3, v5

    #@12d
    const/16 v5, 0x3e

    #@12f
    if-ne v3, v5, :cond_18

    #@131
    .line 1414
    const-string/jumbo v3, "Illegal: \"]]>\" outside CDATA section"

    #@134
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@137
    .line 1416
    :cond_18
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    #@139
    goto :goto_3

    #@13a
    .line 1418
    :cond_19
    const/16 v3, 0x25

    #@13c
    if-ne v0, v3, :cond_1a

    #@13e
    .line 1419
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@140
    const-string/jumbo v4, "This parser doesn\'t support parameter entities"

    #@143
    invoke-direct {v3, v4, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@146
    throw v3

    #@147
    .line 1423
    :cond_1a
    new-instance v3, Ljava/lang/AssertionError;

    #@149
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@14c
    throw v3

    #@14d
    .line 1434
    :cond_1b
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@14f
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@151
    sub-int/2addr v4, v2

    #@152
    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@155
    .line 1435
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@158
    move-result-object v3

    #@159
    return-object v3
.end method

.method private readXmlDeclaration()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x1

    #@2
    .line 521
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    #@4
    if-nez v2, :cond_0

    #@6
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    #@8
    if-eqz v2, :cond_5

    #@a
    .line 522
    :cond_0
    :goto_0
    const-string/jumbo v2, "processing instructions must not start with xml"

    #@d
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@10
    .line 525
    :cond_1
    sget-object v2, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    #@12
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    #@15
    .line 526
    invoke-direct {p0, v5, v5}, Lorg/kxml2/io/KXmlParser;->parseStartTag(ZZ)V

    #@18
    .line 528
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@1a
    if-lt v2, v5, :cond_6

    #@1c
    const-string/jumbo v2, "version"

    #@1f
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@21
    const/4 v4, 0x2

    #@22
    aget-object v3, v3, v4

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_6

    #@2a
    .line 532
    :goto_1
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@2c
    aget-object v2, v2, v6

    #@2e
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    #@30
    .line 534
    const/4 v0, 0x1

    #@31
    .line 536
    .local v0, "pos":I
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@33
    if-ge v5, v2, :cond_2

    #@35
    const-string/jumbo v2, "encoding"

    #@38
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@3a
    const/4 v4, 0x6

    #@3b
    aget-object v3, v3, v4

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_2

    #@43
    .line 537
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@45
    const/4 v3, 0x7

    #@46
    aget-object v2, v2, v3

    #@48
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    #@4a
    .line 538
    const/4 v0, 0x2

    #@4b
    .line 541
    :cond_2
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@4d
    if-ge v0, v2, :cond_3

    #@4f
    const-string/jumbo v2, "standalone"

    #@52
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@54
    mul-int/lit8 v4, v0, 0x4

    #@56
    add-int/lit8 v4, v4, 0x2

    #@58
    aget-object v3, v3, v4

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v2

    #@5e
    if-eqz v2, :cond_3

    #@60
    .line 542
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@62
    mul-int/lit8 v3, v0, 0x4

    #@64
    add-int/lit8 v3, v3, 0x3

    #@66
    aget-object v1, v2, v3

    #@68
    .line 543
    .local v1, "st":Ljava/lang/String;
    const-string/jumbo v2, "yes"

    #@6b
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v2

    #@6f
    if-eqz v2, :cond_7

    #@71
    .line 544
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@73
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    #@75
    .line 550
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@77
    .line 553
    .end local v1    # "st":Ljava/lang/String;
    :cond_3
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@79
    if-eq v0, v2, :cond_4

    #@7b
    .line 554
    const-string/jumbo v2, "unexpected attributes in XML declaration"

    #@7e
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@81
    .line 557
    :cond_4
    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    #@83
    .line 558
    const/4 v2, 0x0

    #@84
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@86
    .line 520
    return-void

    #@87
    .line 521
    .end local v0    # "pos":I
    :cond_5
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@89
    if-eqz v2, :cond_1

    #@8b
    goto/16 :goto_0

    #@8d
    .line 529
    :cond_6
    const-string/jumbo v2, "version expected"

    #@90
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@93
    goto :goto_1

    #@94
    .line 545
    .restart local v0    # "pos":I
    .restart local v1    # "st":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "no"

    #@97
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v2

    #@9b
    if-eqz v2, :cond_8

    #@9d
    .line 546
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@9f
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    #@a1
    goto :goto_2

    #@a2
    .line 548
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v3, "illegal standalone value: "

    #@aa
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v2

    #@ae
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v2

    #@b2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v2

    #@b6
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    #@b9
    goto :goto_2
.end method

.method private skip()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1593
    :goto_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@2
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@4
    if-lt v1, v2, :cond_0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1594
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@f
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@11
    aget-char v0, v1, v2

    #@13
    .line 1595
    .local v0, "c":I
    const/16 v1, 0x20

    #@15
    if-le v0, v1, :cond_2

    #@17
    .line 1592
    .end local v0    # "c":I
    :cond_1
    return-void

    #@18
    .line 1598
    .restart local v0    # "c":I
    :cond_2
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@1e
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1754
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1755
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    #@6
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    #@9
    .line 1753
    :cond_0
    return-void
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1777
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1778
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 1779
    const-string/jumbo v1, "Entity replacement text may not be defined with DOCTYPE processing enabled."

    #@9
    .line 1778
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1781
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 1782
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    .line 1783
    const-string/jumbo v1, "Entity replacement text must be defined after setInput()"

    #@16
    .line 1782
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 1785
    :cond_1
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 1786
    new-instance v0, Ljava/util/HashMap;

    #@20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@23
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    #@25
    .line 1788
    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    #@27
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    #@2a
    move-result-object v1

    #@2b
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 1776
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    #@0
    .prologue
    .line 1991
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@2
    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 2010
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 2011
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 2013
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@c
    mul-int/lit8 v1, p1, 0x4

    #@e
    add-int/lit8 v1, v1, 0x2

    #@10
    aget-object v0, v0, v1

    #@12
    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 2003
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 2004
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 2006
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@c
    mul-int/lit8 v1, p1, 0x4

    #@e
    aget-object v0, v0, v1

    #@10
    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 2017
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 2018
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 2020
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@c
    mul-int/lit8 v1, p1, 0x4

    #@e
    add-int/lit8 v1, v1, 0x1

    #@10
    aget-object v0, v0, v1

    #@12
    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1995
    const-string/jumbo v0, "CDATA"

    #@3
    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 2024
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 2025
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 2027
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@c
    mul-int/lit8 v1, p1, 0x4

    #@e
    add-int/lit8 v1, v1, 0x3

    #@10
    aget-object v0, v0, v1

    #@12
    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2031
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@3
    mul-int/lit8 v1, v1, 0x4

    #@5
    add-int/lit8 v0, v1, -0x4

    #@7
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@9
    .line 2032
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@b
    add-int/lit8 v2, v0, 0x2

    #@d
    aget-object v1, v1, v2

    #@f
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 2033
    if-eqz p1, :cond_0

    #@17
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@19
    aget-object v1, v1, v0

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    .line 2032
    if-eqz v1, :cond_1

    #@21
    .line 2034
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@23
    add-int/lit8 v2, v0, 0x3

    #@25
    aget-object v1, v1, v2

    #@27
    return-object v1

    #@28
    .line 2031
    :cond_1
    add-int/lit8 v0, v0, -0x4

    #@2a
    goto :goto_0

    #@2b
    .line 2038
    :cond_2
    return-object v3
.end method

.method public getColumnNumber()I
    .locals 4

    #@0
    .prologue
    .line 1930
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    #@2
    .line 1931
    .local v1, "result":I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 1932
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@9
    aget-char v2, v2, v0

    #@b
    const/16 v3, 0xa

    #@d
    if-ne v2, v3, :cond_0

    #@f
    .line 1933
    const/4 v1, 0x0

    #@10
    .line 1931
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1935
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_1

    #@16
    .line 1938
    :cond_1
    add-int/lit8 v2, v1, 0x1

    #@18
    return v2
.end method

.method public getDepth()I
    .locals 1

    #@0
    .prologue
    .line 1863
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@2
    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 2042
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@2
    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1760
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1761
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    #@b
    return v0

    #@c
    .line 1762
    :cond_0
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1763
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    #@17
    return v0

    #@18
    .line 1764
    :cond_1
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    #@1b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 1765
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    #@23
    return v0

    #@24
    .line 1767
    :cond_2
    const/4 v0, 0x0

    #@25
    return v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1772
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLineNumber()I
    .locals 4

    #@0
    .prologue
    .line 1920
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    #@2
    .line 1921
    .local v1, "result":I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 1922
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@9
    aget-char v2, v2, v0

    #@b
    const/16 v3, 0xa

    #@d
    if-ne v2, v3, :cond_0

    #@f
    .line 1923
    add-int/lit8 v1, v1, 0x1

    #@11
    .line 1921
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1926
    :cond_1
    add-int/lit8 v2, v1, 0x1

    #@16
    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1976
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1972
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1843
    const-string/jumbo v1, "xml"

    #@4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1844
    const-string/jumbo v1, "http://www.w3.org/XML/1998/namespace"

    #@d
    return-object v1

    #@e
    .line 1846
    :cond_0
    const-string/jumbo v1, "xmlns"

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 1847
    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    #@1a
    return-object v1

    #@1b
    .line 1850
    :cond_1
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@1d
    invoke-virtual {p0, v1}, Lorg/kxml2/io/KXmlParser;->getNamespaceCount(I)I

    #@20
    move-result v1

    #@21
    shl-int/lit8 v1, v1, 0x1

    #@23
    add-int/lit8 v0, v1, -0x2

    #@25
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    #@27
    .line 1851
    if-nez p1, :cond_2

    #@29
    .line 1852
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    #@2b
    aget-object v1, v1, v0

    #@2d
    if-nez v1, :cond_3

    #@2f
    .line 1853
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    #@31
    add-int/lit8 v2, v0, 0x1

    #@33
    aget-object v1, v1, v2

    #@35
    return-object v1

    #@36
    .line 1855
    :cond_2
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    #@38
    aget-object v1, v1, v0

    #@3a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_3

    #@40
    .line 1856
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    #@42
    add-int/lit8 v2, v0, 0x1

    #@44
    aget-object v1, v1, v2

    #@46
    return-object v1

    #@47
    .line 1850
    :cond_3
    add-int/lit8 v0, v0, -0x2

    #@49
    goto :goto_0

    #@4a
    .line 1859
    :cond_4
    return-object v2
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .param p1, "depth"    # I

    #@0
    .prologue
    .line 1828
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@2
    if-le p1, v0, :cond_0

    #@4
    .line 1829
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1831
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    #@c
    aget v0, v0, p1

    #@e
    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 1835
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    #@2
    mul-int/lit8 v1, p1, 0x2

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 1839
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    #@2
    mul-int/lit8 v1, p1, 0x2

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const/16 v7, 0x10

    #@4
    const/4 v6, 0x3

    #@5
    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@9
    sget-object v5, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    #@b
    array-length v5, v5

    #@c
    if-ge v4, v5, :cond_5

    #@e
    sget-object v4, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    #@10
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@12
    aget-object v4, v4, v5

    #@14
    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    .line 1868
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 1870
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@1c
    const/4 v5, 0x2

    #@1d
    if-eq v4, v5, :cond_0

    #@1f
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@21
    if-ne v4, v6, :cond_9

    #@23
    .line 1871
    :cond_0
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    #@25
    if-eqz v4, :cond_1

    #@27
    .line 1872
    const-string/jumbo v4, "(empty) "

    #@2a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 1874
    :cond_1
    const/16 v4, 0x3c

    #@2f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    .line 1875
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@34
    if-ne v4, v6, :cond_2

    #@36
    .line 1876
    const/16 v4, 0x2f

    #@38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 1879
    :cond_2
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    #@3d
    if-eqz v4, :cond_3

    #@3f
    .line 1880
    const-string/jumbo v4, "{"

    #@42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    const-string/jumbo v5, "}"

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    #@55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    const-string/jumbo v5, ":"

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 1882
    :cond_3
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@61
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    .line 1884
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@66
    mul-int/lit8 v1, v4, 0x4

    #@68
    .line 1885
    .local v1, "cnt":I
    const/4 v2, 0x0

    #@69
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_6

    #@6b
    .line 1886
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6e
    .line 1887
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@70
    add-int/lit8 v5, v2, 0x1

    #@72
    aget-object v4, v4, v5

    #@74
    if-eqz v4, :cond_4

    #@76
    .line 1888
    const-string/jumbo v4, "{"

    #@79
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@7f
    aget-object v5, v5, v2

    #@81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    const-string/jumbo v5, "}"

    #@88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v4

    #@8c
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@8e
    add-int/lit8 v6, v2, 0x1

    #@90
    aget-object v5, v5, v6

    #@92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v4

    #@96
    const-string/jumbo v5, ":"

    #@99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    .line 1890
    :cond_4
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@9e
    add-int/lit8 v5, v2, 0x2

    #@a0
    aget-object v4, v4, v5

    #@a2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    const-string/jumbo v5, "=\'"

    #@a9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v4

    #@ad
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    #@af
    add-int/lit8 v6, v2, 0x3

    #@b1
    aget-object v5, v5, v6

    #@b3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v4

    #@b7
    const-string/jumbo v5, "\'"

    #@ba
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    .line 1885
    add-int/lit8 v2, v2, 0x4

    #@bf
    goto :goto_1

    #@c0
    .line 1867
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_5
    const-string/jumbo v4, "unknown"

    #@c3
    goto/16 :goto_0

    #@c5
    .line 1893
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "cnt":I
    .restart local v2    # "i":I
    :cond_6
    const/16 v4, 0x3e

    #@c7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ca
    .line 1908
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_7
    :goto_2
    const-string/jumbo v4, "@"

    #@cd
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v4

    #@d1
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getLineNumber()I

    #@d4
    move-result v5

    #@d5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v4

    #@d9
    const-string/jumbo v5, ":"

    #@dc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v4

    #@e0
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getColumnNumber()I

    #@e3
    move-result v5

    #@e4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e7
    .line 1909
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    #@e9
    if-eqz v4, :cond_d

    #@eb
    .line 1910
    const-string/jumbo v4, " in "

    #@ee
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    .line 1911
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    #@f3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    .line 1916
    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v4

    #@fa
    return-object v4

    #@fb
    .line 1894
    :cond_9
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@fd
    const/4 v5, 0x7

    #@fe
    if-eq v4, v5, :cond_7

    #@100
    .line 1896
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@102
    const/4 v5, 0x4

    #@103
    if-eq v4, v5, :cond_a

    #@105
    .line 1897
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    #@108
    move-result-object v4

    #@109
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    goto :goto_2

    #@10d
    .line 1898
    :cond_a
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    #@10f
    if-eqz v4, :cond_b

    #@111
    .line 1899
    const-string/jumbo v4, "(whitespace)"

    #@114
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    goto :goto_2

    #@118
    .line 1901
    :cond_b
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    #@11b
    move-result-object v3

    #@11c
    .line 1902
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@11f
    move-result v4

    #@120
    if-le v4, v7, :cond_c

    #@122
    .line 1903
    new-instance v4, Ljava/lang/StringBuilder;

    #@124
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    const/4 v5, 0x0

    #@128
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@12b
    move-result-object v5

    #@12c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v4

    #@130
    const-string/jumbo v5, "..."

    #@133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v4

    #@137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v3

    #@13b
    .line 1905
    :cond_c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    goto :goto_2

    #@13f
    .line 1912
    .end local v3    # "text":Ljava/lang/String;
    :cond_d
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    #@141
    if-eqz v4, :cond_8

    #@143
    .line 1913
    const-string/jumbo v4, " in "

    #@146
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    .line 1914
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    #@14b
    invoke-virtual {v4}, Ljava/io/Reader;->toString()Ljava/lang/String;

    #@14e
    move-result-object v4

    #@14f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    goto :goto_3
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1980
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1792
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1793
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    #@c
    return-object v0

    #@d
    .line 1794
    :cond_0
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1795
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    #@18
    return-object v0

    #@19
    .line 1796
    :cond_1
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/properties.html#location"

    #@1c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_3

    #@22
    .line 1797
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    #@24
    if-eqz v0, :cond_2

    #@26
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    #@28
    :goto_0
    return-object v0

    #@29
    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    #@2b
    invoke-virtual {v0}, Ljava/io/Reader;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    goto :goto_0

    #@30
    .line 1799
    :cond_3
    return-object v1
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1824
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->publicId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRootElementName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1808
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->rootElementName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1816
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1949
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@3
    const/4 v1, 0x4

    #@4
    if-lt v0, v1, :cond_0

    #@6
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@8
    const/4 v1, 0x6

    #@9
    if-ne v0, v1, :cond_1

    #@b
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1950
    :cond_0
    return-object v2

    #@10
    .line 1951
    :cond_1
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@12
    if-nez v0, :cond_2

    #@14
    .line 1952
    const-string/jumbo v0, ""

    #@17
    return-object v0

    #@18
    .line 1954
    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    #@1a
    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 6
    .param p1, "poslen"    # [I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, -0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 1959
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 1960
    .local v1, "text":Ljava/lang/String;
    if-nez v1, :cond_0

    #@a
    .line 1961
    aput v3, p1, v2

    #@c
    .line 1962
    aput v3, p1, v4

    #@e
    .line 1963
    return-object v5

    #@f
    .line 1965
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    #@12
    move-result-object v0

    #@13
    .line 1966
    .local v0, "result":[C
    aput v2, p1, v2

    #@15
    .line 1967
    array-length v2, v0

    #@16
    aput v2, p1, v4

    #@18
    .line 1968
    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1999
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1984
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1985
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@7
    const-string/jumbo v1, "Wrong event type"

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@e
    throw v0

    #@f
    .line 1987
    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    #@11
    return v0
.end method

.method public isWhitespace()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1942
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@2
    const/4 v1, 0x4

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@7
    const/4 v1, 0x7

    #@8
    if-eq v0, v1, :cond_0

    #@a
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@c
    const/4 v1, 0x5

    #@d
    if-eq v0, v1, :cond_0

    #@f
    .line 1943
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@11
    const-string/jumbo v1, "Wrong event type"

    #@14
    const/4 v2, 0x0

    #@15
    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@18
    throw v0

    #@19
    .line 1945
    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    #@1b
    return v0
.end method

.method public keepNamespaceAttributes()V
    .locals 1

    #@0
    .prologue
    .line 191
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->keepNamespaceAttributes:Z

    #@3
    .line 190
    return-void
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->next(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public nextTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2048
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    #@3
    .line 2049
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@5
    const/4 v1, 0x4

    #@6
    if-ne v0, v1, :cond_0

    #@8
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2050
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    #@f
    .line 2053
    :cond_0
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@11
    const/4 v1, 0x3

    #@12
    if-eq v0, v1, :cond_1

    #@14
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@16
    const/4 v1, 0x2

    #@17
    if-eq v0, v1, :cond_1

    #@19
    .line 2054
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@1b
    const-string/jumbo v1, "unexpected type"

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@22
    throw v0

    #@23
    .line 2057
    :cond_1
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@25
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2071
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@3
    const/4 v2, 0x2

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 2072
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@8
    const-string/jumbo v2, "precondition: START_TAG"

    #@b
    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@e
    throw v1

    #@f
    .line 2075
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    #@12
    .line 2078
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@14
    const/4 v2, 0x4

    #@15
    if-ne v1, v2, :cond_1

    #@17
    .line 2079
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 2080
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    #@1e
    .line 2085
    :goto_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@20
    const/4 v2, 0x3

    #@21
    if-eq v1, v2, :cond_2

    #@23
    .line 2086
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@25
    const-string/jumbo v2, "END_TAG expected"

    #@28
    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@2b
    throw v1

    #@2c
    .line 2082
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    #@2f
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    #@30
    .line 2089
    :cond_2
    return-object v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->next(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2062
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@3
    if-ne p1, v0, :cond_2

    #@5
    .line 2063
    if-eqz p2, :cond_0

    #@7
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getNamespace()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 2064
    :cond_0
    if-eqz p3, :cond_1

    #@13
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 2061
    :cond_1
    return-void

    #@1e
    .line 2065
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@20
    .line 2066
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "expected: "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    sget-object v2, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    #@2e
    aget-object v2, v2, p1

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    const-string/jumbo v2, " {"

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    const-string/jumbo v2, "}"

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    .line 2065
    invoke-direct {v0, v1, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@51
    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 2093
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2094
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    #@b
    .line 2092
    :goto_0
    return-void

    #@c
    .line 2095
    :cond_0
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 2096
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    #@17
    goto :goto_0

    #@18
    .line 2097
    :cond_1
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    #@1b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 2098
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    #@23
    goto :goto_0

    #@24
    .line 2100
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "unsupported feature: "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    const/4 v2, 0x0

    #@3b
    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@3e
    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 17
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1629
    const/4 v12, 0x0

    #@1
    move-object/from16 v0, p0

    #@3
    iput v12, v0, Lorg/kxml2/io/KXmlParser;->position:I

    #@5
    .line 1630
    const/4 v12, 0x0

    #@6
    move-object/from16 v0, p0

    #@8
    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@a
    .line 1631
    if-nez p2, :cond_0

    #@c
    const/4 v3, 0x1

    #@d
    .line 1633
    .local v3, "detectCharset":Z
    :goto_0
    if-nez p1, :cond_1

    #@f
    .line 1634
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v13, "is == null"

    #@14
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v12

    #@18
    .line 1631
    .end local v3    # "detectCharset":Z
    :cond_0
    const/4 v3, 0x0

    #@19
    .restart local v3    # "detectCharset":Z
    goto :goto_0

    #@1a
    .line 1638
    :cond_1
    if-eqz v3, :cond_3

    #@1c
    .line 1640
    const/4 v5, 0x0

    #@1d
    .line 1641
    .local v5, "firstFourBytes":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    #@1f
    iget v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@21
    const/4 v13, 0x4

    #@22
    if-ge v12, v13, :cond_2

    #@24
    .line 1642
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    #@27
    move-result v6

    #@28
    .line 1643
    .local v6, "i":I
    const/4 v12, -0x1

    #@29
    if-ne v6, v12, :cond_6

    #@2b
    .line 1650
    .end local v6    # "i":I
    :cond_2
    move-object/from16 v0, p0

    #@2d
    iget v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@2f
    const/4 v13, 0x4

    #@30
    if-ne v12, v13, :cond_3

    #@32
    .line 1651
    sparse-switch v5, :sswitch_data_0

    #@35
    .line 1713
    const/high16 v12, -0x10000

    #@37
    and-int/2addr v12, v5

    #@38
    const/high16 v13, -0x1010000

    #@3a
    if-ne v12, v13, :cond_9

    #@3c
    .line 1714
    const-string/jumbo p2, "UTF-16BE"

    #@3f
    .line 1715
    move-object/from16 v0, p0

    #@41
    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@43
    move-object/from16 v0, p0

    #@45
    iget-object v13, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@47
    const/4 v14, 0x2

    #@48
    aget-char v13, v13, v14

    #@4a
    shl-int/lit8 v13, v13, 0x8

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-object v14, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@50
    const/4 v15, 0x3

    #@51
    aget-char v14, v14, v15

    #@53
    or-int/2addr v13, v14

    #@54
    int-to-char v13, v13

    #@55
    const/4 v14, 0x0

    #@56
    aput-char v13, v12, v14

    #@58
    .line 1716
    const/4 v12, 0x1

    #@59
    move-object/from16 v0, p0

    #@5b
    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@5d
    .line 1730
    .end local v5    # "firstFourBytes":I
    :cond_3
    :goto_2
    if-nez p2, :cond_4

    #@5f
    .line 1731
    const-string/jumbo p2, "UTF-8"

    #@62
    .line 1734
    :cond_4
    move-object/from16 v0, p0

    #@64
    iget v11, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@66
    .line 1735
    .local v11, "savedLimit":I
    new-instance v12, Ljava/io/InputStreamReader;

    #@68
    move-object/from16 v0, p1

    #@6a
    move-object/from16 v1, p2

    #@6c
    invoke-direct {v12, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@6f
    move-object/from16 v0, p0

    #@71
    invoke-virtual {v0, v12}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/Reader;)V

    #@74
    .line 1736
    move-object/from16 v0, p2

    #@76
    move-object/from16 v1, p0

    #@78
    iput-object v0, v1, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    #@7a
    .line 1737
    move-object/from16 v0, p0

    #@7c
    iput v11, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@7e
    .line 1744
    if-nez v3, :cond_5

    #@80
    invoke-direct/range {p0 .. p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    #@83
    move-result v12

    #@84
    const v13, 0xfeff

    #@87
    if-ne v12, v13, :cond_5

    #@89
    .line 1745
    move-object/from16 v0, p0

    #@8b
    iget v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@8d
    add-int/lit8 v12, v12, -0x1

    #@8f
    move-object/from16 v0, p0

    #@91
    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@93
    .line 1746
    move-object/from16 v0, p0

    #@95
    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@97
    move-object/from16 v0, p0

    #@99
    iget-object v13, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget v14, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@9f
    const/4 v15, 0x1

    #@a0
    const/16 v16, 0x0

    #@a2
    move/from16 v0, v16

    #@a4
    invoke-static {v12, v15, v13, v0, v14}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@a7
    .line 1628
    :cond_5
    return-void

    #@a8
    .line 1646
    .end local v11    # "savedLimit":I
    .restart local v5    # "firstFourBytes":I
    .restart local v6    # "i":I
    :cond_6
    shl-int/lit8 v12, v5, 0x8

    #@aa
    or-int v5, v12, v6

    #@ac
    .line 1647
    move-object/from16 v0, p0

    #@ae
    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@b0
    move-object/from16 v0, p0

    #@b2
    iget v13, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@b4
    add-int/lit8 v14, v13, 0x1

    #@b6
    move-object/from16 v0, p0

    #@b8
    iput v14, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@ba
    int-to-char v14, v6

    #@bb
    aput-char v14, v12, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@bd
    goto/16 :goto_1

    #@bf
    .line 1748
    .end local v5    # "firstFourBytes":I
    .end local v6    # "i":I
    :catch_0
    move-exception v4

    #@c0
    .line 1749
    .local v4, "e":Ljava/lang/Exception;
    new-instance v12, Lorg/xmlpull/v1/XmlPullParserException;

    #@c2
    new-instance v13, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string/jumbo v14, "Invalid stream or encoding: "

    #@ca
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v13

    #@ce
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v13

    #@d2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v13

    #@d6
    move-object/from16 v0, p0

    #@d8
    invoke-direct {v12, v13, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@db
    throw v12

    #@dc
    .line 1653
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "firstFourBytes":I
    :sswitch_0
    :try_start_1
    const-string/jumbo p2, "UTF-32BE"

    #@df
    .line 1654
    const/4 v12, 0x0

    #@e0
    move-object/from16 v0, p0

    #@e2
    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@e4
    goto/16 :goto_2

    #@e6
    .line 1658
    :sswitch_1
    const-string/jumbo p2, "UTF-32LE"

    #@e9
    .line 1659
    const/4 v12, 0x0

    #@ea
    move-object/from16 v0, p0

    #@ec
    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@ee
    goto/16 :goto_2

    #@f0
    .line 1663
    :sswitch_2
    const-string/jumbo p2, "UTF-32BE"

    #@f3
    .line 1664
    move-object/from16 v0, p0

    #@f5
    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@f7
    const/16 v13, 0x3c

    #@f9
    const/4 v14, 0x0

    #@fa
    aput-char v13, v12, v14

    #@fc
    .line 1665
    const/4 v12, 0x1

    #@fd
    move-object/from16 v0, p0

    #@ff
    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@101
    goto/16 :goto_2

    #@103
    .line 1669
    :sswitch_3
    const-string/jumbo p2, "UTF-32LE"

    #@106
    .line 1670
    move-object/from16 v0, p0

    #@108
    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@10a
    const/16 v13, 0x3c

    #@10c
    const/4 v14, 0x0

    #@10d
    aput-char v13, v12, v14

    #@10f
    .line 1671
    const/4 v12, 0x1

    #@110
    move-object/from16 v0, p0

    #@112
    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@114
    goto/16 :goto_2

    #@116
    .line 1675
    :sswitch_4
    const-string/jumbo p2, "UTF-16BE"

    #@119
    .line 1676
    move-object/from16 v0, p0

    #@11b
    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@11d
    const/16 v13, 0x3c

    #@11f
    const/4 v14, 0x0

    #@120
    aput-char v13, v12, v14

    #@122
    .line 1677
    move-object/from16 v0, p0

    #@124
    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@126
    const/16 v13, 0x3f

    #@128
    const/4 v14, 0x1

    #@129
    aput-char v13, v12, v14

    #@12b
    .line 1678
    const/4 v12, 0x2

    #@12c
    move-object/from16 v0, p0

    #@12e
    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@130
    goto/16 :goto_2

    #@132
    .line 1682
    :sswitch_5
    const-string/jumbo p2, "UTF-16LE"

    #@135
    .line 1683
    move-object/from16 v0, p0

    #@137
    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@139
    const/16 v13, 0x3c

    #@13b
    const/4 v14, 0x0

    #@13c
    aput-char v13, v12, v14

    #@13e
    .line 1684
    move-object/from16 v0, p0

    #@140
    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@142
    const/16 v13, 0x3f

    #@144
    const/4 v14, 0x1

    #@145
    aput-char v13, v12, v14

    #@147
    .line 1685
    const/4 v12, 0x2

    #@148
    move-object/from16 v0, p0

    #@14a
    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@14c
    goto/16 :goto_2

    #@14e
    .line 1690
    :cond_7
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    #@151
    move-result v6

    #@152
    .line 1691
    .restart local v6    # "i":I
    const/4 v12, -0x1

    #@153
    if-eq v6, v12, :cond_3

    #@155
    .line 1694
    move-object/from16 v0, p0

    #@157
    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@159
    move-object/from16 v0, p0

    #@15b
    iget v13, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@15d
    add-int/lit8 v14, v13, 0x1

    #@15f
    move-object/from16 v0, p0

    #@161
    iput v14, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@163
    int-to-char v14, v6

    #@164
    aput-char v14, v12, v13

    #@166
    .line 1695
    const/16 v12, 0x3e

    #@168
    if-ne v6, v12, :cond_7

    #@16a
    .line 1696
    new-instance v10, Ljava/lang/String;

    #@16c
    move-object/from16 v0, p0

    #@16e
    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@170
    move-object/from16 v0, p0

    #@172
    iget v13, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@174
    const/4 v14, 0x0

    #@175
    invoke-direct {v10, v12, v14, v13}, Ljava/lang/String;-><init>([CII)V

    #@178
    .line 1697
    .local v10, "s":Ljava/lang/String;
    const-string/jumbo v12, "encoding"

    #@17b
    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@17e
    move-result v7

    #@17f
    .line 1698
    .local v7, "i0":I
    const/4 v12, -0x1

    #@180
    if-eq v7, v12, :cond_3

    #@182
    move v8, v7

    #@183
    .line 1699
    .end local v7    # "i0":I
    .local v8, "i0":I
    :goto_3
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    #@186
    move-result v12

    #@187
    const/16 v13, 0x22

    #@189
    if-eq v12, v13, :cond_8

    #@18b
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    #@18e
    move-result v12

    #@18f
    const/16 v13, 0x27

    #@191
    if-eq v12, v13, :cond_8

    #@193
    .line 1700
    add-int/lit8 v7, v8, 0x1

    #@195
    .end local v8    # "i0":I
    .restart local v7    # "i0":I
    move v8, v7

    #@196
    .end local v7    # "i0":I
    .restart local v8    # "i0":I
    goto :goto_3

    #@197
    .line 1702
    :cond_8
    add-int/lit8 v7, v8, 0x1

    #@199
    .end local v8    # "i0":I
    .restart local v7    # "i0":I
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    #@19c
    move-result v2

    #@19d
    .line 1703
    .local v2, "deli":C
    invoke-virtual {v10, v2, v7}, Ljava/lang/String;->indexOf(II)I

    #@1a0
    move-result v9

    #@1a1
    .line 1704
    .local v9, "i1":I
    invoke-virtual {v10, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a4
    move-result-object p2

    #@1a5
    goto/16 :goto_2

    #@1a7
    .line 1717
    .end local v2    # "deli":C
    .end local v6    # "i":I
    .end local v7    # "i0":I
    .end local v9    # "i1":I
    .end local v10    # "s":Ljava/lang/String;
    :cond_9
    const/high16 v12, -0x10000

    #@1a9
    and-int/2addr v12, v5

    #@1aa
    const/high16 v13, -0x20000

    #@1ac
    if-ne v12, v13, :cond_a

    #@1ae
    .line 1718
    const-string/jumbo p2, "UTF-16LE"

    #@1b1
    .line 1719
    move-object/from16 v0, p0

    #@1b3
    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    iget-object v13, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@1b9
    const/4 v14, 0x3

    #@1ba
    aget-char v13, v13, v14

    #@1bc
    shl-int/lit8 v13, v13, 0x8

    #@1be
    move-object/from16 v0, p0

    #@1c0
    iget-object v14, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@1c2
    const/4 v15, 0x2

    #@1c3
    aget-char v14, v14, v15

    #@1c5
    or-int/2addr v13, v14

    #@1c6
    int-to-char v13, v13

    #@1c7
    const/4 v14, 0x0

    #@1c8
    aput-char v13, v12, v14

    #@1ca
    .line 1720
    const/4 v12, 0x1

    #@1cb
    move-object/from16 v0, p0

    #@1cd
    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@1cf
    goto/16 :goto_2

    #@1d1
    .line 1721
    :cond_a
    and-int/lit16 v12, v5, -0x100

    #@1d3
    const v13, -0x10444100

    #@1d6
    if-ne v12, v13, :cond_3

    #@1d8
    .line 1722
    const-string/jumbo p2, "UTF-8"

    #@1db
    .line 1723
    move-object/from16 v0, p0

    #@1dd
    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@1df
    move-object/from16 v0, p0

    #@1e1
    iget-object v13, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    #@1e3
    const/4 v14, 0x3

    #@1e4
    aget-char v13, v13, v14

    #@1e6
    const/4 v14, 0x0

    #@1e7
    aput-char v13, v12, v14

    #@1e9
    .line 1724
    const/4 v12, 0x1

    #@1ea
    move-object/from16 v0, p0

    #@1ec
    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@1ee
    goto/16 :goto_2

    #@1f0
    .line 1651
    :sswitch_data_0
    .sparse-switch
        -0x20000 -> :sswitch_1
        0x3c -> :sswitch_2
        0xfeff -> :sswitch_0
        0x3c003f -> :sswitch_4
        0x3c000000 -> :sswitch_3
        0x3c003f00 -> :sswitch_5
        0x3c3f786d -> :sswitch_6
    .end sparse-switch
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 3
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1605
    iput-object p1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    #@4
    .line 1607
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    #@6
    .line 1608
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    #@8
    .line 1609
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    #@a
    .line 1610
    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    #@c
    .line 1611
    const/4 v0, -0x1

    #@d
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    #@f
    .line 1612
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    #@11
    .line 1613
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    #@13
    .line 1614
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    #@15
    .line 1616
    if-nez p1, :cond_0

    #@17
    .line 1617
    return-void

    #@18
    .line 1620
    :cond_0
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    #@1a
    .line 1621
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    #@1c
    .line 1622
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    #@1e
    .line 1623
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    #@20
    .line 1624
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    #@22
    .line 1625
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    #@24
    .line 1604
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 2105
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/properties.html#location"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2106
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    #@f
    .line 2104
    return-void

    #@10
    .line 2108
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "unsupported property: "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0
.end method
