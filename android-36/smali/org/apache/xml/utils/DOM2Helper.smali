.class public Lorg/apache/xml/utils/DOM2Helper;
.super Lorg/apache/xml/utils/DOMHelper;
.source "DOM2Helper.java"


# instance fields
.field private greylist m_doc:Lorg/w3c/dom/Document;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMHelper;-><init>()V

    return-void
.end method

.method public static greylist getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4

    .line 264
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v1, 0x2

    .line 265
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v1, v2, :cond_14

    .line 266
    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :cond_14
    return-object v0
.end method

.method public static greylist isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .registers 3

    .line 234
    instance-of v0, p0, Lorg/apache/xml/utils/DOMOrder;

    if-eqz v0, :cond_1a

    instance-of v0, p1, Lorg/apache/xml/utils/DOMOrder;

    if-eqz v0, :cond_1a

    .line 236
    check-cast p0, Lorg/apache/xml/utils/DOMOrder;

    invoke-interface {p0}, Lorg/apache/xml/utils/DOMOrder;->getUid()I

    move-result p0

    .line 237
    check-cast p1, Lorg/apache/xml/utils/DOMOrder;

    invoke-interface {p1}, Lorg/apache/xml/utils/DOMOrder;->getUid()I

    move-result p1

    if-gt p0, p1, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0

    .line 246
    :cond_1a
    invoke-static {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public greylist checkNode(Lorg/w3c/dom/Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist getDocument()Lorg/w3c/dom/Document;
    .registers 1

    .line 108
    iget-object p0, p0, Lorg/apache/xml/utils/DOM2Helper;->m_doc:Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public greylist getElementByID(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 3

    .line 208
    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public greylist getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 3

    .line 284
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 286
    invoke-super {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0
.end method

.method public greylist getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 2

    .line 306
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist parse(Lorg/xml/sax/InputSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 143
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 146
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 148
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 165
    new-instance v1, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v1}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 173
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOM2Helper;->setDocument(Lorg/w3c/dom/Document;)V
    :try_end_1e
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_1e} :catch_2d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_1e} :catch_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    .line 185
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_26
    move-exception p0

    .line 181
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2d
    move-exception p0

    .line 177
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public greylist setDocument(Lorg/w3c/dom/Document;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lorg/apache/xml/utils/DOM2Helper;->m_doc:Lorg/w3c/dom/Document;

    return-void
.end method

.method public greylist supportsSAX()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method
