.class public Lorg/apache/xalan/templates/ElemElement;
.super Lorg/apache/xalan/templates/ElemUse;
.source "ElemElement.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x48147bf6a23adefL


# instance fields
.field protected greylist m_name_avt:Lorg/apache/xalan/templates/AVT;

.field protected greylist m_namespace_avt:Lorg/apache/xalan/templates/AVT;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUse;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    .line 92
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method


# virtual methods
.method protected greylist callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 4

    if-eqz p2, :cond_10

    .line 362
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_9

    .line 363
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 365
    :cond_9
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_10

    .line 366
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 369
    :cond_10
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 130
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 132
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v1, :cond_16

    .line 135
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 136
    :cond_16
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz p0, :cond_21

    .line 137
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_21
    return-void
.end method

.method greylist constructNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 314
    :try_start_0
    invoke-virtual {p4}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    if-nez p1, :cond_8

    const/4 v1, 0x0

    goto :goto_18

    :cond_8
    const/4 v1, 0x1

    if-eqz p2, :cond_e

    .line 324
    invoke-interface {v0, p2, p3, v1}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 327
    :cond_e
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p3, v2, p1}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-super {p0, p4}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 335
    :goto_18
    invoke-virtual {p4, p0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    if-eqz p1, :cond_29

    .line 340
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p3, p0, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_29

    .line 344
    invoke-interface {v0, p2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_29
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_29} :catch_2a

    :cond_29
    return-void

    :catch_2a
    move-exception p0

    .line 350
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 205
    const-string v0, "WG_COULD_NOT_RESOLVE_PREFIX"

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v1

    .line 206
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v3

    .line 210
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    const/4 v5, 0x0

    if-nez v4, :cond_15

    move-object v4, v5

    goto :goto_19

    :cond_15
    invoke-virtual {v4, v2, v3, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v4

    .line 216
    :goto_19
    const-string v6, ""

    if-eqz v4, :cond_3d

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v7}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-static {v4}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 218
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v0

    const-string v1, "name"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    invoke-virtual {v0, p0, v2, v1}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v5

    goto/16 :goto_c6

    :cond_3d
    if-eqz v4, :cond_c4

    .line 227
    invoke-static {v4}, Lorg/apache/xml/utils/QName;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 229
    iget-object v8, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v8, :cond_98

    .line 231
    invoke-virtual {v8, v2, v3, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8c

    if-eqz v7, :cond_5c

    .line 233
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5c

    goto :goto_8c

    .line 240
    :cond_5c
    invoke-virtual {p0, v1, v7, v0}, Lorg/apache/xalan/templates/ElemElement;->resolvePrefix(Lorg/apache/xml/serializer/SerializationHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_64

    move-object v5, v6

    goto :goto_65

    :cond_64
    move-object v5, v1

    .line 244
    :goto_65
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_87

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_83
    move-object v6, v0

    move-object v7, v5

    move-object v5, v1

    goto :goto_c6

    .line 247
    :cond_87
    invoke-static {v4}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_83

    .line 234
    :cond_8c
    :goto_8c
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v1

    const-string v2, "ER_NULL_URI_NAMESPACE"

    invoke-virtual {v1, p0, v2}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    move-object v6, v0

    :goto_96
    move-object v5, v4

    goto :goto_c6

    .line 258
    :cond_98
    :try_start_98
    invoke-virtual {p0, v7}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9c} :catch_b8

    if-nez v1, :cond_a7

    .line 264
    :try_start_9e
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a7

    goto :goto_96

    :catch_a5
    move-object v6, v1

    goto :goto_b8

    :cond_a7
    if-nez v1, :cond_b6

    .line 268
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v2

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p0, v0, v3}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_b4} :catch_a5

    move-object v6, v1

    goto :goto_c6

    :cond_b6
    move-object v6, v1

    goto :goto_96

    .line 278
    :catch_b8
    :goto_b8
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v1

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c6

    :cond_c4
    move-object v7, v5

    goto :goto_96

    .line 287
    :goto_c6
    invoke-virtual {p0, v5, v7, v6, p1}, Lorg/apache/xalan/templates/ElemElement;->constructNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/transformer/TransformerImpl;)V

    return-void
.end method

.method public greylist getName()Lorg/apache/xalan/templates/AVT;
    .registers 1

    .line 82
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    return-object p0
.end method

.method public greylist getNamespace()Lorg/apache/xalan/templates/AVT;
    .registers 1

    .line 119
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 159
    const-string p0, "element"

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x2e

    return p0
.end method

.method protected greylist resolvePrefix(Lorg/apache/xml/serializer/SerializationHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 0
    return-object p2
.end method

.method public greylist setName(Lorg/apache/xalan/templates/AVT;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public greylist setNamespace(Lorg/apache/xalan/templates/AVT;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method
