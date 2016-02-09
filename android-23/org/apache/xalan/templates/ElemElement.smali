.class public Lorg/apache/xalan/templates/ElemElement;
.super Lorg/apache/xalan/templates/ElemUse;
.source "ElemElement.java"


# static fields
.field static final serialVersionUID:J = -0x48147bf6a23adefL


# instance fields
.field protected m_name_avt:Lorg/apache/xalan/templates/AVT;

.field protected m_namespace_avt:Lorg/apache/xalan/templates/AVT;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 47
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUse;-><init>()V

    #@4
    .line 57
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    #@6
    .line 92
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    #@8
    .line 47
    return-void
.end method


# virtual methods
.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttrs"    # Z

    #@0
    .prologue
    .line 360
    if-eqz p2, :cond_1

    #@2
    .line 362
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 363
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    #@8
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@b
    .line 365
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 366
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    #@11
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@14
    .line 369
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemUse;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    #@17
    .line 358
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 4
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 132
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@6
    move-result-object v0

    #@7
    .line 133
    .local v0, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    #@a
    move-result-object v1

    #@b
    .line 134
    .local v1, "vnames":Ljava/util/Vector;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 135
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    #@11
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@14
    move-result v3

    #@15
    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    #@18
    .line 136
    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 137
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    #@1e
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@21
    move-result v3

    #@22
    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    #@25
    .line 128
    :cond_1
    return-void
.end method

.method constructNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 4
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nodeNamespace"    # Ljava/lang/String;
    .param p4, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    :try_start_0
    invoke-virtual {p4}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@3
    move-result-object v0

    #@4
    .line 316
    .local v0, "rhandler":Lorg/apache/xml/serializer/SerializationHandler;
    if-nez p1, :cond_1

    #@6
    .line 318
    const/4 v2, 0x0

    #@7
    .line 335
    .local v2, "shouldAddAttrs":Z
    :goto_0
    invoke-virtual {p4, p0, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    #@a
    .line 338
    if-eqz p1, :cond_0

    #@c
    .line 340
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-interface {v0, p3, v3, p1}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 342
    if-eqz p2, :cond_0

    #@15
    .line 344
    invoke-interface {v0, p2}, Lorg/apache/xml/serializer/SerializationHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@18
    .line 307
    :cond_0
    return-void

    #@19
    .line 322
    .end local v2    # "shouldAddAttrs":Z
    :cond_1
    if-eqz p2, :cond_2

    #@1b
    .line 324
    const/4 v3, 0x1

    #@1c
    invoke-interface {v0, p2, p3, v3}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@1f
    .line 327
    :cond_2
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-interface {v0, p3, v3, p1}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 330
    invoke-super {p0, p4}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 332
    const/4 v2, 0x1

    #@2a
    .restart local v2    # "shouldAddAttrs":Z
    goto :goto_0

    #@2b
    .line 349
    .end local v0    # "rhandler":Lorg/apache/xml/serializer/SerializationHandler;
    .end local v2    # "shouldAddAttrs":Z
    :catch_0
    move-exception v1

    #@2c
    .line 350
    .local v1, "se":Lorg/xml/sax/SAXException;
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@2e
    invoke-direct {v3, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@31
    throw v3
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 13
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 205
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@5
    move-result-object v4

    #@6
    .line 206
    .local v4, "rhandler":Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@9
    move-result-object v6

    #@a
    .line 207
    .local v6, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@d
    move-result v5

    #@e
    .line 210
    .local v5, "sourceNode":I
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    #@10
    if-nez v7, :cond_3

    #@12
    const/4 v1, 0x0

    #@13
    .line 212
    :goto_0
    const/4 v3, 0x0

    #@14
    .line 213
    .local v3, "prefix":Ljava/lang/String;
    const-string/jumbo v2, ""

    #@17
    .line 216
    .local v2, "nodeNamespace":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@19
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    #@1b
    invoke-virtual {v7}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_4

    #@21
    .line 225
    :cond_0
    if-eqz v1, :cond_2

    #@23
    .line 227
    invoke-static {v1}, Lorg/apache/xml/utils/QName;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 229
    .local v3, "prefix":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    #@29
    if-eqz v7, :cond_8

    #@2b
    .line 231
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    #@2d
    invoke-virtual {v7, v6, v5, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 232
    if-eqz v2, :cond_1

    #@33
    .line 233
    if-eqz v3, :cond_5

    #@35
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@38
    move-result v7

    #@39
    if-lez v7, :cond_5

    #@3b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@3e
    move-result v7

    #@3f
    if-nez v7, :cond_5

    #@41
    .line 234
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    #@44
    move-result-object v7

    #@45
    .line 235
    const-string/jumbo v8, "ER_NULL_URI_NAMESPACE"

    #@48
    .line 234
    invoke-virtual {v7, p0, v8}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    #@4b
    .line 287
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v3, v2, p1}, Lorg/apache/xalan/templates/ElemElement;->constructNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/transformer/TransformerImpl;)V

    #@4e
    .line 202
    return-void

    #@4f
    .line 210
    .end local v2    # "nodeNamespace":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    #@51
    invoke-virtual {v7, v6, v5, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    .local v1, "nodeName":Ljava/lang/String;
    goto :goto_0

    #@56
    .line 216
    .end local v1    # "nodeName":Ljava/lang/String;
    .restart local v2    # "nodeNamespace":Ljava/lang/String;
    .local v3, "prefix":Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    #@59
    move-result v7

    #@5a
    if-nez v7, :cond_0

    #@5c
    .line 218
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    #@5f
    move-result-object v7

    #@60
    .line 219
    const-string/jumbo v8, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    #@63
    .line 220
    const/4 v9, 0x2

    #@64
    new-array v9, v9, [Ljava/lang/Object;

    #@66
    const-string/jumbo v10, "name"

    #@69
    aput-object v10, v9, v11

    #@6b
    aput-object v1, v9, v12

    #@6d
    .line 218
    invoke-virtual {v7, p0, v8, v9}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    #@70
    .line 222
    const/4 v1, 0x0

    #@71
    .line 217
    .local v1, "nodeName":Ljava/lang/String;
    goto :goto_1

    #@72
    .line 240
    .end local v1    # "nodeName":Ljava/lang/String;
    .local v3, "prefix":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v4, v3, v2}, Lorg/apache/xalan/templates/ElemElement;->resolvePrefix(Lorg/apache/xml/serializer/SerializationHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    .line 241
    if-nez v3, :cond_6

    #@78
    .line 242
    const-string/jumbo v3, ""

    #@7b
    .line 244
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@7e
    move-result v7

    #@7f
    if-lez v7, :cond_7

    #@81
    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v7

    #@8a
    const-string/jumbo v8, ":"

    #@8d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v7

    #@91
    invoke-static {v1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    #@94
    move-result-object v8

    #@95
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v7

    #@99
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v1

    #@9d
    .local v1, "nodeName":Ljava/lang/String;
    goto :goto_1

    #@9e
    .line 247
    .end local v1    # "nodeName":Ljava/lang/String;
    :cond_7
    invoke-static {v1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    .restart local v1    # "nodeName":Ljava/lang/String;
    goto :goto_1

    #@a3
    .line 258
    .end local v1    # "nodeName":Ljava/lang/String;
    :cond_8
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/ElemElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@a6
    move-result-object v2

    #@a7
    .line 264
    if-nez v2, :cond_9

    #@a9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@ac
    move-result v7

    #@ad
    if-nez v7, :cond_9

    #@af
    .line 265
    const-string/jumbo v2, ""

    #@b2
    goto :goto_1

    #@b3
    .line 266
    :cond_9
    if-nez v2, :cond_2

    #@b5
    .line 268
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    #@b8
    move-result-object v7

    #@b9
    .line 269
    const-string/jumbo v8, "WG_COULD_NOT_RESOLVE_PREFIX"

    #@bc
    .line 270
    const/4 v9, 0x1

    #@bd
    new-array v9, v9, [Ljava/lang/Object;

    #@bf
    const/4 v10, 0x0

    #@c0
    aput-object v3, v9, v10

    #@c2
    .line 268
    invoke-virtual {v7, p0, v8, v9}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c5
    .line 272
    const/4 v1, 0x0

    #@c6
    .local v1, "nodeName":Ljava/lang/String;
    goto :goto_1

    #@c7
    .line 277
    .end local v1    # "nodeName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@c8
    .line 278
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    #@cb
    move-result-object v7

    #@cc
    .line 279
    const-string/jumbo v8, "WG_COULD_NOT_RESOLVE_PREFIX"

    #@cf
    .line 280
    new-array v9, v12, [Ljava/lang/Object;

    #@d1
    aput-object v3, v9, v11

    #@d3
    .line 278
    invoke-virtual {v7, p0, v8, v9}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    #@d6
    .line 282
    const/4 v1, 0x0

    #@d7
    .restart local v1    # "nodeName":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public getName()Lorg/apache/xalan/templates/AVT;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    return-object v0
.end method

.method public getNamespace()Lorg/apache/xalan/templates/AVT;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 159
    const-string/jumbo v0, "element"

    #@3
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 149
    const/16 v0, 0x2e

    #@2
    return v0
.end method

.method protected resolvePrefix(Lorg/apache/xml/serializer/SerializationHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "rhandler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nodeNamespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    return-object p2
.end method

.method public setName(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    #@0
    .prologue
    .line 69
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    .line 67
    return-void
.end method

.method public setNamespace(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    #@0
    .prologue
    .line 105
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    .line 103
    return-void
.end method
