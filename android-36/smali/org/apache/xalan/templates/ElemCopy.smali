.class public Lorg/apache/xalan/templates/ElemCopy;
.super Lorg/apache/xalan/templates/ElemUse;
.source "ElemCopy.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x4c07d43239755348L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUse;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 96
    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    .line 97
    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 98
    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    .line 99
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v3

    const/16 v4, 0x9

    const/4 v5, 0x1

    if-eq v4, v3, :cond_47

    const/16 v4, 0xb

    if-eq v4, v3, :cond_47

    .line 103
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v4

    const/4 v6, 0x0

    .line 106
    invoke-static {v1, v3, v2, v4, v6}, Lorg/apache/xalan/transformer/ClonerToResultTree;->cloneToResultTree(IILorg/apache/xml/dtm/DTM;Lorg/apache/xml/serializer/SerializationHandler;Z)V

    if-ne v5, v3, :cond_4d

    .line 111
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 112
    invoke-static {v4, v1, v3, v2}, Lorg/apache/xalan/serialize/SerializerUtils;->processNSDecls(Lorg/apache/xml/serializer/SerializationHandler;IILorg/apache/xml/dtm/DTM;)V

    .line 113
    invoke-virtual {p1, p0, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    .line 115
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p0

    .line 116
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object p1

    .line 118
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-interface {p1, p0, v3, v1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    :catchall_43
    move-exception p0

    goto :goto_57

    :catch_45
    move-exception p0

    goto :goto_51

    .line 123
    :cond_47
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 124
    invoke-virtual {p1, p0, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_4d
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4d} :catch_45
    .catchall {:try_start_4 .. :try_end_4d} :catchall_43

    .line 133
    :cond_4d
    :goto_4d
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    return-void

    .line 129
    :goto_51
    :try_start_51
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_43

    .line 133
    :goto_57
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 134
    throw p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 66
    const-string p0, "copy"

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x9

    return p0
.end method
