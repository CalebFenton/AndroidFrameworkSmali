.class Lorg/apache/xalan/processor/ProcessorOutputElem;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorOutputElem.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x30c35205e6f98e86L


# instance fields
.field private greylist m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist addLiteralResultAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 163
    new-instance p3, Lorg/apache/xml/utils/QName;

    invoke-direct {p3, p1, p2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p0, p3, p4}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Lorg/apache/xml/utils/QName;Ljava/lang/String;)V

    return-void
.end method

.method public greylist setCdataSectionElements(Ljava/util/Vector;)V
    .registers 3

    .line 54
    iget-object p0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v0, "cdata-section-elements"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperties(Ljava/lang/String;Ljava/util/Vector;)V

    return-void
.end method

.method public greylist setDoctypePublic(Ljava/lang/String;)V
    .registers 3

    .line 64
    iget-object p0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v0, "doctype-public"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist setDoctypeSystem(Ljava/lang/String;)V
    .registers 3

    .line 74
    iget-object p0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v0, "doctype-system"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 84
    iget-object p0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v0, "encoding"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist setForeignAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 153
    new-instance p3, Lorg/apache/xml/utils/QName;

    invoke-direct {p3, p1, p2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p0, p3, p4}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Lorg/apache/xml/utils/QName;Ljava/lang/String;)V

    return-void
.end method

.method public greylist setIndent(Z)V
    .registers 3

    .line 94
    iget-object p0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v0, "indent"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->setBooleanProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public greylist setMediaType(Ljava/lang/String;)V
    .registers 3

    .line 104
    iget-object p0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v0, "media-type"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist setMethod(Lorg/apache/xml/utils/QName;)V
    .registers 3

    .line 114
    iget-object p0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v0, "method"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperty(Ljava/lang/String;Lorg/apache/xml/utils/QName;)V

    return-void
.end method

.method public greylist setOmitXmlDeclaration(Z)V
    .registers 3

    .line 124
    iget-object p0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v0, "omit-xml-declaration"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->setBooleanProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public greylist setStandalone(Z)V
    .registers 3

    .line 134
    iget-object p0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v0, "standalone"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->setBooleanProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public greylist setVersion(Ljava/lang/String;)V
    .registers 3

    .line 144
    iget-object p0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v0, "version"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 190
    new-instance p2, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {p2}, Lorg/apache/xalan/templates/OutputProperties;-><init>()V

    iput-object p2, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    .line 192
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 193
    iget-object p2, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 194
    iget-object p2, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/apache/xalan/templates/ElemTemplateElement;->setUid(I)V

    .line 195
    invoke-virtual {p0, p1, p4, p5, p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 199
    iget-object p2, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    .line 200
    invoke-virtual {p2}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p2

    const-string p3, "{http://xml.apache.org/xalan}entities"

    invoke-virtual {p2, p3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_4d

    .line 207
    :try_start_33
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p4

    .line 206
    invoke-static {p2, p4}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 208
    iget-object p4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p4}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p4

    invoke-virtual {p4, p3, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljavax/xml/transform/TransformerException; {:try_start_33 .. :try_end_44} :catch_45

    goto :goto_4d

    :catch_45
    move-exception p2

    .line 212
    invoke-virtual {p2}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 216
    :cond_4d
    :goto_4d
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p2, p3}, Lorg/apache/xalan/templates/Stylesheet;->setOutput(Lorg/apache/xalan/templates/OutputProperties;)V

    .line 218
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    .line 219
    iget-object p2, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    const/4 p1, 0x0

    .line 221
    iput-object p1, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    return-void
.end method
