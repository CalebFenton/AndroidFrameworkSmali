.class public abstract Lorg/apache/xml/serializer/SerializerBase;
.super Ljava/lang/Object;
.source "SerializerBase.java"

# interfaces
.implements Lorg/apache/xml/serializer/SerializationHandler;
.implements Lorg/apache/xml/serializer/SerializerConstants;


# static fields
.field public static final greylist PKG_NAME:Ljava/lang/String;

.field public static final greylist PKG_PATH:Ljava/lang/String;


# instance fields
.field protected greylist m_CdataElems:Ljava/util/Hashtable;

.field private greylist m_OutputProps:Ljava/util/HashMap;

.field private greylist m_OutputPropsDefault:Ljava/util/HashMap;

.field protected greylist m_StringOfCDATASections:Ljava/lang/String;

.field protected greylist m_attrBuff:[C

.field protected greylist m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

.field protected greylist m_cdataTagOpen:Z

.field protected greylist m_charsBuff:[C

.field protected greylist m_doIndent:Z

.field greylist m_docIsEmpty:Z

.field protected greylist m_doctypePublic:Ljava/lang/String;

.field protected greylist m_doctypeSystem:Ljava/lang/String;

.field protected greylist m_elemContext:Lorg/apache/xml/serializer/ElemContext;

.field protected greylist m_inEntityRef:Z

.field protected greylist m_inExternalDTD:Z

.field protected greylist m_indentAmount:I

.field protected greylist m_mediatype:Ljava/lang/String;

.field protected greylist m_needToCallStartDocument:Z

.field greylist m_needToOutputDocTypeDecl:Z

.field protected greylist m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

.field protected greylist m_shouldNotWriteXMLHeader:Z

.field protected greylist m_sourceLocator:Ljavax/xml/transform/SourceLocator;

.field private greylist m_standalone:Ljava/lang/String;

.field protected greylist m_standaloneWasSpecified:Z

.field protected greylist m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

.field private greylist m_transformer:Ljavax/xml/transform/Transformer;

.field protected greylist m_version:Ljava/lang/String;

.field protected greylist m_writer:Ljava/io/Writer;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 5

    .line 70
    const-class v0, Lorg/apache/xml/serializer/SerializerBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_14

    .line 73
    const-string v0, ""

    sput-object v0, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    goto :goto_1a

    .line 75
    :cond_14
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    .line 78
    :goto_1a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    :goto_1f
    sget-object v2, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_33

    const/16 v2, 0x2f

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_36

    .line 84
    :cond_33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 86
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/SerializerBase;->PKG_PATH:Ljava/lang/String;

    return-void
.end method

.method constructor greylist <init>()V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    const/4 v1, 0x0

    .line 129
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    .line 136
    new-instance v2, Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-direct {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;-><init>()V

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    .line 141
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    .line 144
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    .line 160
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    .line 165
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    .line 175
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    .line 180
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    .line 184
    iput v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    const/4 v1, 0x0

    .line 189
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_version:Ljava/lang/String;

    .line 223
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 231
    new-instance v2, Lorg/apache/xml/serializer/ElemContext;

    invoke-direct {v2}, Lorg/apache/xml/serializer/ElemContext;-><init>()V

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/16 v2, 0x3c

    .line 239
    new-array v2, v2, [C

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    const/16 v2, 0x1e

    .line 247
    new-array v2, v2, [C

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    .line 1353
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    .line 1355
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    .line 1428
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    return-void
.end method

.method private greylist addCDATAElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1431
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 1432
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    .line 1435
    :cond_b
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-nez v0, :cond_1f

    .line 1437
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1438
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    invoke-virtual {p0, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    :cond_1f
    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private greylist flushMyWriter()V
    .registers 1

    .line 1027
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    if-eqz p0, :cond_7

    .line 1031
    :try_start_4
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method

.method private greylist getElementURI()Ljava/lang/String;
    .registers 3

    .line 1526
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/xml/serializer/SerializerBase;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1528
    const-string v1, ""

    if-nez v0, :cond_13

    .line 1530
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_19

    .line 1532
    :cond_13
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_19
    if-nez p0, :cond_1c

    return-object v1

    :cond_1c
    return-object p0
.end method

.method static greylist getFirstCharLocName(Ljava/lang/String;)C
    .registers 2

    const/16 v0, 0x7d

    .line 1690
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    const/4 v0, 0x0

    .line 1692
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 1694
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method protected static greylist getLocalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x3a

    .line 308
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_e

    add-int/lit8 v0, v0, 0x1

    .line 309
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_e
    return-object p0
.end method

.method protected static final greylist getPrefixPart(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x3a

    .line 821
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_e

    const/4 v1, 0x0

    .line 822
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist getProp(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .line 1635
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    if-nez v0, :cond_12

    .line 1636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    .line 1637
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    :cond_12
    if-eqz p2, :cond_1d

    .line 1642
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1644
    :cond_1d
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private greylist resetSerializerBase()V
    .registers 5

    .line 1251
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    const/4 v0, 0x0

    .line 1252
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    const/4 v1, 0x0

    .line 1253
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    const/4 v2, 0x1

    .line 1254
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    .line 1255
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypePublic:Ljava/lang/String;

    .line 1256
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypeSystem:Ljava/lang/String;

    .line 1257
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    .line 1258
    new-instance v3, Lorg/apache/xml/serializer/ElemContext;

    invoke-direct {v3}, Lorg/apache/xml/serializer/ElemContext;-><init>()V

    iput-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    .line 1259
    iput v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    .line 1260
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    .line 1261
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    .line 1262
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_mediatype:Ljava/lang/String;

    .line 1263
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    .line 1264
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    .line 1265
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    if-eqz v2, :cond_2e

    .line 1266
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1267
    :cond_2e
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    if-eqz v2, :cond_35

    .line 1268
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1269
    :cond_35
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    if-eqz v2, :cond_3c

    .line 1270
    invoke-virtual {v2}, Lorg/apache/xml/serializer/NamespaceMappings;->reset()V

    .line 1271
    :cond_3c
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    .line 1272
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    .line 1273
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    .line 1274
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    .line 1275
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    .line 1276
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    .line 1277
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    .line 1278
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_version:Ljava/lang/String;

    return-void
.end method

.method private static final greylist subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    .line 807
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public greylist addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 446
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_1b

    .line 448
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->patchName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-static {v4}, Lorg/apache/xml/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 p1, 0x0

    .line 450
    invoke-virtual {p0, v4, p1}, Lorg/apache/xml/serializer/SerializerBase;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 452
    const-string v5, "CDATA"

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_1b
    return-void
.end method

.method public greylist addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1308
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_10

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1310
    invoke-virtual/range {v1 .. v7}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_10
    return-void
.end method

.method public greylist addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_9

    .line 374
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_9
    return-void
.end method

.method public greylist addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7

    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p6

    if-nez p6, :cond_b

    goto :goto_12

    .line 415
    :cond_b
    iget-object p6, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {p6, p1, p2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p6

    goto :goto_18

    .line 413
    :cond_12
    :goto_12
    iget-object p6, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {p6, p3}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;)I

    move-result p6

    :goto_18
    if-ltz p6, :cond_21

    .line 423
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {p0, p6, p5}, Lorg/xml/sax/helpers/AttributesImpl;->setValue(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 429
    :cond_21
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p6}, Lorg/apache/xml/serializer/AttributesImplSerializer;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public greylist addAttributes(Lorg/xml/sax/Attributes;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 484
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_28

    .line 488
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    .line 491
    const-string v2, ""

    :cond_f
    move-object v4, v2

    .line 495
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    .line 496
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    .line 497
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v7

    .line 498
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, p0

    .line 493
    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_28
    return-void
.end method

.method public greylist addXSLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 466
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_17

    .line 468
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->patchName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 469
    invoke-static {v4}, Lorg/apache/xml/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 471
    const-string v5, "CDATA"

    const/4 v7, 0x1

    move-object v1, p0

    move-object v6, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v7}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_17
    return-void
.end method

.method public greylist asContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public greylist asDOM3Serializer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1584
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;-><init>(Lorg/apache/xml/serializer/SerializationHandler;)V

    return-object v0
.end method

.method public greylist asDOMSerializer()Lorg/apache/xml/serializer/DOMSerializer;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public greylist characters(Lorg/w3c/dom/Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 951
    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    .line 952
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 955
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 956
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_1a

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 958
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    .line 960
    :cond_1a
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 961
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-interface {p0, p1, v2, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_25
    return-void
.end method

.method public greylist close()V
    .registers 1

    .line 0
    return-void
.end method

.method public greylist comment(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 259
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v2, v2

    if-le v1, v2, :cond_14

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 261
    new-array v2, v2, [C

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    .line 263
    :cond_14
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p1, v0, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 264
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-interface {p0, p1, v0, v1}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    return-void
.end method

.method public greylist documentIsEmpty()Z
    .registers 2

    .line 1454
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    if-eqz v0, :cond_c

    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget p0, p0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api endEntity(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 527
    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 528
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    .line 529
    :cond_b
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    .line 531
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_14

    .line 532
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fireEndEntity(Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public greylist entityReference(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 904
    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    .line 906
    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->endEntity(Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_10

    .line 910
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fireEntityReference(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public whitelist test-api error(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 977
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    return-void
.end method

.method protected greylist fireCDATAEvent([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_e

    .line 1050
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 1051
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v0, 0xa

    invoke-interface {p0, v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    :cond_e
    return-void
.end method

.method protected greylist fireCharEvent([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_d

    .line 116
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 117
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v0, 0x5

    invoke-interface {p0, v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    :cond_d
    return-void
.end method

.method protected greylist fireCommentEvent([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_13

    .line 1066
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 1067
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const/16 p1, 0x8

    invoke-interface {p0, p1, v0}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;)V

    :cond_13
    return-void
.end method

.method protected greylist fireEndDoc()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1104
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_d

    .line 1106
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 1107
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I)V

    :cond_d
    return-void
.end method

.method protected greylist fireEndElem(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_e

    .line 100
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 101
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_e
    return-void
.end method

.method public greylist fireEndEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1079
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p1, :cond_7

    .line 1080
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    :cond_7
    return-void
.end method

.method protected greylist fireEntityReference(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1165
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_f

    .line 1167
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 1168
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_f
    return-void
.end method

.method protected greylist fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1150
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_d

    .line 1152
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 1153
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v0, 0x7

    invoke-interface {p0, v0, p1, p2}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method protected greylist fireStartDoc()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1090
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_d

    .line 1092
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 1093
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I)V

    :cond_d
    return-void
.end method

.method protected greylist fireStartElem(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1121
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_f

    .line 1123
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 1124
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v1, 0x3

    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-interface {v0, v1, p1, p0}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_f
    return-void
.end method

.method protected greylist fireStartEntity(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 995
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_e

    .line 997
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 998
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v0, 0x9

    invoke-interface {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;)V

    :cond_e
    return-void
.end method

.method public greylist getDoctypePublic()Ljava/lang/String;
    .registers 1

    .line 603
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypePublic:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getDoctypeSystem()Ljava/lang/String;
    .registers 1

    .line 625
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypeSystem:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getEncoding()Ljava/lang/String;
    .registers 2

    .line 561
    const-string v0, "encoding"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/SerializerBase;->getOutputProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getIndent()Z
    .registers 1

    .line 691
    iget-boolean p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    return p0
.end method

.method public greylist getIndentAmount()I
    .registers 1

    .line 740
    iget p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    return p0
.end method

.method public greylist getMediaType()Ljava/lang/String;
    .registers 1

    .line 701
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_mediatype:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;
    .registers 1

    .line 833
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    return-object p0
.end method

.method public greylist getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x3a

    .line 859
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 860
    const-string v2, ""

    if-lez v0, :cond_10

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    :cond_10
    move-object v3, v2

    .line 862
    :goto_11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz p2, :cond_43

    .line 864
    :cond_19
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    if-eqz p0, :cond_43

    .line 866
    invoke-virtual {p0, v3}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_42

    .line 867
    const-string p2, "xmlns"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    goto :goto_42

    .line 869
    :cond_2c
    new-instance p0, Ljava/lang/RuntimeException;

    sget-object p2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 872
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 870
    const-string v0, "ER_NAMESPACE_PREFIX"

    invoke-virtual {p2, v0, p1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    :goto_42
    return-object p0

    :cond_43
    return-object v2
.end method

.method public greylist getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 889
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    if-eqz p0, :cond_9

    .line 890
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getOmitXMLDeclaration()Z
    .registers 1

    .line 591
    iget-boolean p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    return p0
.end method

.method greylist getOutputPropDefaultKeys()Ljava/util/Set;
    .registers 1

    .line 1628
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method greylist getOutputPropKeys()Ljava/util/Set;
    .registers 1

    .line 1631
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public greylist getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1552
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1555
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0
.end method

.method public greylist getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    .line 1592
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/SerializerBase;->getProp(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1569
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/SerializerBase;->getProp(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 844
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getStandalone()Ljava/lang/String;
    .registers 1

    .line 682
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getTransformer()Ljavax/xml/transform/Transformer;
    .registers 1

    .line 939
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    return-object p0
.end method

.method public greylist getVersion()Ljava/lang/String;
    .registers 1

    .line 710
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_version:Ljava/lang/String;

    return-object p0
.end method

.method final greylist inTemporaryOutputState()Z
    .registers 1

    .line 1297
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist initCDATA()V
    .registers 1

    .line 0
    return-void
.end method

.method greylist initCdataElems(Ljava/lang/String;)V
    .registers 12

    if-eqz p1, :cond_64

    .line 1360
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1368
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    move v6, v5

    .line 1377
    :goto_10
    const-string v7, ""

    if-ge v4, v0, :cond_54

    .line 1380
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1382
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_39

    if-nez v6, :cond_35

    .line 1386
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_51

    .line 1388
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v5, :cond_2d

    move-object v3, v7

    .line 1391
    :cond_2d
    invoke-direct {p0, v3, v8}, Lorg/apache/xml/serializer/SerializerBase;->addCDATAElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    move v5, v2

    goto :goto_51

    .line 1398
    :cond_35
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_51

    :cond_39
    const/16 v7, 0x7b

    const/4 v9, 0x1

    if-ne v7, v8, :cond_40

    move v6, v9

    goto :goto_51

    :cond_40
    const/16 v7, 0x7d

    if-ne v7, v8, :cond_4e

    .line 1406
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1407
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    move v6, v2

    move v5, v9

    goto :goto_51

    .line 1413
    :cond_4e
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_51
    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1418
    :cond_54
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_64

    .line 1421
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez v5, :cond_61

    move-object v3, v7

    .line 1424
    :cond_61
    invoke-direct {p0, v3, p1}, Lorg/apache/xml/serializer/SerializerBase;->addCDATAElement(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    return-void
.end method

.method protected greylist isCdataSection()Z
    .registers 3

    .line 1475
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    if-eqz v0, :cond_64

    .line 1477
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    if-nez v1, :cond_14

    .line 1479
    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/xml/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1480
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object v0, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    .line 1483
    :cond_14
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-nez v1, :cond_21

    .line 1485
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->getElementURI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    goto :goto_4a

    .line 1487
    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4a

    .line 1488
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    if-nez v1, :cond_32

    .line 1489
    iget-object v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    goto :goto_4a

    .line 1492
    :cond_32
    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 1495
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->getElementURI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    .line 1499
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_64

    .line 1502
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object p0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_64

    const/4 p0, 0x1

    return p0

    :cond_64
    const/4 p0, 0x0

    return p0
.end method

.method public greylist namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method protected greylist patchName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x3a

    .line 281
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_3b

    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    .line 285
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    .line 286
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 289
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {p0, v3}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_26

    return-object v4

    :cond_26
    if-eq v2, v1, :cond_3b

    .line 294
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    return-object p1
.end method

.method public greylist reset()Z
    .registers 1

    .line 1241
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->resetSerializerBase()V

    const/4 p0, 0x1

    return p0
.end method

.method public greylist setDTDEntityExpansion(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 645
    const-string v0, "doctype-system"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string p1, "doctype-public"

    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist setDoctypePublic(Ljava/lang/String;)V
    .registers 3

    .line 612
    const-string v0, "doctype-public"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist setDoctypeSystem(Ljava/lang/String;)V
    .registers 3

    .line 634
    const-string v0, "doctype-system"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 570
    const-string v0, "encoding"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist setIndent(Z)V
    .registers 3

    if-eqz p1, :cond_5

    .line 761
    const-string p1, "yes"

    goto :goto_7

    :cond_5
    const-string p1, "no"

    .line 762
    :goto_7
    const-string v0, "indent"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist setIndentAmount(I)V
    .registers 2

    .line 749
    iput p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    return-void
.end method

.method public greylist setMediaType(Ljava/lang/String;)V
    .registers 3

    .line 732
    const-string v0, "media-type"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist setNamespaceMappings(Lorg/apache/xml/serializer/NamespaceMappings;)V
    .registers 2

    .line 1236
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    return-void
.end method

.method public greylist setOmitXMLDeclaration(Z)V
    .registers 3

    if-eqz p1, :cond_5

    .line 580
    const-string p1, "yes"

    goto :goto_7

    :cond_5
    const-string p1, "no"

    .line 581
    :goto_7
    const-string v0, "omit-xml-declaration"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 1601
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public greylist setOutputPropertyDefault(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 1610
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method greylist setProp(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 1657
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    if-nez v0, :cond_12

    .line 1658
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    .line 1659
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    :cond_12
    if-eqz p3, :cond_1a

    .line 1663
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1665
    :cond_1a
    const-string p3, "cdata-section-elements"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4b

    if-eqz p2, :cond_4b

    .line 1666
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/SerializerBase;->initCdataElems(Ljava/lang/String;)V

    .line 1667
    iget-object p3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_45

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x20

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1673
    :cond_45
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1676
    :cond_4b
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist setSourceLocator(Ljavax/xml/transform/SourceLocator;)V
    .registers 2

    .line 1225
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method public greylist setStandalone(Ljava/lang/String;)V
    .registers 3

    .line 658
    const-string v0, "standalone"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected greylist setStandaloneInternal(Ljava/lang/String;)V
    .registers 3

    .line 667
    const-string v0, "yes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 668
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    return-void

    .line 670
    :cond_b
    const-string p1, "no"

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    return-void
.end method

.method public greylist setTransformer(Ljavax/xml/transform/Transformer;)V
    .registers 3

    .line 920
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    .line 925
    instance-of v0, p1, Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_15

    check-cast p1, Lorg/apache/xml/serializer/SerializerTrace;

    .line 926
    invoke-interface {p1}, Lorg/apache/xml/serializer/SerializerTrace;->hasTraceListeners()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 927
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    check-cast p1, Lorg/apache/xml/serializer/SerializerTrace;

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    return-void

    :cond_15
    const/4 p1, 0x0

    .line 929
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    return-void
.end method

.method public greylist setVersion(Ljava/lang/String;)V
    .registers 3

    .line 720
    const-string v0, "version"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1190
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->startDocumentInternal()V

    const/4 v0, 0x0

    .line 1191
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    return-void
.end method

.method protected greylist startDocumentInternal()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1213
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_7

    .line 1214
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->fireStartDoc()V

    :cond_7
    return-void
.end method

.method public whitelist test-api unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api warning(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method
