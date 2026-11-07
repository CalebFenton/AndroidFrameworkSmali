.class public Lorg/ccil/cowan/tagsoup/XMLWriter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "XMLWriter.java"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field public static final greylist CDATA_SECTION_ELEMENTS:Ljava/lang/String; = "cdata-section-elements"

.field public static final greylist DOCTYPE_PUBLIC:Ljava/lang/String; = "doctype-public"

.field public static final greylist DOCTYPE_SYSTEM:Ljava/lang/String; = "doctype-system"

.field public static final greylist ENCODING:Ljava/lang/String; = "encoding"

.field public static final greylist INDENT:Ljava/lang/String; = "indent"

.field public static final greylist MEDIA_TYPE:Ljava/lang/String; = "media-type"

.field public static final greylist METHOD:Ljava/lang/String; = "method"

.field public static final greylist OMIT_XML_DECLARATION:Ljava/lang/String; = "omit-xml-declaration"

.field public static final greylist STANDALONE:Ljava/lang/String; = "standalone"

.field public static final greylist VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final greylist EMPTY_ATTS:Lorg/xml/sax/Attributes;

.field private greylist booleans:[Ljava/lang/String;

.field private greylist cdataElement:Z

.field private greylist doneDeclTable:Ljava/util/Hashtable;

.field private greylist elementLevel:I

.field private greylist forceDTD:Z

.field private greylist forcedDeclTable:Ljava/util/Hashtable;

.field private greylist hasOutputDTD:Z

.field private greylist htmlMode:Z

.field private greylist nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

.field private greylist output:Ljava/io/Writer;

.field private greylist outputEncoding:Ljava/lang/String;

.field private greylist outputProperties:Ljava/util/Properties;

.field private greylist overridePublic:Ljava/lang/String;

.field private greylist overrideSystem:Ljava/lang/String;

.field private greylist prefixCounter:I

.field private greylist prefixTable:Ljava/util/Hashtable;

.field private greylist standalone:Ljava/lang/String;

.field private greylist unicodeMode:Z

.field private greylist version:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 14

    .line 267
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 1175
    const-string v11, "readonly"

    const-string v12, "selected"

    const-string v0, "checked"

    const-string v1, "compact"

    const-string v2, "declare"

    const-string v3, "defer"

    const-string v4, "disabled"

    const-string v5, "ismap"

    const-string v6, "multiple"

    const-string v7, "nohref"

    const-string v8, "noresize"

    const-string v9, "noshade"

    const-string v10, "nowrap"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    .line 1395
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    .line 1417
    const/4 v0, 0x0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    .line 1420
    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    .line 1422
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    .line 1423
    const-string v1, ""

    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    .line 1424
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    .line 1425
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    .line 1426
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    .line 1427
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    .line 1428
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    .line 1429
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    .line 1430
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    .line 1431
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    .line 268
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->init(Ljava/io/Writer;)V

    .line 269
    return-void
.end method

.method public constructor greylist <init>(Ljava/io/Writer;)V
    .registers 15
    .param p1, "writer"    # Ljava/io/Writer;

    .line 281
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 1175
    const-string v11, "readonly"

    const-string v12, "selected"

    const-string v0, "checked"

    const-string v1, "compact"

    const-string v2, "declare"

    const-string v3, "defer"

    const-string v4, "disabled"

    const-string v5, "ismap"

    const-string v6, "multiple"

    const-string v7, "nohref"

    const-string v8, "noresize"

    const-string v9, "noshade"

    const-string v10, "nowrap"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    .line 1395
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    .line 1417
    const/4 v0, 0x0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    .line 1420
    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    .line 1422
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    .line 1423
    const-string v1, ""

    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    .line 1424
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    .line 1425
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    .line 1426
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    .line 1427
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    .line 1428
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    .line 1429
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    .line 1430
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    .line 1431
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    .line 282
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->init(Ljava/io/Writer;)V

    .line 283
    return-void
.end method

.method public constructor greylist <init>(Lorg/xml/sax/XMLReader;)V
    .registers 15
    .param p1, "xmlreader"    # Lorg/xml/sax/XMLReader;

    .line 296
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 1175
    const-string v11, "readonly"

    const-string v12, "selected"

    const-string v0, "checked"

    const-string v1, "compact"

    const-string v2, "declare"

    const-string v3, "defer"

    const-string v4, "disabled"

    const-string v5, "ismap"

    const-string v6, "multiple"

    const-string v7, "nohref"

    const-string v8, "noresize"

    const-string v9, "noshade"

    const-string v10, "nowrap"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    .line 1395
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    .line 1417
    const/4 v0, 0x0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    .line 1420
    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    .line 1422
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    .line 1423
    const-string v1, ""

    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    .line 1424
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    .line 1425
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    .line 1426
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    .line 1427
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    .line 1428
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    .line 1429
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    .line 1430
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    .line 1431
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    .line 297
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->init(Ljava/io/Writer;)V

    .line 298
    return-void
.end method

.method public constructor greylist <init>(Lorg/xml/sax/XMLReader;Ljava/io/Writer;)V
    .registers 16
    .param p1, "xmlreader"    # Lorg/xml/sax/XMLReader;
    .param p2, "writer"    # Ljava/io/Writer;

    .line 314
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 1175
    const-string v11, "readonly"

    const-string v12, "selected"

    const-string v0, "checked"

    const-string v1, "compact"

    const-string v2, "declare"

    const-string v3, "defer"

    const-string v4, "disabled"

    const-string v5, "ismap"

    const-string v6, "multiple"

    const-string v7, "nohref"

    const-string v8, "noresize"

    const-string v9, "noshade"

    const-string v10, "nowrap"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    .line 1395
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    .line 1417
    const/4 v0, 0x0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    .line 1420
    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    .line 1422
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    .line 1423
    const-string v1, ""

    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    .line 1424
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    .line 1425
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    .line 1426
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    .line 1427
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    .line 1428
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    .line 1429
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    .line 1430
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    .line 1431
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    .line 315
    invoke-direct {p0, p2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->init(Ljava/io/Writer;)V

    .line 316
    return-void
.end method

.method private greylist booleanAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "qName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 1183
    move-object v0, p1

    .line 1184
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_16

    .line 1185
    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1186
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1188
    .end local v1    # "i":I
    :cond_16
    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    return v2

    .line 1189
    :cond_1e
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1f
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_33

    .line 1190
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleans:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v2, 0x1

    return v2

    .line 1189
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1192
    .end local v1    # "j":I
    :cond_33
    return v2
.end method

.method private greylist doPrefix(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "qName"    # Ljava/lang/String;
    .param p3, "isElement"    # Z

    .line 1060
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "defaultNS":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1062
    if-eqz p3, :cond_17

    if-eqz v0, :cond_17

    .line 1063
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v2, v1, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1064
    :cond_17
    const/4 v1, 0x0

    return-object v1

    .line 1067
    :cond_19
    if-eqz p3, :cond_26

    if-eqz v0, :cond_26

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1068
    const-string v2, ""

    .local v2, "prefix":Ljava/lang/String;
    goto :goto_2c

    .line 1070
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_26
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v2, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1072
    .restart local v2    # "prefix":Ljava/lang/String;
    :goto_2c
    if-eqz v2, :cond_2f

    .line 1073
    return-object v2

    .line 1075
    :cond_2f
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->doneDeclTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 1076
    if-eqz v2, :cond_4d

    if-eqz p3, :cond_3e

    if-eqz v0, :cond_44

    .line 1078
    :cond_3e
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    :cond_44
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 1079
    :cond_4c
    const/4 v2, 0x0

    .line 1081
    :cond_4d
    if-nez v2, :cond_6d

    .line 1082
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 1083
    if-eqz v2, :cond_6d

    if-eqz p3, :cond_5e

    if-eqz v0, :cond_64

    .line 1085
    :cond_5e
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    :cond_64
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6d

    .line 1086
    :cond_6c
    const/4 v2, 0x0

    .line 1089
    :cond_6d
    if-nez v2, :cond_8c

    if-eqz p2, :cond_8c

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 1090
    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1091
    .local v1, "i":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_87

    .line 1092
    if-eqz p3, :cond_8c

    if-nez v0, :cond_8c

    .line 1093
    const-string v2, ""

    goto :goto_8c

    .line 1096
    :cond_87
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1100
    .end local v1    # "i":I
    :cond_8c
    :goto_8c
    if-eqz v2, :cond_a2

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_97

    goto :goto_a2

    .line 1103
    :cond_97
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v1, v2, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1104
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->doneDeclTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    return-object v2

    .line 1101
    :cond_a2
    :goto_a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__NS"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8c
.end method

.method private greylist forceNSDecls()V
    .registers 5

    .line 1037
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forcedDeclTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1038
    .local v0, "prefixes":Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1039
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1040
    .local v1, "prefix":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->doPrefix(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1041
    .end local v1    # "prefix":Ljava/lang/String;
    goto :goto_6

    .line 1042
    :cond_18
    return-void
.end method

.method private greylist init(Ljava/io/Writer;)V
    .registers 3
    .param p1, "writer"    # Ljava/io/Writer;

    .line 329
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutput(Ljava/io/Writer;)V

    .line 330
    new-instance v0, Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {v0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    .line 331
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixTable:Ljava/util/Hashtable;

    .line 332
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forcedDeclTable:Ljava/util/Hashtable;

    .line 333
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->doneDeclTable:Ljava/util/Hashtable;

    .line 334
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputProperties:Ljava/util/Properties;

    .line 335
    return-void
.end method

.method private greylist write(C)V
    .registers 4
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1121
    :try_start_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->output:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1124
    nop

    .line 1125
    return-void

    .line 1122
    :catch_7
    move-exception v0

    .line 1123
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private greylist write(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1140
    :try_start_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->output:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1143
    nop

    .line 1144
    return-void

    .line 1141
    :catch_7
    move-exception v0

    .line 1142
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private greylist writeAttributes(Lorg/xml/sax/Attributes;)V
    .registers 9
    .param p1, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1160
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 1161
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4d

    .line 1162
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1163
    .local v2, "ch":[C
    const/16 v3, 0x20

    invoke-direct {p0, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1164
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 1165
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    .line 1164
    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1166
    iget-boolean v3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    if-eqz v3, :cond_3b

    .line 1167
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->booleanAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_4d

    .line 1168
    :cond_3b
    const-string v3, "=\""

    invoke-direct {p0, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1169
    array-length v3, v2

    const/4 v4, 0x1

    invoke-direct {p0, v2, v6, v3, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeEsc([CIIZ)V

    .line 1170
    const/16 v3, 0x22

    invoke-direct {p0, v3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1161
    .end local v2    # "ch":[C
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1172
    .end local v1    # "i":I
    :cond_4d
    :goto_4d
    return-void
.end method

.method private greylist writeEsc([CIIZ)V
    .registers 8
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "isAttVal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1210
    move v0, p2

    .local v0, "i":I
    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_50

    .line 1211
    aget-char v1, p1, v0

    sparse-switch v1, :sswitch_data_52

    .line 1229
    iget-boolean v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    if-nez v1, :cond_48

    aget-char v1, p1, v0

    const/16 v2, 0x7f

    if-le v1, v2, :cond_48

    .line 1230
    const-string v1, "&#"

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1231
    aget-char v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1232
    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    goto :goto_4d

    .line 1219
    :sswitch_28
    const-string v1, "&gt;"

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1220
    goto :goto_4d

    .line 1216
    :sswitch_2e
    const-string v1, "&lt;"

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1217
    goto :goto_4d

    .line 1213
    :sswitch_34
    const-string v1, "&amp;"

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1214
    goto :goto_4d

    .line 1222
    :sswitch_3a
    if-eqz p4, :cond_42

    .line 1223
    const-string v1, "&quot;"

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_4d

    .line 1225
    :cond_42
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1227
    goto :goto_4d

    .line 1234
    :cond_48
    aget-char v1, p1, v0

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1210
    :goto_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1238
    .end local v0    # "i":I
    :cond_50
    return-void

    nop

    :sswitch_data_52
    .sparse-switch
        0x22 -> :sswitch_3a
        0x26 -> :sswitch_34
        0x3c -> :sswitch_2e
        0x3e -> :sswitch_28
    .end sparse-switch
.end method

.method private greylist writeNSDecls()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    .line 1253
    .local v0, "prefixes":Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1254
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1255
    .local v1, "prefix":Ljava/lang/String;
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v2, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1256
    .local v2, "uri":Ljava/lang/String;
    if-nez v2, :cond_1c

    .line 1257
    const-string v2, ""

    .line 1259
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1260
    .local v3, "ch":[C
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1261
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1262
    const-string v4, "xmlns=\""

    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_40

    .line 1264
    :cond_33
    const-string v4, "xmlns:"

    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1265
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1266
    const-string v4, "=\""

    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1268
    :goto_40
    array-length v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, v3, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeEsc([CIIZ)V

    .line 1269
    const/16 v4, 0x22

    invoke-direct {p0, v4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1270
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "uri":Ljava/lang/String;
    .end local v3    # "ch":[C
    goto :goto_6

    .line 1271
    :cond_4c
    return-void
.end method

.method private greylist writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "isElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1290
    invoke-direct {p0, p1, p3, p4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->doPrefix(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, "prefix":Ljava/lang/String;
    const/16 v1, 0x3a

    const-string v2, ""

    if-eqz v0, :cond_16

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1292
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1293
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1295
    :cond_16
    if-eqz p2, :cond_22

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1296
    invoke-direct {p0, p2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_33

    .line 1298
    :cond_22
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1299
    .local v1, "i":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1301
    .end local v1    # "i":I
    :goto_33
    return-void
.end method


# virtual methods
.method public greylist characters(Ljava/lang/String;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1018
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1019
    .local v0, "ch":[C
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->characters([CII)V

    .line 1020
    return-void
.end method

.method public whitelist test-api characters([CII)V
    .registers 6
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 658
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    if-nez v0, :cond_9

    .line 659
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeEsc([CIIZ)V

    goto :goto_16

    .line 662
    :cond_9
    move v0, p2

    .local v0, "i":I
    :goto_a
    add-int v1, p2, p3

    if-ge v0, v1, :cond_16

    .line 663
    aget-char v1, p1, v0

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 666
    .end local v0    # "i":I
    :cond_16
    :goto_16
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V

    .line 667
    return-void
.end method

.method public whitelist test-api comment([CII)V
    .registers 8
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1311
    const-string v0, "<!--"

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1312
    move v0, p2

    .local v0, "i":I
    :goto_6
    add-int v1, p2, p3

    if-ge v0, v1, :cond_29

    .line 1313
    aget-char v1, p1, v0

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1314
    aget-char v1, p1, v0

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_26

    add-int/lit8 v1, v0, 0x1

    add-int v3, p2, p3

    if-gt v1, v3, :cond_26

    add-int/lit8 v1, v0, 0x1

    aget-char v1, p1, v1

    if-ne v1, v2, :cond_26

    .line 1315
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1312
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1317
    .end local v0    # "i":I
    :cond_29
    const-string v0, "-->"

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1318
    return-void
.end method

.method public greylist dataElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 998
    const-string v3, ""

    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    const-string v1, ""

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    .end local p1    # "localName":Ljava/lang/String;
    .end local p2    # "content":Ljava/lang/String;
    .local v2, "localName":Ljava/lang/String;
    .local v5, "content":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 999
    return-void
.end method

.method public greylist dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 967
    const-string v3, ""

    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .end local p1    # "uri":Ljava/lang/String;
    .end local p2    # "localName":Ljava/lang/String;
    .end local p3    # "content":Ljava/lang/String;
    .local v1, "uri":Ljava/lang/String;
    .local v2, "localName":Ljava/lang/String;
    .local v5, "content":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 968
    return-void
.end method

.method public greylist dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 6
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

    .line 934
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 935
    invoke-virtual {p0, p5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->characters(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    return-void
.end method

.method public greylist emptyElement(Ljava/lang/String;)V
    .registers 4
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 900
    const-string v0, ""

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, v0, p1, v0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->emptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 901
    return-void
.end method

.method public greylist emptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 878
    const-string v0, ""

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->emptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 879
    return-void
.end method

.method public greylist emptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 753
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 754
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 755
    invoke-direct {p0, p4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeAttributes(Lorg/xml/sax/Attributes;)V

    .line 756
    iget v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    if-ne v1, v0, :cond_18

    .line 757
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceNSDecls()V

    .line 759
    :cond_18
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeNSDecls()V

    .line 760
    const-string v0, "/>"

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 761
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 762
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method public whitelist test-api endCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1320
    return-void
.end method

.method public whitelist test-api endDTD()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1321
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 544
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 545
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->endDocument()V

    .line 547
    :try_start_8
    invoke-virtual {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_d

    .line 550
    nop

    .line 551
    return-void

    .line 548
    :catch_d
    move-exception v0

    .line 549
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public greylist endElement(Ljava/lang/String;)V
    .registers 3
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 856
    const-string v0, ""

    invoke-virtual {p0, v0, p1, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method public greylist endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 835
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 618
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_7e

    .line 619
    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 620
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    :cond_15
    nop

    .line 621
    const-string v0, "area"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-string v0, "base"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 622
    const-string v0, "basefont"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-string v0, "br"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 623
    const-string v0, "col"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-string v0, "frame"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 624
    const-string v0, "hr"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-string v0, "img"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 625
    const-string v0, "input"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-string v0, "isindex"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 626
    const-string v0, "link"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-string v0, "meta"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 627
    const-string v0, "param"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 628
    :cond_7e
    const-string v0, "</"

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 629
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 630
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 632
    :cond_8b
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    if-ne v0, v1, :cond_94

    .line 633
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 635
    :cond_94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    .line 636
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    .line 638
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    .line 639
    return-void
.end method

.method public whitelist test-api endEntity(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1322
    return-void
.end method

.method public greylist flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->output:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 389
    return-void
.end method

.method public greylist forceNSDecl(Ljava/lang/String;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forcedDeclTable:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    return-void
.end method

.method public greylist forceNSDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 480
    invoke-virtual {p0, p1, p2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceNSDecl(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public greylist getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1359
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 686
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeEsc([CIIZ)V

    .line 687
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->ignorableWhitespace([CII)V

    .line 688
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 707
    const-string v0, "<?"

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 708
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 709
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 710
    invoke-direct {p0, p2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 711
    const-string v0, "?>"

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 712
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1f

    .line 713
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 715
    :cond_1f
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method public greylist reset()V
    .registers 2

    .line 365
    const/4 v0, 0x0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    .line 366
    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixCounter:I

    .line 367
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->reset()V

    .line 368
    return-void
.end method

.method public greylist setOutput(Ljava/io/Writer;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/Writer;

    .line 402
    if-nez p1, :cond_c

    .line 403
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->output:Ljava/io/Writer;

    goto :goto_e

    .line 405
    :cond_c
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->output:Ljava/io/Writer;

    .line 407
    :goto_e
    return-void
.end method

.method public greylist setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1363
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1365
    const-string v0, "encoding"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1366
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    .line 1367
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->unicodeMode:Z

    goto :goto_5f

    .line 1370
    :cond_1e
    const-string v0, "method"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1371
    const-string v0, "html"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    goto :goto_5f

    .line 1373
    :cond_2f
    const-string v0, "doctype-public"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    .line 1374
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    .line 1375
    iput-boolean v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    goto :goto_5f

    .line 1377
    :cond_3d
    const-string v0, "doctype-system"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1378
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    .line 1379
    iput-boolean v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    goto :goto_5f

    .line 1381
    :cond_4a
    const-string v0, "version"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1382
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    goto :goto_5f

    .line 1384
    :cond_55
    const-string v0, "standalone"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1385
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    .line 1388
    :cond_5f
    :goto_5f
    return-void
.end method

.method public greylist setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    return-void
.end method

.method public whitelist test-api startCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1323
    return-void
.end method

.method public whitelist test-api startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicid"    # Ljava/lang/String;
    .param p3, "systemid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1325
    if-nez p1, :cond_3

    return-void

    .line 1326
    :cond_3
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    if-eqz v0, :cond_8

    return-void

    .line 1327
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    .line 1328
    const-string v0, "<!DOCTYPE "

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1329
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1330
    if-nez p3, :cond_17

    const-string p3, ""

    .line 1331
    :cond_17
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object p3, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overrideSystem:Ljava/lang/String;

    .line 1332
    :cond_1d
    const/16 v0, 0x22

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x27

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2a

    move v1, v2

    goto :goto_2b

    :cond_2a
    move v1, v0

    .line 1333
    .local v1, "sysquote":C
    :goto_2b
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    if-eqz v4, :cond_31

    iget-object p2, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->overridePublic:Ljava/lang/String;

    .line 1334
    :cond_31
    if-eqz p2, :cond_56

    const-string v4, ""

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 1335
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v3, :cond_42

    move v0, v2

    .line 1336
    .local v0, "pubquote":C
    :cond_42
    const-string v2, " PUBLIC "

    invoke-direct {p0, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1337
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1338
    invoke-direct {p0, p2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1339
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1340
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1341
    .end local v0    # "pubquote":C
    goto :goto_5b

    .line 1343
    :cond_56
    const-string v0, " SYSTEM "

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1345
    :goto_5b
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1346
    invoke-direct {p0, p3}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1347
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 1348
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 1349
    return-void
.end method

.method public whitelist test-api startDocument()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->reset()V

    .line 505
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputProperties:Ljava/util/Properties;

    const-string v1, "omit-xml-declaration"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 506
    const-string v0, "<?xml"

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    const-string v1, "\""

    if-nez v0, :cond_26

    .line 508
    const-string v0, " version=\"1.0\""

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_33

    .line 510
    :cond_26
    const-string v0, " version=\""

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->version:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 512
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 514
    :goto_33
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    const-string v2, ""

    if-eq v0, v2, :cond_4a

    .line 515
    const-string v0, " encoding=\""

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->outputEncoding:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 517
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 519
    :cond_4a
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    if-nez v0, :cond_54

    .line 520
    const-string v0, " standalone=\"yes\"?>\n"

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_61

    .line 522
    :cond_54
    const-string v0, " standalone=\""

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->standalone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 524
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(Ljava/lang/String;)V

    .line 527
    :cond_61
    :goto_61
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->startDocument()V

    .line 528
    return-void
.end method

.method public greylist startElement(Ljava/lang/String;)V
    .registers 4
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 814
    const-string v0, ""

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, v0, p1, v0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 815
    return-void
.end method

.method public greylist startElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 792
    const-string v0, ""

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 793
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 577
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    .line 578
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 579
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceDTD:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->hasOutputDTD:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_17

    move-object v0, p3

    goto :goto_18

    :cond_17
    move-object v0, p2

    :goto_18
    const-string v2, ""

    invoke-virtual {p0, v0, v2, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_1d
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 581
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 582
    invoke-direct {p0, p4}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeAttributes(Lorg/xml/sax/Attributes;)V

    .line 583
    iget v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->elementLevel:I

    if-ne v0, v1, :cond_2f

    .line 584
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->forceNSDecls()V

    .line 586
    :cond_2f
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->writeNSDecls()V

    .line 587
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->write(C)V

    .line 589
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->htmlMode:Z

    if-eqz v0, :cond_4d

    const-string v0, "script"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "style"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 590
    :cond_4b
    iput-boolean v1, p0, Lorg/ccil/cowan/tagsoup/XMLWriter;->cdataElement:Z

    .line 593
    :cond_4d
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 594
    return-void
.end method

.method public whitelist test-api startEntity(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1351
    return-void
.end method
