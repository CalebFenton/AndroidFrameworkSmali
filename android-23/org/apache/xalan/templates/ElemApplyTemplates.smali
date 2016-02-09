.class public Lorg/apache/xalan/templates/ElemApplyTemplates;
.super Lorg/apache/xalan/templates/ElemCallTemplate;
.source "ElemApplyTemplates.java"


# static fields
.field static final serialVersionUID:J = 0x2849f924dd38cb4cL


# instance fields
.field private m_isDefaultTemplate:Z

.field private m_mode:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;-><init>()V

    #@3
    .line 59
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    #@6
    .line 88
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    #@9
    .line 51
    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemCallTemplate;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 126
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 3
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    const/4 v2, 0x0

    #@1
    invoke-virtual {p1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushCurrentTemplateRuleIsNull(Z)V

    #@4
    .line 154
    const/4 v1, 0x0

    #@5
    .line 162
    .local v1, "pushMode":Z
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMode()Lorg/apache/xml/utils/QName;

    #@8
    move-result-object v0

    #@9
    .line 164
    .local v0, "mode":Lorg/apache/xml/utils/QName;
    iget-boolean v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    #@b
    if-nez v2, :cond_1

    #@d
    .line 166
    if-nez v0, :cond_3

    #@f
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    #@11
    if-eqz v2, :cond_3

    #@13
    .line 169
    :cond_0
    const/4 v1, 0x1

    #@14
    .line 171
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    #@16
    invoke-virtual {p1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushMode(Lorg/apache/xml/utils/QName;)V

    #@19
    .line 175
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemApplyTemplates;->transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 179
    if-eqz v1, :cond_2

    #@1e
    .line 180
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    #@21
    .line 182
    :cond_2
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    #@24
    .line 149
    return-void

    #@25
    .line 167
    :cond_3
    if-eqz v0, :cond_1

    #@27
    :try_start_1
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    #@29
    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_0

    #@2f
    goto :goto_0

    #@30
    .line 178
    .end local v0    # "mode":Lorg/apache/xml/utils/QName;
    :catchall_0
    move-exception v2

    #@31
    .line 179
    if-eqz v1, :cond_4

    #@33
    .line 180
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    #@36
    .line 182
    :cond_4
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    #@39
    .line 178
    throw v2
.end method

.method public getMode()Lorg/apache/xml/utils/QName;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 138
    const-string/jumbo v0, "apply-templates"

    #@3
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 117
    const/16 v0, 0x32

    #@2
    return v0
.end method

.method public setIsDefaultTemplate(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    #@2
    .line 104
    return-void
.end method

.method public setMode(Lorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "mode"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    #@2
    .line 66
    return-void
.end method

.method public transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 35
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@3
    move-result-object v4

    #@4
    .line 200
    .local v4, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@7
    move-result v27

    #@8
    .line 201
    .local v27, "sourceNode":I
    move-object/from16 v0, p0

    #@a
    iget-object v8, v0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_selectExpression:Lorg/apache/xpath/Expression;

    #@c
    move/from16 v0, v27

    #@e
    invoke-virtual {v8, v4, v0}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    #@11
    move-result-object v28

    #@12
    .line 202
    .local v28, "sourceNodes":Lorg/apache/xml/dtm/DTMIterator;
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@15
    move-result-object v33

    #@16
    .line 203
    .local v33, "vars":Lorg/apache/xpath/VariableStack;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemApplyTemplates;->getParamElemCount()I

    #@19
    move-result v20

    #@1a
    .line 204
    .local v20, "nParams":I
    invoke-virtual/range {v33 .. v33}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    #@1d
    move-result v32

    #@1e
    .line 206
    .local v32, "thisframe":I
    const/16 v24, 0x0

    #@20
    .line 211
    .local v24, "pushContextNodeListFlag":Z
    const/4 v8, -0x1

    #@21
    :try_start_0
    invoke-virtual {v4, v8}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@24
    .line 212
    const/4 v8, -0x1

    #@25
    invoke-virtual {v4, v8}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    #@28
    .line 213
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->pushSAXLocatorNull()V

    #@2b
    .line 214
    const/4 v8, 0x0

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@31
    .line 215
    move-object/from16 v0, p0

    #@33
    iget-object v8, v0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_sortElems:Ljava/util/Vector;

    #@35
    if-nez v8, :cond_1

    #@37
    .line 216
    const/16 v19, 0x0

    #@39
    .line 220
    :goto_0
    if-eqz v19, :cond_0

    #@3b
    .line 221
    move-object/from16 v0, p0

    #@3d
    move-object/from16 v1, v19

    #@3f
    move-object/from16 v2, v28

    #@41
    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/xalan/templates/ElemApplyTemplates;->sortNodes(Lorg/apache/xpath/XPathContext;Ljava/util/Vector;Lorg/apache/xml/dtm/DTMIterator;)Lorg/apache/xml/dtm/DTMIterator;

    #@44
    move-result-object v28

    #@45
    .line 223
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@48
    move-result-object v25

    #@49
    .line 225
    .local v25, "rth":Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    #@4c
    move-result-object v29

    #@4d
    .line 226
    .local v29, "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual/range {v29 .. v29}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateListComposed()Lorg/apache/xalan/templates/TemplateList;

    #@50
    move-result-object v3

    #@51
    .line 227
    .local v3, "tl":Lorg/apache/xalan/templates/TemplateList;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getQuietConflictWarnings()Z

    #@54
    move-result v9

    #@55
    .line 230
    .local v9, "quiet":Z
    move/from16 v0, v27

    #@57
    invoke-virtual {v4, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@5a
    move-result-object v10

    #@5b
    .line 232
    .local v10, "dtm":Lorg/apache/xml/dtm/DTM;
    const/4 v11, -0x1

    #@5c
    .line 233
    .local v11, "argsFrame":I
    if-lez v20, :cond_3

    #@5e
    .line 238
    move-object/from16 v0, v33

    #@60
    move/from16 v1, v20

    #@62
    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->link(I)I

    #@65
    move-result v11

    #@66
    .line 239
    move-object/from16 v0, v33

    #@68
    move/from16 v1, v32

    #@6a
    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@6d
    .line 241
    const/16 v18, 0x0

    #@6f
    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    #@71
    move/from16 v1, v20

    #@73
    if-ge v0, v1, :cond_2

    #@75
    .line 243
    move-object/from16 v0, p0

    #@77
    iget-object v8, v0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    #@79
    aget-object v17, v8, v18

    #@7b
    .line 244
    .local v17, "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    move-object/from16 v0, v17

    #@7d
    move-object/from16 v1, p1

    #@7f
    move/from16 v2, v27

    #@81
    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemWithParam;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    #@84
    move-result-object v22

    #@85
    .line 246
    .local v22, "obj":Lorg/apache/xpath/objects/XObject;
    move-object/from16 v0, v33

    #@87
    move/from16 v1, v18

    #@89
    move-object/from16 v2, v22

    #@8b
    invoke-virtual {v0, v1, v2, v11}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V

    #@8e
    .line 241
    add-int/lit8 v18, v18, 0x1

    #@90
    goto :goto_1

    #@91
    .line 217
    .end local v3    # "tl":Lorg/apache/xalan/templates/TemplateList;
    .end local v9    # "quiet":Z
    .end local v10    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v11    # "argsFrame":I
    .end local v17    # "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    .end local v18    # "i":I
    .end local v22    # "obj":Lorg/apache/xpath/objects/XObject;
    .end local v25    # "rth":Lorg/apache/xml/serializer/SerializationHandler;
    .end local v29    # "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    :cond_1
    move-object/from16 v0, p1

    #@93
    move-object/from16 v1, p0

    #@95
    move/from16 v2, v27

    #@97
    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->processSortKeys(Lorg/apache/xalan/templates/ElemForEach;I)Ljava/util/Vector;

    #@9a
    move-result-object v19

    #@9b
    .local v19, "keys":Ljava/util/Vector;
    goto :goto_0

    #@9c
    .line 248
    .end local v19    # "keys":Ljava/util/Vector;
    .restart local v3    # "tl":Lorg/apache/xalan/templates/TemplateList;
    .restart local v9    # "quiet":Z
    .restart local v10    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v11    # "argsFrame":I
    .restart local v18    # "i":I
    .restart local v25    # "rth":Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v29    # "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    :cond_2
    move-object/from16 v0, v33

    #@9e
    invoke-virtual {v0, v11}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@a1
    .line 251
    .end local v18    # "i":I
    :cond_3
    move-object/from16 v0, v28

    #@a3
    invoke-virtual {v4, v0}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V

    #@a6
    .line 252
    const/16 v24, 0x1

    #@a8
    .line 254
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getCurrentNodeStack()Lorg/apache/xml/utils/IntStack;

    #@ab
    move-result-object v14

    #@ac
    .line 256
    .local v14, "currentNodes":Lorg/apache/xml/utils/IntStack;
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getCurrentExpressionNodeStack()Lorg/apache/xml/utils/IntStack;

    #@af
    move-result-object v12

    #@b0
    .line 261
    .local v12, "currentExpressionNodes":Lorg/apache/xml/utils/IntStack;
    :goto_2
    invoke-interface/range {v28 .. v28}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@b3
    move-result v5

    #@b4
    .local v5, "child":I
    const/4 v8, -0x1

    #@b5
    if-eq v8, v5, :cond_11

    #@b7
    .line 263
    invoke-virtual {v14, v5}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    #@ba
    .line 264
    invoke-virtual {v12, v5}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    #@bd
    .line 266
    invoke-virtual {v4, v5}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@c0
    move-result-object v8

    #@c1
    if-eq v8, v10, :cond_4

    #@c3
    .line 268
    invoke-virtual {v4, v5}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@c6
    move-result-object v10

    #@c7
    .line 271
    :cond_4
    invoke-interface {v10, v5}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(I)I

    #@ca
    move-result v6

    #@cb
    .line 273
    .local v6, "exNodeType":I
    invoke-interface {v10, v5}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@ce
    move-result v21

    #@cf
    .line 275
    .local v21, "nodeType":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMode()Lorg/apache/xml/utils/QName;

    #@d2
    move-result-object v7

    #@d3
    .line 278
    .local v7, "mode":Lorg/apache/xml/utils/QName;
    const/4 v8, -0x1

    #@d4
    .line 277
    invoke-virtual/range {v3 .. v10}, Lorg/apache/xalan/templates/TemplateList;->getTemplateFast(Lorg/apache/xpath/XPathContext;IILorg/apache/xml/utils/QName;IZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    #@d7
    move-result-object v31

    #@d8
    .line 282
    .local v31, "template":Lorg/apache/xalan/templates/ElemTemplate;
    if-nez v31, :cond_9

    #@da
    .line 284
    packed-switch v21, :pswitch_data_0

    #@dd
    :pswitch_0
    goto :goto_2

    #@de
    .line 288
    :pswitch_1
    invoke-virtual/range {v29 .. v29}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRule()Lorg/apache/xalan/templates/ElemTemplate;

    #@e1
    move-result-object v31

    #@e2
    .line 316
    :goto_3
    move-object/from16 v0, p1

    #@e4
    move-object/from16 v1, v31

    #@e6
    invoke-virtual {v0, v1, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V

    #@e9
    .line 319
    move-object/from16 v0, v31

    #@eb
    iget v8, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    #@ed
    if-lez v8, :cond_d

    #@ef
    .line 321
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->pushRTFContext()V

    #@f2
    .line 322
    invoke-virtual/range {v33 .. v33}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    #@f5
    move-result v13

    #@f6
    .line 323
    .local v13, "currentFrameBottom":I
    move-object/from16 v0, v31

    #@f8
    iget v8, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    #@fa
    move-object/from16 v0, v33

    #@fc
    invoke-virtual {v0, v8}, Lorg/apache/xpath/VariableStack;->link(I)I

    #@ff
    .line 326
    move-object/from16 v0, v31

    #@101
    iget v8, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    #@103
    if-lez v8, :cond_e

    #@105
    .line 328
    const/16 v23, 0x0

    #@107
    .line 329
    .local v23, "paramIndex":I
    invoke-virtual/range {v31 .. v31}, Lorg/apache/xalan/templates/ElemTemplate;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@10a
    move-result-object v15

    #@10b
    .local v15, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_4
    if-eqz v15, :cond_e

    #@10d
    .line 332
    invoke-virtual {v15}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@110
    move-result v8

    #@111
    const/16 v34, 0x29

    #@113
    move/from16 v0, v34

    #@115
    if-ne v0, v8, :cond_e

    #@117
    .line 334
    move-object v0, v15

    #@118
    check-cast v0, Lorg/apache/xalan/templates/ElemParam;

    #@11a
    move-object/from16 v16, v0

    #@11c
    .line 337
    .local v16, "ep":Lorg/apache/xalan/templates/ElemParam;
    const/16 v18, 0x0

    #@11e
    .restart local v18    # "i":I
    :goto_5
    move/from16 v0, v18

    #@120
    move/from16 v1, v20

    #@122
    if-ge v0, v1, :cond_5

    #@124
    .line 339
    move-object/from16 v0, p0

    #@126
    iget-object v8, v0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    #@128
    aget-object v17, v8, v18

    #@12a
    .line 340
    .restart local v17    # "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    move-object/from16 v0, v17

    #@12c
    iget v8, v0, Lorg/apache/xalan/templates/ElemWithParam;->m_qnameID:I

    #@12e
    move-object/from16 v0, v16

    #@130
    iget v0, v0, Lorg/apache/xalan/templates/ElemParam;->m_qnameID:I

    #@132
    move/from16 v34, v0

    #@134
    move/from16 v0, v34

    #@136
    if-ne v8, v0, :cond_c

    #@138
    .line 342
    move-object/from16 v0, v33

    #@13a
    move/from16 v1, v18

    #@13c
    invoke-virtual {v0, v1, v11}, Lorg/apache/xpath/VariableStack;->getLocalVariable(II)Lorg/apache/xpath/objects/XObject;

    #@13f
    move-result-object v22

    #@140
    .line 343
    .restart local v22    # "obj":Lorg/apache/xpath/objects/XObject;
    move-object/from16 v0, v33

    #@142
    move/from16 v1, v23

    #@144
    move-object/from16 v2, v22

    #@146
    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    #@149
    .line 347
    .end local v17    # "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    .end local v22    # "obj":Lorg/apache/xpath/objects/XObject;
    :cond_5
    move/from16 v0, v18

    #@14b
    move/from16 v1, v20

    #@14d
    if-ne v0, v1, :cond_6

    #@14f
    .line 348
    const/4 v8, 0x0

    #@150
    move-object/from16 v0, v33

    #@152
    move/from16 v1, v23

    #@154
    invoke-virtual {v0, v1, v8}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    #@157
    .line 352
    :cond_6
    add-int/lit8 v23, v23, 0x1

    #@159
    .line 330
    invoke-virtual {v15}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@15c
    move-result-object v15

    #@15d
    goto :goto_4

    #@15e
    .line 296
    .end local v13    # "currentFrameBottom":I
    .end local v15    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v16    # "ep":Lorg/apache/xalan/templates/ElemParam;
    .end local v18    # "i":I
    .end local v23    # "paramIndex":I
    :pswitch_2
    invoke-virtual/range {v29 .. v29}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;

    #@161
    move-result-object v8

    #@162
    move-object/from16 v0, p1

    #@164
    invoke-virtual {v0, v8, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V

    #@167
    .line 297
    invoke-virtual/range {v29 .. v29}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;

    #@16a
    move-result-object v8

    #@16b
    move-object/from16 v0, p1

    #@16d
    invoke-virtual {v0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@170
    .line 299
    const/4 v8, 0x0

    #@171
    move-object/from16 v0, v25

    #@173
    invoke-interface {v10, v5, v0, v8}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    #@176
    .line 300
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@179
    goto/16 :goto_2

    #@17b
    .line 404
    .end local v3    # "tl":Lorg/apache/xalan/templates/TemplateList;
    .end local v5    # "child":I
    .end local v6    # "exNodeType":I
    .end local v7    # "mode":Lorg/apache/xml/utils/QName;
    .end local v9    # "quiet":Z
    .end local v10    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v11    # "argsFrame":I
    .end local v12    # "currentExpressionNodes":Lorg/apache/xml/utils/IntStack;
    .end local v14    # "currentNodes":Lorg/apache/xml/utils/IntStack;
    .end local v21    # "nodeType":I
    .end local v25    # "rth":Lorg/apache/xml/serializer/SerializationHandler;
    .end local v29    # "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    .end local v31    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :catch_0
    move-exception v26

    #@17c
    .line 405
    .local v26, "se":Lorg/xml/sax/SAXException;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@17f
    move-result-object v8

    #@180
    new-instance v34, Ljavax/xml/transform/TransformerException;

    #@182
    move-object/from16 v0, v34

    #@184
    move-object/from16 v1, v26

    #@186
    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@189
    move-object/from16 v0, v34

    #@18b
    invoke-interface {v8, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18e
    .line 410
    if-lez v20, :cond_7

    #@190
    .line 411
    move-object/from16 v0, v33

    #@192
    move/from16 v1, v32

    #@194
    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    #@197
    .line 412
    :cond_7
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    #@19a
    .line 413
    if-eqz v24, :cond_8

    #@19c
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    #@19f
    .line 414
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@1a2
    .line 415
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    #@1a5
    .line 416
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@1a8
    .line 417
    invoke-interface/range {v28 .. v28}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    #@1ab
    .line 196
    .end local v26    # "se":Lorg/xml/sax/SAXException;
    :goto_6
    return-void

    #@1ac
    .line 303
    .restart local v3    # "tl":Lorg/apache/xalan/templates/TemplateList;
    .restart local v5    # "child":I
    .restart local v6    # "exNodeType":I
    .restart local v7    # "mode":Lorg/apache/xml/utils/QName;
    .restart local v9    # "quiet":Z
    .restart local v10    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v11    # "argsFrame":I
    .restart local v12    # "currentExpressionNodes":Lorg/apache/xml/utils/IntStack;
    .restart local v14    # "currentNodes":Lorg/apache/xml/utils/IntStack;
    .restart local v21    # "nodeType":I
    .restart local v25    # "rth":Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v29    # "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    .restart local v31    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :pswitch_3
    :try_start_2
    invoke-virtual/range {v29 .. v29}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRootRule()Lorg/apache/xalan/templates/ElemTemplate;

    #@1af
    move-result-object v31

    #@1b0
    goto/16 :goto_3

    #@1b2
    .line 313
    :cond_9
    move-object/from16 v0, p1

    #@1b4
    move-object/from16 v1, v31

    #@1b6
    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b9
    goto/16 :goto_3

    #@1bb
    .line 408
    .end local v3    # "tl":Lorg/apache/xalan/templates/TemplateList;
    .end local v5    # "child":I
    .end local v6    # "exNodeType":I
    .end local v7    # "mode":Lorg/apache/xml/utils/QName;
    .end local v9    # "quiet":Z
    .end local v10    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v11    # "argsFrame":I
    .end local v12    # "currentExpressionNodes":Lorg/apache/xml/utils/IntStack;
    .end local v14    # "currentNodes":Lorg/apache/xml/utils/IntStack;
    .end local v21    # "nodeType":I
    .end local v25    # "rth":Lorg/apache/xml/serializer/SerializationHandler;
    .end local v29    # "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    .end local v31    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :catchall_0
    move-exception v8

    #@1bc
    .line 410
    if-lez v20, :cond_a

    #@1be
    .line 411
    move-object/from16 v0, v33

    #@1c0
    move/from16 v1, v32

    #@1c2
    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    #@1c5
    .line 412
    :cond_a
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    #@1c8
    .line 413
    if-eqz v24, :cond_b

    #@1ca
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    #@1cd
    .line 414
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@1d0
    .line 415
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    #@1d3
    .line 416
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@1d6
    .line 417
    invoke-interface/range {v28 .. v28}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    #@1d9
    .line 408
    throw v8

    #@1da
    .line 337
    .restart local v3    # "tl":Lorg/apache/xalan/templates/TemplateList;
    .restart local v5    # "child":I
    .restart local v6    # "exNodeType":I
    .restart local v7    # "mode":Lorg/apache/xml/utils/QName;
    .restart local v9    # "quiet":Z
    .restart local v10    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v11    # "argsFrame":I
    .restart local v12    # "currentExpressionNodes":Lorg/apache/xml/utils/IntStack;
    .restart local v13    # "currentFrameBottom":I
    .restart local v14    # "currentNodes":Lorg/apache/xml/utils/IntStack;
    .restart local v15    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v16    # "ep":Lorg/apache/xalan/templates/ElemParam;
    .restart local v17    # "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    .restart local v18    # "i":I
    .restart local v21    # "nodeType":I
    .restart local v23    # "paramIndex":I
    .restart local v25    # "rth":Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v29    # "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    .restart local v31    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :cond_c
    add-int/lit8 v18, v18, 0x1

    #@1dc
    goto/16 :goto_5

    #@1de
    .line 358
    .end local v13    # "currentFrameBottom":I
    .end local v15    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v16    # "ep":Lorg/apache/xalan/templates/ElemParam;
    .end local v17    # "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    .end local v18    # "i":I
    .end local v23    # "paramIndex":I
    :cond_d
    const/4 v13, 0x0

    #@1df
    .line 363
    .restart local v13    # "currentFrameBottom":I
    :cond_e
    :try_start_3
    move-object/from16 v0, v31

    #@1e1
    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1e3
    move-object/from16 v30, v0

    #@1e5
    .local v30, "t":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_7
    if-eqz v30, :cond_f

    #@1e7
    .line 366
    move-object/from16 v0, v30

    #@1e9
    invoke-virtual {v4, v0}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1ec
    .line 369
    :try_start_4
    move-object/from16 v0, p1

    #@1ee
    move-object/from16 v1, v30

    #@1f0
    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@1f3
    .line 370
    move-object/from16 v0, v30

    #@1f5
    move-object/from16 v1, p1

    #@1f7
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1fa
    .line 374
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@1fd
    .line 364
    move-object/from16 v0, v30

    #@1ff
    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@201
    move-object/from16 v30, v0

    #@203
    goto :goto_7

    #@204
    .line 373
    :catchall_1
    move-exception v8

    #@205
    .line 374
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@208
    .line 373
    throw v8

    #@209
    .line 378
    :cond_f
    move-object/from16 v0, v31

    #@20b
    iget v8, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    #@20d
    if-lez v8, :cond_10

    #@20f
    .line 395
    move-object/from16 v0, v33

    #@211
    invoke-virtual {v0, v13}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    #@214
    .line 396
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popRTFContext()V

    #@217
    .line 399
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@21a
    goto/16 :goto_2

    #@21c
    .line 410
    .end local v6    # "exNodeType":I
    .end local v7    # "mode":Lorg/apache/xml/utils/QName;
    .end local v13    # "currentFrameBottom":I
    .end local v21    # "nodeType":I
    .end local v30    # "t":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v31    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :cond_11
    if-lez v20, :cond_12

    #@21e
    .line 411
    move-object/from16 v0, v33

    #@220
    move/from16 v1, v32

    #@222
    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    #@225
    .line 412
    :cond_12
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    #@228
    .line 413
    if-eqz v24, :cond_13

    #@22a
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    #@22d
    .line 414
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@230
    .line 415
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    #@233
    .line 416
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@236
    .line 417
    invoke-interface/range {v28 .. v28}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    #@239
    goto/16 :goto_6

    #@23b
    .line 284
    nop

    #@23c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
