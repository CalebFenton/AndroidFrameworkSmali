.class public Lorg/apache/xpath/axes/DescendantIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "DescendantIterator.java"


# static fields
.field static final serialVersionUID:J = -0x1084eea8350345eaL


# instance fields
.field protected m_axis:I

.field protected m_extendedTypeID:I

.field protected transient m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 134
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, v1}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    #@4
    .line 135
    const/16 v1, 0x12

    #@6
    iput v1, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    #@8
    .line 136
    const/4 v0, -0x1

    #@9
    .line 137
    .local v0, "whatToShow":I
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/DescendantIterator;->initNodeTest(I)V

    #@c
    .line 132
    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 10
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .param p3, "analysis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x2a

    #@2
    const/4 v8, -0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 57
    invoke-direct {p0, p1, p2, p3, v7}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    #@7
    .line 59
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    #@a
    move-result v0

    #@b
    .line 60
    .local v0, "firstStepPos":I
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@e
    move-result v5

    #@f
    .line 62
    .local v5, "stepType":I
    if-ne v9, v5, :cond_1

    #@11
    const/4 v3, 0x1

    #@12
    .line 63
    .local v3, "orSelf":Z
    :goto_0
    const/4 v1, 0x0

    #@13
    .line 64
    .local v1, "fromRoot":Z
    const/16 v7, 0x30

    #@15
    if-ne v7, v5, :cond_2

    #@17
    .line 66
    const/4 v3, 0x1

    #@18
    .line 80
    :cond_0
    :goto_1
    move v2, v0

    #@19
    .line 83
    .local v2, "nextStepPos":I
    :goto_2
    invoke-virtual {p1, v2}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    #@1c
    move-result v2

    #@1d
    .line 84
    if-lez v2, :cond_3

    #@1f
    .line 86
    invoke-virtual {p1, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@22
    move-result v4

    #@23
    .line 87
    .local v4, "stepOp":I
    if-eq v8, v4, :cond_3

    #@25
    .line 88
    move v0, v2

    #@26
    goto :goto_2

    #@27
    .line 62
    .end local v1    # "fromRoot":Z
    .end local v2    # "nextStepPos":I
    .end local v3    # "orSelf":Z
    .end local v4    # "stepOp":I
    :cond_1
    const/4 v3, 0x0

    #@28
    .restart local v3    # "orSelf":Z
    goto :goto_0

    #@29
    .line 69
    .restart local v1    # "fromRoot":Z
    :cond_2
    const/16 v7, 0x32

    #@2b
    if-ne v7, v5, :cond_0

    #@2d
    .line 71
    const/4 v1, 0x1

    #@2e
    .line 73
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    #@31
    move-result v2

    #@32
    .line 74
    .restart local v2    # "nextStepPos":I
    invoke-virtual {p1, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@35
    move-result v7

    #@36
    if-ne v7, v9, :cond_0

    #@38
    .line 75
    const/4 v3, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 98
    :cond_3
    const/high16 v7, 0x10000

    #@3c
    and-int/2addr v7, p3

    #@3d
    if-eqz v7, :cond_4

    #@3f
    .line 99
    const/4 v3, 0x0

    #@40
    .line 101
    :cond_4
    if-eqz v1, :cond_7

    #@42
    .line 103
    if-eqz v3, :cond_6

    #@44
    .line 104
    const/16 v7, 0x12

    #@46
    iput v7, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    #@48
    .line 113
    :goto_3
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    #@4b
    move-result v6

    #@4c
    .line 115
    .local v6, "whatToShow":I
    and-int/lit8 v7, v6, 0x43

    #@4e
    if-eqz v7, :cond_5

    #@50
    .line 118
    if-ne v6, v8, :cond_9

    #@52
    .line 119
    :cond_5
    invoke-virtual {p0, v6}, Lorg/apache/xpath/axes/DescendantIterator;->initNodeTest(I)V

    #@55
    .line 125
    :goto_4
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/axes/DescendantIterator;->initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V

    #@58
    .line 54
    return-void

    #@59
    .line 106
    .end local v6    # "whatToShow":I
    :cond_6
    const/16 v7, 0x11

    #@5b
    iput v7, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    #@5d
    goto :goto_3

    #@5e
    .line 108
    :cond_7
    if-eqz v3, :cond_8

    #@60
    .line 109
    const/4 v7, 0x5

    #@61
    iput v7, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    #@63
    goto :goto_3

    #@64
    .line 111
    :cond_8
    const/4 v7, 0x4

    #@65
    iput v7, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    #@67
    goto :goto_3

    #@68
    .line 122
    .restart local v6    # "whatToShow":I
    :cond_9
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    #@6b
    move-result-object v7

    #@6c
    .line 123
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    #@6f
    move-result-object v8

    #@70
    .line 122
    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/xpath/axes/DescendantIterator;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    #@73
    goto :goto_4
.end method


# virtual methods
.method public asNode(Lorg/apache/xpath/XPathContext;)I
    .locals 9
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->getPredicateCount()I

    #@3
    move-result v8

    #@4
    if-lez v8, :cond_0

    #@6
    .line 297
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->asNode(Lorg/apache/xpath/XPathContext;)I

    #@9
    move-result v8

    #@a
    return v8

    #@b
    .line 299
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@e
    move-result v0

    #@f
    .line 301
    .local v0, "current":I
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@12
    move-result-object v1

    #@13
    .line 302
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    iget v8, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    #@15
    invoke-interface {v1, v8}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@18
    move-result-object v5

    #@19
    .line 304
    .local v5, "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->getLocalName()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 305
    .local v3, "localName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->getNamespace()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 306
    .local v4, "namespace":Ljava/lang/String;
    iget v7, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_whatToShow:I

    #@23
    .line 312
    .local v7, "what":I
    const/4 v8, -0x1

    #@24
    if-eq v8, v7, :cond_1

    #@26
    .line 313
    const-string/jumbo v8, "*"

    #@29
    if-ne v3, v8, :cond_2

    #@2b
    .line 316
    :cond_1
    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    #@2e
    move-result v8

    #@2f
    return v8

    #@30
    .line 314
    :cond_2
    const-string/jumbo v8, "*"

    #@33
    if-eq v4, v8, :cond_1

    #@35
    .line 320
    invoke-static {v7}, Lorg/apache/xpath/axes/DescendantIterator;->getNodeTypeTest(I)I

    #@38
    move-result v6

    #@39
    .line 321
    .local v6, "type":I
    invoke-interface {v1, v4, v3, v6}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    #@3c
    move-result v2

    #@3d
    .line 322
    .local v2, "extendedType":I
    invoke-virtual {v5, v0, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(II)I

    #@40
    move-result v8

    #@41
    return v8
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/axes/DescendantIterator;

    #@6
    .line 153
    .local v0, "clone":Lorg/apache/xpath/axes/DescendantIterator;
    iget-object v1, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@8
    iput-object v1, v0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@a
    .line 155
    invoke-virtual {v0}, Lorg/apache/xpath/axes/DescendantIterator;->resetProximityPositions()V

    #@d
    .line 157
    return-object v0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 3
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 370
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 371
    return v2

    #@8
    .line 373
    :cond_0
    iget v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    #@a
    check-cast p1, Lorg/apache/xpath/axes/DescendantIterator;

    #@c
    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    iget v1, p1, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    #@e
    if-eq v0, v1, :cond_1

    #@10
    .line 374
    return v2

    #@11
    .line 376
    :cond_1
    const/4 v0, 0x1

    #@12
    return v0
.end method

.method public detach()V
    .locals 1

    #@0
    .prologue
    .line 335
    iget-boolean v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_allowDetach:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 336
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@7
    .line 337
    const/4 v0, 0x0

    #@8
    iput v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    #@a
    .line 340
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    #@d
    .line 333
    :cond_0
    return-void
.end method

.method public getAxis()I
    .locals 1

    #@0
    .prologue
    .line 352
    iget v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    #@2
    return v0
.end method

.method public nextNode()I
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, -0x1

    #@2
    .line 174
    iget-boolean v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_foundLast:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 175
    return v7

    #@7
    .line 177
    :cond_0
    iget v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_lastFetched:I

    #@9
    if-ne v7, v3, :cond_1

    #@b
    .line 179
    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->resetProximityPositions()V

    #@e
    .line 186
    :cond_1
    iget v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_stackFrame:I

    #@10
    if-eq v7, v3, :cond_4

    #@12
    .line 188
    iget-object v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@14
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@17
    move-result-object v2

    #@18
    .line 191
    .local v2, "vars":Lorg/apache/xpath/VariableStack;
    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    #@1b
    move-result v1

    #@1c
    .line 193
    .local v1, "savedStart":I
    iget v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_stackFrame:I

    #@1e
    invoke-virtual {v2, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@21
    .line 206
    .end local v2    # "vars":Lorg/apache/xpath/VariableStack;
    :goto_0
    :try_start_0
    iget v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    #@23
    if-nez v3, :cond_6

    #@25
    .line 208
    iget v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_lastFetched:I

    #@27
    if-ne v7, v3, :cond_5

    #@29
    .line 209
    iget-object v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@2b
    iget v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_context:I

    #@2d
    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    #@30
    move-result v0

    #@31
    .line 208
    :goto_1
    iput v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_lastFetched:I

    #@33
    .line 220
    .local v0, "next":I
    :goto_2
    if-eq v7, v0, :cond_2

    #@35
    .line 222
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/DescendantIterator;->acceptNode(I)S

    #@38
    move-result v3

    #@39
    if-ne v8, v3, :cond_8

    #@3b
    .line 232
    :cond_2
    if-eq v7, v0, :cond_9

    #@3d
    .line 234
    iget v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_pos:I

    #@3f
    add-int/lit8 v3, v3, 0x1

    #@41
    iput v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 246
    iget v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_stackFrame:I

    #@45
    if-eq v7, v3, :cond_3

    #@47
    .line 249
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@4a
    .line 235
    :cond_3
    return v0

    #@4b
    .line 198
    .end local v0    # "next":I
    .end local v1    # "savedStart":I
    :cond_4
    const/4 v2, 0x0

    #@4c
    .line 199
    .local v2, "vars":Lorg/apache/xpath/VariableStack;
    const/4 v1, 0x0

    #@4d
    .restart local v1    # "savedStart":I
    goto :goto_0

    #@4e
    .line 210
    .end local v2    # "vars":Lorg/apache/xpath/VariableStack;
    :cond_5
    :try_start_1
    iget-object v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@50
    iget v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_context:I

    #@52
    iget v5, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_lastFetched:I

    #@54
    invoke-virtual {v3, v4, v5}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    #@57
    move-result v0

    #@58
    goto :goto_1

    #@59
    .line 214
    :cond_6
    iget v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_lastFetched:I

    #@5b
    if-ne v7, v3, :cond_7

    #@5d
    .line 215
    iget-object v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@5f
    iget v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_context:I

    #@61
    iget v5, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    #@63
    invoke-virtual {v3, v4, v5}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(II)I

    #@66
    move-result v0

    #@67
    .line 214
    :goto_3
    iput v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_lastFetched:I

    #@69
    .restart local v0    # "next":I
    goto :goto_2

    #@6a
    .line 216
    .end local v0    # "next":I
    :cond_7
    iget-object v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@6c
    iget v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_context:I

    #@6e
    iget v5, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_lastFetched:I

    #@70
    .line 217
    iget v6, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    #@72
    .line 216
    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(III)I

    #@75
    move-result v0

    #@76
    goto :goto_3

    #@77
    .line 230
    .restart local v0    # "next":I
    :cond_8
    if-eq v0, v7, :cond_2

    #@79
    goto :goto_0

    #@7a
    .line 239
    :cond_9
    const/4 v3, 0x1

    #@7b
    iput-boolean v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_foundLast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7d
    .line 246
    iget v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_stackFrame:I

    #@7f
    if-eq v7, v3, :cond_a

    #@81
    .line 249
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@84
    .line 241
    :cond_a
    return v7

    #@85
    .line 245
    .end local v0    # "next":I
    :catchall_0
    move-exception v3

    #@86
    .line 246
    iget v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_stackFrame:I

    #@88
    if-eq v7, v4, :cond_b

    #@8a
    .line 249
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@8d
    .line 245
    :cond_b
    throw v3
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 6
    .param p1, "context"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 263
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    #@3
    .line 264
    iget-object v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    #@5
    iget v5, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    #@7
    invoke-interface {v4, v5}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@a
    move-result-object v4

    #@b
    iput-object v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@d
    .line 266
    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->getLocalName()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 267
    .local v0, "localName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->getNamespace()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 268
    .local v1, "namespace":Ljava/lang/String;
    iget v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_whatToShow:I

    #@17
    .line 271
    .local v3, "what":I
    const/4 v4, -0x1

    #@18
    if-eq v4, v3, :cond_0

    #@1a
    .line 272
    const-string/jumbo v4, "*"

    #@1d
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v4

    #@21
    .line 271
    if-nez v4, :cond_0

    #@23
    .line 273
    const-string/jumbo v4, "*"

    #@26
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v4

    #@2a
    .line 271
    if-eqz v4, :cond_1

    #@2c
    .line 275
    :cond_0
    const/4 v4, 0x0

    #@2d
    iput v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    #@2f
    .line 261
    :goto_0
    return-void

    #@30
    .line 279
    :cond_1
    invoke-static {v3}, Lorg/apache/xpath/axes/DescendantIterator;->getNodeTypeTest(I)I

    #@33
    move-result v2

    #@34
    .line 280
    .local v2, "type":I
    iget-object v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    #@36
    invoke-interface {v4, v1, v0, v2}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    #@39
    move-result v4

    #@3a
    iput v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    #@3c
    goto :goto_0
.end method
