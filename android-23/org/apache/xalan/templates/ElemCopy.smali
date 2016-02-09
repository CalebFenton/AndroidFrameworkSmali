.class public Lorg/apache/xalan/templates/ElemCopy;
.super Lorg/apache/xalan/templates/ElemUse;
.source "ElemCopy.java"


# static fields
.field static final serialVersionUID:J = 0x4c07d43239755348L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUse;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 10
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 92
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@4
    move-result-object v7

    #@5
    .line 96
    .local v7, "xctxt":Lorg/apache/xpath/XPathContext;
    :try_start_0
    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@8
    move-result v6

    #@9
    .line 97
    .local v6, "sourceNode":I
    invoke-virtual {v7, v6}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@c
    .line 98
    invoke-virtual {v7, v6}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@f
    move-result-object v0

    #@10
    .line 99
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v0, v6}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@13
    move-result v2

    #@14
    .line 101
    .local v2, "nodeType":S
    const/16 v8, 0x9

    #@16
    if-eq v8, v2, :cond_1

    #@18
    const/16 v8, 0xb

    #@1a
    if-eq v8, v2, :cond_1

    #@1c
    .line 103
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@1f
    move-result-object v4

    #@20
    .line 107
    .local v4, "rthandler":Lorg/apache/xml/serializer/SerializationHandler;
    const/4 v8, 0x0

    #@21
    .line 106
    invoke-static {v6, v2, v0, v4, v8}, Lorg/apache/xalan/transformer/ClonerToResultTree;->cloneToResultTree(IILorg/apache/xml/dtm/DTM;Lorg/apache/xml/serializer/SerializationHandler;Z)V

    #@24
    .line 109
    if-ne v9, v2, :cond_0

    #@26
    .line 111
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    #@29
    .line 112
    invoke-static {v4, v6, v2, v0}, Lorg/apache/xalan/serialize/SerializerUtils;->processNSDecls(Lorg/apache/xml/serializer/SerializationHandler;IILorg/apache/xml/dtm/DTM;)V

    #@2c
    .line 113
    const/4 v8, 0x1

    #@2d
    invoke-virtual {p1, p0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    #@30
    .line 115
    invoke-interface {v0, v6}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    .line 116
    .local v3, "ns":Ljava/lang/String;
    invoke-interface {v0, v6}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    .line 117
    .local v1, "localName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@3b
    move-result-object v8

    #@3c
    .line 118
    invoke-interface {v0, v6}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@3f
    move-result-object v9

    #@40
    .line 117
    invoke-interface {v8, v3, v1, v9}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 133
    .end local v1    # "localName":Ljava/lang/String;
    .end local v3    # "ns":Ljava/lang/String;
    .end local v4    # "rthandler":Lorg/apache/xml/serializer/SerializationHandler;
    :cond_0
    :goto_0
    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@46
    .line 90
    return-void

    #@47
    .line 123
    :cond_1
    :try_start_1
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    #@4a
    .line 124
    const/4 v8, 0x1

    #@4b
    invoke-virtual {p1, p0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 128
    .end local v0    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v2    # "nodeType":S
    .end local v6    # "sourceNode":I
    :catch_0
    move-exception v5

    #@50
    .line 129
    .local v5, "se":Lorg/xml/sax/SAXException;
    :try_start_2
    new-instance v8, Ljavax/xml/transform/TransformerException;

    #@52
    invoke-direct {v8, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@55
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    .line 132
    .end local v5    # "se":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v8

    #@57
    .line 133
    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@5a
    .line 132
    throw v8
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 66
    const-string/jumbo v0, "copy"

    #@3
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 56
    const/16 v0, 0x9

    #@2
    return v0
.end method
