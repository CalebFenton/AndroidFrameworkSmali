.class public Lorg/ccil/cowan/tagsoup/XMLWriter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "XMLWriter.java"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field public static final CDATA_SECTION_ELEMENTS:Ljava/lang/String; = "cdata-section-elements"

.field public static final DOCTYPE_PUBLIC:Ljava/lang/String; = "doctype-public"

.field public static final DOCTYPE_SYSTEM:Ljava/lang/String; = "doctype-system"

.field public static final ENCODING:Ljava/lang/String; = "encoding"

.field public static final INDENT:Ljava/lang/String; = "indent"

.field public static final MEDIA_TYPE:Ljava/lang/String; = "media-type"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final OMIT_XML_DECLARATION:Ljava/lang/String; = "omit-xml-declaration"

.field public static final STANDALONE:Ljava/lang/String; = "standalone"

.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final EMPTY_ATTS:Lorg/xml/sax/Attributes;

.field private booleans:[Ljava/lang/String;

.field private cdataElement:Z

.field private doneDeclTable:Ljava/util/Hashtable;

.field private elementLevel:I

.field private forceDTD:Z

.field private forcedDeclTable:Ljava/util/Hashtable;

.field private hasOutputDTD:Z

.field private htmlMode:Z

.field private nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

.field private output:Ljava/io/Writer;

.field private outputEncoding:Ljava/lang/String;

.field private outputProperties:Ljava/util/Properties;

.field private overridePublic:Ljava/lang/String;

.field private overrideSystem:Ljava/lang/String;

.field private prefixCounter:I

.field private prefixTable:Ljava/util/Hashtable;

.field private standalone:Ljava/lang/String;

.field private unicodeMode:Z

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 266
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    #@5
    .line 1175
    const/16 v0, 0xd

    #@7
    new-array v0, v0, [Ljava/lang/String;

    #@9
    const-string/jumbo v1, "checked"

    #@c
    aput-object v1, v0, v3

    #@e
    const-string/jumbo v1, "compact"

    #@11
    const/4 v2, 0x1

    #@12
    aput-object v1, v0, v2

    #@14
    const-string/jumbo v1, "declare"

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    const-string/jumbo v1, "defer"

    #@1d
    const/4 v2, 0x3

    #@1e
    aput-object v1, v0, v2

    #@20
    .line 1176
    const-string/jumbo v1, "disabled"

    #@23
    const/4 v2, 0x4

    #@24
    aput-object v1, v0, v2

    #@26
    const-string/jumbo v1, "ismap"

    #@29
    const/4 v2, 0x5

    #@2a
    aput-object v1, v0, v2

    #@2c
    const-string/jumbo v1, "multiple"

    #@2f
    const/4 v2, 0x6

    #@30
    aput-object v1, v0, v2

    #@32
    .line 1177
    const-string/jumbo v1, "nohref"

    #@35
    const/4 v2, 0x7

    #@36
    aput-object v1, v0, v2

    #@38
    const-string/jumbo v1, "noresize"

    #@3b
    const/16 v2, 0x8

    #@3d
    aput-object v1, v0, v2

    #@3f
    const-string/jumbo v1, "noshade"

    #@42
    const/16 v2, 0x9

    #@44
    aput-object v1, v0, v2

    #@46
    .line 1178
    const-string/jumbo v1, "nowrap"

    #@49
    const/16 v2, 0xa

    #@4b
    aput-object v1, v0, v2

    #@4d
    const-string/jumbo v1, "readonly"

    #@50
    const/16 v2, 0xb

    #@52
    aput-object v1, v0, v2

    #@54
    const-string/jumbo v1, "selected"

    #@57
    const/16 v2, 0xc

    #@59
    aput-object v1, v0, v2

    #@5b
    .line 1175
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    #@5d
    .line 1395
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    #@5f
    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    #@62
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    #@64
    .line 1417
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    #@66
    .line 1420
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    #@68
    .line 1422
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    #@6a
    .line 1423
    const-string/jumbo v0, ""

    #@6d
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    #@6f
    .line 1424
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    #@71
    .line 1425
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    #@73
    .line 1426
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    #@75
    .line 1427
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    #@77
    .line 1428
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    #@79
    .line 1429
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    #@7b
    .line 1430
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    #@7d
    .line 1431
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    #@7f
    .line 268
    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->init(Ljava/io/Writer;)V

    #@82
    .line 266
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 280
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    #@5
    .line 1175
    const/16 v0, 0xd

    #@7
    new-array v0, v0, [Ljava/lang/String;

    #@9
    const-string/jumbo v1, "checked"

    #@c
    aput-object v1, v0, v3

    #@e
    const-string/jumbo v1, "compact"

    #@11
    const/4 v2, 0x1

    #@12
    aput-object v1, v0, v2

    #@14
    const-string/jumbo v1, "declare"

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    const-string/jumbo v1, "defer"

    #@1d
    const/4 v2, 0x3

    #@1e
    aput-object v1, v0, v2

    #@20
    .line 1176
    const-string/jumbo v1, "disabled"

    #@23
    const/4 v2, 0x4

    #@24
    aput-object v1, v0, v2

    #@26
    const-string/jumbo v1, "ismap"

    #@29
    const/4 v2, 0x5

    #@2a
    aput-object v1, v0, v2

    #@2c
    const-string/jumbo v1, "multiple"

    #@2f
    const/4 v2, 0x6

    #@30
    aput-object v1, v0, v2

    #@32
    .line 1177
    const-string/jumbo v1, "nohref"

    #@35
    const/4 v2, 0x7

    #@36
    aput-object v1, v0, v2

    #@38
    const-string/jumbo v1, "noresize"

    #@3b
    const/16 v2, 0x8

    #@3d
    aput-object v1, v0, v2

    #@3f
    const-string/jumbo v1, "noshade"

    #@42
    const/16 v2, 0x9

    #@44
    aput-object v1, v0, v2

    #@46
    .line 1178
    const-string/jumbo v1, "nowrap"

    #@49
    const/16 v2, 0xa

    #@4b
    aput-object v1, v0, v2

    #@4d
    const-string/jumbo v1, "readonly"

    #@50
    const/16 v2, 0xb

    #@52
    aput-object v1, v0, v2

    #@54
    const-string/jumbo v1, "selected"

    #@57
    const/16 v2, 0xc

    #@59
    aput-object v1, v0, v2

    #@5b
    .line 1175
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    #@5d
    .line 1395
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    #@5f
    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    #@62
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    #@64
    .line 1417
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    #@66
    .line 1420
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    #@68
    .line 1422
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    #@6a
    .line 1423
    const-string/jumbo v0, ""

    #@6d
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    #@6f
    .line 1424
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    #@71
    .line 1425
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    #@73
    .line 1426
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    #@75
    .line 1427
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    #@77
    .line 1428
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    #@79
    .line 1429
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    #@7b
    .line 1430
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    #@7d
    .line 1431
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    #@7f
    .line 282
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->init(Ljava/io/Writer;)V

    #@82
    .line 280
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 5
    .param p1, "xmlreader"    # Lorg/xml/sax/XMLReader;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 296
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    #@5
    .line 1175
    const/16 v0, 0xd

    #@7
    new-array v0, v0, [Ljava/lang/String;

    #@9
    const-string/jumbo v1, "checked"

    #@c
    aput-object v1, v0, v3

    #@e
    const-string/jumbo v1, "compact"

    #@11
    const/4 v2, 0x1

    #@12
    aput-object v1, v0, v2

    #@14
    const-string/jumbo v1, "declare"

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    const-string/jumbo v1, "defer"

    #@1d
    const/4 v2, 0x3

    #@1e
    aput-object v1, v0, v2

    #@20
    .line 1176
    const-string/jumbo v1, "disabled"

    #@23
    const/4 v2, 0x4

    #@24
    aput-object v1, v0, v2

    #@26
    const-string/jumbo v1, "ismap"

    #@29
    const/4 v2, 0x5

    #@2a
    aput-object v1, v0, v2

    #@2c
    const-string/jumbo v1, "multiple"

    #@2f
    const/4 v2, 0x6

    #@30
    aput-object v1, v0, v2

    #@32
    .line 1177
    const-string/jumbo v1, "nohref"

    #@35
    const/4 v2, 0x7

    #@36
    aput-object v1, v0, v2

    #@38
    const-string/jumbo v1, "noresize"

    #@3b
    const/16 v2, 0x8

    #@3d
    aput-object v1, v0, v2

    #@3f
    const-string/jumbo v1, "noshade"

    #@42
    const/16 v2, 0x9

    #@44
    aput-object v1, v0, v2

    #@46
    .line 1178
    const-string/jumbo v1, "nowrap"

    #@49
    const/16 v2, 0xa

    #@4b
    aput-object v1, v0, v2

    #@4d
    const-string/jumbo v1, "readonly"

    #@50
    const/16 v2, 0xb

    #@52
    aput-object v1, v0, v2

    #@54
    const-string/jumbo v1, "selected"

    #@57
    const/16 v2, 0xc

    #@59
    aput-object v1, v0, v2

    #@5b
    .line 1175
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    #@5d
    .line 1395
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    #@5f
    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    #@62
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    #@64
    .line 1417
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    #@66
    .line 1420
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    #@68
    .line 1422
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    #@6a
    .line 1423
    const-string/jumbo v0, ""

    #@6d
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    #@6f
    .line 1424
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    #@71
    .line 1425
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    #@73
    .line 1426
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    #@75
    .line 1427
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    #@77
    .line 1428
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    #@79
    .line 1429
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    #@7b
    .line 1430
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    #@7d
    .line 1431
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    #@7f
    .line 297
    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->init(Ljava/io/Writer;)V

    #@82
    .line 294
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Ljava/io/Writer;)V
    .locals 5
    .param p1, "xmlreader"    # Lorg/xml/sax/XMLReader;
    .param p2, "writer"    # Ljava/io/Writer;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 314
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    #@5
    .line 1175
    const/16 v0, 0xd

    #@7
    new-array v0, v0, [Ljava/lang/String;

    #@9
    const-string/jumbo v1, "checked"

    #@c
    aput-object v1, v0, v3

    #@e
    const-string/jumbo v1, "compact"

    #@11
    const/4 v2, 0x1

    #@12
    aput-object v1, v0, v2

    #@14
    const-string/jumbo v1, "declare"

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    const-string/jumbo v1, "defer"

    #@1d
    const/4 v2, 0x3

    #@1e
    aput-object v1, v0, v2

    #@20
    .line 1176
    const-string/jumbo v1, "disabled"

    #@23
    const/4 v2, 0x4

    #@24
    aput-object v1, v0, v2

    #@26
    const-string/jumbo v1, "ismap"

    #@29
    const/4 v2, 0x5

    #@2a
    aput-object v1, v0, v2

    #@2c
    const-string/jumbo v1, "multiple"

    #@2f
    const/4 v2, 0x6

    #@30
    aput-object v1, v0, v2

    #@32
    .line 1177
    const-string/jumbo v1, "nohref"

    #@35
    const/4 v2, 0x7

    #@36
    aput-object v1, v0, v2

    #@38
    const-string/jumbo v1, "noresize"

    #@3b
    const/16 v2, 0x8

    #@3d
    aput-object v1, v0, v2

    #@3f
    const-string/jumbo v1, "noshade"

    #@42
    const/16 v2, 0x9

    #@44
    aput-object v1, v0, v2

    #@46
    .line 1178
    const-string/jumbo v1, "nowrap"

    #@49
    const/16 v2, 0xa

    #@4b
    aput-object v1, v0, v2

    #@4d
    const-string/jumbo v1, "readonly"

    #@50
    const/16 v2, 0xb

    #@52
    aput-object v1, v0, v2

    #@54
    const-string/jumbo v1, "selected"

    #@57
    const/16 v2, 0xc

    #@59
    aput-object v1, v0, v2

    #@5b
    .line 1175
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    #@5d
    .line 1395
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    #@5f
    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    #@62
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    #@64
    .line 1417
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    #@66
    .line 1420
    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    #@68
    .line 1422
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    #@6a
    .line 1423
    const-string/jumbo v0, ""

    #@6d
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    #@6f
    .line 1424
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    #@71
    .line 1425
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    #@73
    .line 1426
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    #@75
    .line 1427
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    #@77
    .line 1428
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    #@79
    .line 1429
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    #@7b
    .line 1430
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    #@7d
    .line 1431
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    #@7f
    .line 315
    invoke-direct {p0, p2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->init(Ljava/io/Writer;)V

    #@82
    .line 312
    return-void
.end method

.method private booleanAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "qName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1183
    move-object v2, p1

    #@2
    .line 1184
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    #@4
    .line 1185
    const/16 v3, 0x3a

    #@6
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v0

    #@a
    .line 1186
    .local v0, "i":I
    const/4 v3, -0x1

    #@b
    if-eq v0, v3, :cond_0

    #@d
    add-int/lit8 v3, v0, 0x1

    #@f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@12
    move-result v4

    #@13
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 1188
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-nez v3, :cond_1

    #@1d
    return v5

    #@1e
    .line 1189
    :cond_1
    const/4 v1, 0x0

    #@1f
    .local v1, "j":I
    :goto_0
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    #@21
    array-length v3, v3

    #@22
    if-ge v1, v3, :cond_3

    #@24
    .line 1190
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    #@26
    aget-object v3, v3, v1

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_2

    #@2e
    const/4 v3, 0x1

    #@2f
    return v3

    #@30
    .line 1189
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 1192
    :cond_3
    return v5
.end method

.method private doPrefix(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "qName"    # Ljava/lang/String;
    .param p3, "isElement"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1060
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@3
    const-string/jumbo v4, ""

    #@6
    invoke-virtual {v3, v4}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1061
    .local v0, "defaultNS":Ljava/lang/String;
    const-string/jumbo v3, ""

    #@d
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 1062
    if-eqz p3, :cond_0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 1063
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@19
    const-string/jumbo v4, ""

    #@1c
    const-string/jumbo v5, ""

    #@1f
    invoke-virtual {v3, v4, v5}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@22
    .line 1064
    :cond_0
    return-object v6

    #@23
    .line 1067
    :cond_1
    if-eqz p3, :cond_2

    #@25
    if-eqz v0, :cond_2

    #@27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 1068
    const-string/jumbo v2, ""

    #@30
    .line 1072
    .local v2, "prefix":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_3

    #@32
    .line 1073
    return-object v2

    #@33
    .line 1070
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@35
    invoke-virtual {v3, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@3a
    .line 1075
    :cond_3
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->doneDeclTable:Ljava/util/Hashtable;

    #@3c
    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    .end local v2    # "prefix":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    #@42
    .line 1076
    .restart local v2    # "prefix":Ljava/lang/String;
    if-eqz v2, :cond_7

    #@44
    .line 1077
    if-eqz p3, :cond_4

    #@46
    if-eqz v0, :cond_5

    #@48
    .line 1078
    :cond_4
    const-string/jumbo v3, ""

    #@4b
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v3

    #@4f
    .line 1077
    if-nez v3, :cond_6

    #@51
    .line 1078
    :cond_5
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@53
    invoke-virtual {v3, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    if-eqz v3, :cond_7

    #@59
    .line 1079
    :cond_6
    const/4 v2, 0x0

    #@5a
    .line 1081
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_7
    if-nez v2, :cond_b

    #@5c
    .line 1082
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixTable:Ljava/util/Hashtable;

    #@5e
    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    move-result-object v2

    #@62
    check-cast v2, Ljava/lang/String;

    #@64
    .line 1083
    .restart local v2    # "prefix":Ljava/lang/String;
    if-eqz v2, :cond_b

    #@66
    .line 1084
    if-eqz p3, :cond_8

    #@68
    if-eqz v0, :cond_9

    #@6a
    .line 1085
    :cond_8
    const-string/jumbo v3, ""

    #@6d
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v3

    #@71
    .line 1084
    if-nez v3, :cond_a

    #@73
    .line 1085
    :cond_9
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@75
    invoke-virtual {v3, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    if-eqz v3, :cond_b

    #@7b
    .line 1086
    :cond_a
    const/4 v2, 0x0

    #@7c
    .line 1089
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_b
    if-nez v2, :cond_c

    #@7e
    if-eqz p2, :cond_c

    #@80
    const-string/jumbo v3, ""

    #@83
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v3

    #@87
    if-eqz v3, :cond_e

    #@89
    .line 1100
    :cond_c
    :goto_1
    if-eqz v2, :cond_d

    #@8b
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@8d
    invoke-virtual {v3, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@90
    move-result-object v3

    #@91
    if-eqz v3, :cond_10

    #@93
    .line 1101
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v4, "__NS"

    #@9b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v3

    #@9f
    iget v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    #@a1
    add-int/lit8 v4, v4, 0x1

    #@a3
    iput v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    #@a5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v3

    #@a9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v2

    #@ad
    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_1

    #@ae
    .line 1090
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_e
    const/16 v3, 0x3a

    #@b0
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    #@b3
    move-result v1

    #@b4
    .line 1091
    .local v1, "i":I
    const/4 v3, -0x1

    #@b5
    if-ne v1, v3, :cond_f

    #@b7
    .line 1092
    if-eqz p3, :cond_c

    #@b9
    if-nez v0, :cond_c

    #@bb
    .line 1093
    const-string/jumbo v2, ""

    #@be
    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_1

    #@bf
    .line 1096
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_f
    const/4 v3, 0x0

    #@c0
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c3
    move-result-object v2

    #@c4
    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_1

    #@c5
    .line 1103
    .end local v1    # "i":I
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_10
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@c7
    invoke-virtual {v3, v2, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@ca
    .line 1104
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->doneDeclTable:Ljava/util/Hashtable;

    #@cc
    invoke-virtual {v3, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cf
    .line 1105
    return-object v2
.end method

.method private forceNSDecls()V
    .locals 4

    #@0
    .prologue
    .line 1037
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forcedDeclTable:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@5
    move-result-object v1

    #@6
    .line 1038
    .local v1, "prefixes":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1039
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/String;

    #@12
    .line 1040
    .local v0, "prefix":Ljava/lang/String;
    const/4 v2, 0x0

    #@13
    const/4 v3, 0x1

    #@14
    invoke-direct {p0, v0, v2, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->doPrefix(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    #@17
    goto :goto_0

    #@18
    .line 1035
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private init(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutput(Ljava/io/Writer;)V

    #@3
    .line 330
    new-instance v0, Lorg/xml/sax/helpers/NamespaceSupport;

    #@5
    invoke-direct {v0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    #@8
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@a
    .line 331
    new-instance v0, Ljava/util/Hashtable;

    #@c
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@f
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixTable:Ljava/util/Hashtable;

    #@11
    .line 332
    new-instance v0, Ljava/util/Hashtable;

    #@13
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@16
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forcedDeclTable:Ljava/util/Hashtable;

    #@18
    .line 333
    new-instance v0, Ljava/util/Hashtable;

    #@1a
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@1d
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->doneDeclTable:Ljava/util/Hashtable;

    #@1f
    .line 334
    new-instance v0, Ljava/util/Properties;

    #@21
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@24
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputProperties:Ljava/util/Properties;

    #@26
    .line 327
    return-void
.end method

.method private write(C)V
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1121
    :try_start_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->output:Ljava/io/Writer;

    #@2
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1118
    return-void

    #@6
    .line 1122
    :catch_0
    move-exception v0

    #@7
    .line 1123
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@9
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@c
    throw v1
.end method

.method private write(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1140
    :try_start_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->output:Ljava/io/Writer;

    #@2
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1137
    return-void

    #@6
    .line 1141
    :catch_0
    move-exception v0

    #@7
    .line 1142
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@9
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@c
    throw v1
.end method

.method private writeAttributes(Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1160
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    #@4
    move-result v2

    #@5
    .line 1161
    .local v2, "len":I
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@8
    .line 1162
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    #@f
    move-result-object v0

    #@10
    .line 1163
    .local v0, "ch":[C
    const/16 v3, 0x20

    #@12
    invoke-direct {p0, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@15
    .line 1164
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 1165
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    .line 1164
    invoke-direct {p0, v3, v4, v5, v6}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    #@24
    .line 1166
    iget-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    #@26
    if-eqz v3, :cond_1

    #@28
    .line 1167
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-direct {p0, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleanAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@37
    move-result v3

    #@38
    .line 1166
    if-eqz v3, :cond_1

    #@3a
    .line 1158
    .end local v0    # "ch":[C
    :cond_0
    return-void

    #@3b
    .line 1168
    .restart local v0    # "ch":[C
    :cond_1
    const-string/jumbo v3, "=\""

    #@3e
    invoke-direct {p0, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@41
    .line 1169
    array-length v3, v0

    #@42
    const/4 v4, 0x1

    #@43
    invoke-direct {p0, v0, v6, v3, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeEsc([CIIZ)V

    #@46
    .line 1170
    const/16 v3, 0x22

    #@48
    invoke-direct {p0, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@4b
    .line 1161
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_0
.end method

.method private writeEsc([CIIZ)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "isAttVal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1210
    move v0, p2

    #@1
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@3
    if-ge v0, v1, :cond_2

    #@5
    .line 1211
    aget-char v1, p1, v0

    #@7
    sparse-switch v1, :sswitch_data_0

    #@a
    .line 1229
    iget-boolean v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    #@c
    if-nez v1, :cond_1

    #@e
    aget-char v1, p1, v0

    #@10
    const/16 v2, 0x7f

    #@12
    if-le v1, v2, :cond_1

    #@14
    .line 1230
    const-string/jumbo v1, "&#"

    #@17
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@1a
    .line 1231
    aget-char v1, p1, v0

    #@1c
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@23
    .line 1232
    const/16 v1, 0x3b

    #@25
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@28
    .line 1210
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1213
    :sswitch_0
    const-string/jumbo v1, "&amp;"

    #@2e
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@31
    goto :goto_1

    #@32
    .line 1216
    :sswitch_1
    const-string/jumbo v1, "&lt;"

    #@35
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@38
    goto :goto_1

    #@39
    .line 1219
    :sswitch_2
    const-string/jumbo v1, "&gt;"

    #@3c
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@3f
    goto :goto_1

    #@40
    .line 1222
    :sswitch_3
    if-eqz p4, :cond_0

    #@42
    .line 1223
    const-string/jumbo v1, "&quot;"

    #@45
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@48
    goto :goto_1

    #@49
    .line 1225
    :cond_0
    const/16 v1, 0x22

    #@4b
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@4e
    goto :goto_1

    #@4f
    .line 1234
    :cond_1
    aget-char v1, p1, v0

    #@51
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@54
    goto :goto_1

    #@55
    .line 1208
    :cond_2
    return-void

    #@56
    .line 1211
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method private writeNSDecls()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1252
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@2
    invoke-virtual {v4}, Lorg/xml/sax/helpers/NamespaceSupport;->getDeclaredPrefixes()Ljava/util/Enumeration;

    #@5
    move-result-object v2

    #@6
    .line 1253
    .local v2, "prefixes":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_2

    #@c
    .line 1254
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/String;

    #@12
    .line 1255
    .local v1, "prefix":Ljava/lang/String;
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@14
    invoke-virtual {v4, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 1256
    .local v3, "uri":Ljava/lang/String;
    if-nez v3, :cond_0

    #@1a
    .line 1257
    const-string/jumbo v3, ""

    #@1d
    .line 1259
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    #@20
    move-result-object v0

    #@21
    .line 1260
    .local v0, "ch":[C
    const/16 v4, 0x20

    #@23
    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@26
    .line 1261
    const-string/jumbo v4, ""

    #@29
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_1

    #@2f
    .line 1262
    const-string/jumbo v4, "xmlns=\""

    #@32
    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@35
    .line 1268
    :goto_1
    array-length v4, v0

    #@36
    const/4 v5, 0x0

    #@37
    const/4 v6, 0x1

    #@38
    invoke-direct {p0, v0, v5, v4, v6}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeEsc([CIIZ)V

    #@3b
    .line 1269
    const/16 v4, 0x22

    #@3d
    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@40
    goto :goto_0

    #@41
    .line 1264
    :cond_1
    const-string/jumbo v4, "xmlns:"

    #@44
    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@47
    .line 1265
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@4a
    .line 1266
    const-string/jumbo v4, "=\""

    #@4d
    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@50
    goto :goto_1

    #@51
    .line 1250
    .end local v0    # "ch":[C
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "isElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x3a

    #@2
    .line 1290
    invoke-direct {p0, p1, p3, p4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->doPrefix(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1291
    .local v1, "prefix":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@8
    const-string/jumbo v2, ""

    #@b
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 1295
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    #@13
    const-string/jumbo v2, ""

    #@16
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_3

    #@1c
    .line 1298
    :cond_1
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    #@1f
    move-result v0

    #@20
    .line 1299
    .local v0, "i":I
    add-int/lit8 v2, v0, 0x1

    #@22
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@25
    move-result v3

    #@26
    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {p0, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@2d
    .line 1288
    .end local v0    # "i":I
    :goto_1
    return-void

    #@2e
    .line 1292
    :cond_2
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@31
    .line 1293
    invoke-direct {p0, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@34
    goto :goto_0

    #@35
    .line 1296
    :cond_3
    invoke-direct {p0, p2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@38
    goto :goto_1
.end method


# virtual methods
.method public characters(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1018
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v0

    #@4
    .line 1019
    .local v0, "ch":[C
    array-length v1, v0

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {p0, v0, v2, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->characters([CII)V

    #@9
    .line 1016
    return-void
.end method

.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 658
    iget-boolean v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    #@2
    if-nez v1, :cond_1

    #@4
    .line 659
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeEsc([CIIZ)V

    #@8
    .line 666
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V

    #@b
    .line 656
    return-void

    #@c
    .line 662
    :cond_1
    move v0, p2

    #@d
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@f
    if-ge v0, v1, :cond_0

    #@11
    .line 663
    aget-char v1, p1, v0

    #@13
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@16
    .line 662
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0
.end method

.method public comment([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x2d

    #@2
    .line 1311
    const-string/jumbo v1, "<!--"

    #@5
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@8
    .line 1312
    move v0, p2

    #@9
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@b
    if-ge v0, v1, :cond_1

    #@d
    .line 1313
    aget-char v1, p1, v0

    #@f
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@12
    .line 1314
    aget-char v1, p1, v0

    #@14
    if-ne v1, v3, :cond_0

    #@16
    add-int/lit8 v1, v0, 0x1

    #@18
    add-int v2, p2, p3

    #@1a
    if-gt v1, v2, :cond_0

    #@1c
    add-int/lit8 v1, v0, 0x1

    #@1e
    aget-char v1, p1, v1

    #@20
    if-ne v1, v3, :cond_0

    #@22
    .line 1315
    const/16 v1, 0x20

    #@24
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@27
    .line 1312
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1317
    :cond_1
    const-string/jumbo v1, "-->"

    #@2d
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@30
    .line 1309
    return-void
.end method

.method public dataElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 998
    const-string/jumbo v1, ""

    #@3
    const-string/jumbo v3, ""

    #@6
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    #@8
    move-object v0, p0

    #@9
    move-object v2, p1

    #@a
    move-object v5, p2

    #@b
    invoke-virtual/range {v0 .. v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    #@e
    .line 996
    return-void
.end method

.method public dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 967
    const-string/jumbo v3, ""

    #@3
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v5, p3

    #@9
    invoke-virtual/range {v0 .. v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    #@c
    .line 965
    return-void
.end method

.method public dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .param p5, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 934
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@3
    .line 935
    invoke-virtual {p0, p5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->characters(Ljava/lang/String;)V

    #@6
    .line 936
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 932
    return-void
.end method

.method public emptyElement(Ljava/lang/String;)V
    .locals 3
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 900
    const-string/jumbo v0, ""

    #@3
    const-string/jumbo v1, ""

    #@6
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    #@8
    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->emptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@b
    .line 898
    return-void
.end method

.method public emptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 878
    const-string/jumbo v0, ""

    #@3
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    #@5
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->emptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@8
    .line 876
    return-void
.end method

.method public emptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 752
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@3
    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    #@6
    .line 753
    const/16 v0, 0x3c

    #@8
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@b
    .line 754
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    #@e
    .line 755
    invoke-direct {p0, p4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeAttributes(Lorg/xml/sax/Attributes;)V

    #@11
    .line 756
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 757
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceNSDecls()V

    #@18
    .line 759
    :cond_0
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeNSDecls()V

    #@1b
    .line 760
    const-string/jumbo v0, "/>"

    #@1e
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@21
    .line 761
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@24
    .line 762
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 750
    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1320
    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1321
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 544
    const/16 v1, 0xa

    #@2
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@5
    .line 545
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->endDocument()V

    #@8
    .line 547
    :try_start_0
    invoke-virtual {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 542
    return-void

    #@c
    .line 548
    :catch_0
    move-exception v0

    #@d
    .line 549
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@f
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@12
    throw v1
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 856
    const-string/jumbo v0, ""

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, p1, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 854
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 835
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p0, p1, p2, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 833
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 618
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    #@4
    if-eqz v0, :cond_4

    #@6
    .line 619
    const-string/jumbo v0, "http://www.w3.org/1999/xhtml"

    #@9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 620
    const-string/jumbo v0, ""

    #@12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    .line 618
    if-eqz v0, :cond_4

    #@18
    .line 621
    :cond_0
    const-string/jumbo v0, "area"

    #@1b
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_3

    #@21
    const-string/jumbo v0, "base"

    #@24
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_3

    #@2a
    .line 622
    const-string/jumbo v0, "basefont"

    #@2d
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    .line 621
    if-nez v0, :cond_3

    #@33
    .line 622
    const-string/jumbo v0, "br"

    #@36
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v0

    #@3a
    .line 621
    if-nez v0, :cond_3

    #@3c
    .line 623
    const-string/jumbo v0, "col"

    #@3f
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v0

    #@43
    .line 621
    if-nez v0, :cond_3

    #@45
    .line 623
    const-string/jumbo v0, "frame"

    #@48
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v0

    #@4c
    .line 621
    if-nez v0, :cond_3

    #@4e
    .line 624
    const-string/jumbo v0, "hr"

    #@51
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v0

    #@55
    .line 621
    if-nez v0, :cond_3

    #@57
    .line 624
    const-string/jumbo v0, "img"

    #@5a
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v0

    #@5e
    .line 621
    if-nez v0, :cond_3

    #@60
    .line 625
    const-string/jumbo v0, "input"

    #@63
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v0

    #@67
    .line 621
    if-nez v0, :cond_3

    #@69
    .line 625
    const-string/jumbo v0, "isindex"

    #@6c
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v0

    #@70
    .line 621
    if-nez v0, :cond_3

    #@72
    .line 626
    const-string/jumbo v0, "link"

    #@75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v0

    #@79
    .line 621
    if-nez v0, :cond_3

    #@7b
    .line 626
    const-string/jumbo v0, "meta"

    #@7e
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v0

    #@82
    .line 621
    if-nez v0, :cond_3

    #@84
    .line 627
    const-string/jumbo v0, "param"

    #@87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v0

    #@8b
    .line 618
    :goto_0
    if-nez v0, :cond_1

    #@8d
    .line 628
    const-string/jumbo v0, "</"

    #@90
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@93
    .line 629
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    #@96
    .line 630
    const/16 v0, 0x3e

    #@98
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@9b
    .line 632
    :cond_1
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    #@9d
    if-ne v0, v1, :cond_2

    #@9f
    .line 633
    const/16 v0, 0xa

    #@a1
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@a4
    .line 635
    :cond_2
    iput-boolean v2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    #@a6
    .line 636
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a9
    .line 637
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@ab
    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    #@ae
    .line 638
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    #@b0
    add-int/lit8 v0, v0, -0x1

    #@b2
    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    #@b4
    .line 616
    return-void

    #@b5
    :cond_3
    move v0, v1

    #@b6
    .line 621
    goto :goto_0

    #@b7
    :cond_4
    move v0, v2

    #@b8
    .line 618
    goto :goto_0
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1322
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->output:Ljava/io/Writer;

    #@2
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    #@5
    .line 386
    return-void
.end method

.method public forceNSDecl(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 461
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forcedDeclTable:Ljava/util/Hashtable;

    #@2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@4
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 459
    return-void
.end method

.method public forceNSDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 480
    invoke-virtual {p0, p1, p2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 481
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceNSDecl(Ljava/lang/String;)V

    #@6
    .line 478
    return-void
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1359
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputProperties:Ljava/util/Properties;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixTable:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 686
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeEsc([CIIZ)V

    #@4
    .line 687
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->ignorableWhitespace([CII)V

    #@7
    .line 684
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 707
    const-string/jumbo v0, "<?"

    #@3
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@6
    .line 708
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@9
    .line 709
    const/16 v0, 0x20

    #@b
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@e
    .line 710
    invoke-direct {p0, p2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@11
    .line 711
    const-string/jumbo v0, "?>"

    #@14
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@17
    .line 712
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    #@19
    const/4 v1, 0x1

    #@1a
    if-ge v0, v1, :cond_0

    #@1c
    .line 713
    const/16 v0, 0xa

    #@1e
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@21
    .line 715
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 705
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 365
    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    #@3
    .line 366
    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    #@5
    .line 367
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@7
    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->reset()V

    #@a
    .line 363
    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 402
    if-nez p1, :cond_0

    #@2
    .line 403
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@9
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->output:Ljava/io/Writer;

    #@b
    .line 400
    :goto_0
    return-void

    #@c
    .line 405
    :cond_0
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->output:Ljava/io/Writer;

    #@e
    goto :goto_0
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1363
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputProperties:Ljava/util/Properties;

    #@3
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    .line 1365
    const-string/jumbo v0, "encoding"

    #@9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1366
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    #@11
    .line 1367
    const/4 v0, 0x0

    #@12
    const/4 v1, 0x3

    #@13
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, "utf"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1d
    move-result v0

    #@1e
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    #@20
    .line 1362
    :cond_0
    :goto_0
    return-void

    #@21
    .line 1370
    :cond_1
    const-string/jumbo v0, "method"

    #@24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 1371
    const-string/jumbo v0, "html"

    #@2d
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    #@33
    goto :goto_0

    #@34
    .line 1373
    :cond_2
    const-string/jumbo v0, "doctype-public"

    #@37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_3

    #@3d
    .line 1374
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    #@3f
    .line 1375
    iput-boolean v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    #@41
    goto :goto_0

    #@42
    .line 1377
    :cond_3
    const-string/jumbo v0, "doctype-system"

    #@45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_4

    #@4b
    .line 1378
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    #@4d
    .line 1379
    iput-boolean v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    #@4f
    goto :goto_0

    #@50
    .line 1381
    :cond_4
    const-string/jumbo v0, "version"

    #@53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v0

    #@57
    if-eqz v0, :cond_5

    #@59
    .line 1382
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    #@5b
    goto :goto_0

    #@5c
    .line 1384
    :cond_5
    const-string/jumbo v0, "standalone"

    #@5f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v0

    #@63
    if-eqz v0, :cond_0

    #@65
    .line 1385
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    #@67
    goto :goto_0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 426
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixTable:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 424
    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1323
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicid"    # Ljava/lang/String;
    .param p3, "systemid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x22

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v4, -0x1

    #@4
    .line 1325
    if-nez p1, :cond_0

    #@6
    return-void

    #@7
    .line 1326
    :cond_0
    iget-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    #@9
    if-eqz v3, :cond_1

    #@b
    return-void

    #@c
    .line 1327
    :cond_1
    iput-boolean v2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    #@e
    .line 1328
    const-string/jumbo v3, "<!DOCTYPE "

    #@11
    invoke-direct {p0, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@14
    .line 1329
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@17
    .line 1330
    if-nez p3, :cond_2

    #@19
    const-string/jumbo p3, ""

    #@1c
    .line 1331
    :cond_2
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    #@1e
    if-eqz v3, :cond_3

    #@20
    iget-object p3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    #@22
    .line 1332
    :cond_3
    invoke-virtual {p3, v5}, Ljava/lang/String;->indexOf(I)I

    #@25
    move-result v3

    #@26
    if-eq v3, v4, :cond_6

    #@28
    const/16 v1, 0x27

    #@2a
    .line 1333
    .local v1, "sysquote":C
    :goto_0
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    #@2c
    if-eqz v3, :cond_4

    #@2e
    iget-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    #@30
    .line 1334
    :cond_4
    if-eqz p2, :cond_5

    #@32
    const-string/jumbo v2, ""

    #@35
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v2

    #@39
    :cond_5
    if-nez v2, :cond_8

    #@3b
    .line 1335
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    #@3e
    move-result v2

    #@3f
    if-eq v2, v4, :cond_7

    #@41
    const/16 v0, 0x27

    #@43
    .line 1336
    .local v0, "pubquote":C
    :goto_1
    const-string/jumbo v2, " PUBLIC "

    #@46
    invoke-direct {p0, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@49
    .line 1337
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@4c
    .line 1338
    invoke-direct {p0, p2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@4f
    .line 1339
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@52
    .line 1340
    const/16 v2, 0x20

    #@54
    invoke-direct {p0, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@57
    .line 1345
    .end local v0    # "pubquote":C
    :goto_2
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@5a
    .line 1346
    invoke-direct {p0, p3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@5d
    .line 1347
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@60
    .line 1348
    const-string/jumbo v2, ">\n"

    #@63
    invoke-direct {p0, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@66
    .line 1324
    return-void

    #@67
    .line 1332
    .end local v1    # "sysquote":C
    :cond_6
    const/16 v1, 0x22

    #@69
    .restart local v1    # "sysquote":C
    goto :goto_0

    #@6a
    .line 1335
    :cond_7
    const/16 v0, 0x22

    #@6c
    .restart local v0    # "pubquote":C
    goto :goto_1

    #@6d
    .line 1343
    .end local v0    # "pubquote":C
    :cond_8
    const-string/jumbo v2, " SYSTEM "

    #@70
    invoke-direct {p0, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@73
    goto :goto_2
.end method

.method public startDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 504
    invoke-virtual {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->reset()V

    #@3
    .line 505
    const-string/jumbo v0, "yes"

    #@6
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputProperties:Ljava/util/Properties;

    #@8
    const-string/jumbo v2, "omit-xml-declaration"

    #@b
    const-string/jumbo v3, "no"

    #@e
    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    .line 506
    const-string/jumbo v0, "<?xml"

    #@1b
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@1e
    .line 507
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    #@20
    if-nez v0, :cond_2

    #@22
    .line 508
    const-string/jumbo v0, " version=\"1.0\""

    #@25
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@28
    .line 514
    :goto_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    #@2a
    if-eqz v0, :cond_0

    #@2c
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    #@2e
    const-string/jumbo v1, ""

    #@31
    if-eq v0, v1, :cond_0

    #@33
    .line 515
    const-string/jumbo v0, " encoding=\""

    #@36
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@39
    .line 516
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    #@3b
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@3e
    .line 517
    const-string/jumbo v0, "\""

    #@41
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@44
    .line 519
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    #@46
    if-nez v0, :cond_3

    #@48
    .line 520
    const-string/jumbo v0, " standalone=\"yes\"?>\n"

    #@4b
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@4e
    .line 527
    :cond_1
    :goto_1
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->startDocument()V

    #@51
    .line 502
    return-void

    #@52
    .line 510
    :cond_2
    const-string/jumbo v0, " version=\""

    #@55
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@58
    .line 511
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    #@5a
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@5d
    .line 512
    const-string/jumbo v0, "\""

    #@60
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@63
    goto :goto_0

    #@64
    .line 522
    :cond_3
    const-string/jumbo v0, " standalone=\""

    #@67
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@6a
    .line 523
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    #@6c
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@6f
    .line 524
    const-string/jumbo v0, "\""

    #@72
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    #@75
    goto :goto_1
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 3
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 814
    const-string/jumbo v0, ""

    #@3
    const-string/jumbo v1, ""

    #@6
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    #@8
    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@b
    .line 812
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 792
    const-string/jumbo v0, ""

    #@3
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    #@5
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@8
    .line 790
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 577
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    #@7
    .line 578
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@9
    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    #@c
    .line 579
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    #@12
    if-eqz v0, :cond_4

    #@14
    .line 580
    :cond_0
    :goto_0
    const/16 v0, 0x3c

    #@16
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@19
    .line 581
    invoke-direct {p0, p1, p2, p3, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    #@1c
    .line 582
    invoke-direct {p0, p4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeAttributes(Lorg/xml/sax/Attributes;)V

    #@1f
    .line 583
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    #@21
    if-ne v0, v3, :cond_1

    #@23
    .line 584
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceNSDecls()V

    #@26
    .line 586
    :cond_1
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeNSDecls()V

    #@29
    .line 587
    const/16 v0, 0x3e

    #@2b
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    #@2e
    .line 589
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    #@30
    if-eqz v0, :cond_3

    #@32
    const-string/jumbo v0, "script"

    #@35
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v0

    #@39
    if-nez v0, :cond_2

    #@3b
    const-string/jumbo v0, "style"

    #@3e
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_3

    #@44
    .line 590
    :cond_2
    iput-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    #@46
    .line 593
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@49
    .line 575
    return-void

    #@4a
    .line 579
    :cond_4
    if-nez p2, :cond_5

    #@4c
    move-object v0, p3

    #@4d
    :goto_1
    const-string/jumbo v1, ""

    #@50
    const-string/jumbo v2, ""

    #@53
    invoke-virtual {p0, v0, v1, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@56
    goto :goto_0

    #@57
    :cond_5
    move-object v0, p2

    #@58
    goto :goto_1
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1351
    return-void
.end method
