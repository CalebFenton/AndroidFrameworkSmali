.class public Lcom/android/org/kxml2/io/KXmlParser;
.super Ljava/lang/Object;
.source "KXmlParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/kxml2/io/KXmlParser$ValueContext;,
        Lcom/android/org/kxml2/io/KXmlParser$ContentSource;
    }
.end annotation


# static fields
.field private static final blacklist ANY:[C

.field private static final blacklist ATTLISTDECL:I = 0xd

.field private static final blacklist COMMENT_DOUBLE_DASH:[C

.field private static final blacklist DEFAULT_ENTITIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DOUBLE_QUOTE:[C

.field private static final blacklist ELEMENTDECL:I = 0xb

.field private static final blacklist EMPTY:[C

.field private static final blacklist END_CDATA:[C

.field private static final blacklist END_COMMENT:[C

.field private static final blacklist END_PROCESSING_INSTRUCTION:[C

.field private static final blacklist ENTITYDECL:I = 0xc

.field private static final blacklist FEATURE_RELAXED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#relaxed"

.field private static final blacklist FIXED:[C

.field private static final blacklist ILLEGAL_TYPE:Ljava/lang/String; = "Wrong event type"

.field private static final blacklist IMPLIED:[C

.field private static final blacklist NDATA:[C

.field private static final blacklist NOTATION:[C

.field private static final blacklist NOTATIONDECL:I = 0xe

.field private static final blacklist PARAMETER_ENTITY_REF:I = 0xf

.field private static final blacklist PROPERTY_LOCATION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#location"

.field private static final blacklist PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

.field private static final blacklist PROPERTY_XMLDECL_VERSION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

.field private static final blacklist PUBLIC:[C

.field private static final blacklist REQUIRED:[C

.field private static final blacklist SINGLE_QUOTE:[C

.field private static final blacklist START_ATTLIST:[C

.field private static final blacklist START_CDATA:[C

.field private static final blacklist START_COMMENT:[C

.field private static final blacklist START_DOCTYPE:[C

.field private static final blacklist START_ELEMENT:[C

.field private static final blacklist START_ENTITY:[C

.field private static final blacklist START_NOTATION:[C

.field private static final blacklist START_PROCESSING_INSTRUCTION:[C

.field private static final blacklist SYSTEM:[C

.field private static final blacklist UNEXPECTED_EOF:Ljava/lang/String; = "Unexpected EOF"

.field private static final blacklist XML_DECLARATION:I = 0x3e6


# instance fields
.field private blacklist attributeCount:I

.field private blacklist attributes:[Ljava/lang/String;

.field private blacklist buffer:[C

.field private blacklist bufferCapture:Ljava/lang/StringBuilder;

.field private blacklist bufferStartColumn:I

.field private blacklist bufferStartLine:I

.field private blacklist defaultAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist degenerated:Z

.field private blacklist depth:I

.field private blacklist documentEntities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field private blacklist elementStack:[Ljava/lang/String;

.field private blacklist encoding:Ljava/lang/String;

.field private blacklist error:Ljava/lang/String;

.field private blacklist isWhitespace:Z

.field private blacklist keepNamespaceAttributes:Z

.field private blacklist limit:I

.field private blacklist location:Ljava/lang/String;

.field private blacklist name:Ljava/lang/String;

.field private blacklist namespace:Ljava/lang/String;

.field private blacklist nextContentSource:Lcom/android/org/kxml2/io/KXmlParser$ContentSource;

.field private blacklist nspCounts:[I

.field private blacklist nspStack:[Ljava/lang/String;

.field private blacklist parsedTopLevelStartTag:Z

.field private blacklist position:I

.field private blacklist prefix:Ljava/lang/String;

.field private blacklist processDocDecl:Z

.field private blacklist processNsp:Z

.field private blacklist publicId:Ljava/lang/String;

.field private blacklist reader:Ljava/io/Reader;

.field private blacklist relaxed:Z

.field private blacklist rootElementName:Ljava/lang/String;

.field private blacklist standalone:Ljava/lang/Boolean;

.field public final blacklist stringPool:Llibcore/internal/StringPool;

.field private blacklist systemId:Ljava/lang/String;

.field private blacklist text:Ljava/lang/String;

.field private blacklist type:I

.field private blacklist unresolved:Z

.field private blacklist version:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    .line 50
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "lt"

    const-string v2, "<"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "gt"

    const-string v2, ">"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "amp"

    const-string v2, "&"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "apos"

    const-string v2, "\'"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "quot"

    const-string v2, "\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_e8

    sput-object v0, Lcom/android/org/kxml2/io/KXmlParser;->START_COMMENT:[C

    .line 63
    const/4 v0, 0x3

    new-array v1, v0, [C

    fill-array-data v1, :array_f0

    sput-object v1, Lcom/android/org/kxml2/io/KXmlParser;->END_COMMENT:[C

    .line 64
    const/4 v1, 0x2

    new-array v2, v1, [C

    fill-array-data v2, :array_f8

    sput-object v2, Lcom/android/org/kxml2/io/KXmlParser;->COMMENT_DOUBLE_DASH:[C

    .line 65
    const/16 v2, 0x9

    new-array v3, v2, [C

    fill-array-data v3, :array_fe

    sput-object v3, Lcom/android/org/kxml2/io/KXmlParser;->START_CDATA:[C

    .line 66
    new-array v3, v0, [C

    fill-array-data v3, :array_10c

    sput-object v3, Lcom/android/org/kxml2/io/KXmlParser;->END_CDATA:[C

    .line 67
    new-array v3, v1, [C

    fill-array-data v3, :array_114

    sput-object v3, Lcom/android/org/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    .line 68
    new-array v1, v1, [C

    fill-array-data v1, :array_11a

    sput-object v1, Lcom/android/org/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    .line 69
    new-array v1, v2, [C

    fill-array-data v1, :array_120

    sput-object v1, Lcom/android/org/kxml2/io/KXmlParser;->START_DOCTYPE:[C

    .line 70
    const/4 v1, 0x6

    new-array v1, v1, [C

    fill-array-data v1, :array_12e

    sput-object v1, Lcom/android/org/kxml2/io/KXmlParser;->SYSTEM:[C

    .line 71
    const/4 v1, 0x6

    new-array v1, v1, [C

    fill-array-data v1, :array_138

    sput-object v1, Lcom/android/org/kxml2/io/KXmlParser;->PUBLIC:[C

    .line 72
    new-array v1, v2, [C

    fill-array-data v1, :array_142

    sput-object v1, Lcom/android/org/kxml2/io/KXmlParser;->START_ELEMENT:[C

    .line 73
    new-array v1, v2, [C

    fill-array-data v1, :array_150

    sput-object v1, Lcom/android/org/kxml2/io/KXmlParser;->START_ATTLIST:[C

    .line 74
    const/16 v1, 0x8

    new-array v2, v1, [C

    fill-array-data v2, :array_15e

    sput-object v2, Lcom/android/org/kxml2/io/KXmlParser;->START_ENTITY:[C

    .line 75
    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_16a

    sput-object v2, Lcom/android/org/kxml2/io/KXmlParser;->START_NOTATION:[C

    .line 76
    const/4 v2, 0x5

    new-array v3, v2, [C

    fill-array-data v3, :array_178

    sput-object v3, Lcom/android/org/kxml2/io/KXmlParser;->EMPTY:[C

    .line 77
    new-array v0, v0, [C

    fill-array-data v0, :array_182

    sput-object v0, Lcom/android/org/kxml2/io/KXmlParser;->ANY:[C

    .line 78
    new-array v0, v2, [C

    fill-array-data v0, :array_18a

    sput-object v0, Lcom/android/org/kxml2/io/KXmlParser;->NDATA:[C

    .line 79
    new-array v0, v1, [C

    fill-array-data v0, :array_194

    sput-object v0, Lcom/android/org/kxml2/io/KXmlParser;->NOTATION:[C

    .line 80
    new-array v0, v1, [C

    fill-array-data v0, :array_1a0

    sput-object v0, Lcom/android/org/kxml2/io/KXmlParser;->REQUIRED:[C

    .line 81
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_1ac

    sput-object v0, Lcom/android/org/kxml2/io/KXmlParser;->IMPLIED:[C

    .line 82
    new-array v0, v2, [C

    fill-array-data v0, :array_1b8

    sput-object v0, Lcom/android/org/kxml2/io/KXmlParser;->FIXED:[C

    .line 657
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x27

    const/4 v2, 0x0

    aput-char v1, v0, v2

    sput-object v0, Lcom/android/org/kxml2/io/KXmlParser;->SINGLE_QUOTE:[C

    .line 658
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x22

    aput-char v1, v0, v2

    sput-object v0, Lcom/android/org/kxml2/io/KXmlParser;->DOUBLE_QUOTE:[C

    return-void

    :array_e8
    .array-data 2
        0x3cs
        0x21s
        0x2ds
        0x2ds
    .end array-data

    :array_f0
    .array-data 2
        0x2ds
        0x2ds
        0x3es
    .end array-data

    nop

    :array_f8
    .array-data 2
        0x2ds
        0x2ds
    .end array-data

    :array_fe
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

    nop

    :array_10c
    .array-data 2
        0x5ds
        0x5ds
        0x3es
    .end array-data

    nop

    :array_114
    .array-data 2
        0x3cs
        0x3fs
    .end array-data

    :array_11a
    .array-data 2
        0x3fs
        0x3es
    .end array-data

    :array_120
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

    nop

    :array_12e
    .array-data 2
        0x53s
        0x59s
        0x53s
        0x54s
        0x45s
        0x4ds
    .end array-data

    :array_138
    .array-data 2
        0x50s
        0x55s
        0x42s
        0x4cs
        0x49s
        0x43s
    .end array-data

    :array_142
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

    nop

    :array_150
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

    nop

    :array_15e
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

    :array_16a
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

    :array_178
    .array-data 2
        0x45s
        0x4ds
        0x50s
        0x54s
        0x59s
    .end array-data

    nop

    :array_182
    .array-data 2
        0x41s
        0x4es
        0x59s
    .end array-data

    nop

    :array_18a
    .array-data 2
        0x4es
        0x44s
        0x41s
        0x54s
        0x41s
    .end array-data

    nop

    :array_194
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

    :array_1a0
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

    :array_1ac
    .array-data 2
        0x49s
        0x4ds
        0x50s
        0x4cs
        0x49s
        0x45s
        0x44s
    .end array-data

    nop

    :array_1b8
    .array-data 2
        0x46s
        0x49s
        0x58s
        0x45s
        0x44s
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    .line 134
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    .line 135
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspCounts:[I

    .line 142
    const/16 v1, 0x2000

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    .line 143
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 144
    iput v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 176
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 182
    new-instance v0, Llibcore/internal/StringPool;

    invoke-direct {v0}, Llibcore/internal/StringPool;-><init>()V

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    return-void
.end method

.method private blacklist adjustNsp()Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "any":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/16 v5, 0x3a

    if-ge v1, v2, :cond_92

    .line 198
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x2

    aget-object v2, v2, v6

    .line 199
    .local v2, "attrName":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 202
    .local v5, "cut":I
    const-string v6, "xmlns"

    if-eq v5, v4, :cond_25

    .line 203
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "prefix":Ljava/lang/String;
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    .line 205
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_25
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 206
    move-object v3, v2

    .line 207
    .restart local v3    # "prefix":Ljava/lang/String;
    const/4 v2, 0x0

    .line 212
    :goto_2d
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 213
    const/4 v0, 0x1

    goto :goto_8e

    .line 215
    :cond_35
    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspCounts:[I

    iget v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    aget v7, v4, v6

    add-int/lit8 v8, v7, 0x1

    aput v8, v4, v6

    shl-int/lit8 v4, v7, 0x1

    .line 217
    .local v4, "j":I
    iget-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v7, v4, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/org/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    .line 218
    iget-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aput-object v2, v6, v4

    .line 219
    iget-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v1, 0x3

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    .line 221
    if-eqz v2, :cond_6e

    iget-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v7, v1, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 222
    const-string v6, "illegal empty namespace"

    invoke-direct {p0, v6}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 225
    :cond_6e
    iget-boolean v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->keepNamespaceAttributes:Z

    if-eqz v6, :cond_7a

    .line 228
    iget-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const-string v7, "http://www.w3.org/2000/xmlns/"

    aput-object v7, v6, v1

    .line 229
    const/4 v0, 0x1

    goto :goto_8e

    .line 231
    :cond_7a
    iget-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v7, v1, 0x4

    iget-object v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    iget v9, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v9, v9, 0x2

    sub-int/2addr v9, v1

    invoke-static {v6, v7, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    add-int/lit8 v1, v1, -0x4

    .line 197
    .end local v2    # "attrName":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "j":I
    .end local v5    # "cut":I
    :cond_8e
    :goto_8e
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_2

    .line 243
    .end local v1    # "i":I
    :cond_92
    if-eqz v0, :cond_11e

    .line 244
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x4

    .restart local v1    # "i":I
    :goto_9a
    if-ltz v1, :cond_11e

    .line 246
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x2

    aget-object v2, v2, v6

    .line 247
    .restart local v2    # "attrName":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 249
    .local v6, "cut":I
    if-nez v6, :cond_d0

    iget-boolean v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v7, :cond_ad

    goto :goto_d0

    .line 250
    :cond_ad
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal attribute name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    :cond_d0
    :goto_d0
    if-eq v6, v4, :cond_11a

    .line 253
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, "attrPrefix":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {p0, v7}, Lcom/android/org/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, "attrNs":Ljava/lang/String;
    if-nez v8, :cond_10a

    iget-boolean v9, p0, Lcom/android/org/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v9, :cond_e7

    goto :goto_10a

    .line 260
    :cond_e7
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined Prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :cond_10a
    :goto_10a
    iget-object v9, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aput-object v8, v9, v1

    .line 265
    iget-object v9, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v1, 0x1

    aput-object v7, v9, v10

    .line 266
    iget-object v9, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v1, 0x2

    aput-object v2, v9, v10

    .line 244
    .end local v2    # "attrName":Ljava/lang/String;
    .end local v6    # "cut":I
    .end local v7    # "attrPrefix":Ljava/lang/String;
    .end local v8    # "attrNs":Ljava/lang/String;
    :cond_11a
    add-int/lit8 v1, v1, -0x4

    goto/16 :goto_9a

    .line 271
    .end local v1    # "i":I
    :cond_11e
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 273
    .local v1, "cut":I
    if-nez v1, :cond_13e

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal tag name: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 277
    :cond_13e
    if-eq v1, v4, :cond_152

    .line 278
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 279
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 282
    :cond_152
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/org/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 284
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    if-nez v2, :cond_17e

    .line 285
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_17a

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "undefined prefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 288
    :cond_17a
    const-string v2, ""

    iput-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 291
    :cond_17e
    return v0
.end method

.method private blacklist checkRelaxed(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 304
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v0, :cond_1e

    .line 307
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 310
    :cond_1d
    return-void

    .line 305
    :cond_1e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist defineAttributeDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 879
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 880
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    .line 882
    :cond_b
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 883
    .local v0, "elementAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_20

    .line 884
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 885
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    :cond_20
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    return-void
.end method

.method private blacklist ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "required"    # I

    .line 295
    array-length v0, p1

    if-lt v0, p2, :cond_4

    .line 296
    return-object p1

    .line 298
    :cond_4
    add-int/lit8 v0, p2, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 299
    .local v0, "bigger":[Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    return-object v0
.end method

.method private blacklist fillBuffer(I)Z
    .registers 9
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1483
    nop

    :cond_1
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->nextContentSource:Lcom/android/org/kxml2/io/KXmlParser$ContentSource;

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 1484
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    if-lt v0, v2, :cond_17

    .line 1487
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->popContentSource()V

    .line 1488
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v0, v2

    if-lt v0, p1, :cond_1

    .line 1489
    return v1

    .line 1485
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unbalanced entity!"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1494
    :cond_20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3e

    .line 1495
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    aget-char v2, v2, v0

    const/16 v4, 0xa

    if-ne v2, v4, :cond_36

    .line 1496
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferStartLine:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferStartLine:I

    .line 1497
    iput v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferStartColumn:I

    goto :goto_3b

    .line 1499
    :cond_36
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferStartColumn:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferStartColumn:I

    .line 1494
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1503
    .end local v0    # "i":I
    :cond_3e
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4b

    .line 1504
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1507
    :cond_4b
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    if-eq v0, v2, :cond_64

    .line 1508
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 1509
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_66

    .line 1511
    :cond_64
    iput v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 1514
    :goto_66
    iput v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1516
    :cond_68
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    iget-object v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    array-length v5, v5

    iget v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v2, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v0

    move v2, v0

    .local v2, "total":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_86

    .line 1517
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 1518
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    if-lt v0, p1, :cond_68

    .line 1519
    return v1

    .line 1522
    :cond_86
    return v3
.end method

.method private blacklist next(Z)I
    .registers 11
    .param p1, "justOneToken"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    const/4 v1, 0x0

    if-eqz v0, :cond_110

    .line 325
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_10

    .line 326
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    .line 332
    :cond_10
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->degenerated:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_1c

    .line 333
    iput-boolean v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->degenerated:Z

    .line 334
    iput v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    .line 335
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    return v0

    .line 338
    :cond_1c
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 339
    if-eqz p1, :cond_2f

    .line 340
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 341
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    .line 342
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 343
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    return v0

    .line 345
    :cond_2f
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 349
    :cond_31
    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v0

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    .line 351
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/16 v2, 0x3e6

    if-ne v0, v2, :cond_46

    .line 352
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readXmlDeclaration()V

    .line 353
    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v0

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    .line 356
    :cond_46
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 357
    iput-boolean v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 358
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 359
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 360
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    .line 362
    xor-int/lit8 v0, p1, 0x1

    .line 365
    .local v0, "throwOnResolveFailure":Z
    :goto_55
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x7

    const-string v6, "Unexpected token"

    packed-switch v2, :pswitch_data_118

    .line 428
    :pswitch_5d
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v2, v6, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 421
    :pswitch_63
    invoke-direct {p0, p1}, Lcom/android/org/kxml2/io/KXmlParser;->readDoctype(Z)V

    .line 422
    iget-boolean v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->parsedTopLevelStartTag:Z

    if-nez v2, :cond_6b

    goto :goto_c1

    .line 423
    :cond_6b
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v2, v6, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 408
    :pswitch_71
    invoke-direct {p0, p1}, Lcom/android/org/kxml2/io/KXmlParser;->readComment(Z)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "commentText":Ljava/lang/String;
    if-eqz p1, :cond_c1

    .line 410
    iput-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_c1

    .line 414
    .end local v2    # "commentText":Ljava/lang/String;
    :pswitch_7a
    sget-object v2, Lcom/android/org/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    .line 415
    sget-object v2, Lcom/android/org/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v2, p1}, Lcom/android/org/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "processingInstruction":Ljava/lang/String;
    if-eqz p1, :cond_c1

    .line 417
    iput-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_c1

    .line 385
    .end local v2    # "processingInstruction":Ljava/lang/String;
    :pswitch_8a
    if-eqz p1, :cond_ab

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v2, "entityTextBuilder":Ljava/lang/StringBuilder;
    sget-object v7, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->TEXT:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v2, v3, v0, v7}, Lcom/android/org/kxml2/io/KXmlParser;->readEntity(Ljava/lang/StringBuilder;ZZLcom/android/org/kxml2/io/KXmlParser$ValueContext;)V

    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 389
    goto :goto_c1

    .line 399
    .end local v2    # "entityTextBuilder":Ljava/lang/StringBuilder;
    :pswitch_9d
    sget-object v2, Lcom/android/org/kxml2/io/KXmlParser;->START_CDATA:[C

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    .line 400
    sget-object v2, Lcom/android/org/kxml2/io/KXmlParser;->END_CDATA:[C

    invoke-direct {p0, v2, v3}, Lcom/android/org/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 401
    goto :goto_c1

    .line 393
    :cond_ab
    :pswitch_ab
    xor-int/lit8 v2, p1, 0x1

    sget-object v7, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->TEXT:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    const/16 v8, 0x3c

    invoke-direct {p0, v8, v2, v0, v7}, Lcom/android/org/kxml2/io/KXmlParser;->readValue(CZZLcom/android/org/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 394
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    if-nez v2, :cond_c1

    iget-boolean v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v2, :cond_c1

    .line 395
    iput v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    .line 431
    :cond_c1
    :goto_c1
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    const/4 v7, 0x4

    if-nez v2, :cond_db

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v8, 0x6

    if-eq v2, v8, :cond_d5

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    if-eq v2, v7, :cond_d5

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v8, 0x5

    if-eq v2, v8, :cond_d5

    goto :goto_db

    .line 432
    :cond_d5
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v2, v6, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 435
    :cond_db
    :goto_db
    if-eqz p1, :cond_e0

    .line 436
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    return v1

    .line 439
    :cond_e0
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    if-ne v2, v5, :cond_e6

    .line 440
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 448
    :cond_e6
    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v2

    .line 449
    .local v2, "peek":I
    iget-object v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-eqz v5, :cond_fd

    iget-object v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_fd

    if-ge v2, v7, :cond_fd

    .line 450
    iput v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    .line 451
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    return v1

    .line 454
    :cond_fd
    iput v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    .line 455
    .end local v2    # "peek":I
    goto/16 :goto_55

    .line 375
    :pswitch_101
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readEndTag()V

    .line 376
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    return v1

    .line 372
    :pswitch_107
    invoke-direct {p0, v4, v0}, Lcom/android/org/kxml2/io/KXmlParser;->parseStartTag(ZZ)V

    .line 373
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    return v1

    .line 378
    :pswitch_10d
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    return v1

    .line 322
    .end local v0    # "throwOnResolveFailure":Z
    :cond_110
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "setInput() must be called first."

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_10d
        :pswitch_107
        :pswitch_101
        :pswitch_ab
        :pswitch_9d
        :pswitch_8a
        :pswitch_5d
        :pswitch_7a
        :pswitch_71
        :pswitch_63
    .end packed-switch
.end method

.method private blacklist parseStartTag(ZZ)V
    .registers 13
    .param p1, "xmldecl"    # Z
    .param p2, "throwOnResolveFailure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1056
    if-nez p1, :cond_7

    .line 1057
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->read(C)V

    .line 1059
    :cond_7
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 1060
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    .line 1063
    :goto_10
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 1065
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    const-string v3, "Unexpected EOF"

    const/4 v4, 0x1

    if-lt v1, v2, :cond_26

    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1066
    invoke-direct {p0, v3}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1067
    return-void

    .line 1070
    :cond_26
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    aget-char v1, v1, v2

    .line 1072
    .local v1, "c":I
    const-string v2, ""

    const/16 v5, 0x3e

    const/4 v6, 0x0

    if-eqz p1, :cond_40

    .line 1073
    const/16 v7, 0x3f

    if-ne v1, v7, :cond_125

    .line 1074
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1075
    invoke-direct {p0, v5}, Lcom/android/org/kxml2/io/KXmlParser;->read(C)V

    .line 1076
    return-void

    .line 1079
    :cond_40
    const/16 v7, 0x2f

    if-ne v1, v7, :cond_52

    .line 1080
    iput-boolean v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->degenerated:Z

    .line 1081
    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1082
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 1083
    invoke-direct {p0, v5}, Lcom/android/org/kxml2/io/KXmlParser;->read(C)V

    .line 1084
    goto :goto_5a

    .line 1085
    :cond_52
    if-ne v1, v5, :cond_125

    .line 1086
    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1087
    nop

    .line 1137
    .end local v1    # "c":I
    :goto_5a
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    mul-int/lit8 v1, v1, 0x4

    .line 1138
    .local v1, "sp":I
    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    if-ne v3, v4, :cond_68

    .line 1139
    iput-boolean v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->parsedTopLevelStartTag:Z

    .line 1141
    :cond_68
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v1, 0x4

    invoke-direct {p0, v3, v5}, Lcom/android/org/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    .line 1142
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v1, 0x3

    iget-object v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    aput-object v7, v3, v5

    .line 1144
    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    iget-object v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspCounts:[I

    array-length v5, v5

    if-lt v3, v5, :cond_91

    .line 1145
    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v3, v3, 0x4

    new-array v3, v3, [I

    .line 1146
    .local v3, "bigger":[I
    iget-object v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspCounts:[I

    iget-object v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspCounts:[I

    array-length v7, v7

    invoke-static {v5, v0, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1147
    iput-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspCounts:[I

    .line 1150
    .end local v3    # "bigger":[I
    :cond_91
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspCounts:[I

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    iget-object v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspCounts:[I

    iget v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    sub-int/2addr v7, v4

    aget v4, v5, v7

    aput v4, v0, v3

    .line 1152
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->processNsp:Z

    if-eqz v0, :cond_a6

    .line 1153
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->adjustNsp()Z

    goto :goto_a8

    .line 1155
    :cond_a6
    iput-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 1159
    :goto_a8
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    if-eqz v0, :cond_10e

    .line 1160
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1161
    .local v0, "elementDefaultAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_10e

    .line 1162
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1163
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v6, v5}, Lcom/android/org/kxml2/io/KXmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d9

    .line 1164
    goto :goto_c0

    .line 1167
    :cond_d9
    iget v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v5, v5, 0x4

    .line 1168
    .local v5, "i":I
    iget-object v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v8, v5, 0x4

    invoke-direct {p0, v7, v8}, Lcom/android/org/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 1169
    iget-object v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aput-object v2, v7, v5

    .line 1170
    iget-object v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v8, v5, 0x1

    aput-object v6, v7, v8

    .line 1171
    iget-object v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v8, v5, 0x2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v8

    .line 1172
    iget-object v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v8, v5, 0x3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v8

    .line 1173
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i":I
    goto :goto_c0

    .line 1177
    .end local v0    # "elementDefaultAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_10e
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1178
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 1179
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 1180
    return-void

    .line 1091
    .local v1, "c":I
    :cond_125
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v5

    .line 1093
    .local v5, "attrName":Ljava/lang/String;
    iget v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v7, v7, 0x4

    .line 1094
    .local v7, "i":I
    iget-object v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v7, 0x4

    invoke-direct {p0, v8, v9}, Lcom/android/org/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 1095
    iget-object v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aput-object v2, v8, v7

    .line 1096
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v8, v7, 0x1

    aput-object v6, v2, v8

    .line 1097
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v8, v7, 0x2

    aput-object v5, v2, v8

    .line 1099
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 1100
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    iget v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    if-lt v2, v8, :cond_15e

    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_15e

    .line 1101
    invoke-direct {p0, v3}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1102
    return-void

    .line 1105
    :cond_15e
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    aget-char v2, v2, v8

    const/16 v8, 0x3d

    if-ne v2, v8, :cond_1bf

    .line 1106
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1108
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 1109
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    iget v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    if-lt v2, v8, :cond_180

    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_180

    .line 1110
    invoke-direct {p0, v3}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1111
    return-void

    .line 1113
    :cond_180
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    aget-char v2, v2, v3

    .line 1115
    .local v2, "delimiter":C
    const/16 v3, 0x27

    if-eq v2, v3, :cond_19e

    const/16 v3, 0x22

    if-ne v2, v3, :cond_18f

    goto :goto_19e

    .line 1117
    :cond_18f
    iget-boolean v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v3, :cond_196

    .line 1118
    const/16 v2, 0x20

    goto :goto_1a3

    .line 1120
    :cond_196
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "attr value delimiter missing!"

    invoke-direct {v0, v3, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1116
    :cond_19e
    :goto_19e
    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1123
    :goto_1a3
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v7, 0x3

    sget-object v8, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v2, v4, p2, v8}, Lcom/android/org/kxml2/io/KXmlParser;->readValue(CZZLcom/android/org/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    .line 1126
    const/16 v3, 0x20

    if-eq v2, v3, :cond_1be

    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v3

    if-ne v3, v2, :cond_1be

    .line 1127
    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1129
    .end local v2    # "delimiter":C
    :cond_1be
    goto :goto_1e6

    :cond_1bf
    iget-boolean v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v2, :cond_1ca

    .line 1130
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v3, v7, 0x3

    aput-object v5, v2, v3

    goto :goto_1e6

    .line 1132
    :cond_1ca
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attr.value missing f. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1133
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v3, v7, 0x3

    aput-object v5, v2, v3

    .line 1135
    .end local v1    # "c":I
    .end local v5    # "attrName":Ljava/lang/String;
    .end local v7    # "i":I
    :goto_1e6
    goto/16 :goto_10
.end method

.method private blacklist peekCharacter()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1470
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    .line 1473
    :cond_e
    const/4 v0, -0x1

    return v0

    .line 1471
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    aget-char v0, v0, v1

    return v0
.end method

.method private blacklist peekType(Z)I
    .registers 9
    .param p1, "inDeclaration"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 993
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_e

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 994
    return v2

    .line 997
    :cond_e
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    aget-char v0, v0, v1

    const/4 v1, 0x6

    const/4 v3, 0x4

    sparse-switch v0, :sswitch_data_d8

    .line 1047
    return v3

    .line 1001
    :sswitch_1a
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    const/4 v4, 0x3

    add-int/2addr v0, v4

    iget v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    const/4 v6, 0x0

    if-lt v0, v5, :cond_32

    invoke-direct {p0, v3}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_32

    .line 1002
    :cond_2a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Dangling <"

    invoke-direct {v0, v1, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1005
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v5, v2

    aget-char v0, v0, v5

    const/4 v2, 0x5

    const/4 v5, 0x2

    sparse-switch v0, :sswitch_data_e6

    .line 1042
    return v5

    .line 1010
    :sswitch_3f
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v0, v2

    iget v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    if-lt v0, v6, :cond_4c

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_9c

    :cond_4c
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v5

    aget-char v0, v0, v1

    const/16 v1, 0x78

    if-eq v0, v1, :cond_62

    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v5

    aget-char v0, v0, v1

    const/16 v1, 0x58

    if-ne v0, v1, :cond_9c

    :cond_62
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v4

    aget-char v0, v0, v1

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_78

    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v4

    aget-char v0, v0, v1

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_9c

    :cond_78
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v3

    aget-char v0, v0, v1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_8e

    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v3

    aget-char v0, v0, v1

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_9c

    :cond_8e
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v2

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9c

    .line 1015
    const/16 v0, 0x3e6

    return v0

    .line 1017
    :cond_9c
    const/16 v0, 0x8

    return v0

    .line 1007
    :sswitch_9f
    return v4

    .line 1020
    :sswitch_a0
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v5

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_f4

    goto :goto_c9

    .line 1024
    :sswitch_ab
    return v2

    .line 1038
    :sswitch_ac
    const/16 v0, 0xe

    return v0

    .line 1028
    :sswitch_af
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v4

    aget-char v0, v0, v1

    packed-switch v0, :pswitch_data_10e

    .line 1034
    :pswitch_b9
    goto :goto_c9

    .line 1032
    :pswitch_ba
    const/16 v0, 0xc

    return v0

    .line 1030
    :pswitch_bd
    const/16 v0, 0xb

    return v0

    .line 1022
    :sswitch_c0
    const/16 v0, 0xa

    return v0

    .line 1036
    :sswitch_c3
    const/16 v0, 0xd

    return v0

    .line 1026
    :sswitch_c6
    const/16 v0, 0x9

    return v0

    .line 1040
    :goto_c9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unexpected <!"

    invoke-direct {v0, v1, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 999
    :sswitch_d1
    return v1

    .line 1045
    :sswitch_d2
    if-eqz p1, :cond_d6

    const/16 v3, 0xf

    :cond_d6
    return v3

    nop

    :sswitch_data_d8
    .sparse-switch
        0x25 -> :sswitch_d2
        0x26 -> :sswitch_d1
        0x3c -> :sswitch_1a
    .end sparse-switch

    :sswitch_data_e6
    .sparse-switch
        0x21 -> :sswitch_a0
        0x2f -> :sswitch_9f
        0x3f -> :sswitch_3f
    .end sparse-switch

    :sswitch_data_f4
    .sparse-switch
        0x2d -> :sswitch_c6
        0x41 -> :sswitch_c3
        0x44 -> :sswitch_c0
        0x45 -> :sswitch_af
        0x4e -> :sswitch_ac
        0x5b -> :sswitch_ab
    .end sparse-switch

    :pswitch_data_10e
    .packed-switch 0x4c
        :pswitch_bd
        :pswitch_b9
        :pswitch_ba
    .end packed-switch
.end method

.method private blacklist popContentSource()V
    .registers 2

    .line 2173
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->nextContentSource:Lcom/android/org/kxml2/io/KXmlParser$ContentSource;

    invoke-static {v0}, Lcom/android/org/kxml2/io/KXmlParser$ContentSource;->-$$Nest$fgetbuffer(Lcom/android/org/kxml2/io/KXmlParser$ContentSource;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    .line 2174
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->nextContentSource:Lcom/android/org/kxml2/io/KXmlParser$ContentSource;

    invoke-static {v0}, Lcom/android/org/kxml2/io/KXmlParser$ContentSource;->-$$Nest$fgetposition(Lcom/android/org/kxml2/io/KXmlParser$ContentSource;)I

    move-result v0

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 2175
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->nextContentSource:Lcom/android/org/kxml2/io/KXmlParser$ContentSource;

    invoke-static {v0}, Lcom/android/org/kxml2/io/KXmlParser$ContentSource;->-$$Nest$fgetlimit(Lcom/android/org/kxml2/io/KXmlParser$ContentSource;)I

    move-result v0

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 2176
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->nextContentSource:Lcom/android/org/kxml2/io/KXmlParser$ContentSource;

    invoke-static {v0}, Lcom/android/org/kxml2/io/KXmlParser$ContentSource;->-$$Nest$fgetnext(Lcom/android/org/kxml2/io/KXmlParser$ContentSource;)Lcom/android/org/kxml2/io/KXmlParser$ContentSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->nextContentSource:Lcom/android/org/kxml2/io/KXmlParser$ContentSource;

    .line 2177
    return-void
.end method

.method private blacklist pushContentSource([C)V
    .registers 7
    .param p1, "newBuffer"    # [C

    .line 2163
    new-instance v0, Lcom/android/org/kxml2/io/KXmlParser$ContentSource;

    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->nextContentSource:Lcom/android/org/kxml2/io/KXmlParser$ContentSource;

    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/kxml2/io/KXmlParser$ContentSource;-><init>(Lcom/android/org/kxml2/io/KXmlParser$ContentSource;[CII)V

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->nextContentSource:Lcom/android/org/kxml2/io/KXmlParser$ContentSource;

    .line 2164
    iput-object p1, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    .line 2165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 2166
    array-length v0, p1

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 2167
    return-void
.end method

.method private blacklist read(C)V
    .registers 5
    .param p1, "expected"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1441
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 1442
    .local v0, "c":I
    if-eq v0, p1, :cond_31

    .line 1443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' actual: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1444
    const/4 v1, -0x1

    if-ne v0, v1, :cond_31

    .line 1445
    return-void

    .line 1448
    :cond_31
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1449
    return-void
.end method

.method private blacklist read([C)V
    .registers 8
    .param p1, "chars"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1452
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    if-le v0, v1, :cond_31

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' but was EOF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1454
    return-void

    .line 1459
    :cond_31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    array-length v1, p1

    if-ge v0, v1, :cond_78

    .line 1460
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    aget-char v2, p1, v0

    if-eq v1, v2, :cond_75

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" but was \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    array-length v5, p1

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1459
    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 1466
    .end local v0    # "i":I
    :cond_78
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1467
    return-void
.end method

.method private blacklist readAttributeListDeclaration()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 803
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser;->START_ATTLIST:[C

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    .line 804
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 805
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "elementName":Ljava/lang/String;
    :goto_c
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 809
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 810
    .local v1, "c":I
    const/16 v2, 0x3e

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1e

    .line 811
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 812
    return-void

    .line 816
    :cond_1e
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "attributeName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 820
    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    const/4 v6, 0x0

    if-lt v4, v5, :cond_3d

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_3d

    .line 821
    :cond_35
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Malformed attribute list"

    invoke-direct {v3, v4, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 823
    :cond_3d
    :goto_3d
    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    aget-char v4, v4, v5

    sget-object v5, Lcom/android/org/kxml2/io/KXmlParser;->NOTATION:[C

    const/4 v7, 0x0

    aget-char v5, v5, v7

    if-ne v4, v5, :cond_5f

    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v5, v3

    aget-char v4, v4, v5

    sget-object v5, Lcom/android/org/kxml2/io/KXmlParser;->NOTATION:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_5f

    .line 824
    sget-object v4, Lcom/android/org/kxml2/io/KXmlParser;->NOTATION:[C

    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    .line 825
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 827
    :cond_5f
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 828
    const/16 v4, 0x28

    const-string v5, "Malformed attribute type"

    if-ne v1, v4, :cond_95

    .line 829
    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 831
    :goto_6e
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 832
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    .line 833
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 834
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 835
    const/16 v4, 0x29

    if-ne v1, v4, :cond_85

    .line 836
    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 837
    goto :goto_98

    .line 838
    :cond_85
    const/16 v4, 0x7c

    if-ne v1, v4, :cond_8f

    .line 839
    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    goto :goto_6e

    .line 841
    :cond_8f
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v3, v5, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 845
    :cond_95
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    .line 849
    :goto_98
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 850
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 851
    const/16 v4, 0x23

    if-ne v1, v4, :cond_d7

    .line 852
    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 853
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 854
    const/16 v4, 0x52

    if-ne v1, v4, :cond_b6

    .line 855
    sget-object v4, Lcom/android/org/kxml2/io/KXmlParser;->REQUIRED:[C

    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    goto :goto_c9

    .line 856
    :cond_b6
    const/16 v4, 0x49

    if-ne v1, v4, :cond_c0

    .line 857
    sget-object v4, Lcom/android/org/kxml2/io/KXmlParser;->IMPLIED:[C

    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    goto :goto_c9

    .line 858
    :cond_c0
    const/16 v4, 0x46

    if-ne v1, v4, :cond_d1

    .line 859
    sget-object v4, Lcom/android/org/kxml2/io/KXmlParser;->FIXED:[C

    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    .line 863
    :goto_c9
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 864
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    goto :goto_d7

    .line 861
    :cond_d1
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v3, v5, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 866
    :cond_d7
    :goto_d7
    const/16 v4, 0x22

    if-eq v1, v4, :cond_df

    const/16 v4, 0x27

    if-ne v1, v4, :cond_f9

    .line 867
    :cond_df
    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 869
    int-to-char v4, v1

    sget-object v5, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v4, v3, v3, v5}, Lcom/android/org/kxml2/io/KXmlParser;->readValue(CZZLcom/android/org/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v4

    .line 870
    .local v4, "value":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v5

    if-ne v5, v1, :cond_f6

    .line 871
    iget v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 873
    :cond_f6
    invoke-direct {p0, v0, v2, v4}, Lcom/android/org/kxml2/io/KXmlParser;->defineAttributeDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    .end local v1    # "c":I
    .end local v2    # "attributeName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_f9
    goto/16 :goto_c
.end method

.method private blacklist readComment(Z)Ljava/lang/String;
    .registers 6
    .param p1, "returnText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 562
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser;->START_COMMENT:[C

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    .line 564
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v0, :cond_10

    .line 565
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser;->END_COMMENT:[C

    invoke-direct {p0, v0, p1}, Lcom/android/org/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 568
    :cond_10
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser;->COMMENT_DOUBLE_DASH:[C

    invoke-direct {p0, v0, p1}, Lcom/android/org/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "commentText":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_25

    .line 572
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 573
    return-object v0

    .line 570
    :cond_25
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Comments may not contain --"

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist readContentSpec()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 757
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 758
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 759
    .local v0, "c":I
    const/4 v1, 0x0

    const/16 v2, 0x28

    if-ne v0, v2, :cond_43

    .line 760
    const/4 v3, 0x0

    .line 762
    .local v3, "depth":I
    :cond_d
    if-ne v0, v2, :cond_12

    .line 763
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 764
    :cond_12
    const/16 v4, 0x29

    if-ne v0, v4, :cond_19

    .line 765
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 766
    :cond_19
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3b

    .line 770
    :goto_1c
    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 771
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 772
    if-gtz v3, :cond_d

    .line 774
    const/16 v1, 0x2a

    if-eq v0, v1, :cond_34

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_34

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_3a

    .line 775
    :cond_34
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 777
    .end local v3    # "depth":I
    :cond_3a
    goto :goto_5b

    .line 767
    .restart local v3    # "depth":I
    :cond_3b
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Unterminated element content spec"

    invoke-direct {v2, v4, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 777
    .end local v3    # "depth":I
    :cond_43
    sget-object v2, Lcom/android/org/kxml2/io/KXmlParser;->EMPTY:[C

    const/4 v3, 0x0

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_50

    .line 778
    sget-object v1, Lcom/android/org/kxml2/io/KXmlParser;->EMPTY:[C

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    goto :goto_5b

    .line 779
    :cond_50
    sget-object v2, Lcom/android/org/kxml2/io/KXmlParser;->ANY:[C

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_5c

    .line 780
    sget-object v1, Lcom/android/org/kxml2/io/KXmlParser;->ANY:[C

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    .line 784
    :goto_5b
    return-void

    .line 782
    :cond_5c
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Expected element content spec"

    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist readDoctype(Z)V
    .registers 9
    .param p1, "saveDtdText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 581
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser;->START_DOCTYPE:[C

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    .line 583
    const/4 v0, -0x1

    .line 584
    .local v0, "startPosition":I
    if-eqz p1, :cond_11

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    .line 586
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 589
    :cond_11
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_13
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 590
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->rootElementName:Ljava/lang/String;

    .line 591
    const/4 v3, 0x1

    invoke-direct {p0, v3, v3}, Lcom/android/org/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    .line 592
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 593
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_2e

    .line 594
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readInternalSubset()V

    .line 596
    :cond_2e
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_54

    .line 598
    if-eqz p1, :cond_4b

    .line 599
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v3, v4, v2, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 600
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 601
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 602
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    .line 606
    :cond_4b
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlParser;->read(C)V

    .line 607
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 608
    return-void

    .line 598
    :catchall_54
    move-exception v3

    if-eqz p1, :cond_6f

    .line 599
    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v4, v5, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 600
    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 601
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 602
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    .line 604
    :cond_6f
    throw v3
.end method

.method private blacklist readElementDeclaration()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 731
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser;->START_ELEMENT:[C

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    .line 732
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 733
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    .line 734
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readContentSpec()V

    .line 735
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 736
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->read(C)V

    .line 737
    return-void
.end method

.method private blacklist readEndTag()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 965
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->read(C)V

    .line 966
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->read(C)V

    .line 967
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 968
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 969
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->read(C)V

    .line 971
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x4

    .line 973
    .local v0, "sp":I
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    if-nez v1, :cond_45

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read end tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with no tags open"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 975
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    .line 976
    return-void

    .line 979
    :cond_45
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 980
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 981
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 982
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    goto :goto_6e

    .line 983
    :cond_6a
    iget-boolean v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v1, :cond_6f

    .line 987
    :goto_6e
    return-void

    .line 984
    :cond_6f
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected: /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist readEntity(Ljava/lang/StringBuilder;ZZLcom/android/org/kxml2/io/KXmlParser$ValueContext;)V
    .registers 12
    .param p1, "out"    # Ljava/lang/StringBuilder;
    .param p2, "isEntityToken"    # Z
    .param p3, "throwOnResolveFailure"    # Z
    .param p4, "valueContext"    # Lcom/android/org/kxml2/io/KXmlParser$ValueContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1189
    const-string v0, "Invalid character reference: &"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1191
    .local v1, "start":I
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    aget-char v2, v2, v3

    const/16 v3, 0x26

    if-ne v2, v3, :cond_14a

    .line 1195
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1198
    :goto_17
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v2

    .line 1200
    .local v2, "c":I
    const/16 v3, 0x3b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_108

    .line 1201
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1202
    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1203
    nop

    .line 1224
    .end local v2    # "c":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1226
    .local v2, "code":Ljava/lang/String;
    if-eqz p2, :cond_38

    .line 1227
    iput-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 1230
    :cond_38
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_9b

    .line 1232
    :try_start_41
    const-string v3, "#x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1233
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_5d

    .line 1234
    :cond_55
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_5d
    nop

    .line 1235
    .local v3, "c":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1236
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1237
    iput-boolean v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->unresolved:Z
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_6a} :catch_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_6a} :catch_6b

    .line 1238
    return-void

    .line 1241
    .end local v3    # "c":I
    :catch_6b
    move-exception v3

    .line 1242
    .local v3, "invalidCodePoint":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1239
    .end local v3    # "invalidCodePoint":Ljava/lang/IllegalArgumentException;
    :catch_83
    move-exception v3

    .line 1240
    .local v3, "notANumber":Ljava/lang/NumberFormatException;
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1246
    .end local v3    # "notANumber":Ljava/lang/NumberFormatException;
    :cond_9b
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    if-ne p4, v0, :cond_a0

    .line 1248
    return-void

    .line 1251
    :cond_a0
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1252
    .local v0, "defaultEntity":Ljava/lang/String;
    if-eqz v0, :cond_b7

    .line 1253
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1254
    iput-boolean v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->unresolved:Z

    .line 1255
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    return-void

    .line 1260
    :cond_b7
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    if-eqz v3, :cond_db

    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    move-object v6, v3

    .local v6, "resolved":[C
    if-eqz v3, :cond_db

    .line 1261
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1262
    iput-boolean v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->unresolved:Z

    .line 1263
    iget-boolean v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->processDocDecl:Z

    if-eqz v3, :cond_d7

    .line 1264
    invoke-direct {p0, v6}, Lcom/android/org/kxml2/io/KXmlParser;->pushContentSource([C)V

    goto :goto_da

    .line 1266
    :cond_d7
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1268
    :goto_da
    return-void

    .line 1277
    .end local v6    # "resolved":[C
    :cond_db
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    if-eqz v3, :cond_e7

    .line 1278
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1279
    return-void

    .line 1283
    :cond_e7
    iput-boolean v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->unresolved:Z

    .line 1284
    if-eqz p3, :cond_107

    .line 1285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unresolved: &"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1287
    :cond_107
    return-void

    .line 1205
    .end local v0    # "defaultEntity":Ljava/lang/String;
    .local v2, "c":I
    :cond_108
    const/16 v3, 0x80

    if-ge v2, v3, :cond_13f

    const/16 v3, 0x30

    if-lt v2, v3, :cond_114

    const/16 v3, 0x39

    if-le v2, v3, :cond_13f

    :cond_114
    const/16 v3, 0x61

    if-lt v2, v3, :cond_11c

    const/16 v3, 0x7a

    if-le v2, v3, :cond_13f

    :cond_11c
    const/16 v3, 0x41

    if-lt v2, v3, :cond_124

    const/16 v3, 0x5a

    if-le v2, v3, :cond_13f

    :cond_124
    const/16 v3, 0x5f

    if-eq v2, v3, :cond_13f

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_13f

    const/16 v3, 0x23

    if-ne v2, v3, :cond_131

    goto :goto_13f

    .line 1215
    :cond_131
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v0, :cond_136

    .line 1217
    return-void

    .line 1220
    :cond_136
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "unterminated entity ref"

    const/4 v4, 0x0

    invoke-direct {v0, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1212
    :cond_13f
    :goto_13f
    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1213
    int-to-char v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1222
    .end local v2    # "c":I
    goto/16 :goto_17

    .line 1192
    :cond_14a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private blacklist readEntityDeclaration()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 904
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser;->START_ENTITY:[C

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    .line 905
    const/4 v0, 0x1

    .line 907
    .local v0, "generalEntity":Z
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 908
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v2, 0x25

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1b

    .line 909
    const/4 v0, 0x0

    .line 910
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 911
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 914
    :cond_1b
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v1

    .line 916
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 917
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v2

    .line 919
    .local v2, "quote":I
    const/16 v4, 0x22

    const/4 v5, 0x0

    if-eq v2, v4, :cond_5a

    const/16 v4, 0x27

    if-ne v2, v4, :cond_30

    goto :goto_5a

    .line 925
    :cond_30
    invoke-direct {p0, v3, v5}, Lcom/android/org/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 930
    const-string v3, ""

    .line 931
    .local v3, "entityValue":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 932
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v4

    sget-object v6, Lcom/android/org/kxml2/io/KXmlParser;->NDATA:[C

    aget-char v5, v6, v5

    if-ne v4, v5, :cond_72

    .line 933
    sget-object v4, Lcom/android/org/kxml2/io/KXmlParser;->NDATA:[C

    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    .line 934
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 935
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    goto :goto_72

    .line 938
    .end local v3    # "entityValue":Ljava/lang/String;
    :cond_51
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Expected entity value or external ID"

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 920
    :cond_5a
    :goto_5a
    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 921
    int-to-char v4, v2

    sget-object v6, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/android/org/kxml2/io/KXmlParser;->readValue(CZZLcom/android/org/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v4

    .line 922
    .local v4, "entityValue":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v5

    if-ne v5, v2, :cond_71

    .line 923
    iget v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 941
    :cond_71
    move-object v3, v4

    .end local v4    # "entityValue":Ljava/lang/String;
    .restart local v3    # "entityValue":Ljava/lang/String;
    :cond_72
    :goto_72
    if-eqz v0, :cond_8c

    iget-boolean v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->processDocDecl:Z

    if-eqz v4, :cond_8c

    .line 942
    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    if-nez v4, :cond_83

    .line 943
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    .line 945
    :cond_83
    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    :cond_8c
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 949
    const/16 v4, 0x3e

    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->read(C)V

    .line 950
    return-void
.end method

.method private blacklist readExternalId(ZZ)Z
    .registers 8
    .param p1, "requireSystemName"    # Z
    .param p2, "assignFields"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 623
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 624
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 626
    .local v0, "c":I
    const/16 v1, 0x53

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_13

    .line 627
    sget-object v1, Lcom/android/org/kxml2/io/KXmlParser;->SYSTEM:[C

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    goto :goto_2b

    .line 628
    :cond_13
    const/16 v1, 0x50

    if-ne v0, v1, :cond_4a

    .line 629
    sget-object v1, Lcom/android/org/kxml2/io/KXmlParser;->PUBLIC:[C

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    .line 630
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 631
    if-eqz p2, :cond_28

    .line 632
    invoke-direct {p0, v3}, Lcom/android/org/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->publicId:Ljava/lang/String;

    goto :goto_2b

    .line 634
    :cond_28
    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    .line 640
    :goto_2b
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 642
    if-nez p1, :cond_3d

    .line 643
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 644
    .local v1, "delimiter":I
    const/16 v4, 0x22

    if-eq v1, v4, :cond_3d

    const/16 v4, 0x27

    if-eq v1, v4, :cond_3d

    .line 645
    return v3

    .line 649
    .end local v1    # "delimiter":I
    :cond_3d
    if-eqz p2, :cond_46

    .line 650
    invoke-direct {p0, v3}, Lcom/android/org/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    goto :goto_49

    .line 652
    :cond_46
    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    .line 654
    :goto_49
    return v3

    .line 637
    :cond_4a
    return v2
.end method

.method private blacklist readInternalSubset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 678
    const/16 v0, 0x5b

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->read(C)V

    .line 681
    :goto_5
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 682
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    const/16 v1, 0x5d

    const/4 v2, 0x1

    if-ne v0, v1, :cond_17

    .line 683
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 684
    return-void

    .line 687
    :cond_17
    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v0

    .line 688
    .local v0, "declarationType":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_50

    .line 719
    :pswitch_20
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Unexpected token"

    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 715
    :pswitch_28
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Parameter entity references are not supported"

    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 702
    :pswitch_30
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readNotationDeclaration()V

    .line 703
    goto :goto_4f

    .line 694
    :pswitch_34
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readAttributeListDeclaration()V

    .line 695
    goto :goto_4f

    .line 698
    :pswitch_38
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readEntityDeclaration()V

    .line 699
    goto :goto_4f

    .line 690
    :pswitch_3c
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readElementDeclaration()V

    .line 691
    goto :goto_4f

    .line 711
    :pswitch_40
    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlParser;->readComment(Z)Ljava/lang/String;

    .line 712
    goto :goto_4f

    .line 706
    :pswitch_44
    sget-object v1, Lcom/android/org/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    .line 707
    sget-object v1, Lcom/android/org/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v1, v2}, Lcom/android/org/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    .line 708
    nop

    .line 721
    .end local v0    # "declarationType":I
    :goto_4f
    goto :goto_5

    :pswitch_data_50
    .packed-switch 0x8
        :pswitch_44
        :pswitch_40
        :pswitch_20
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_28
    .end packed-switch
.end method

.method private blacklist readName()Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1530
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    const-string v2, ""

    const-string v3, "name expected"

    const/4 v4, 0x1

    if-lt v0, v1, :cond_15

    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1531
    invoke-direct {p0, v3}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1532
    return-object v2

    .line 1535
    :cond_15
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1536
    .local v0, "start":I
    const/4 v1, 0x0

    .line 1539
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    aget-char v5, v5, v6

    .line 1540
    .local v5, "c":C
    const/16 v6, 0x3a

    const/16 v7, 0x5a

    const/16 v8, 0x5f

    const/16 v9, 0x7a

    const/16 v10, 0x41

    const/16 v11, 0x61

    if-lt v5, v11, :cond_2e

    if-le v5, v9, :cond_43

    :cond_2e
    if-lt v5, v10, :cond_32

    if-le v5, v7, :cond_43

    :cond_32
    if-eq v5, v8, :cond_43

    if-eq v5, v6, :cond_43

    const/16 v12, 0xc0

    if-ge v5, v12, :cond_43

    iget-boolean v12, p0, Lcom/android/org/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v12, :cond_3f

    goto :goto_43

    .line 1548
    :cond_3f
    invoke-direct {p0, v3}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1549
    return-object v2

    .line 1546
    :cond_43
    :goto_43
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1558
    :goto_48
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    if-lt v2, v3, :cond_6b

    .line 1559
    if-nez v1, :cond_56

    .line 1560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 1562
    :cond_56
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1563
    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_69

    .line 1564
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1566
    :cond_69
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1570
    :cond_6b
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    aget-char v5, v2, v3

    .line 1571
    if-lt v5, v11, :cond_75

    if-le v5, v9, :cond_ad

    :cond_75
    if-lt v5, v10, :cond_79

    if-le v5, v7, :cond_ad

    :cond_79
    const/16 v2, 0x30

    if-lt v5, v2, :cond_81

    const/16 v2, 0x39

    if-le v5, v2, :cond_ad

    :cond_81
    if-eq v5, v8, :cond_ad

    const/16 v2, 0x2d

    if-eq v5, v2, :cond_ad

    if-eq v5, v6, :cond_ad

    const/16 v2, 0x2e

    if-eq v5, v2, :cond_ad

    const/16 v2, 0xb7

    if-lt v5, v2, :cond_92

    goto :goto_ad

    .line 1584
    :cond_92
    if-nez v1, :cond_a0

    .line 1585
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v4}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1587
    :cond_a0
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1588
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1579
    :cond_ad
    :goto_ad
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1580
    goto :goto_48
.end method

.method private blacklist readNotationDeclaration()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 953
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser;->START_NOTATION:[C

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    .line 954
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 955
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    .line 956
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 960
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->skip()V

    .line 961
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->read(C)V

    .line 962
    return-void

    .line 957
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Expected external ID or public ID for notation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist readQuotedId(Z)Ljava/lang/String;
    .registers 6
    .param p1, "returnText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 664
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 666
    .local v0, "quote":I
    const/16 v1, 0x22

    if-ne v0, v1, :cond_b

    .line 667
    sget-object v1, Lcom/android/org/kxml2/io/KXmlParser;->DOUBLE_QUOTE:[C

    .local v1, "delimiter":[C
    goto :goto_11

    .line 668
    .end local v1    # "delimiter":[C
    :cond_b
    const/16 v1, 0x27

    if-ne v0, v1, :cond_1c

    .line 669
    sget-object v1, Lcom/android/org/kxml2/io/KXmlParser;->SINGLE_QUOTE:[C

    .line 673
    .restart local v1    # "delimiter":[C
    :goto_11
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 674
    invoke-direct {p0, v1, p1}, Lcom/android/org/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 671
    .end local v1    # "delimiter":[C
    :cond_1c
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Expected a quoted string"

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist readUntil([CZ)Ljava/lang/String;
    .registers 9
    .param p1, "delimiter"    # [C
    .param p2, "returnText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 467
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 468
    .local v0, "start":I
    const/4 v1, 0x0

    .line 470
    .local v1, "result":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_14

    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 472
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :cond_14
    :goto_14
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    array-length v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_46

    .line 478
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    if-ge v0, v2, :cond_33

    if-eqz p2, :cond_33

    .line 479
    if-nez v1, :cond_2b

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 482
    :cond_2b
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 484
    :cond_33
    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_44

    .line 485
    const-string v2, "Unexpected EOF"

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 486
    const/16 v2, 0x9

    iput v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    .line 487
    return-object v4

    .line 489
    :cond_44
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 494
    :cond_46
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_47
    array-length v3, p1

    if-ge v2, v3, :cond_5f

    .line 495
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v5, v2

    aget-char v3, v3, v5

    aget-char v5, p1, v2

    if-eq v3, v5, :cond_5c

    .line 496
    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 497
    goto :goto_14

    .line 494
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 501
    .end local v2    # "i":I
    :cond_5f
    nop

    .line 504
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 505
    .local v2, "end":I
    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    array-length v5, p1

    add-int/2addr v3, v5

    iput v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 507
    if-nez p2, :cond_6b

    .line 508
    return-object v4

    .line 509
    :cond_6b
    if-nez v1, :cond_78

    .line 510
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    sub-int v5, v2, v0

    invoke-virtual {v3, v4, v0, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 512
    :cond_78
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    sub-int v4, v2, v0

    invoke-virtual {v1, v3, v0, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private blacklist readValue(CZZLcom/android/org/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;
    .registers 22
    .param p1, "delimiter"    # C
    .param p2, "resolveEntities"    # Z
    .param p3, "throwOnResolveFailure"    # Z
    .param p4, "valueContext"    # Lcom/android/org/kxml2/io/KXmlParser$ValueContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1334
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    iget v3, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1335
    .local v3, "start":I
    const/4 v4, 0x0

    .line 1338
    .local v4, "result":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->TEXT:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    if-ne v2, v5, :cond_1c

    iget-object v5, v0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-eqz v5, :cond_1c

    .line 1339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v5

    .line 1340
    iget-object v5, v0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    :cond_1c
    :goto_1c
    iget v5, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    iget v6, v0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    const/4 v7, 0x1

    if-lt v5, v6, :cond_49

    .line 1351
    iget v5, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    if-ge v3, v5, :cond_37

    .line 1352
    if-nez v4, :cond_2f

    .line 1353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v5

    .line 1355
    :cond_2f
    iget-object v5, v0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v6, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1357
    :cond_37
    invoke-direct {v0, v7}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_47

    .line 1358
    if-eqz v4, :cond_44

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_46

    :cond_44
    const-string v5, ""

    :goto_46
    return-object v5

    .line 1360
    :cond_47
    iget v3, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1363
    :cond_49
    iget-object v5, v0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v6, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    aget-char v5, v5, v6

    .line 1365
    .local v5, "c":C
    if-eq v5, v1, :cond_14e

    const/16 v6, 0x3e

    const/16 v8, 0x20

    if-ne v1, v8, :cond_60

    if-le v5, v8, :cond_5c

    if-eq v5, v6, :cond_5c

    goto :goto_60

    :cond_5c
    move/from16 v8, p3

    goto/16 :goto_150

    :cond_60
    :goto_60
    const/16 v9, 0x26

    if-ne v5, v9, :cond_6a

    if-nez p2, :cond_6a

    .line 1368
    move/from16 v8, p3

    goto/16 :goto_150

    .line 1371
    :cond_6a
    const/16 v10, 0x25

    const/16 v11, 0x3c

    const/16 v12, 0xd

    const/16 v13, 0x5d

    const/16 v14, 0xa

    const/4 v15, 0x0

    if-eq v5, v12, :cond_a3

    if-ne v5, v14, :cond_80

    move/from16 v16, v7

    sget-object v7, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    if-eq v2, v7, :cond_a5

    goto :goto_82

    :cond_80
    move/from16 v16, v7

    :goto_82
    if-eq v5, v9, :cond_a5

    if-eq v5, v11, :cond_a5

    if-ne v5, v13, :cond_8c

    sget-object v7, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->TEXT:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    if-eq v2, v7, :cond_a5

    :cond_8c
    if-ne v5, v10, :cond_92

    sget-object v7, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    if-eq v2, v7, :cond_a5

    .line 1377
    :cond_92
    iget-boolean v6, v0, Lcom/android/org/kxml2/io/KXmlParser;->isWhitespace:Z

    if-gt v5, v8, :cond_98

    move/from16 v15, v16

    :cond_98
    and-int/2addr v6, v15

    iput-boolean v6, v0, Lcom/android/org/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1378
    iget v6, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1379
    goto/16 :goto_1c

    .line 1371
    :cond_a3
    move/from16 v16, v7

    .line 1386
    :cond_a5
    if-nez v4, :cond_ad

    .line 1387
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v7

    .line 1389
    :cond_ad
    iget-object v7, v0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v8, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v8, v3

    invoke-virtual {v4, v7, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1391
    const/4 v7, 0x2

    if-ne v5, v12, :cond_e2

    .line 1392
    iget v6, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v6, v6, 0x1

    iget v8, v0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    if-lt v6, v8, :cond_c6

    invoke-direct {v0, v7}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v6

    if-eqz v6, :cond_d6

    :cond_c6
    iget-object v6, v0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v7, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v7, v7, 0x1

    aget-char v6, v6, v7

    if-ne v6, v14, :cond_d6

    .line 1393
    iget v6, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1395
    :cond_d6
    sget-object v6, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    if-ne v2, v6, :cond_dd

    const/16 v8, 0x20

    goto :goto_de

    :cond_dd
    move v8, v14

    :goto_de
    move v5, v8

    move/from16 v8, p3

    goto :goto_130

    .line 1397
    :cond_e2
    if-ne v5, v14, :cond_e9

    .line 1398
    const/16 v5, 0x20

    move/from16 v8, p3

    goto :goto_130

    .line 1400
    :cond_e9
    if-ne v5, v9, :cond_f6

    .line 1401
    iput-boolean v15, v0, Lcom/android/org/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1402
    move/from16 v8, p3

    invoke-direct {v0, v4, v15, v8, v2}, Lcom/android/org/kxml2/io/KXmlParser;->readEntity(Ljava/lang/StringBuilder;ZZLcom/android/org/kxml2/io/KXmlParser$ValueContext;)V

    .line 1403
    iget v3, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1404
    goto/16 :goto_1c

    .line 1406
    :cond_f6
    move/from16 v8, p3

    if-ne v5, v11, :cond_106

    .line 1407
    sget-object v6, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    if-ne v2, v6, :cond_103

    .line 1408
    const-string v6, "Illegal: \"<\" inside attribute value"

    invoke-direct {v0, v6}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1410
    :cond_103
    iput-boolean v15, v0, Lcom/android/org/kxml2/io/KXmlParser;->isWhitespace:Z

    goto :goto_130

    .line 1412
    :cond_106
    if-ne v5, v13, :cond_13d

    .line 1413
    iget v9, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v9, v7

    iget v10, v0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    if-lt v9, v10, :cond_116

    const/4 v9, 0x3

    invoke-direct {v0, v9}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v9

    if-eqz v9, :cond_12e

    :cond_116
    iget-object v9, v0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v10, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v10, v10, 0x1

    aget-char v9, v9, v10

    if-ne v9, v13, :cond_12e

    iget-object v9, v0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v10, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v10, v7

    aget-char v7, v9, v10

    if-ne v7, v6, :cond_12e

    .line 1415
    const-string v6, "Illegal: \"]]>\" outside CDATA section"

    invoke-direct {v0, v6}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1417
    :cond_12e
    iput-boolean v15, v0, Lcom/android/org/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1427
    :goto_130
    iget v6, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1428
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1429
    iget v3, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1430
    .end local v5    # "c":C
    goto/16 :goto_1c

    .line 1419
    .restart local v5    # "c":C
    :cond_13d
    if-ne v5, v10, :cond_148

    .line 1420
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "This parser doesn\'t support parameter entities"

    const/4 v9, 0x0

    invoke-direct {v6, v7, v0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v6

    .line 1424
    :cond_148
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1365
    :cond_14e
    move/from16 v8, p3

    .line 1432
    .end local v5    # "c":C
    :goto_150
    if-nez v4, :cond_15e

    .line 1433
    iget-object v5, v0, Lcom/android/org/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    iget-object v6, v0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v7, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v7, v3

    invoke-virtual {v5, v6, v3, v7}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1435
    :cond_15e
    iget-object v5, v0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v6, v0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1436
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private blacklist readXmlDeclaration()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 521
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferStartLine:I

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferStartColumn:I

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    if-eqz v0, :cond_11

    .line 522
    :cond_c
    const-string v0, "processing instructions must not start with xml"

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 525
    :cond_11
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->read([C)V

    .line 526
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->parseStartTag(ZZ)V

    .line 528
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    const/4 v2, 0x2

    if-lt v1, v0, :cond_2b

    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v2

    const-string v3, "version"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 529
    :cond_2b
    const-string v1, "version expected"

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 532
    :cond_30
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 534
    const/4 v1, 0x1

    .line 536
    .local v1, "pos":I
    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v1, v4, :cond_52

    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const-string v5, "encoding"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 537
    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 538
    add-int/lit8 v1, v1, 0x1

    .line 541
    :cond_52
    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v1, v4, :cond_9e

    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v2

    aget-object v2, v4, v5

    const-string v4, "standalone"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 542
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v3

    aget-object v2, v2, v4

    .line 543
    .local v2, "st":Ljava/lang/String;
    const-string v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 544
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_9c

    .line 545
    :cond_79
    const-string v3, "no"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 546
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_9c

    .line 548
    :cond_86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal standalone value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 550
    :goto_9c
    add-int/lit8 v1, v1, 0x1

    .line 553
    .end local v2    # "st":Ljava/lang/String;
    :cond_9e
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    if-eq v1, v2, :cond_a7

    .line 554
    const-string v2, "unexpected attributes in XML declaration"

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 557
    :cond_a7
    iput-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 559
    return-void
.end method

.method private blacklist skip()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1594
    nop

    :goto_1
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_e

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1595
    :cond_e
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    aget-char v0, v0, v1

    .line 1596
    .local v0, "c":I
    const/16 v1, 0x20

    if-le v0, v1, :cond_1a

    .line 1597
    nop

    .line 1601
    .end local v0    # "c":I
    :cond_19
    return-void

    .line 1599
    .restart local v0    # "c":I
    :cond_1a
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1600
    .end local v0    # "c":I
    goto :goto_1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1756
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_9

    .line 1757
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1759
    :cond_9
    return-void
.end method

.method public whitelist test-api defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1779
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->processDocDecl:Z

    if-nez v0, :cond_25

    .line 1783
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_1d

    .line 1787
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    if-nez v0, :cond_13

    .line 1788
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    .line 1790
    :cond_13
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    return-void

    .line 1784
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity replacement text must be defined after setInput()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1780
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity replacement text may not be defined with DOCTYPE processing enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getAttributeCount()I
    .registers 2

    .line 1993
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    return v0
.end method

.method public whitelist test-api getAttributeName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 2012
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    if-ge p1, v0, :cond_d

    .line 2015
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0

    .line 2013
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getAttributeNamespace(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 2005
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    if-ge p1, v0, :cond_b

    .line 2008
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    aget-object v0, v0, v1

    return-object v0

    .line 2006
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getAttributePrefix(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 2019
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    if-ge p1, v0, :cond_d

    .line 2022
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 2020
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getAttributeType(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 1997
    const-string v0, "CDATA"

    return-object v0
.end method

.method public whitelist test-api getAttributeValue(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 2026
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    if-ge p1, v0, :cond_d

    .line 2029
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0

    .line 2027
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 2033
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x4

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_2a

    .line 2034
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    if-eqz p1, :cond_20

    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 2035
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2036
    :cond_20
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    return-object v1

    .line 2033
    :cond_27
    add-int/lit8 v0, v0, -0x4

    goto :goto_6

    .line 2040
    .end local v0    # "i":I
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getColumnNumber()I
    .registers 5

    .line 1932
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferStartColumn:I

    .line 1933
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    if-ge v1, v2, :cond_16

    .line 1934
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    .line 1935
    const/4 v0, 0x0

    goto :goto_13

    .line 1937
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 1933
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1940
    .end local v1    # "i":I
    :cond_16
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public whitelist test-api getDepth()I
    .registers 2

    .line 1865
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    return v0
.end method

.method public whitelist test-api getEventType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2044
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 3
    .param p1, "feature"    # Ljava/lang/String;

    .line 1762
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1763
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->processNsp:Z

    return v0

    .line 1764
    :cond_b
    const-string v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1765
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->relaxed:Z

    return v0

    .line 1766
    :cond_16
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1767
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->processDocDecl:Z

    return v0

    .line 1769
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getInputEncoding()Ljava/lang/String;
    .registers 2

    .line 1774
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 5

    .line 1922
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferStartLine:I

    .line 1923
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    if-ge v1, v2, :cond_14

    .line 1924
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    .line 1925
    add-int/lit8 v0, v0, 0x1

    .line 1923
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1928
    .end local v1    # "i":I
    :cond_14
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 1978
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .registers 2

    .line 1974
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;

    .line 1845
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1846
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    return-object v0

    .line 1848
    :cond_b
    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1849
    const-string v0, "http://www.w3.org/2000/xmlns/"

    return-object v0

    .line 1852
    :cond_16
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    invoke-virtual {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->getNamespaceCount(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x2

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_45

    .line 1853
    if-nez p1, :cond_31

    .line 1854
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_42

    .line 1855
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    return-object v1

    .line 1857
    :cond_31
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1858
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    return-object v1

    .line 1852
    :cond_42
    add-int/lit8 v0, v0, -0x2

    goto :goto_20

    .line 1861
    .end local v0    # "i":I
    :cond_45
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getNamespaceCount(I)I
    .registers 3
    .param p1, "depth"    # I

    .line 1830
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    if-gt p1, v0, :cond_9

    .line 1833
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspCounts:[I

    aget v0, v0, p1

    return v0

    .line 1831
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getNamespacePrefix(I)Ljava/lang/String;
    .registers 4
    .param p1, "pos"    # I

    .line 1837
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api getNamespaceUri(I)Ljava/lang/String;
    .registers 4
    .param p1, "pos"    # I

    .line 1841
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api getPositionDescription()Ljava/lang/String;
    .registers 11

    .line 1869
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    sget-object v2, Lcom/android/org/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_10

    sget-object v1, Lcom/android/org/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    aget-object v1, v1, v2

    goto :goto_12

    :cond_10
    const-string v1, "unknown"

    :goto_12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1870
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1872
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v3, 0x2

    const-string v4, ":"

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v2, v3, :cond_70

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    if-ne v2, v6, :cond_28

    goto :goto_70

    .line 1896
    :cond_28
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2f

    :goto_2d
    goto/16 :goto_129

    .line 1898
    :cond_2f
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    if-eq v1, v5, :cond_3c

    .line 1899
    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_129

    .line 1900
    :cond_3c
    iget-boolean v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v1, :cond_47

    .line 1901
    const-string v1, "(whitespace)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_129

    .line 1903
    :cond_47
    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1904
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_6b

    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1907
    :cond_6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_129

    .line 1873
    .end local v1    # "text":Ljava/lang/String;
    :cond_70
    :goto_70
    iget-boolean v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->degenerated:Z

    if-eqz v2, :cond_79

    .line 1874
    const-string v2, "(empty) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    :cond_79
    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1877
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    if-ne v2, v6, :cond_87

    .line 1878
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1881
    :cond_87
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    const-string v3, "}"

    const-string v6, "{"

    if-eqz v2, :cond_b3

    .line 1882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    :cond_b3
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    iget v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/2addr v2, v5

    .line 1887
    .local v2, "cnt":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_bc
    if-ge v5, v2, :cond_122

    .line 1888
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1889
    iget-object v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v8, v5, 0x1

    aget-object v7, v7, v8

    if-eqz v7, :cond_f3

    .line 1890
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    :cond_f3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1887
    add-int/lit8 v5, v5, 0x4

    goto :goto_bc

    .line 1895
    .end local v5    # "i":I
    :cond_122
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v2    # "cnt":I
    goto/16 :goto_2d

    .line 1910
    :goto_129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlParser;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlParser;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    const-string v2, " in "

    if-eqz v1, :cond_15e

    .line 1912
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16e

    .line 1914
    :cond_15e
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v1, :cond_16e

    .line 1915
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    :cond_16e
    :goto_16e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .registers 2

    .line 1982
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "property"    # Ljava/lang/String;

    .line 1794
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1795
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    return-object v0

    .line 1796
    :cond_b
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1797
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    return-object v0

    .line 1798
    :cond_16
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1799
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    goto :goto_2b

    :cond_25
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    return-object v0

    .line 1801
    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPublicId()Ljava/lang/String;
    .registers 2

    .line 1826
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRootElementName()Ljava/lang/String;
    .registers 2

    .line 1810
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->rootElementName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSystemId()Ljava/lang/String;
    .registers 2

    .line 1818
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getText()Ljava/lang/String;
    .registers 3

    .line 1951
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_19

    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->unresolved:Z

    if-eqz v0, :cond_f

    goto :goto_19

    .line 1953
    :cond_f
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 1954
    const-string v0, ""

    return-object v0

    .line 1956
    :cond_16
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    return-object v0

    .line 1952
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getTextCharacters([I)[C
    .registers 6
    .param p1, "poslen"    # [I

    .line 1961
    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1962
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 1963
    const/4 v3, -0x1

    aput v3, p1, v2

    .line 1964
    aput v3, p1, v1

    .line 1965
    const/4 v1, 0x0

    return-object v1

    .line 1967
    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1968
    .local v3, "result":[C
    aput v2, p1, v2

    .line 1969
    array-length v2, v3

    aput v2, p1, v1

    .line 1970
    return-object v3
.end method

.method public whitelist test-api isAttributeDefault(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 2001
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isEmptyElementTag()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1986
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 1989
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->degenerated:Z

    return v0

    .line 1987
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Wrong event type"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist test-api isWhitespace()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1944
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_19

    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    goto :goto_19

    .line 1945
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Wrong event type"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1947
    :cond_19
    :goto_19
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->isWhitespace:Z

    return v0
.end method

.method public blacklist keepNamespaceAttributes()V
    .registers 2

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->keepNamespaceAttributes:Z

    .line 192
    return-void
.end method

.method public whitelist test-api next()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->next(Z)I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextTag()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2050
    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlParser;->next()I

    .line 2051
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v0, :cond_f

    .line 2052
    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlParser;->next()I

    .line 2055
    :cond_f
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    goto :goto_23

    .line 2056
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "unexpected type"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2059
    :cond_23
    :goto_23
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public whitelist test-api nextText()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2073
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_26

    .line 2077
    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlParser;->next()I

    .line 2080
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    .line 2081
    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2082
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlParser;->next()I

    goto :goto_18

    .line 2084
    .end local v0    # "result":Ljava/lang/String;
    :cond_16
    const-string v0, ""

    .line 2087
    .restart local v0    # "result":Ljava/lang/String;
    :goto_18
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1e

    .line 2091
    return-object v0

    .line 2088
    :cond_1e
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "END_TAG expected"

    invoke-direct {v1, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2074
    .end local v0    # "result":Ljava/lang/String;
    :cond_26
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "precondition: START_TAG"

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist test-api nextToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlParser;->next(Z)I

    move-result v0

    return v0
.end method

.method public whitelist test-api require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2064
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    if-ne p1, v0, :cond_1d

    if-eqz p2, :cond_10

    .line 2065
    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_10
    if-eqz p3, :cond_1c

    .line 2066
    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2070
    :cond_1c
    return-void

    .line 2067
    :cond_1d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/org/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2095
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2096
    iput-boolean p2, p0, Lcom/android/org/kxml2/io/KXmlParser;->processNsp:Z

    goto :goto_20

    .line 2097
    :cond_b
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2098
    iput-boolean p2, p0, Lcom/android/org/kxml2/io/KXmlParser;->processDocDecl:Z

    goto :goto_20

    .line 2099
    :cond_16
    const-string v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2100
    iput-boolean p2, p0, Lcom/android/org/kxml2/io/KXmlParser;->relaxed:Z

    .line 2104
    :goto_20
    return-void

    .line 2102
    :cond_21
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist test-api setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 16
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1631
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1632
    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 1633
    const/4 v1, 0x1

    if-nez p2, :cond_a

    move v2, v1

    goto :goto_b

    :cond_a
    move v2, v0

    .line 1635
    .local v2, "detectCharset":Z
    :goto_b
    if-eqz p1, :cond_151

    .line 1640
    const-string v3, "UTF-8"

    if-eqz v2, :cond_10b

    .line 1642
    const/4 v4, 0x0

    .line 1643
    .local v4, "firstFourBytes":I
    :goto_12
    :try_start_12
    iget v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    const/4 v6, 0x4

    const/4 v7, -0x1

    if-ge v5, v6, :cond_2f

    .line 1644
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 1645
    .local v5, "i":I
    if-ne v5, v7, :cond_1f

    .line 1646
    goto :goto_2f

    .line 1648
    :cond_1f
    shl-int/lit8 v6, v4, 0x8

    or-int v4, v6, v5

    .line 1649
    iget-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    int-to-char v8, v5

    aput-char v8, v6, v7

    .line 1650
    .end local v5    # "i":I
    goto :goto_12

    .line 1652
    :cond_2f
    :goto_2f
    iget v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_31} :catch_137

    if-ne v5, v6, :cond_10b

    .line 1653
    const/16 v5, 0x3f

    const-string v6, "UTF-16LE"

    const-string v8, "UTF-16BE"

    const-string v9, "UTF-32BE"

    const-string v10, "UTF-32LE"

    const/4 v11, 0x2

    const/16 v12, 0x3c

    sparse-switch v4, :sswitch_data_15a

    .line 1715
    const/high16 v5, -0x10000

    and-int v7, v4, v5

    const/high16 v9, -0x1010000

    const/4 v10, 0x3

    if-ne v7, v9, :cond_e0

    .line 1716
    goto/16 :goto_cc

    .line 1692
    :goto_4e
    :sswitch_4e
    :try_start_4e
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 1693
    .restart local v5    # "i":I
    if-ne v5, v7, :cond_56

    .line 1694
    goto/16 :goto_10b

    .line 1696
    :cond_56
    iget-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    int-to-char v9, v5

    aput-char v9, v6, v8

    .line 1697
    const/16 v6, 0x3e

    if-ne v5, v6, :cond_9a

    .line 1698
    new-instance v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v9, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    invoke-direct {v6, v8, v0, v9}, Ljava/lang/String;-><init>([CII)V

    .line 1699
    .local v6, "s":Ljava/lang/String;
    const-string v8, "encoding"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1700
    .local v8, "i0":I
    if-eq v8, v7, :cond_10b

    .line 1701
    :goto_76
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x22

    if-eq v7, v9, :cond_89

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x27

    if-eq v7, v9, :cond_89

    .line 1702
    add-int/lit8 v8, v8, 0x1

    goto :goto_76

    .line 1704
    :cond_89
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i0":I
    .local v7, "i0":I
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1705
    .local v8, "deli":C
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 1706
    .local v9, "i1":I
    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object p2, v10

    .line 1707
    .end local v8    # "deli":C
    .end local v9    # "i1":I
    goto/16 :goto_10b

    .line 1710
    .end local v5    # "i":I
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "i0":I
    :cond_9a
    goto :goto_4e

    .line 1684
    :sswitch_9b
    move-object p2, v6

    .line 1685
    iget-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    aput-char v12, v6, v0

    .line 1686
    iget-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    aput-char v5, v6, v1

    .line 1687
    iput v11, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 1688
    goto/16 :goto_10b

    .line 1671
    :sswitch_a8
    move-object p2, v10

    .line 1672
    iget-object v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    aput-char v12, v5, v0

    .line 1673
    iput v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 1674
    goto :goto_10b

    .line 1677
    :sswitch_b0
    move-object p2, v8

    .line 1678
    iget-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    aput-char v12, v6, v0

    .line 1679
    iget-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    aput-char v5, v6, v1

    .line 1680
    iput v11, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 1681
    goto :goto_10b

    .line 1655
    :sswitch_bc
    move-object p2, v9

    .line 1656
    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 1657
    goto :goto_10b

    .line 1665
    :sswitch_c0
    move-object p2, v9

    .line 1666
    iget-object v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    aput-char v12, v5, v0

    .line 1667
    iput v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 1668
    goto :goto_10b

    .line 1660
    :sswitch_c8
    move-object p2, v10

    .line 1661
    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 1662
    goto :goto_10b

    .line 1716
    :goto_cc
    move-object p2, v8

    .line 1717
    iget-object v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    aget-char v6, v6, v11

    shl-int/lit8 v6, v6, 0x8

    iget-object v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    aget-char v7, v7, v10

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v5, v0

    .line 1718
    iput v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    goto :goto_10b

    .line 1719
    :cond_e0
    and-int/2addr v5, v4

    const/high16 v7, -0x20000

    if-ne v5, v7, :cond_f9

    .line 1720
    move-object p2, v6

    .line 1721
    iget-object v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    aget-char v6, v6, v10

    shl-int/lit8 v6, v6, 0x8

    iget-object v7, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    aget-char v7, v7, v11

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v5, v0

    .line 1722
    iput v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    goto :goto_10b

    .line 1723
    :cond_f9
    and-int/lit16 v5, v4, -0x100

    const v6, -0x10444100

    if-ne v5, v6, :cond_10b

    .line 1724
    move-object p2, v3

    .line 1725
    iget-object v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget-object v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    aget-char v6, v6, v10

    aput-char v6, v5, v0

    .line 1726
    iput v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 1732
    .end local v4    # "firstFourBytes":I
    :cond_10b
    :goto_10b
    if-nez p2, :cond_10e

    .line 1733
    move-object p2, v3

    .line 1736
    :cond_10e
    iget v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 1737
    .local v3, "savedLimit":I
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/org/kxml2/io/KXmlParser;->setInput(Ljava/io/Reader;)V

    .line 1738
    iput-object p2, p0, Lcom/android/org/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 1739
    iput v3, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 1746
    if-nez v2, :cond_135

    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v4

    const v5, 0xfeff

    if-ne v4, v5, :cond_135

    .line 1747
    iget v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 1748
    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget-object v5, p0, Lcom/android/org/kxml2/io/KXmlParser;->buffer:[C

    iget v6, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    invoke-static {v4, v1, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_135} :catch_137

    .line 1752
    .end local v3    # "savedLimit":I
    :cond_135
    nop

    .line 1753
    return-void

    .line 1750
    :catch_137
    move-exception v0

    .line 1751
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid stream or encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1636
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "is == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_15a
    .sparse-switch
        -0x20000 -> :sswitch_c8
        0x3c -> :sswitch_c0
        0xfeff -> :sswitch_bc
        0x3c003f -> :sswitch_b0
        0x3c000000 -> :sswitch_a8
        0x3c003f00 -> :sswitch_9b
        0x3c3f786d -> :sswitch_4e
    .end sparse-switch
.end method

.method public whitelist test-api setInput(Ljava/io/Reader;)V
    .registers 5
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1606
    iput-object p1, p0, Lcom/android/org/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    .line 1608
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->type:I

    .line 1609
    iput-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->parsedTopLevelStartTag:Z

    .line 1610
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 1611
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 1612
    iput-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->degenerated:Z

    .line 1613
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/org/kxml2/io/KXmlParser;->attributeCount:I

    .line 1614
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 1615
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 1616
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    .line 1618
    if-nez p1, :cond_1a

    .line 1619
    return-void

    .line 1622
    :cond_1a
    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->position:I

    .line 1623
    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->limit:I

    .line 1624
    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferStartLine:I

    .line 1625
    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->bufferStartColumn:I

    .line 1626
    iput v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->depth:I

    .line 1627
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    .line 1628
    return-void
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2107
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2108
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    .line 2112
    return-void

    .line 2110
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
