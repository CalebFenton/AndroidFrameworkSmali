.class public Lorg/apache/xpath/patterns/ContextMatchStepPattern;
.super Lorg/apache/xpath/patterns/StepPattern;
.source "ContextMatchStepPattern.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x1a33da6115f1aa26L


# direct methods
.method public constructor greylist <init>(II)V
    .registers 4

    const/4 v0, -0x1

    .line 43
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;-><init>(III)V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getIteratorRoot()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result p1

    if-ne v0, p1, :cond_f

    .line 65
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/NodeTest;->getStaticScore()Lorg/apache/xpath/objects/XNumber;

    move-result-object p0

    return-object p0

    .line 67
    :cond_f
    sget-object p0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    return-object p0
.end method

.method public greylist executeRelativePathPattern(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/objects/XObject;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 90
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    .line 91
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v3

    .line 92
    invoke-virtual {v1, v3}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v4

    if-eqz v4, :cond_9e

    .line 96
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    .line 99
    iget v5, v0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    .line 101
    invoke-static {v5}, Lorg/apache/xpath/axes/WalkerFactory;->isDownwardAxisOfMany(I)Z

    move-result v6

    .line 102
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getIteratorRoot()I

    move-result v7

    invoke-interface {v4, v7}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-ne v7, v10, :cond_27

    move v7, v9

    goto :goto_28

    :cond_27
    const/4 v7, 0x0

    :goto_28
    const/16 v11, 0xb

    if-ne v11, v5, :cond_30

    if-eqz v7, :cond_30

    const/16 v5, 0xf

    .line 110
    :cond_30
    invoke-interface {v4, v5}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v5

    .line 112
    invoke-virtual {v5, v3}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v11

    :goto_38
    const/4 v12, -0x1

    if-eq v12, v11, :cond_9e

    .line 117
    :try_start_3b
    invoke-virtual {v1, v11}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 119
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 121
    sget-object v13, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v2, v13, :cond_54

    .line 125
    invoke-virtual {v0, v1, v4, v3}, Lorg/apache/xpath/patterns/StepPattern;->executePredicates(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Z

    move-result v14
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_52

    if-eqz v14, :cond_50

    .line 170
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    return-object v2

    :cond_50
    move-object v2, v13

    goto :goto_54

    :catchall_52
    move-exception v0

    goto :goto_9a

    :cond_54
    :goto_54
    if-eqz v6, :cond_92

    if-eqz v7, :cond_92

    .line 132
    :try_start_58
    invoke-interface {v4, v11}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v13

    if-ne v9, v13, :cond_92

    move v14, v10

    const/4 v13, 0x0

    :goto_60
    if-ge v13, v10, :cond_92

    .line 137
    invoke-interface {v4, v14}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v14

    .line 139
    invoke-virtual {v14, v11}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v15
    :try_end_6a
    .catchall {:try_start_58 .. :try_end_6a} :catchall_52

    :goto_6a
    if-eq v12, v15, :cond_8d

    .line 145
    :try_start_6c
    invoke-virtual {v1, v15}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 147
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 149
    sget-object v8, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_88

    if-eq v2, v8, :cond_80

    if-eq v2, v8, :cond_80

    .line 160
    :try_start_79
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_52

    .line 170
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    return-object v2

    .line 160
    :cond_80
    :try_start_80
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 141
    invoke-virtual {v14, v11, v15}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v15

    goto :goto_6a

    :catchall_88
    move-exception v0

    .line 160
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 161
    throw v0
    :try_end_8d
    .catchall {:try_start_80 .. :try_end_8d} :catchall_52

    :cond_8d
    add-int/lit8 v13, v13, 0x1

    const/16 v14, 0x9

    goto :goto_60

    .line 170
    :cond_92
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 113
    invoke-virtual {v5, v3, v11}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v11

    goto :goto_38

    .line 170
    :goto_9a
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 171
    throw v0

    :cond_9e
    return-object v2
.end method
