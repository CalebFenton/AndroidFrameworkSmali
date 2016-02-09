.class Lorg/apache/xalan/processor/ProcessorOutputElem;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorOutputElem.java"


# static fields
.field static final serialVersionUID:J = 0x30c35205e6f98e86L


# instance fields
.field private m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public addLiteralResultAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "attrUri"    # Ljava/lang/String;
    .param p2, "attrLocalName"    # Ljava/lang/String;
    .param p3, "attrRawName"    # Ljava/lang/String;
    .param p4, "attrValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
    new-instance v0, Lorg/apache/xml/utils/QName;

    #@2
    invoke-direct {v0, p1, p2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 164
    .local v0, "key":Lorg/apache/xml/utils/QName;
    iget-object v1, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@7
    invoke-virtual {v1, v0, p4}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Lorg/apache/xml/utils/QName;Ljava/lang/String;)V

    #@a
    .line 161
    return-void
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .locals 2
    .param p1, "newValue"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    const-string/jumbo v1, "cdata-section-elements"

    #@5
    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperties(Ljava/lang/String;Ljava/util/Vector;)V

    #@8
    .line 52
    return-void
.end method

.method public setDoctypePublic(Ljava/lang/String;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    const-string/jumbo v1, "doctype-public"

    #@5
    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 62
    return-void
.end method

.method public setDoctypeSystem(Ljava/lang/String;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    const-string/jumbo v1, "doctype-system"

    #@5
    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 72
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    const-string/jumbo v1, "encoding"

    #@5
    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 82
    return-void
.end method

.method public setForeignAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "attrUri"    # Ljava/lang/String;
    .param p2, "attrLocalName"    # Ljava/lang/String;
    .param p3, "attrRawName"    # Ljava/lang/String;
    .param p4, "attrValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 153
    new-instance v0, Lorg/apache/xml/utils/QName;

    #@2
    invoke-direct {v0, p1, p2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 154
    .local v0, "key":Lorg/apache/xml/utils/QName;
    iget-object v1, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@7
    invoke-virtual {v1, v0, p4}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Lorg/apache/xml/utils/QName;Ljava/lang/String;)V

    #@a
    .line 151
    return-void
.end method

.method public setIndent(Z)V
    .locals 2
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    const-string/jumbo v1, "indent"

    #@5
    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setBooleanProperty(Ljava/lang/String;Z)V

    #@8
    .line 92
    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    const-string/jumbo v1, "media-type"

    #@5
    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 102
    return-void
.end method

.method public setMethod(Lorg/apache/xml/utils/QName;)V
    .locals 2
    .param p1, "newValue"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    const-string/jumbo v1, "method"

    #@5
    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperty(Ljava/lang/String;Lorg/apache/xml/utils/QName;)V

    #@8
    .line 112
    return-void
.end method

.method public setOmitXmlDeclaration(Z)V
    .locals 2
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    const-string/jumbo v1, "omit-xml-declaration"

    #@5
    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setBooleanProperty(Ljava/lang/String;Z)V

    #@8
    .line 122
    return-void
.end method

.method public setStandalone(Z)V
    .locals 2
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    const-string/jumbo v1, "standalone"

    #@5
    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setBooleanProperty(Ljava/lang/String;Z)V

    #@8
    .line 132
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    const-string/jumbo v1, "version"

    #@5
    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 142
    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 190
    new-instance v4, Lorg/apache/xalan/templates/OutputProperties;

    #@3
    invoke-direct {v4}, Lorg/apache/xalan/templates/OutputProperties;-><init>()V

    #@6
    iput-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@8
    .line 192
    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@a
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v4, v5}, Lorg/apache/xalan/templates/OutputProperties;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    #@11
    .line 193
    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@13
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v4, v5}, Lorg/apache/xalan/templates/OutputProperties;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    #@1a
    .line 194
    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@1c
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    #@1f
    move-result v5

    #@20
    invoke-virtual {v4, v5}, Lorg/apache/xalan/templates/OutputProperties;->setUid(I)V

    #@23
    .line 195
    invoke-virtual {p0, p1, p4, p5, p0}, Lorg/apache/xalan/processor/ProcessorOutputElem;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@26
    .line 200
    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@28
    invoke-virtual {v4}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, "{http://xml.apache.org/xalan}entities"

    #@2f
    invoke-virtual {v4, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Ljava/lang/String;

    #@35
    .line 202
    .local v1, "entitiesFileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@37
    .line 207
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    .line 206
    invoke-static {v1, v4}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    .line 208
    .local v0, "absURL":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@41
    invoke-virtual {v4}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    #@44
    move-result-object v4

    #@45
    const-string/jumbo v5, "{http://xml.apache.org/xalan}entities"

    #@48
    invoke-virtual {v4, v5, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 216
    .end local v0    # "absURL":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@4e
    move-result-object v4

    #@4f
    iget-object v5, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@51
    invoke-virtual {v4, v5}, Lorg/apache/xalan/templates/Stylesheet;->setOutput(Lorg/apache/xalan/templates/OutputProperties;)V

    #@54
    .line 218
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@57
    move-result-object v2

    #@58
    .line 219
    .local v2, "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@5a
    invoke-virtual {v2, v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@5d
    .line 221
    iput-object v6, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@5f
    .line 187
    return-void

    #@60
    .line 211
    .end local v2    # "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    :catch_0
    move-exception v3

    #@61
    .line 212
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {p1, v4, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@68
    goto :goto_0
.end method
