.class public Lorg/apache/xpath/axes/MatchPatternIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "MatchPatternIterator.java"


# static fields
.field private static final DEBUG:Z = false

.field static final serialVersionUID:J = -0x482e35cb67d7471aL


# instance fields
.field protected m_pattern:Lorg/apache/xpath/patterns/StepPattern;

.field protected m_superAxis:I

.field protected m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 8
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
    const/16 v7, 0x10

    #@2
    const/4 v6, 0x0

    #@3
    .line 78
    invoke-direct {p0, p1, p2, p3, v6}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    #@6
    .line 50
    const/4 v5, -0x1

    #@7
    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    #@9
    .line 80
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    #@c
    move-result v0

    #@d
    .line 82
    .local v0, "firstStepPos":I
    invoke-static {p0, p1, v0, v6}, Lorg/apache/xpath/axes/WalkerFactory;->loadSteps(Lorg/apache/xpath/axes/MatchPatternIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/patterns/StepPattern;

    #@10
    move-result-object v5

    #@11
    iput-object v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_pattern:Lorg/apache/xpath/patterns/StepPattern;

    #@13
    .line 84
    const/4 v1, 0x0

    #@14
    .line 85
    .local v1, "fromRoot":Z
    const/4 v3, 0x0

    #@15
    .line 86
    .local v3, "walkBack":Z
    const/4 v4, 0x0

    #@16
    .line 87
    .local v4, "walkDescendants":Z
    const/4 v2, 0x0

    #@17
    .line 89
    .local v2, "walkAttributes":Z
    const/high16 v5, 0x28000000

    #@19
    and-int/2addr v5, p3

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 91
    const/4 v1, 0x1

    #@1d
    .line 94
    :cond_0
    const v5, 0x5d86000

    #@20
    .line 93
    and-int/2addr v5, p3

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 101
    const/4 v3, 0x1

    #@24
    .line 104
    :cond_1
    const/high16 v5, 0x70000

    #@26
    .line 103
    and-int/2addr v5, p3

    #@27
    if-eqz v5, :cond_2

    #@29
    .line 107
    const/4 v4, 0x1

    #@2a
    .line 110
    :cond_2
    const v5, 0x208000

    #@2d
    .line 109
    and-int/2addr v5, p3

    #@2e
    if-eqz v5, :cond_3

    #@30
    .line 111
    const/4 v2, 0x1

    #@31
    .line 119
    :cond_3
    if-nez v1, :cond_4

    #@33
    if-eqz v3, :cond_6

    #@35
    .line 121
    :cond_4
    if-eqz v2, :cond_5

    #@37
    .line 123
    iput v7, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    #@39
    .line 75
    :goto_0
    return-void

    #@3a
    .line 127
    :cond_5
    const/16 v5, 0x11

    #@3c
    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    #@3e
    goto :goto_0

    #@3f
    .line 130
    :cond_6
    if-eqz v4, :cond_8

    #@41
    .line 132
    if-eqz v2, :cond_7

    #@43
    .line 134
    const/16 v5, 0xe

    #@45
    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    #@47
    goto :goto_0

    #@48
    .line 138
    :cond_7
    const/4 v5, 0x5

    #@49
    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    #@4b
    goto :goto_0

    #@4c
    .line 143
    :cond_8
    iput v7, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    #@4e
    goto :goto_0
.end method


# virtual methods
.method public acceptNode(ILorg/apache/xpath/XPathContext;)S
    .locals 4
    .param p1, "n"    # I
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 292
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@3
    .line 293
    iget v2, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_context:I

    #@5
    invoke-virtual {p2, v2}, Lorg/apache/xpath/XPathContext;->pushIteratorRoot(I)V

    #@8
    .line 304
    iget-object v2, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_pattern:Lorg/apache/xpath/patterns/StepPattern;

    #@a
    invoke-virtual {v2, p2}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@d
    move-result-object v0

    #@e
    .line 314
    .local v0, "score":Lorg/apache/xpath/objects/XObject;
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    if-ne v0, v2, :cond_0

    #@12
    const/4 v2, 0x3

    #@13
    .line 325
    :goto_0
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@16
    .line 326
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popIteratorRoot()V

    #@19
    .line 314
    return v2

    #@1a
    .line 315
    :cond_0
    const/4 v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 318
    .end local v0    # "score":Lorg/apache/xpath/objects/XObject;
    :catch_0
    move-exception v1

    #@1d
    .line 321
    .local v1, "se":Ljavax/xml/transform/TransformerException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@1f
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 324
    .end local v1    # "se":Ljavax/xml/transform/TransformerException;
    :catchall_0
    move-exception v2

    #@28
    .line 325
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@2b
    .line 326
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popIteratorRoot()V

    #@2e
    .line 324
    throw v2
.end method

.method public detach()V
    .locals 1

    #@0
    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_allowDetach:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 177
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@7
    .line 180
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    #@a
    .line 173
    :cond_0
    return-void
.end method

.method protected getNextNode()I
    .locals 3

    #@0
    .prologue
    .line 190
    iget v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_lastFetched:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v1, v0, :cond_0

    #@5
    .line 191
    iget-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@7
    iget v1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_context:I

    #@9
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    #@c
    move-result v0

    #@d
    .line 190
    :goto_0
    iput v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_lastFetched:I

    #@f
    .line 193
    iget v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_lastFetched:I

    #@11
    return v0

    #@12
    .line 192
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@14
    iget v1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_context:I

    #@16
    iget v2, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_lastFetched:I

    #@18
    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    #@1b
    move-result v0

    #@1c
    goto :goto_0
.end method

.method public nextNode()I
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, -0x1

    #@2
    .line 205
    iget-boolean v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_foundLast:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 206
    return v5

    #@7
    .line 212
    :cond_0
    iget v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_stackFrame:I

    #@9
    if-eq v5, v3, :cond_3

    #@b
    .line 214
    iget-object v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@d
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@10
    move-result-object v2

    #@11
    .line 217
    .local v2, "vars":Lorg/apache/xpath/VariableStack;
    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    #@14
    move-result v1

    #@15
    .line 219
    .local v1, "savedStart":I
    iget v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_stackFrame:I

    #@17
    invoke-virtual {v2, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@1a
    .line 235
    .end local v2    # "vars":Lorg/apache/xpath/VariableStack;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/MatchPatternIterator;->getNextNode()I

    #@1d
    move-result v0

    #@1e
    .line 237
    .local v0, "next":I
    if-eq v5, v0, :cond_1

    #@20
    .line 239
    iget-object v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@22
    invoke-virtual {p0, v0, v3}, Lorg/apache/xpath/axes/MatchPatternIterator;->acceptNode(ILorg/apache/xpath/XPathContext;)S

    #@25
    move-result v3

    #@26
    if-ne v4, v3, :cond_4

    #@28
    .line 249
    :cond_1
    if-eq v5, v0, :cond_5

    #@2a
    .line 256
    invoke-virtual {p0}, Lorg/apache/xpath/axes/MatchPatternIterator;->incrementCurrentPos()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 269
    iget v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_stackFrame:I

    #@2f
    if-eq v5, v3, :cond_2

    #@31
    .line 272
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@34
    .line 258
    :cond_2
    return v0

    #@35
    .line 224
    .end local v0    # "next":I
    .end local v1    # "savedStart":I
    :cond_3
    const/4 v2, 0x0

    #@36
    .line 225
    .local v2, "vars":Lorg/apache/xpath/VariableStack;
    const/4 v1, 0x0

    #@37
    .restart local v1    # "savedStart":I
    goto :goto_0

    #@38
    .line 247
    .end local v2    # "vars":Lorg/apache/xpath/VariableStack;
    .restart local v0    # "next":I
    :cond_4
    if-eq v0, v5, :cond_1

    #@3a
    goto :goto_0

    #@3b
    .line 262
    :cond_5
    const/4 v3, 0x1

    #@3c
    :try_start_1
    iput-boolean v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_foundLast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    .line 269
    iget v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_stackFrame:I

    #@40
    if-eq v5, v3, :cond_6

    #@42
    .line 272
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@45
    .line 264
    :cond_6
    return v5

    #@46
    .line 268
    .end local v0    # "next":I
    :catchall_0
    move-exception v3

    #@47
    .line 269
    iget v4, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_stackFrame:I

    #@49
    if-eq v5, v4, :cond_7

    #@4b
    .line 272
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@4e
    .line 268
    :cond_7
    throw v3
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 2
    .param p1, "context"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    #@3
    .line 163
    iget-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    #@5
    iget v1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    #@7
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@d
    .line 160
    return-void
.end method
