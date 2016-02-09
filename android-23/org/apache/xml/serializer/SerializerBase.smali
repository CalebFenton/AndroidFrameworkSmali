.class public abstract Lorg/apache/xml/serializer/SerializerBase;
.super Ljava/lang/Object;
.source "SerializerBase.java"

# interfaces
.implements Lorg/apache/xml/serializer/SerializationHandler;
.implements Lorg/apache/xml/serializer/SerializerConstants;


# static fields
.field public static final PKG_NAME:Ljava/lang/String;

.field public static final PKG_PATH:Ljava/lang/String;


# instance fields
.field protected m_CdataElems:Ljava/util/Hashtable;

.field private m_OutputProps:Ljava/util/HashMap;

.field private m_OutputPropsDefault:Ljava/util/HashMap;

.field protected m_StringOfCDATASections:Ljava/lang/String;

.field protected m_attrBuff:[C

.field protected m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

.field protected m_cdataTagOpen:Z

.field protected m_charsBuff:[C

.field protected m_doIndent:Z

.field m_docIsEmpty:Z

.field protected m_doctypePublic:Ljava/lang/String;

.field protected m_doctypeSystem:Ljava/lang/String;

.field protected m_elemContext:Lorg/apache/xml/serializer/ElemContext;

.field protected m_inEntityRef:Z

.field protected m_inExternalDTD:Z

.field protected m_indentAmount:I

.field protected m_mediatype:Ljava/lang/String;

.field protected m_needToCallStartDocument:Z

.field m_needToOutputDocTypeDecl:Z

.field protected m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

.field protected m_shouldNotWriteXMLHeader:Z

.field protected m_sourceLocator:Ljavax/xml/transform/SourceLocator;

.field private m_standalone:Ljava/lang/String;

.field protected m_standaloneWasSpecified:Z

.field protected m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

.field private m_transformer:Ljavax/xml/transform/Transformer;

.field protected m_version:Ljava/lang/String;

.field protected m_writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x2e

    #@2
    const/4 v6, 0x0

    #@3
    .line 70
    const-class v5, Lorg/apache/xml/serializer/SerializerBase;

    #@5
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 71
    .local v1, "fullyQualifiedName":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    #@c
    move-result v3

    #@d
    .line 72
    .local v3, "lastDot":I
    if-gez v3, :cond_0

    #@f
    .line 73
    const-string/jumbo v5, ""

    #@12
    sput-object v5, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    #@14
    .line 78
    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@19
    .line 79
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    #@1a
    .local v2, "i":I
    :goto_1
    sget-object v5, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    #@1c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@1f
    move-result v5

    #@20
    if-ge v2, v5, :cond_2

    #@22
    .line 80
    sget-object v5, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    #@24
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v0

    #@28
    .line 81
    .local v0, "ch":C
    if-ne v0, v7, :cond_1

    #@2a
    .line 82
    const/16 v5, 0x2f

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2f
    .line 79
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_1

    #@32
    .line 75
    .end local v0    # "ch":C
    .end local v2    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    sput-object v5, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    #@38
    goto :goto_0

    #@39
    .line 84
    .restart local v0    # "ch":C
    .restart local v2    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3c
    goto :goto_2

    #@3d
    .line 86
    .end local v0    # "ch":C
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    sput-object v5, Lorg/apache/xml/serializer/SerializerBase;->PKG_PATH:Ljava/lang/String;

    #@43
    .line 47
    return-void
.end method

.method constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 124
    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    #@8
    .line 129
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    #@a
    .line 136
    new-instance v0, Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@c
    invoke-direct {v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;-><init>()V

    #@f
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@11
    .line 141
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    #@13
    .line 144
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    #@15
    .line 160
    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    #@17
    .line 165
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    #@19
    .line 175
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    #@1b
    .line 180
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    #@1d
    .line 184
    iput v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    #@1f
    .line 189
    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_version:Ljava/lang/String;

    #@21
    .line 223
    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    #@23
    .line 231
    new-instance v0, Lorg/apache/xml/serializer/ElemContext;

    #@25
    invoke-direct {v0}, Lorg/apache/xml/serializer/ElemContext;-><init>()V

    #@28
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2a
    .line 239
    const/16 v0, 0x3c

    #@2c
    new-array v0, v0, [C

    #@2e
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    #@30
    .line 247
    const/16 v0, 0x1e

    #@32
    new-array v0, v0, [C

    #@34
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    #@36
    .line 1353
    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    #@38
    .line 1355
    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    #@3a
    .line 1428
    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    #@3c
    .line 51
    return-void
.end method

.method private addCDATAElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1431
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1432
    new-instance v1, Ljava/util/Hashtable;

    #@6
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    #@9
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    #@b
    .line 1435
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    #@d
    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/util/Hashtable;

    #@13
    .line 1436
    .local v0, "h":Ljava/util/Hashtable;
    if-nez v0, :cond_1

    #@15
    .line 1437
    new-instance v0, Ljava/util/Hashtable;

    #@17
    .end local v0    # "h":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@1a
    .line 1438
    .restart local v0    # "h":Ljava/util/Hashtable;
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    #@1c
    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 1440
    :cond_1
    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 1429
    return-void
.end method

.method private flushMyWriter()V
    .locals 2

    #@0
    .prologue
    .line 1027
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1031
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    #@6
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1025
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1034
    :catch_0
    move-exception v0

    #@b
    .local v0, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method private getElementURI()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1520
    const/4 v1, 0x0

    #@1
    .line 1526
    .local v1, "uri":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@3
    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@5
    invoke-static {v2}, Lorg/apache/xml/serializer/SerializerBase;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 1528
    .local v0, "prefix":Ljava/lang/String;
    if-nez v0, :cond_1

    #@b
    .line 1530
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@d
    const-string/jumbo v3, ""

    #@10
    invoke-virtual {v2, v3}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 1534
    .local v1, "uri":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    #@16
    .line 1539
    const-string/jumbo v1, ""

    #@19
    .line 1542
    :cond_0
    return-object v1

    #@1a
    .line 1532
    .local v1, "uri":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@1c
    invoke-virtual {v2, v0}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .local v1, "uri":Ljava/lang/String;
    goto :goto_0
.end method

.method static getFirstCharLocName(Ljava/lang/String;)C
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1690
    const/16 v2, 0x7d

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v1

    #@7
    .line 1691
    .local v1, "i":I
    if-gez v1, :cond_0

    #@9
    .line 1692
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 1695
    .local v0, "first":C
    :goto_0
    return v0

    #@e
    .line 1694
    .end local v0    # "first":C
    :cond_0
    add-int/lit8 v2, v1, 0x1

    #@10
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .restart local v0    # "first":C
    goto :goto_0
.end method

.method protected static getLocalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "qname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 308
    const/16 v1, 0x3a

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@5
    move-result v0

    #@6
    .line 309
    .local v0, "col":I
    if-lez v0, :cond_0

    #@8
    add-int/lit8 v1, v0, 0x1

    #@a
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object p0

    #@e
    .end local p0    # "qname":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method protected static final getPrefixPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "qname"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 821
    const/16 v1, 0x3a

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 822
    .local v0, "col":I
    if-lez v0, :cond_0

    #@9
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    :goto_0
    return-object v1

    #@e
    :cond_0
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method private getProp(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Z

    #@0
    .prologue
    .line 1635
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1636
    new-instance v1, Ljava/util/HashMap;

    #@6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    #@b
    .line 1637
    new-instance v1, Ljava/util/HashMap;

    #@d
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@10
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    #@12
    .line 1641
    :cond_0
    if-eqz p2, :cond_1

    #@14
    .line 1642
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    #@16
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/lang/String;

    #@1c
    .line 1646
    .local v0, "val":Ljava/lang/String;
    :goto_0
    return-object v0

    #@1d
    .line 1644
    .end local v0    # "val":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/lang/String;

    #@25
    .restart local v0    # "val":Ljava/lang/String;
    goto :goto_0
.end method

.method private resetSerializerBase()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 1251
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@5
    invoke-virtual {v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    #@8
    .line 1252
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    #@a
    .line 1253
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    #@c
    .line 1254
    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    #@e
    .line 1255
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypePublic:Ljava/lang/String;

    #@10
    .line 1256
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypeSystem:Ljava/lang/String;

    #@12
    .line 1257
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    #@14
    .line 1258
    new-instance v0, Lorg/apache/xml/serializer/ElemContext;

    #@16
    invoke-direct {v0}, Lorg/apache/xml/serializer/ElemContext;-><init>()V

    #@19
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@1b
    .line 1259
    iput v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    #@1d
    .line 1260
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    #@1f
    .line 1261
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    #@21
    .line 1262
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_mediatype:Ljava/lang/String;

    #@23
    .line 1263
    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    #@25
    .line 1264
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    #@27
    .line 1265
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 1266
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    #@2d
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@30
    .line 1267
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    #@32
    if-eqz v0, :cond_1

    #@34
    .line 1268
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    #@36
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@39
    .line 1269
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@3b
    if-eqz v0, :cond_2

    #@3d
    .line 1270
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@3f
    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings;->reset()V

    #@42
    .line 1271
    :cond_2
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    #@44
    .line 1272
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    #@46
    .line 1273
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    #@48
    .line 1274
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    #@4a
    .line 1275
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    #@4c
    .line 1276
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@4e
    .line 1277
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    #@50
    .line 1278
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_version:Ljava/lang/String;

    #@52
    .line 1249
    return-void
.end method

.method private static final subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "p"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    #@0
    .prologue
    .line 807
    if-eq p0, p1, :cond_0

    #@2
    if-eqz p0, :cond_1

    #@4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0

    #@b
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 446
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@3
    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 448
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->patchName(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 449
    .local v3, "patchedName":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/xml/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 450
    .local v2, "localName":Ljava/lang/String;
    invoke-virtual {p0, v3, v6}, Lorg/apache/xml/serializer/SerializerBase;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 452
    .local v1, "uri":Ljava/lang/String;
    const-string/jumbo v4, "CDATA"

    #@16
    move-object v0, p0

    #@17
    move-object v5, p2

    #@18
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@1b
    .line 444
    .end local v1    # "uri":Ljava/lang/String;
    .end local v2    # "localName":Ljava/lang/String;
    .end local v3    # "patchedName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1308
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2
    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1310
    const/4 v6, 0x0

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move-object v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v4, p4

    #@c
    move-object v5, p5

    #@d
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@10
    .line 1306
    :cond_0
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "XSLAttribute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2
    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 374
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@9
    .line 370
    :cond_0
    return-void
.end method

.method public addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "XSLAttribute"    # Z

    #@0
    .prologue
    .line 412
    if-eqz p2, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 413
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@6
    invoke-virtual {v0, p3}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;)I

    #@9
    move-result v6

    #@a
    .line 417
    .local v6, "index":I
    :goto_0
    if-ltz v6, :cond_2

    #@c
    .line 423
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@e
    invoke-virtual {v0, v6, p5}, Lorg/apache/xml/serializer/AttributesImplSerializer;->setValue(ILjava/lang/String;)V

    #@11
    .line 424
    const/4 v7, 0x0

    #@12
    .line 432
    .local v7, "was_added":Z
    :goto_1
    return v7

    #@13
    .line 412
    .end local v6    # "index":I
    .end local v7    # "was_added":Z
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 415
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@1b
    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    move-result v6

    #@1f
    .restart local v6    # "index":I
    goto :goto_0

    #@20
    .line 429
    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@22
    move-object v1, p1

    #@23
    move-object v2, p2

    #@24
    move-object v3, p3

    #@25
    move-object v4, p4

    #@26
    move-object v5, p5

    #@27
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/serializer/AttributesImplSerializer;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    .line 430
    const/4 v7, 0x1

    #@2b
    .restart local v7    # "was_added":Z
    goto :goto_1
.end method

.method public addAttributes(Lorg/xml/sax/Attributes;)V
    .locals 9
    .param p1, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 484
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    #@3
    move-result v8

    #@4
    .line 486
    .local v8, "nAtts":I
    const/4 v7, 0x0

    #@5
    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    #@7
    .line 488
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 490
    .local v1, "uri":Ljava/lang/String;
    if-nez v1, :cond_0

    #@d
    .line 491
    const-string/jumbo v1, ""

    #@10
    .line 495
    :cond_0
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 496
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 497
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    .line 498
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    .line 499
    const/4 v6, 0x0

    #@21
    move-object v0, p0

    #@22
    .line 493
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@25
    .line 486
    add-int/lit8 v7, v7, 0x1

    #@27
    goto :goto_0

    #@28
    .line 481
    .end local v1    # "uri":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public addXSLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 466
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2
    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 468
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->patchName(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 469
    .local v3, "patchedName":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/xml/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 471
    .local v2, "localName":Ljava/lang/String;
    const-string/jumbo v4, "CDATA"

    #@11
    const/4 v6, 0x1

    #@12
    move-object v0, p0

    #@13
    move-object v1, p3

    #@14
    move-object v5, p2

    #@15
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@18
    .line 464
    .end local v2    # "localName":Ljava/lang/String;
    .end local v3    # "patchedName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 515
    return-object p0
.end method

.method public asDOM3Serializer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1584
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;

    #@2
    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;-><init>(Lorg/apache/xml/serializer/SerializationHandler;)V

    #@5
    return-object v0
.end method

.method public asDOMSerializer()Lorg/apache/xml/serializer/DOMSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 794
    return-object p0
.end method

.method public characters(Lorg/w3c/dom/Node;)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 951
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushPending()V

    #@4
    .line 952
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 953
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@a
    .line 955
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    .line 956
    .local v1, "length":I
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    #@10
    array-length v2, v2

    #@11
    if-le v1, v2, :cond_0

    #@13
    .line 958
    mul-int/lit8 v2, v1, 0x2

    #@15
    add-int/lit8 v2, v2, 0x1

    #@17
    new-array v2, v2, [C

    #@19
    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    #@1b
    .line 960
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    #@1d
    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    #@20
    .line 961
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    #@22
    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/xml/serializer/SerializerBase;->characters([CII)V

    #@25
    .line 949
    .end local v1    # "length":I
    :cond_1
    return-void
.end method

.method public close()V
    .locals 0

    #@0
    .prologue
    .line 540
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 256
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    #@3
    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    .line 259
    .local v0, "length":I
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    #@9
    array-length v1, v1

    #@a
    if-le v0, v1, :cond_0

    #@c
    .line 261
    mul-int/lit8 v1, v0, 0x2

    #@e
    add-int/lit8 v1, v1, 0x1

    #@10
    new-array v1, v1, [C

    #@12
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    #@14
    .line 263
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    #@16
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@19
    .line 264
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    #@1b
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/SerializerBase;->comment([CII)V

    #@1e
    .line 254
    return-void
.end method

.method public documentIsEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1454
    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@7
    iget v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@9
    if-nez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 527
    const-string/jumbo v0, "[dtd]"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 528
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    #@c
    .line 529
    :cond_0
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    #@e
    .line 531
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 532
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fireEndEntity(Ljava/lang/String;)V

    #@15
    .line 525
    :cond_1
    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 904
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushPending()V

    #@3
    .line 906
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->startEntity(Ljava/lang/String;)V

    #@6
    .line 907
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->endEntity(Ljava/lang/String;)V

    #@9
    .line 909
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 910
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fireEntityReference(Ljava/lang/String;)V

    #@10
    .line 901
    :cond_0
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .param p1, "exc"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 969
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "exc"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 977
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2
    const/4 v1, 0x0

    #@3
    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@5
    .line 975
    return-void
.end method

.method protected fireCDATAEvent([CII)V
    .locals 2
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1048
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1050
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    #@7
    .line 1051
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@9
    const/16 v1, 0xa

    #@b
    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    #@e
    .line 1046
    :cond_0
    return-void
.end method

.method protected fireCharEvent([CII)V
    .locals 2
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 116
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    #@7
    .line 117
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@9
    const/4 v1, 0x5

    #@a
    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    #@d
    .line 112
    :cond_0
    return-void
.end method

.method protected fireCommentEvent([CII)V
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1064
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1066
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    #@7
    .line 1067
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@9
    new-instance v1, Ljava/lang/String;

    #@b
    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@e
    const/16 v2, 0x8

    #@10
    invoke-interface {v0, v2, v1}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;)V

    #@13
    .line 1062
    :cond_0
    return-void
.end method

.method protected fireEndDoc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1104
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1106
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    #@7
    .line 1107
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@9
    const/4 v1, 0x2

    #@a
    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I)V

    #@d
    .line 1102
    :cond_0
    return-void
.end method

.method protected fireEndElem(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 98
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 100
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    #@8
    .line 101
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@a
    check-cast v0, Lorg/xml/sax/Attributes;

    #@c
    const/4 v2, 0x4

    #@d
    invoke-interface {v1, v2, p1, v0}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    #@10
    .line 96
    :cond_0
    return-void
.end method

.method public fireEndEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1079
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1080
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    #@7
    .line 1077
    :cond_0
    return-void
.end method

.method protected fireEntityReference(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1165
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1167
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    #@8
    .line 1168
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@a
    check-cast v0, Lorg/xml/sax/Attributes;

    #@c
    const/16 v2, 0x9

    #@e
    invoke-interface {v1, v2, p1, v0}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    #@11
    .line 1163
    :cond_0
    return-void
.end method

.method protected fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1150
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1152
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    #@7
    .line 1153
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@9
    const/4 v1, 0x7

    #@a
    invoke-interface {v0, v1, p1, p2}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Ljava/lang/String;)V

    #@d
    .line 1147
    :cond_0
    return-void
.end method

.method protected fireStartDoc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1090
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1092
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    #@7
    .line 1093
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@9
    const/4 v1, 0x1

    #@a
    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I)V

    #@d
    .line 1088
    :cond_0
    return-void
.end method

.method protected fireStartElem(Ljava/lang/String;)V
    .locals 3
    .param p1, "elemName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1121
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1123
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    #@7
    .line 1124
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@9
    .line 1125
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@b
    .line 1124
    const/4 v2, 0x3

    #@c
    invoke-interface {v0, v2, p1, v1}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    #@f
    .line 1119
    :cond_0
    return-void
.end method

.method protected fireStartEntity(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 995
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 997
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    #@7
    .line 998
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@9
    const/16 v1, 0x9

    #@b
    invoke-interface {v0, v1, p1}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;)V

    #@e
    .line 993
    :cond_0
    return-void
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 603
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypePublic:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 625
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypeSystem:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 561
    const-string/jumbo v0, "encoding"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/SerializerBase;->getOutputProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getIndent()Z
    .locals 1

    #@0
    .prologue
    .line 691
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    #@2
    return v0
.end method

.method public getIndentAmount()I
    .locals 1

    #@0
    .prologue
    .line 740
    iget v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    #@2
    return v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 701
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_mediatype:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;
    .locals 1

    #@0
    .prologue
    .line 833
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@2
    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "isElement"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 858
    const-string/jumbo v2, ""

    #@4
    .line 859
    .local v2, "uri":Ljava/lang/String;
    const/16 v3, 0x3a

    #@6
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@9
    move-result v0

    #@a
    .line 860
    .local v0, "col":I
    if-lez v0, :cond_2

    #@c
    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 862
    .local v1, "prefix":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, ""

    #@13
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    if-eqz p2, :cond_1

    #@1b
    .line 864
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 866
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@21
    invoke-virtual {v3, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 867
    if-nez v2, :cond_1

    #@27
    const-string/jumbo v3, "xmlns"

    #@2a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_3

    #@30
    .line 876
    :cond_1
    return-object v2

    #@31
    .line 860
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, ""

    #@34
    .restart local v1    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@35
    .line 869
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    #@37
    .line 870
    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@39
    .line 871
    const-string/jumbo v5, "ER_NAMESPACE_PREFIX"

    #@3c
    .line 872
    const/4 v6, 0x1

    #@3d
    new-array v6, v6, [Ljava/lang/Object;

    #@3f
    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@42
    move-result-object v7

    #@43
    aput-object v7, v6, v8

    #@45
    .line 870
    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    .line 869
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v3
.end method

.method public getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 888
    const/4 v0, 0x0

    #@1
    .line 889
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 890
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@7
    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 891
    .end local v0    # "uri":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getOmitXMLDeclaration()Z
    .locals 1

    #@0
    .prologue
    .line 591
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    #@2
    return v0
.end method

.method getOutputPropDefaultKeys()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 1628
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getOutputPropKeys()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 1631
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1552
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1554
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 1555
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1556
    :cond_0
    return-object v0
.end method

.method public getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1592
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/SerializerBase;->getProp(Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1569
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/SerializerBase;->getProp(Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;

    #@0
    .prologue
    .line 844
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@2
    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 845
    .local v0, "prefix":Ljava/lang/String;
    return-object v0
.end method

.method public getStandalone()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 1

    #@0
    .prologue
    .line 939
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    #@2
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 710
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_version:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method final inTemporaryOutputState()Z
    .locals 1

    #@0
    .prologue
    .line 1297
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method protected initCDATA()V
    .locals 0

    #@0
    .prologue
    .line 548
    return-void
.end method

.method initCdataElems(Ljava/lang/String;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1358
    if-eqz p1, :cond_8

    #@3
    .line 1360
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v6

    #@7
    .line 1363
    .local v6, "max":I
    const/4 v4, 0x0

    #@8
    .line 1366
    .local v4, "inCurly":Z
    const/4 v2, 0x0

    #@9
    .line 1368
    .local v2, "foundURI":Z
    new-instance v0, Ljava/lang/StringBuffer;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@e
    .line 1369
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    #@f
    .line 1370
    .local v7, "uri":Ljava/lang/String;
    const/4 v5, 0x0

    #@10
    .line 1377
    .local v5, "localName":Ljava/lang/String;
    const/4 v3, 0x0

    #@11
    .end local v5    # "localName":Ljava/lang/String;
    .end local v7    # "uri":Ljava/lang/String;
    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_6

    #@13
    .line 1380
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v1

    #@17
    .line 1382
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    #@1a
    move-result v8

    #@1b
    if-eqz v8, :cond_3

    #@1d
    .line 1384
    if-nez v4, :cond_2

    #@1f
    .line 1386
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@22
    move-result v8

    #@23
    if-lez v8, :cond_1

    #@25
    .line 1388
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    .line 1389
    .local v5, "localName":Ljava/lang/String;
    if-nez v2, :cond_0

    #@2b
    .line 1390
    const-string/jumbo v7, ""

    #@2e
    .line 1391
    :cond_0
    invoke-direct {p0, v7, v5}, Lorg/apache/xml/serializer/SerializerBase;->addCDATAElement(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 1392
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    #@34
    .line 1393
    const/4 v2, 0x0

    #@35
    .line 1377
    .end local v5    # "localName":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1398
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3b
    goto :goto_1

    #@3c
    .line 1400
    :cond_3
    const/16 v8, 0x7b

    #@3e
    if-ne v8, v1, :cond_4

    #@40
    .line 1401
    const/4 v4, 0x1

    #@41
    goto :goto_1

    #@42
    .line 1402
    :cond_4
    const/16 v8, 0x7d

    #@44
    if-ne v8, v1, :cond_5

    #@46
    .line 1405
    const/4 v2, 0x1

    #@47
    .line 1406
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4a
    move-result-object v7

    #@4b
    .line 1407
    .local v7, "uri":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    #@4e
    .line 1408
    const/4 v4, 0x0

    #@4f
    goto :goto_1

    #@50
    .line 1413
    .end local v7    # "uri":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@53
    goto :goto_1

    #@54
    .line 1418
    .end local v1    # "c":C
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@57
    move-result v8

    #@58
    if-lez v8, :cond_8

    #@5a
    .line 1421
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    .line 1422
    .restart local v5    # "localName":Ljava/lang/String;
    if-nez v2, :cond_7

    #@60
    .line 1423
    const-string/jumbo v7, ""

    #@63
    .line 1424
    :cond_7
    invoke-direct {p0, v7, v5}, Lorg/apache/xml/serializer/SerializerBase;->addCDATAElement(Ljava/lang/String;Ljava/lang/String;)V

    #@66
    .line 1356
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "foundURI":Z
    .end local v3    # "i":I
    .end local v4    # "inCurly":Z
    .end local v5    # "localName":Ljava/lang/String;
    .end local v6    # "max":I
    :cond_8
    return-void
.end method

.method protected isCdataSection()Z
    .locals 6

    #@0
    .prologue
    .line 1473
    const/4 v0, 0x0

    #@1
    .line 1475
    .local v0, "b":Z
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    #@3
    if-eqz v4, :cond_2

    #@5
    .line 1477
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@7
    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    #@9
    if-nez v4, :cond_0

    #@b
    .line 1479
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@d
    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@f
    invoke-static {v4}, Lorg/apache/xml/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 1480
    .local v2, "localName":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@15
    iput-object v2, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    #@17
    .line 1483
    .end local v2    # "localName":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@19
    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    #@1b
    if-nez v4, :cond_3

    #@1d
    .line 1485
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@1f
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->getElementURI()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    iput-object v5, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    #@25
    .line 1499
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    #@27
    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@29
    iget-object v5, v5, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    #@2b
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Ljava/util/Hashtable;

    #@31
    .line 1500
    .local v1, "h":Ljava/util/Hashtable;
    if-eqz v1, :cond_2

    #@33
    .line 1502
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@35
    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    #@37
    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    .line 1503
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_2

    #@3d
    .line 1504
    const/4 v0, 0x1

    #@3e
    .line 1508
    .end local v1    # "h":Ljava/util/Hashtable;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_2
    return v0

    #@3f
    .line 1487
    :cond_3
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@41
    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    #@43
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@46
    move-result v4

    #@47
    if-nez v4, :cond_1

    #@49
    .line 1488
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@4b
    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@4d
    if-nez v4, :cond_4

    #@4f
    .line 1489
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@51
    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@53
    iget-object v5, v5, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    #@55
    iput-object v5, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@57
    goto :goto_0

    #@58
    .line 1492
    :cond_4
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@5a
    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    #@5c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@5f
    move-result v4

    #@60
    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@62
    iget-object v5, v5, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@64
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@67
    move-result v5

    #@68
    if-ge v4, v5, :cond_1

    #@6a
    .line 1495
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@6c
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->getElementURI()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    iput-object v5, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    #@72
    goto :goto_0
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 777
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1318
    return-void
.end method

.method protected patchName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "qname"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x3a

    #@2
    const/4 v5, 0x0

    #@3
    .line 281
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    #@6
    move-result v1

    #@7
    .line 283
    .local v1, "lastColon":I
    if-lez v1, :cond_1

    #@9
    .line 284
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v0

    #@d
    .line 285
    .local v0, "firstColon":I
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    .line 286
    .local v3, "prefix":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    #@13
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 289
    .local v2, "localName":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@19
    invoke-virtual {v5, v3}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 290
    .local v4, "uri":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@1f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@22
    move-result v5

    #@23
    if-nez v5, :cond_0

    #@25
    .line 291
    return-object v2

    #@26
    .line 293
    :cond_0
    if-eq v0, v1, :cond_1

    #@28
    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    return-object v5

    #@3e
    .line 297
    .end local v0    # "firstColon":I
    .end local v2    # "localName":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method public reset()Z
    .locals 1

    #@0
    .prologue
    .line 1241
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->resetSerializerBase()V

    #@3
    .line 1242
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public setDTDEntityExpansion(Z)V
    .locals 0
    .param p1, "expand"    # Z

    #@0
    .prologue
    .line 1340
    return-void
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "doctypeSystem"    # Ljava/lang/String;
    .param p2, "doctypePublic"    # Ljava/lang/String;

    #@0
    .prologue
    .line 645
    const-string/jumbo v0, "doctype-system"

    #@3
    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 646
    const-string/jumbo v0, "doctype-public"

    #@9
    invoke-virtual {p0, v0, p2}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 643
    return-void
.end method

.method public setDoctypePublic(Ljava/lang/String;)V
    .locals 1
    .param p1, "doctypePublic"    # Ljava/lang/String;

    #@0
    .prologue
    .line 612
    const-string/jumbo v0, "doctype-public"

    #@3
    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 610
    return-void
.end method

.method public setDoctypeSystem(Ljava/lang/String;)V
    .locals 1
    .param p1, "doctypeSystem"    # Ljava/lang/String;

    #@0
    .prologue
    .line 634
    const-string/jumbo v0, "doctype-system"

    #@3
    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 632
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 340
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 570
    const-string/jumbo v0, "encoding"

    #@3
    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 568
    return-void
.end method

.method public setIndent(Z)V
    .locals 2
    .param p1, "doIndent"    # Z

    #@0
    .prologue
    .line 761
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "yes"

    #@5
    .line 762
    .local v0, "val":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "indent"

    #@8
    invoke-virtual {p0, v1, v0}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 759
    return-void

    #@c
    .line 761
    .end local v0    # "val":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "no"

    #@f
    .restart local v0    # "val":Ljava/lang/String;
    goto :goto_0
.end method

.method public setIndentAmount(I)V
    .locals 0
    .param p1, "m_indentAmount"    # I

    #@0
    .prologue
    .line 749
    iput p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    #@2
    .line 747
    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 1
    .param p1, "mediaType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 732
    const-string/jumbo v0, "media-type"

    #@3
    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 730
    return-void
.end method

.method public setNamespaceMappings(Lorg/apache/xml/serializer/NamespaceMappings;)V
    .locals 0
    .param p1, "mappings"    # Lorg/apache/xml/serializer/NamespaceMappings;

    #@0
    .prologue
    .line 1236
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@2
    .line 1235
    return-void
.end method

.method public setOmitXMLDeclaration(Z)V
    .locals 2
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 580
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "yes"

    #@5
    .line 581
    .local v0, "val":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "omit-xml-declaration"

    #@8
    invoke-virtual {p0, v1, v0}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 578
    return-void

    #@c
    .line 580
    .end local v0    # "val":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "no"

    #@f
    .restart local v0    # "val":Ljava/lang/String;
    goto :goto_0
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1601
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    #@4
    .line 1600
    return-void
.end method

.method public setOutputPropertyDefault(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1610
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    #@4
    .line 1609
    return-void
.end method

.method setProp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .param p3, "defaultVal"    # Z

    #@0
    .prologue
    .line 1657
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 1658
    new-instance v2, Ljava/util/HashMap;

    #@6
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    #@b
    .line 1659
    new-instance v2, Ljava/util/HashMap;

    #@d
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@10
    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    #@12
    .line 1662
    :cond_0
    if-eqz p3, :cond_1

    #@14
    .line 1663
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    #@16
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 1656
    :goto_0
    return-void

    #@1a
    .line 1665
    :cond_1
    const-string/jumbo v2, "cdata-section-elements"

    #@1d
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_3

    #@23
    if-eqz p2, :cond_3

    #@25
    .line 1666
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/SerializerBase;->initCdataElems(Ljava/lang/String;)V

    #@28
    .line 1667
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    #@2a
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Ljava/lang/String;

    #@30
    .line 1669
    .local v1, "oldVal":Ljava/lang/String;
    if-nez v1, :cond_2

    #@32
    .line 1670
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    const/16 v3, 0x20

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    .line 1673
    .local v0, "newVal":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    #@4b
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    goto :goto_0

    #@4f
    .line 1672
    .end local v0    # "newVal":Ljava/lang/String;
    :cond_2
    move-object v0, p2

    #@50
    .restart local v0    # "newVal":Ljava/lang/String;
    goto :goto_1

    #@51
    .line 1676
    .end local v0    # "newVal":Ljava/lang/String;
    .end local v1    # "oldVal":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    #@53
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    goto :goto_0
.end method

.method public setSourceLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 0
    .param p1, "locator"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    .line 1225
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    #@2
    .line 1223
    return-void
.end method

.method public setStandalone(Ljava/lang/String;)V
    .locals 1
    .param p1, "standalone"    # Ljava/lang/String;

    #@0
    .prologue
    .line 658
    const-string/jumbo v0, "standalone"

    #@3
    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 656
    return-void
.end method

.method protected setStandaloneInternal(Ljava/lang/String;)V
    .locals 1
    .param p1, "standalone"    # Ljava/lang/String;

    #@0
    .prologue
    .line 667
    const-string/jumbo v0, "yes"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 668
    const-string/jumbo v0, "yes"

    #@c
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    #@e
    .line 665
    :goto_0
    return-void

    #@f
    .line 670
    :cond_0
    const-string/jumbo v0, "no"

    #@12
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    #@14
    goto :goto_0
.end method

.method public setTransformer(Ljavax/xml/transform/Transformer;)V
    .locals 1
    .param p1, "t"    # Ljavax/xml/transform/Transformer;

    #@0
    .prologue
    .line 920
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    #@2
    .line 925
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    #@4
    instance-of v0, v0, Lorg/apache/xml/serializer/SerializerTrace;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 926
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    #@a
    check-cast v0, Lorg/apache/xml/serializer/SerializerTrace;

    #@c
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializerTrace;->hasTraceListeners()Z

    #@f
    move-result v0

    #@10
    .line 925
    if-eqz v0, :cond_0

    #@12
    .line 927
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    #@14
    check-cast v0, Lorg/apache/xml/serializer/SerializerTrace;

    #@16
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@18
    .line 918
    :goto_0
    return-void

    #@19
    .line 929
    :cond_0
    const/4 v0, 0x0

    #@1a
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@1c
    goto :goto_0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 720
    const-string/jumbo v0, "version"

    #@3
    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 718
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1190
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->startDocumentInternal()V

    #@3
    .line 1191
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    #@6
    .line 1192
    return-void
.end method

.method protected startDocumentInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1213
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1214
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->fireStartDoc()V

    #@7
    .line 1211
    :cond_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1331
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .param p1, "exc"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 984
    return-void
.end method
