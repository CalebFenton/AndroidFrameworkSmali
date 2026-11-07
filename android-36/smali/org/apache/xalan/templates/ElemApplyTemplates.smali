.class public Lorg/apache/xalan/templates/ElemApplyTemplates;
.super Lorg/apache/xalan/templates/ElemCallTemplate;
.source "ElemApplyTemplates.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x2849f924dd38cb4cL


# instance fields
.field private greylist m_isDefaultTemplate:Z

.field private greylist m_mode:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    return-void
.end method


# virtual methods
.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 128
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemCallTemplate;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    return-void
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->pushCurrentTemplateRuleIsNull(Z)V

    .line 162
    :try_start_4
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object v1

    .line 164
    iget-boolean v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    if-nez v2, :cond_25

    if-nez v1, :cond_15

    .line 166
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    if-nez v2, :cond_1f

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_31

    :cond_15
    :goto_15
    if-eqz v1, :cond_25

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    .line 167
    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    :cond_1f
    const/4 v0, 0x1

    .line 171
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    invoke-virtual {p1, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushMode(Lorg/apache/xml/utils/QName;)V

    .line 175
    :cond_25
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemApplyTemplates;->transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_13

    if-eqz v0, :cond_2d

    .line 180
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    .line 182
    :cond_2d
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    return-void

    :goto_31
    if-eqz v0, :cond_36

    .line 180
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    .line 182
    :cond_36
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    .line 183
    throw p0
.end method

.method public greylist getMode()Lorg/apache/xml/utils/QName;
    .registers 1

    .line 78
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 138
    const-string p0, "apply-templates"

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x32

    return p0
.end method

.method public greylist setIsDefaultTemplate(Z)V
    .registers 2

    .line 106
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    return-void
.end method

.method public greylist setMode(Lorg/apache/xml/utils/QName;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public greylist transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 199
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v2

    .line 201
    iget-object v4, v0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    invoke-virtual {v4, v3, v2}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v4

    .line 202
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v10

    .line 203
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    move-result v11

    .line 204
    invoke-virtual {v10}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v12

    const/4 v13, -0x1

    .line 211
    :try_start_1f
    invoke-virtual {v3, v13}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 212
    invoke-virtual {v3, v13}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    .line 213
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->pushSAXLocatorNull()V

    const/4 v15, 0x0

    .line 214
    invoke-virtual {v1, v15}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 215
    iget-object v5, v0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    if-nez v5, :cond_32

    move-object v5, v15

    goto :goto_36

    .line 217
    :cond_32
    invoke-virtual {v1, v0, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->processSortKeys(Lorg/apache/xalan/templates/ElemForEach;I)Ljava/util/Vector;

    move-result-object v5

    :goto_36
    if-eqz v5, :cond_45

    .line 221
    invoke-virtual {v0, v3, v5, v4}, Lorg/apache/xalan/templates/ElemForEach;->sortNodes(Lorg/apache/xpath/XPathContext;Ljava/util/Vector;Lorg/apache/xml/dtm/DTMIterator;)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v4
    :try_end_3c
    .catch Lorg/xml/sax/SAXException; {:try_start_1f .. :try_end_3c} :catch_41
    .catchall {:try_start_1f .. :try_end_3c} :catchall_3d

    goto :goto_45

    :catchall_3d
    move-exception v0

    :goto_3e
    const/4 v14, 0x0

    goto/16 :goto_202

    :catch_41
    move-exception v0

    :goto_42
    const/4 v14, 0x0

    goto/16 :goto_1db

    .line 223
    :cond_45
    :goto_45
    :try_start_45
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v5

    .line 225
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v16

    .line 226
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateListComposed()Lorg/apache/xalan/templates/TemplateList;

    move-result-object v6

    .line 227
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getQuietConflictWarnings()Z

    move-result v8

    .line 230
    invoke-virtual {v3, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v7
    :try_end_59
    .catch Lorg/xml/sax/SAXException; {:try_start_45 .. :try_end_59} :catch_1d6
    .catchall {:try_start_45 .. :try_end_59} :catchall_1d1

    if-lez v11, :cond_78

    .line 238
    :try_start_5b
    invoke-virtual {v10, v11}, Lorg/apache/xpath/VariableStack;->link(I)I

    move-result v9

    .line 239
    invoke-virtual {v10, v12}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    const/4 v15, 0x0

    :goto_63
    if-ge v15, v11, :cond_73

    .line 243
    iget-object v14, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aget-object v14, v14, v15

    .line 244
    invoke-virtual {v14, v1, v2}, Lorg/apache/xalan/templates/ElemWithParam;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v14

    .line 246
    invoke-virtual {v10, v15, v14, v9}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_63

    .line 248
    :cond_73
    invoke-virtual {v10, v9}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V
    :try_end_76
    .catch Lorg/xml/sax/SAXException; {:try_start_5b .. :try_end_76} :catch_41
    .catchall {:try_start_5b .. :try_end_76} :catchall_3d

    move v14, v9

    goto :goto_79

    :cond_78
    move v14, v13

    .line 251
    :goto_79
    :try_start_79
    invoke-virtual {v3, v4}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_7c
    .catch Lorg/xml/sax/SAXException; {:try_start_79 .. :try_end_7c} :catch_1d6
    .catchall {:try_start_79 .. :try_end_7c} :catchall_1d1

    .line 254
    :try_start_7c
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getCurrentNodeStack()Lorg/apache/xml/utils/IntStack;

    move-result-object v2

    .line 256
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getCurrentExpressionNodeStack()Lorg/apache/xml/utils/IntStack;

    move-result-object v9
    :try_end_84
    .catch Lorg/xml/sax/SAXException; {:try_start_7c .. :try_end_84} :catch_1cc
    .catchall {:try_start_7c .. :try_end_84} :catchall_1c7

    move-object/from16 v17, v4

    .line 261
    :goto_86
    :try_start_86
    invoke-interface/range {v17 .. v17}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v4

    if-eq v13, v4, :cond_1af

    .line 263
    invoke-virtual {v2, v4}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    .line 264
    invoke-virtual {v9, v4}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    .line 266
    invoke-virtual {v3, v4}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v13

    if-eq v13, v7, :cond_9c

    .line 268
    invoke-virtual {v3, v4}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v7

    :cond_9c
    move-object v13, v5

    goto :goto_aa

    :catchall_9e
    move-exception v0

    move-object/from16 v4, v17

    :goto_a1
    const/4 v14, 0x1

    goto/16 :goto_202

    :catch_a4
    move-exception v0

    move-object/from16 v4, v17

    :goto_a7
    const/4 v14, 0x1

    goto/16 :goto_1db

    .line 271
    :goto_aa
    invoke-interface {v7, v4}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(I)I

    move-result v5

    .line 273
    invoke-interface {v7, v4}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v15

    move-object/from16 v18, v2

    move-object v2, v6

    .line 275
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object v6

    move-object/from16 v19, v9

    move-object v9, v7

    const/4 v7, -0x1

    .line 277
    invoke-virtual/range {v2 .. v9}, Lorg/apache/xalan/templates/TemplateList;->getTemplateFast(Lorg/apache/xpath/XPathContext;IILorg/apache/xml/utils/QName;IZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v5
    :try_end_c1
    .catch Lorg/xml/sax/SAXException; {:try_start_86 .. :try_end_c1} :catch_a4
    .catchall {:try_start_86 .. :try_end_c1} :catchall_9e

    if-nez v5, :cond_10b

    const/4 v6, 0x1

    if-eq v15, v6, :cond_dc

    const/4 v5, 0x2

    if-eq v15, v5, :cond_f0

    const/4 v5, 0x3

    if-eq v15, v5, :cond_f0

    const/4 v5, 0x4

    if-eq v15, v5, :cond_f0

    const/16 v5, 0x9

    if-eq v15, v5, :cond_de

    const/16 v5, 0xb

    if-eq v15, v5, :cond_dc

    :goto_d7
    move-object/from16 v20, v2

    const/4 v0, 0x0

    goto/16 :goto_1a2

    :cond_dc
    const/4 v7, 0x0

    goto :goto_106

    .line 303
    :cond_de
    :try_start_de
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRootRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v5

    const/4 v7, 0x0

    goto :goto_110

    :catchall_e4
    move-exception v0

    move v14, v6

    move-object/from16 v4, v17

    goto/16 :goto_202

    :catch_ea
    move-exception v0

    move v14, v6

    move-object/from16 v4, v17

    goto/16 :goto_1db

    .line 296
    :cond_f0
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V

    .line 297
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    const/4 v7, 0x0

    .line 299
    invoke-interface {v9, v4, v13, v7}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    .line 300
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V

    goto :goto_d7

    .line 288
    :goto_106
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v5
    :try_end_10a
    .catch Lorg/xml/sax/SAXException; {:try_start_de .. :try_end_10a} :catch_ea
    .catchall {:try_start_de .. :try_end_10a} :catchall_e4

    goto :goto_110

    :cond_10b
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 313
    :try_start_10d
    invoke-virtual {v1, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 316
    :goto_110
    invoke-virtual {v1, v5, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V

    .line 319
    iget v4, v5, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    if-lez v4, :cond_179

    .line 321
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->pushRTFContext()V

    .line 322
    invoke-virtual {v10}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v4

    .line 323
    iget v15, v5, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    invoke-virtual {v10, v15}, Lorg/apache/xpath/VariableStack;->link(I)I

    .line 326
    iget v15, v5, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    if-lez v15, :cond_171

    .line 329
    invoke-virtual {v5}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v15

    move v6, v7

    :goto_12c
    if-eqz v15, :cond_171

    .line 332
    invoke-virtual {v15}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v7

    move-object/from16 v20, v2

    const/16 v2, 0x29

    if-ne v2, v7, :cond_173

    .line 334
    move-object v2, v15

    check-cast v2, Lorg/apache/xalan/templates/ElemParam;

    const/4 v7, 0x0

    :goto_13c
    if-ge v7, v11, :cond_159

    move/from16 v21, v4

    .line 339
    iget-object v4, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aget-object v4, v4, v7

    .line 340
    iget v4, v4, Lorg/apache/xalan/templates/ElemWithParam;->m_qnameID:I

    iget v0, v2, Lorg/apache/xalan/templates/ElemParam;->m_qnameID:I

    if-ne v4, v0, :cond_152

    .line 342
    invoke-virtual {v10, v7, v14}, Lorg/apache/xpath/VariableStack;->getLocalVariable(II)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 343
    invoke-virtual {v10, v6, v0}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    goto :goto_15b

    :cond_152
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v21

    goto :goto_13c

    :cond_159
    move/from16 v21, v4

    :goto_15b
    if-ne v7, v11, :cond_162

    const/4 v0, 0x0

    .line 348
    invoke-virtual {v10, v6, v0}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    goto :goto_163

    :cond_162
    const/4 v0, 0x0

    :goto_163
    add-int/lit8 v6, v6, 0x1

    .line 330
    invoke-virtual {v15}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v2, v20

    move/from16 v4, v21

    const/4 v7, 0x0

    goto :goto_12c

    :cond_171
    move-object/from16 v20, v2

    :cond_173
    move/from16 v21, v4

    const/4 v0, 0x0

    move/from16 v4, v21

    goto :goto_17d

    :cond_179
    move-object/from16 v20, v2

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 363
    :goto_17d
    iget-object v2, v5, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_17f
    if-eqz v2, :cond_195

    .line 366
    invoke-virtual {v3, v2}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    :try_end_184
    .catch Lorg/xml/sax/SAXException; {:try_start_10d .. :try_end_184} :catch_a4
    .catchall {:try_start_10d .. :try_end_184} :catchall_9e

    .line 369
    :try_start_184
    invoke-virtual {v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 370
    invoke-virtual {v2, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_18a
    .catchall {:try_start_184 .. :try_end_18a} :catchall_190

    .line 374
    :try_start_18a
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 364
    iget-object v2, v2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_17f

    :catchall_190
    move-exception v0

    .line 374
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 375
    throw v0

    .line 378
    :cond_195
    iget v2, v5, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    if-lez v2, :cond_19f

    .line 395
    invoke-virtual {v10, v4}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 396
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popRTFContext()V

    .line 399
    :cond_19f
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V
    :try_end_1a2
    .catch Lorg/xml/sax/SAXException; {:try_start_18a .. :try_end_1a2} :catch_a4
    .catchall {:try_start_18a .. :try_end_1a2} :catchall_9e

    :goto_1a2
    move-object/from16 v0, p0

    move-object v7, v9

    move-object v5, v13

    move-object/from16 v2, v18

    move-object/from16 v9, v19

    move-object/from16 v6, v20

    const/4 v13, -0x1

    goto/16 :goto_86

    :cond_1af
    if-lez v11, :cond_1b4

    .line 411
    invoke-virtual {v10, v12}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 412
    :cond_1b4
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    .line 413
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 414
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 415
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    .line 416
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 417
    invoke-interface/range {v17 .. v17}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    return-void

    :catchall_1c7
    move-exception v0

    move-object/from16 v17, v4

    goto/16 :goto_a1

    :catch_1cc
    move-exception v0

    move-object/from16 v17, v4

    goto/16 :goto_a7

    :catchall_1d1
    move-exception v0

    move-object/from16 v17, v4

    goto/16 :goto_3e

    :catch_1d6
    move-exception v0

    move-object/from16 v17, v4

    goto/16 :goto_42

    .line 405
    :goto_1db
    :try_start_1db
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v5}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1e7
    .catchall {:try_start_1db .. :try_end_1e7} :catchall_201

    if-lez v11, :cond_1ec

    .line 411
    invoke-virtual {v10, v12}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 412
    :cond_1ec
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    if-eqz v14, :cond_1f4

    .line 413
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 414
    :cond_1f4
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 415
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    .line 416
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 417
    invoke-interface {v4}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    return-void

    :catchall_201
    move-exception v0

    :goto_202
    if-lez v11, :cond_207

    .line 411
    invoke-virtual {v10, v12}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 412
    :cond_207
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    if-eqz v14, :cond_20f

    .line 413
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 414
    :cond_20f
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 415
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    .line 416
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 417
    invoke-interface {v4}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 418
    throw v0
.end method
