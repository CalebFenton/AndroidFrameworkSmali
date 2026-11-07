.class public Lorg/apache/xalan/transformer/TreeWalker2Result;
.super Lorg/apache/xml/dtm/ref/DTMTreeWalker;
.source "TreeWalker2Result.java"


# instance fields
.field greylist m_handler:Lorg/apache/xml/serializer/SerializationHandler;

.field greylist m_startNode:I

.field greylist m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xml/serializer/SerializationHandler;)V
    .registers 4

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p2, v0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/dtm/DTM;)V

    .line 58
    iput-object p1, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    .line 59
    iput-object p2, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    return-void
.end method


# virtual methods
.method protected greylist endNode(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    .line 88
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_15

    .line 90
    iget-object p0, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    :cond_15
    return-void
.end method

.method protected greylist startNode(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 109
    :try_start_6
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_55

    .line 111
    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 113
    iget v0, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_startNode:I

    if-eq v0, p1, :cond_1a

    .line 115
    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    return-void

    .line 119
    :cond_1a
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, p1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    iget-object v4, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v4, v3, v1, v0}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 128
    invoke-interface {v0, p1, v2}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v1

    :goto_37
    const/4 v3, -0x1

    if-eq v3, v1, :cond_44

    .line 131
    iget-object v3, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-static {v3, v0, v1}, Lorg/apache/xalan/serialize/SerializerUtils;->ensureNamespaceDeclDeclared(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xml/dtm/DTM;I)V

    .line 129
    invoke-interface {v0, p1, v1, v2}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v1

    goto :goto_37

    .line 135
    :cond_44
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result p1

    :goto_48
    if-eq v3, p1, :cond_54

    .line 138
    iget-object v1, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-static {v1, p1}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    .line 136
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result p1

    goto :goto_48

    :cond_54
    return-void

    .line 145
    :cond_55
    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 146
    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    .line 147
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_5e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_5e} :catch_5f

    return-void

    :catch_5f
    move-exception p0

    .line 152
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist traverse(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 72
    iput p1, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_startNode:I

    .line 74
    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->traverse(I)V

    return-void
.end method
