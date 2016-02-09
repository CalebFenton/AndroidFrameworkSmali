.class public Lorg/apache/xalan/templates/ElemCallTemplate;
.super Lorg/apache/xalan/templates/ElemForEach;
.source "ElemCallTemplate.java"


# static fields
.field static final serialVersionUID:J = 0x4585cc23655c8c7fL


# instance fields
.field protected m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

.field private m_template:Lorg/apache/xalan/templates/ElemTemplate;

.field public m_templateName:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 45
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemForEach;-><init>()V

    #@4
    .line 54
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    #@6
    .line 84
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@8
    .line 269
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    #@a
    .line 45
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 2
    .param p1, "newChild"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 333
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@3
    move-result v0

    #@4
    .line 335
    .local v0, "type":I
    const/4 v1, 0x2

    #@5
    if-ne v1, v0, :cond_0

    #@7
    move-object v1, p1

    #@8
    .line 337
    check-cast v1, Lorg/apache/xalan/templates/ElemWithParam;

    #@a
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemCallTemplate;->setParamElem(Lorg/apache/xalan/templates/ElemWithParam;)V

    #@d
    .line 342
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 0
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttrs"    # Z

    #@0
    .prologue
    .line 362
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemForEach;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    #@3
    .line 349
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 11
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 119
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    #@6
    move-result v5

    #@7
    .line 120
    .local v5, "length":I
    const/4 v4, 0x0

    #@8
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    #@a
    .line 122
    invoke-virtual {p0, v4}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;

    #@d
    move-result-object v3

    #@e
    .line 123
    .local v3, "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    invoke-virtual {v3, p1}, Lorg/apache/xalan/templates/ElemWithParam;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@11
    .line 120
    add-int/lit8 v4, v4, 0x1

    #@13
    goto :goto_0

    #@14
    .line 126
    .end local v3    # "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    :cond_0
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    #@16
    if-eqz v7, :cond_4

    #@18
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@1a
    if-nez v7, :cond_4

    #@1c
    .line 128
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@1f
    move-result-object v7

    #@20
    iget-object v8, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    #@22
    invoke-virtual {v7, v8}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;

    #@25
    move-result-object v7

    #@26
    .line 127
    iput-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@28
    .line 130
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@2a
    if-nez v7, :cond_1

    #@2c
    .line 133
    const-string/jumbo v7, "ER_ELEMTEMPLATEELEM_ERR"

    #@2f
    .line 134
    const/4 v8, 0x1

    #@30
    new-array v8, v8, [Ljava/lang/Object;

    #@32
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    #@34
    const/4 v10, 0x0

    #@35
    aput-object v9, v8, v10

    #@37
    .line 132
    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    .line 136
    .local v6, "themsg":Ljava/lang/String;
    new-instance v7, Ljavax/xml/transform/TransformerException;

    #@3d
    invoke-direct {v7, v6, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@40
    throw v7

    #@41
    .line 140
    .end local v6    # "themsg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    #@44
    move-result v5

    #@45
    .line 141
    const/4 v4, 0x0

    #@46
    :goto_1
    if-ge v4, v5, :cond_4

    #@48
    .line 143
    invoke-virtual {p0, v4}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;

    #@4b
    move-result-object v3

    #@4c
    .line 144
    .restart local v3    # "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    const/4 v7, -0x1

    #@4d
    iput v7, v3, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    #@4f
    .line 147
    const/4 v2, 0x0

    #@50
    .line 148
    .local v2, "etePos":I
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@52
    invoke-virtual {v7}, Lorg/apache/xalan/templates/ElemTemplate;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@55
    move-result-object v1

    #@56
    .local v1, "ete":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_2
    if-eqz v1, :cond_3

    #@58
    .line 151
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@5b
    move-result v7

    #@5c
    const/16 v8, 0x29

    #@5e
    if-ne v7, v8, :cond_3

    #@60
    move-object v0, v1

    #@61
    .line 153
    check-cast v0, Lorg/apache/xalan/templates/ElemParam;

    #@63
    .line 154
    .local v0, "ep":Lorg/apache/xalan/templates/ElemParam;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemParam;->getName()Lorg/apache/xml/utils/QName;

    #@66
    move-result-object v7

    #@67
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemWithParam;->getName()Lorg/apache/xml/utils/QName;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v7

    #@6f
    if-eqz v7, :cond_2

    #@71
    .line 156
    iput v2, v3, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    #@73
    .line 161
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@75
    .line 149
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@78
    move-result-object v1

    #@79
    goto :goto_2

    #@7a
    .line 141
    .end local v0    # "ep":Lorg/apache/xalan/templates/ElemParam;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@7c
    goto :goto_1

    #@7d
    .line 113
    .end local v1    # "ete":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v2    # "etePos":I
    .end local v3    # "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    :cond_4
    return-void
.end method

.method public endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 3
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    #@3
    move-result v2

    #@4
    .line 174
    .local v2, "length":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@7
    .line 176
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;

    #@a
    move-result-object v0

    #@b
    .line 177
    .local v0, "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemWithParam;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@e
    .line 174
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 180
    .end local v0    # "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@14
    .line 171
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 16
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@4
    if-eqz v11, :cond_3

    #@6
    .line 198
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@9
    move-result-object v10

    #@a
    .line 199
    .local v10, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@d
    move-result-object v9

    #@e
    .line 201
    .local v9, "vars":Lorg/apache/xpath/VariableStack;
    invoke-virtual {v9}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    #@11
    move-result v8

    #@12
    .line 202
    .local v8, "thisframe":I
    move-object/from16 v0, p0

    #@14
    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@16
    iget v11, v11, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    #@18
    invoke-virtual {v9, v11}, Lorg/apache/xpath/VariableStack;->link(I)I

    #@1b
    move-result v4

    #@1c
    .line 206
    .local v4, "nextFrame":I
    move-object/from16 v0, p0

    #@1e
    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@20
    iget v11, v11, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    #@22
    if-lez v11, :cond_2

    #@24
    .line 208
    move-object/from16 v0, p0

    #@26
    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@28
    iget v11, v11, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    #@2a
    const/4 v12, 0x0

    #@2b
    invoke-virtual {v9, v12, v11}, Lorg/apache/xpath/VariableStack;->clearLocalSlots(II)V

    #@2e
    .line 210
    move-object/from16 v0, p0

    #@30
    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    #@32
    if-eqz v11, :cond_2

    #@34
    .line 212
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@37
    move-result v1

    #@38
    .line 213
    .local v1, "currentNode":I
    invoke-virtual {v9, v8}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@3b
    .line 214
    move-object/from16 v0, p0

    #@3d
    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    #@3f
    array-length v7, v11

    #@40
    .line 216
    .local v7, "size":I
    const/4 v3, 0x0

    #@41
    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_1

    #@43
    .line 218
    move-object/from16 v0, p0

    #@45
    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    #@47
    aget-object v2, v11, v3

    #@49
    .line 219
    .local v2, "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    iget v11, v2, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    #@4b
    if-ltz v11, :cond_0

    #@4d
    .line 221
    move-object/from16 v0, p1

    #@4f
    invoke-virtual {v2, v0, v1}, Lorg/apache/xalan/templates/ElemWithParam;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    #@52
    move-result-object v5

    #@53
    .line 226
    .local v5, "obj":Lorg/apache/xpath/objects/XObject;
    iget v11, v2, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    #@55
    invoke-virtual {v9, v11, v5, v4}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V

    #@58
    .line 216
    .end local v5    # "obj":Lorg/apache/xpath/objects/XObject;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 229
    .end local v2    # "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    :cond_1
    invoke-virtual {v9, v4}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@5e
    .line 233
    .end local v1    # "currentNode":I
    .end local v3    # "i":I
    .end local v7    # "size":I
    :cond_2
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@61
    move-result-object v6

    #@62
    .line 237
    .local v6, "savedLocator":Ljavax/xml/transform/SourceLocator;
    :try_start_0
    move-object/from16 v0, p0

    #@64
    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@66
    invoke-virtual {v10, v11}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    #@69
    .line 240
    move-object/from16 v0, p0

    #@6b
    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@6d
    move-object/from16 v0, p1

    #@6f
    invoke-virtual {v0, v11}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@72
    .line 241
    move-object/from16 v0, p0

    #@74
    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@76
    move-object/from16 v0, p1

    #@78
    invoke-virtual {v11, v0}, Lorg/apache/xalan/templates/ElemTemplate;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    .line 245
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@7e
    .line 246
    invoke-virtual {v10, v6}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    #@81
    .line 256
    invoke-virtual {v9, v8}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    #@84
    .line 193
    .end local v4    # "nextFrame":I
    .end local v6    # "savedLocator":Ljavax/xml/transform/SourceLocator;
    .end local v8    # "thisframe":I
    .end local v9    # "vars":Lorg/apache/xpath/VariableStack;
    .end local v10    # "xctxt":Lorg/apache/xpath/XPathContext;
    :goto_1
    return-void

    #@85
    .line 244
    .restart local v4    # "nextFrame":I
    .restart local v6    # "savedLocator":Ljavax/xml/transform/SourceLocator;
    .restart local v8    # "thisframe":I
    .restart local v9    # "vars":Lorg/apache/xpath/VariableStack;
    .restart local v10    # "xctxt":Lorg/apache/xpath/XPathContext;
    :catchall_0
    move-exception v11

    #@86
    .line 245
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@89
    .line 246
    invoke-virtual {v10, v6}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    #@8c
    .line 256
    invoke-virtual {v9, v8}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    #@8f
    .line 244
    throw v11

    #@90
    .line 261
    .end local v4    # "nextFrame":I
    .end local v6    # "savedLocator":Ljavax/xml/transform/SourceLocator;
    .end local v8    # "thisframe":I
    .end local v9    # "vars":Lorg/apache/xpath/VariableStack;
    .end local v10    # "xctxt":Lorg/apache/xpath/XPathContext;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    #@93
    move-result-object v11

    #@94
    const-string/jumbo v12, "ER_TEMPLATE_NOT_FOUND"

    #@97
    .line 262
    const/4 v13, 0x1

    #@98
    new-array v13, v13, [Ljava/lang/Object;

    #@9a
    move-object/from16 v0, p0

    #@9c
    iget-object v14, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    #@9e
    const/4 v15, 0x0

    #@9f
    aput-object v14, v13, v15

    #@a1
    .line 261
    move-object/from16 v0, p0

    #@a3
    invoke-virtual {v11, v0, v12, v13}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    #@a6
    goto :goto_1
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 104
    const-string/jumbo v0, "call-template"

    #@3
    return-object v0
.end method

.method public getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getParamElemCount()I
    .locals 1

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    #@8
    array-length v0, v0

    #@9
    goto :goto_0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 94
    const/16 v0, 0x11

    #@2
    return v0
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "name"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 65
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    #@2
    .line 63
    return-void
.end method

.method public setParamElem(Lorg/apache/xalan/templates/ElemWithParam;)V
    .locals 4
    .param p1, "ParamElem"    # Lorg/apache/xalan/templates/ElemWithParam;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 299
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 301
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Lorg/apache/xalan/templates/ElemWithParam;

    #@8
    iput-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    #@a
    .line 302
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    #@c
    aput-object p1, v2, v3

    #@e
    .line 297
    :goto_0
    return-void

    #@f
    .line 308
    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    #@11
    array-length v1, v2

    #@12
    .line 309
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    #@14
    new-array v0, v2, [Lorg/apache/xalan/templates/ElemWithParam;

    #@16
    .line 310
    .local v0, "ewp":[Lorg/apache/xalan/templates/ElemWithParam;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    #@18
    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1b
    .line 311
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    #@1d
    .line 312
    aput-object p1, v0, v1

    #@1f
    goto :goto_0
.end method
