.class public Lorg/apache/xalan/templates/ElemCopyOf;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemCopyOf.java"


# static fields
.field static final serialVersionUID:J = -0x672a43ef2f404637L


# instance fields
.field public m_selectExpression:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    .line 54
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@6
    .line 46
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 4
    .param p1, "newChild"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 220
    const-string/jumbo v0, "ER_CANNOT_ADD"

    #@3
    .line 221
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    .line 222
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCopyOf;->getNodeName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x1

    #@12
    aput-object v2, v1, v3

    #@14
    .line 220
    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemCopyOf;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@17
    .line 225
    const/4 v0, 0x0

    #@18
    return-object v0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttrs"    # Z

    #@0
    .prologue
    .line 234
    if-eqz p2, :cond_0

    #@2
    .line 235
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@4
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@a
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@d
    .line 236
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    #@10
    .line 232
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
    .line 86
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 88
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@6
    move-result-object v0

    #@7
    .line 89
    .local v0, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@9
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@10
    move-result v3

    #@11
    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    #@14
    .line 84
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 17
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@3
    move-result-object v13

    #@4
    .line 130
    .local v13, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v13}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@7
    move-result v8

    #@8
    .line 131
    .local v8, "sourceNode":I
    move-object/from16 v0, p0

    #@a
    iget-object v14, v0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@c
    move-object/from16 v0, p0

    #@e
    invoke-virtual {v14, v13, v8, v0}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@11
    move-result-object v12

    #@12
    .line 133
    .local v12, "value":Lorg/apache/xpath/objects/XObject;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@15
    move-result-object v3

    #@16
    .line 135
    .local v3, "handler":Lorg/apache/xml/serializer/SerializationHandler;
    if-eqz v12, :cond_0

    #@18
    .line 137
    invoke-virtual {v12}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@1b
    move-result v11

    #@1c
    .line 140
    .local v11, "type":I
    packed-switch v11, :pswitch_data_0

    #@1f
    .line 190
    invoke-virtual {v12}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    .line 192
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    #@26
    move-result-object v14

    #@27
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@2a
    move-result v15

    #@2b
    const/16 v16, 0x0

    #@2d
    move/from16 v0, v16

    #@2f
    invoke-interface {v3, v14, v0, v15}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V

    #@32
    .line 125
    .end local v6    # "s":Ljava/lang/String;
    .end local v11    # "type":I
    :cond_0
    :goto_0
    return-void

    #@33
    .line 145
    .restart local v11    # "type":I
    :pswitch_0
    invoke-virtual {v12}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    .line 147
    .restart local v6    # "s":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    #@3a
    move-result-object v14

    #@3b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@3e
    move-result v15

    #@3f
    const/16 v16, 0x0

    #@41
    move/from16 v0, v16

    #@43
    invoke-interface {v3, v14, v0, v15}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    goto :goto_0

    #@47
    .line 204
    .end local v3    # "handler":Lorg/apache/xml/serializer/SerializationHandler;
    .end local v6    # "s":Ljava/lang/String;
    .end local v8    # "sourceNode":I
    .end local v11    # "type":I
    .end local v12    # "value":Lorg/apache/xpath/objects/XObject;
    .end local v13    # "xctxt":Lorg/apache/xpath/XPathContext;
    :catch_0
    move-exception v7

    #@48
    .line 205
    .local v7, "se":Lorg/xml/sax/SAXException;
    new-instance v14, Ljavax/xml/transform/TransformerException;

    #@4a
    invoke-direct {v14, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@4d
    throw v14

    #@4e
    .line 152
    .end local v7    # "se":Lorg/xml/sax/SAXException;
    .restart local v3    # "handler":Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v8    # "sourceNode":I
    .restart local v11    # "type":I
    .restart local v12    # "value":Lorg/apache/xpath/objects/XObject;
    .restart local v13    # "xctxt":Lorg/apache/xpath/XPathContext;
    :pswitch_1
    :try_start_1
    invoke-virtual {v12}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    #@51
    move-result-object v4

    #@52
    .line 155
    .local v4, "nl":Lorg/apache/xml/dtm/DTMIterator;
    new-instance v10, Lorg/apache/xalan/transformer/TreeWalker2Result;

    #@54
    move-object/from16 v0, p1

    #@56
    invoke-direct {v10, v0, v3}, Lorg/apache/xalan/transformer/TreeWalker2Result;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xml/serializer/SerializationHandler;)V

    #@59
    .line 158
    .local v10, "tw":Lorg/apache/xml/dtm/ref/DTMTreeWalker;
    :cond_1
    :goto_1
    invoke-interface {v4}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@5c
    move-result v5

    #@5d
    .local v5, "pos":I
    const/4 v14, -0x1

    #@5e
    if-eq v14, v5, :cond_0

    #@60
    .line 160
    invoke-virtual {v13}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@63
    move-result-object v14

    #@64
    invoke-virtual {v14, v5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@67
    move-result-object v2

    #@68
    .line 161
    .local v2, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v2, v5}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@6b
    move-result v9

    #@6c
    .line 165
    .local v9, "t":S
    const/16 v14, 0x9

    #@6e
    if-ne v9, v14, :cond_2

    #@70
    .line 167
    invoke-interface {v2, v5}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    #@73
    move-result v1

    #@74
    .local v1, "child":I
    :goto_2
    const/4 v14, -0x1

    #@75
    if-eq v1, v14, :cond_1

    #@77
    .line 170
    invoke-virtual {v10, v1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->traverse(I)V

    #@7a
    .line 168
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    #@7d
    move-result v1

    #@7e
    goto :goto_2

    #@7f
    .line 173
    .end local v1    # "child":I
    :cond_2
    const/4 v14, 0x2

    #@80
    if-ne v9, v14, :cond_3

    #@82
    .line 175
    invoke-static {v3, v5}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    #@85
    goto :goto_1

    #@86
    .line 179
    :cond_3
    invoke-virtual {v10, v5}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->traverse(I)V

    #@89
    goto :goto_1

    #@8a
    .line 186
    .end local v2    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v4    # "nl":Lorg/apache/xml/dtm/DTMIterator;
    .end local v5    # "pos":I
    .end local v9    # "t":S
    .end local v10    # "tw":Lorg/apache/xml/dtm/ref/DTMTreeWalker;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@8d
    move-result-object v14

    #@8e
    .line 185
    invoke-static {v3, v12, v14}, Lorg/apache/xalan/serialize/SerializerUtils;->outputResultTreeFragment(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/XPathContext;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    #@91
    goto :goto_0

    #@92
    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 110
    const-string/jumbo v0, "copy-of"

    #@3
    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/XPath;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@2
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 100
    const/16 v0, 0x4a

    #@2
    return v0
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "expr"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 64
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@2
    .line 62
    return-void
.end method
