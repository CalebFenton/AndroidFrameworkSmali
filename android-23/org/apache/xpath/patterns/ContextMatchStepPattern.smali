.class public Lorg/apache/xpath/patterns/ContextMatchStepPattern;
.super Lorg/apache/xpath/patterns/StepPattern;
.source "ContextMatchStepPattern.java"


# static fields
.field static final serialVersionUID:J = -0x1a33da6115f1aa26L


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "axis"    # I
    .param p2, "paxis"    # I

    #@0
    .prologue
    .line 43
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;-><init>(III)V

    #@4
    .line 41
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getIteratorRoot()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 65
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->getStaticScore()Lorg/apache/xpath/objects/XNumber;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 67
    :cond_0
    sget-object v0, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@11
    return-object v0
.end method

.method public executeRelativePathPattern(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/objects/XObject;
    .locals 17
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "prevStep"    # Lorg/apache/xpath/patterns/StepPattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    sget-object v12, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@2
    .line 91
    .local v12, "score":Lorg/apache/xpath/objects/XObject;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@5
    move-result v5

    #@6
    .line 92
    .local v5, "context":I
    move-object/from16 v0, p1

    #@8
    invoke-virtual {v0, v5}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@b
    move-result-object v6

    #@c
    .line 94
    .local v6, "dtm":Lorg/apache/xml/dtm/DTM;
    if-eqz v6, :cond_7

    #@e
    .line 96
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@11
    move-result v10

    #@12
    .line 99
    .local v10, "predContext":I
    move-object/from16 v0, p0

    #@14
    iget v4, v0, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->m_axis:I

    #@16
    .line 101
    .local v4, "axis":I
    invoke-static {v4}, Lorg/apache/xpath/axes/WalkerFactory;->isDownwardAxisOfMany(I)Z

    #@19
    move-result v9

    #@1a
    .line 102
    .local v9, "needToTraverseAttrs":Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getIteratorRoot()I

    #@1d
    move-result v15

    #@1e
    invoke-interface {v6, v15}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@21
    move-result v15

    #@22
    .line 103
    const/16 v16, 0x2

    #@24
    .line 102
    move/from16 v0, v16

    #@26
    if-ne v15, v0, :cond_1

    #@28
    const/4 v8, 0x1

    #@29
    .line 105
    .local v8, "iterRootIsAttr":Z
    :goto_0
    const/16 v15, 0xb

    #@2b
    if-ne v15, v4, :cond_0

    #@2d
    if-eqz v8, :cond_0

    #@2f
    .line 107
    const/16 v4, 0xf

    #@31
    .line 110
    :cond_0
    invoke-interface {v6, v4}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@34
    move-result-object v13

    #@35
    .line 112
    .local v13, "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {v13, v5}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    #@38
    move-result v11

    #@39
    .local v11, "relative":I
    :goto_1
    const/4 v15, -0x1

    #@3a
    if-eq v15, v11, :cond_7

    #@3c
    .line 117
    :try_start_0
    move-object/from16 v0, p1

    #@3e
    invoke-virtual {v0, v11}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@41
    .line 119
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@44
    move-result-object v12

    #@45
    .line 121
    sget-object v15, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@47
    if-eq v12, v15, :cond_3

    #@49
    .line 125
    move-object/from16 v0, p0

    #@4b
    move-object/from16 v1, p1

    #@4d
    invoke-virtual {v0, v1, v6, v5}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->executePredicates(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@50
    move-result v15

    #@51
    if-eqz v15, :cond_2

    #@53
    .line 170
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@56
    .line 126
    return-object v12

    #@57
    .line 102
    .end local v8    # "iterRootIsAttr":Z
    .end local v11    # "relative":I
    .end local v13    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_1
    const/4 v8, 0x0

    #@58
    .restart local v8    # "iterRootIsAttr":Z
    goto :goto_0

    #@59
    .line 128
    .restart local v11    # "relative":I
    .restart local v13    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_2
    :try_start_1
    sget-object v12, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@5b
    .line 131
    :cond_3
    if-eqz v9, :cond_6

    #@5d
    if-eqz v8, :cond_6

    #@5f
    .line 132
    invoke-interface {v6, v11}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@62
    move-result v15

    #@63
    const/16 v16, 0x1

    #@65
    move/from16 v0, v16

    #@67
    if-ne v0, v15, :cond_6

    #@69
    .line 134
    const/4 v14, 0x2

    #@6a
    .line 135
    .local v14, "xaxis":I
    const/4 v7, 0x0

    #@6b
    .local v7, "i":I
    :goto_2
    const/4 v15, 0x2

    #@6c
    if-ge v7, v15, :cond_6

    #@6e
    .line 137
    invoke-interface {v6, v14}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@71
    move-result-object v3

    #@72
    .line 139
    .local v3, "atraverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {v3, v11}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@75
    move-result v2

    #@76
    .line 140
    .local v2, "arelative":I
    :goto_3
    const/4 v15, -0x1

    #@77
    .line 139
    if-eq v15, v2, :cond_5

    #@79
    .line 145
    :try_start_2
    move-object/from16 v0, p1

    #@7b
    invoke-virtual {v0, v2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@7e
    .line 147
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@81
    move-result-object v12

    #@82
    .line 149
    sget-object v15, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@84
    if-eq v12, v15, :cond_4

    #@86
    .line 154
    sget-object v15, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@88
    if-eq v12, v15, :cond_4

    #@8a
    .line 160
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@8d
    .line 170
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@90
    .line 155
    return-object v12

    #@91
    .line 160
    :cond_4
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@94
    .line 141
    invoke-virtual {v3, v11, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    #@97
    move-result v2

    #@98
    goto :goto_3

    #@99
    .line 159
    :catchall_0
    move-exception v15

    #@9a
    .line 160
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@9d
    .line 159
    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@9e
    .line 169
    .end local v2    # "arelative":I
    .end local v3    # "atraverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    .end local v7    # "i":I
    .end local v14    # "xaxis":I
    :catchall_1
    move-exception v15

    #@9f
    .line 170
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@a2
    .line 169
    throw v15

    #@a3
    .line 163
    .restart local v2    # "arelative":I
    .restart local v3    # "atraverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    .restart local v7    # "i":I
    .restart local v14    # "xaxis":I
    :cond_5
    const/16 v14, 0x9

    #@a5
    .line 135
    add-int/lit8 v7, v7, 0x1

    #@a7
    goto :goto_2

    #@a8
    .line 170
    .end local v2    # "arelative":I
    .end local v3    # "atraverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    .end local v7    # "i":I
    .end local v14    # "xaxis":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@ab
    .line 113
    invoke-virtual {v13, v5, v11}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    #@ae
    move-result v11

    #@af
    goto :goto_1

    #@b0
    .line 176
    .end local v4    # "axis":I
    .end local v8    # "iterRootIsAttr":Z
    .end local v9    # "needToTraverseAttrs":Z
    .end local v10    # "predContext":I
    .end local v11    # "relative":I
    .end local v13    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_7
    return-object v12
.end method
