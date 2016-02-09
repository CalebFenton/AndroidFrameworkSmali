.class public Lorg/apache/xalan/transformer/TreeWalker2Result;
.super Lorg/apache/xml/dtm/ref/DTMTreeWalker;
.source "TreeWalker2Result.java"


# instance fields
.field m_handler:Lorg/apache/xml/serializer/SerializationHandler;

.field m_startNode:I

.field m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xml/serializer/SerializationHandler;)V
    .locals 1
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/dtm/DTM;)V

    #@4
    .line 58
    iput-object p1, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@6
    .line 59
    iput-object p2, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@8
    .line 53
    return-void
.end method


# virtual methods
.method protected endNode(I)V
    .locals 2
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    #@3
    .line 88
    iget-object v0, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@5
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@8
    move-result v0

    #@9
    const/4 v1, 0x1

    #@a
    if-ne v1, v0, :cond_0

    #@c
    .line 90
    iget-object v0, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@e
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@15
    .line 85
    :cond_0
    return-void
.end method

.method protected startNode(I)V
    .locals 12
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    const/4 v10, 0x1

    #@2
    .line 105
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@4
    invoke-virtual {v9}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@7
    move-result-object v8

    #@8
    .line 109
    .local v8, "xcntxt":Lorg/apache/xpath/XPathContext;
    :try_start_0
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@a
    invoke-interface {v9, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@d
    move-result v9

    #@e
    if-ne v10, v9, :cond_3

    #@10
    .line 111
    invoke-virtual {v8, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@13
    .line 113
    iget v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_startNode:I

    #@15
    if-eq v9, p1, :cond_1

    #@17
    .line 115
    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    #@1a
    .line 102
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 119
    :cond_1
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@1d
    invoke-interface {v9, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 120
    .local v2, "elemName":Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@23
    invoke-interface {v9, p1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 121
    .local v4, "localName":Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@29
    invoke-interface {v9, p1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    .line 125
    .local v5, "namespace":Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2f
    invoke-interface {v9, v5, v4, v2}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@32
    .line 126
    const/4 v3, 0x0

    #@33
    .line 127
    .local v3, "hasNSDecls":Z
    iget-object v1, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@35
    .line 128
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    const/4 v9, 0x1

    #@36
    invoke-interface {v1, p1, v9}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    #@39
    move-result v6

    #@3a
    .local v6, "ns":I
    :goto_1
    if-eq v11, v6, :cond_2

    #@3c
    .line 131
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@3e
    invoke-static {v9, v1, v6}, Lorg/apache/xalan/serialize/SerializerUtils;->ensureNamespaceDeclDeclared(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xml/dtm/DTM;I)V

    #@41
    .line 129
    const/4 v9, 0x1

    #@42
    invoke-interface {v1, p1, v6, v9}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    #@45
    move-result v6

    #@46
    goto :goto_1

    #@47
    .line 135
    :cond_2
    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    #@4a
    move-result v0

    #@4b
    .local v0, "attr":I
    :goto_2
    if-eq v11, v0, :cond_0

    #@4d
    .line 138
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@4f
    invoke-static {v9, v0}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    #@52
    .line 136
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    #@55
    move-result v0

    #@56
    goto :goto_2

    #@57
    .line 145
    .end local v0    # "attr":I
    .end local v1    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v2    # "elemName":Ljava/lang/String;
    .end local v3    # "hasNSDecls":Z
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "namespace":Ljava/lang/String;
    .end local v6    # "ns":I
    :cond_3
    invoke-virtual {v8, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@5a
    .line 146
    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    #@5d
    .line 147
    invoke-virtual {v8}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    goto :goto_0

    #@61
    .line 151
    :catch_0
    move-exception v7

    #@62
    .line 152
    .local v7, "te":Ljavax/xml/transform/TransformerException;
    new-instance v9, Lorg/xml/sax/SAXException;

    #@64
    invoke-direct {v9, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@67
    throw v9
.end method

.method public traverse(I)V
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@2
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@c
    .line 72
    iput p1, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_startNode:I

    #@e
    .line 74
    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->traverse(I)V

    #@11
    .line 69
    return-void
.end method
