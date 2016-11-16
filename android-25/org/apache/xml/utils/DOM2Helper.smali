.class public Lorg/apache/xml/utils/DOM2Helper;
.super Lorg/apache/xml/utils/DOMHelper;
.source "DOM2Helper.java"


# instance fields
.field private m_doc:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMHelper;-><init>()V

    #@3
    return-void
.end method

.method public static getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p0, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 264
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@3
    move-result-object v0

    #@4
    .line 265
    .local v0, "parent":Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    #@6
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    #@9
    move-result v1

    #@a
    const/4 v2, 0x2

    #@b
    if-ne v2, v1, :cond_0

    #@d
    .line 266
    check-cast p0, Lorg/w3c/dom/Attr;

    #@f
    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    #@12
    move-result-object v0

    #@13
    .line 267
    :cond_0
    return-object v0
.end method

.method public static isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 3
    .param p0, "node1"    # Lorg/w3c/dom/Node;
    .param p1, "node2"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 234
    instance-of v2, p0, Lorg/apache/xml/utils/DOMOrder;

    #@2
    if-eqz v2, :cond_1

    #@4
    instance-of v2, p1, Lorg/apache/xml/utils/DOMOrder;

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 236
    check-cast p0, Lorg/apache/xml/utils/DOMOrder;

    #@a
    .end local p0    # "node1":Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/apache/xml/utils/DOMOrder;->getUid()I

    #@d
    move-result v0

    #@e
    .line 237
    .local v0, "index1":I
    check-cast p1, Lorg/apache/xml/utils/DOMOrder;

    #@10
    .end local p1    # "node2":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/apache/xml/utils/DOMOrder;->getUid()I

    #@13
    move-result v1

    #@14
    .line 239
    .local v1, "index2":I
    if-gt v0, v1, :cond_0

    #@16
    const/4 v2, 0x1

    #@17
    :goto_0
    return v2

    #@18
    :cond_0
    const/4 v2, 0x0

    #@19
    goto :goto_0

    #@1a
    .line 246
    .end local v0    # "index1":I
    .end local v1    # "index2":I
    .restart local p0    # "node1":Lorg/w3c/dom/Node;
    .restart local p1    # "node2":Lorg/w3c/dom/Node;
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    #@1d
    move-result v2

    #@1e
    return v2
.end method


# virtual methods
.method public checkNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    return-void
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/xml/utils/DOM2Helper;->m_doc:Lorg/w3c/dom/Document;

    #@2
    return-object v0
.end method

.method public getElementByID(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "doc"    # Lorg/w3c/dom/Document;

    #@0
    .prologue
    .line 208
    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 284
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 286
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    invoke-super {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 306
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 6
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@3
    move-result-object v0

    #@4
    .line 145
    .local v0, "builderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v5, 0x1

    #@5
    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    #@8
    .line 146
    const/4 v5, 0x1

    #@9
    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    #@c
    .line 148
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@f
    move-result-object v2

    #@10
    .line 166
    .local v2, "parser":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Lorg/apache/xml/utils/DefaultErrorHandler;

    #@12
    invoke-direct {v5}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    #@15
    .line 165
    invoke-virtual {v2, v5}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    #@18
    .line 173
    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {p0, v5}, Lorg/apache/xml/utils/DOM2Helper;->setDocument(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 133
    return-void

    #@20
    .line 184
    .end local v0    # "builderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "parser":Ljavax/xml/parsers/DocumentBuilder;
    :catch_0
    move-exception v1

    #@21
    .line 185
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    #@23
    invoke-direct {v5, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@26
    throw v5

    #@27
    .line 180
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v3

    #@28
    .line 181
    .local v3, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    #@2a
    invoke-direct {v5, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@2d
    throw v5

    #@2e
    .line 176
    .end local v3    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v4

    #@2f
    .line 177
    .local v4, "se":Lorg/xml/sax/SAXException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    #@31
    invoke-direct {v5, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@34
    throw v5
.end method

.method public setDocument(Lorg/w3c/dom/Document;)V
    .locals 0
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    #@0
    .prologue
    .line 97
    iput-object p1, p0, Lorg/apache/xml/utils/DOM2Helper;->m_doc:Lorg/w3c/dom/Document;

    #@2
    .line 95
    return-void
.end method

.method public supportsSAX()Z
    .locals 1

    #@0
    .prologue
    .line 79
    const/4 v0, 0x1

    #@1
    return v0
.end method
