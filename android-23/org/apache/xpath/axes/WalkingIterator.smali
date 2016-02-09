.class public Lorg/apache/xpath/axes/WalkingIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "WalkingIterator.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final serialVersionUID:J = 0x7e6e0639dd78a4f2L


# instance fields
.field protected m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

.field protected m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;


# direct methods
.method public constructor <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 0
    .param p1, "nscontext"    # Lorg/apache/xml/utils/PrefixResolver;

    #@0
    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    #@3
    .line 75
    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .locals 2
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .param p3, "analysis"    # I
    .param p4, "shouldLoadWalkers"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    #@3
    .line 60
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    #@6
    move-result v0

    #@7
    .line 62
    .local v0, "firstStepPos":I
    if-eqz p4, :cond_0

    #@9
    .line 64
    const/4 v1, 0x0

    #@a
    invoke-static {p0, p1, v0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->loadWalkers(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/axes/AxesWalker;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@10
    .line 65
    iget-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@12
    iput-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@14
    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 304
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 306
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 308
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@c
    invoke-virtual {v0, p0, p2}, Lorg/apache/xpath/axes/AxesWalker;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@f
    .line 302
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 114
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lorg/apache/xpath/axes/WalkingIterator;

    #@7
    .line 118
    .local v0, "clone":Lorg/apache/xpath/axes/WalkingIterator;
    iget-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 120
    iget-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@d
    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/axes/AxesWalker;->cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    #@10
    move-result-object v1

    #@11
    iput-object v1, v0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@13
    .line 123
    :cond_0
    return-object v0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 4
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 344
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 345
    return v3

    #@8
    .line 347
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@a
    .line 348
    .local v0, "walker1":Lorg/apache/xpath/axes/AxesWalker;
    check-cast p1, Lorg/apache/xpath/axes/WalkingIterator;

    #@c
    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    iget-object v1, p1, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@e
    .line 349
    .local v1, "walker2":Lorg/apache/xpath/axes/AxesWalker;
    :goto_0
    if-eqz v0, :cond_2

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 351
    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/AxesWalker;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_1

    #@18
    .line 352
    return v3

    #@19
    .line 353
    :cond_1
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@1c
    move-result-object v0

    #@1d
    .line 354
    invoke-virtual {v1}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@20
    move-result-object v1

    #@21
    goto :goto_0

    #@22
    .line 357
    :cond_2
    if-nez v0, :cond_3

    #@24
    if-eqz v1, :cond_4

    #@26
    .line 358
    :cond_3
    return v3

    #@27
    .line 360
    :cond_4
    const/4 v2, 0x1

    #@28
    return v2
.end method

.method public detach()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 260
    iget-boolean v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_allowDetach:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 262
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@7
    .line 263
    .local v0, "walker":Lorg/apache/xpath/axes/AxesWalker;
    :goto_0
    if-eqz v0, :cond_0

    #@9
    .line 265
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->detach()V

    #@c
    .line 266
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@f
    move-result-object v0

    #@10
    goto :goto_0

    #@11
    .line 269
    :cond_0
    iput-object v2, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@13
    .line 272
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    #@16
    .line 258
    .end local v0    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_1
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 288
    const/4 v1, -0x1

    #@1
    iput v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_predicateIndex:I

    #@3
    .line 290
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@5
    .line 292
    .local v0, "walker":Lorg/apache/xpath/axes/AxesWalker;
    :goto_0
    if-eqz v0, :cond_0

    #@7
    .line 294
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->fixupVariables(Ljava/util/Vector;I)V

    #@a
    .line 295
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@d
    move-result-object v0

    #@e
    goto :goto_0

    #@f
    .line 286
    :cond_0
    return-void
.end method

.method public getAnalysisBits()I
    .locals 4

    #@0
    .prologue
    .line 88
    const/4 v1, 0x0

    #@1
    .line 89
    .local v1, "bits":I
    iget-object v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 91
    iget-object v2, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@7
    .line 93
    .local v2, "walker":Lorg/apache/xpath/axes/AxesWalker;
    :goto_0
    if-eqz v2, :cond_0

    #@9
    .line 95
    invoke-virtual {v2}, Lorg/apache/xpath/axes/AxesWalker;->getAnalysisBits()I

    #@c
    move-result v0

    #@d
    .line 96
    .local v0, "bit":I
    or-int/2addr v1, v0

    #@e
    .line 97
    invoke-virtual {v2}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@11
    move-result-object v2

    #@12
    goto :goto_0

    #@13
    .line 100
    .end local v0    # "bit":I
    .end local v2    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_0
    return v1
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@2
    return-object v0
.end method

.method public final getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@2
    return-object v0
.end method

.method public final getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@2
    return-object v0
.end method

.method public nextNode()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 171
    iget-boolean v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_foundLast:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 172
    return v4

    #@6
    .line 182
    :cond_0
    iget v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_stackFrame:I

    #@8
    if-ne v4, v3, :cond_1

    #@a
    .line 184
    iget-object v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@c
    invoke-virtual {v3}, Lorg/apache/xpath/axes/AxesWalker;->nextNode()I

    #@f
    move-result v3

    #@10
    invoke-virtual {p0, v3}, Lorg/apache/xpath/axes/WalkingIterator;->returnNextNode(I)I

    #@13
    move-result v3

    #@14
    return v3

    #@15
    .line 188
    :cond_1
    iget-object v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@17
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@1a
    move-result-object v2

    #@1b
    .line 191
    .local v2, "vars":Lorg/apache/xpath/VariableStack;
    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    #@1e
    move-result v1

    #@1f
    .line 193
    .local v1, "savedStart":I
    iget v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_stackFrame:I

    #@21
    invoke-virtual {v2, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@24
    .line 195
    iget-object v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@26
    invoke-virtual {v3}, Lorg/apache/xpath/axes/AxesWalker;->nextNode()I

    #@29
    move-result v3

    #@2a
    invoke-virtual {p0, v3}, Lorg/apache/xpath/axes/WalkingIterator;->returnNextNode(I)I

    #@2d
    move-result v0

    #@2e
    .line 198
    .local v0, "n":I
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@31
    .line 200
    return v0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 132
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->reset()V

    #@3
    .line 134
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 136
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@9
    iput-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@b
    .line 138
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@d
    iget v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_context:I

    #@f
    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    #@12
    .line 129
    :cond_0
    return-void
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 335
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@3
    .line 336
    check-cast p1, Lorg/apache/xpath/axes/AxesWalker;

    #@5
    .end local p1    # "exp":Lorg/apache/xpath/Expression;
    iput-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@7
    .line 333
    return-void
.end method

.method public final setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .locals 0
    .param p1, "walker"    # Lorg/apache/xpath/axes/AxesWalker;

    #@0
    .prologue
    .line 225
    iput-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@2
    .line 223
    return-void
.end method

.method public final setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .locals 0
    .param p1, "walker"    # Lorg/apache/xpath/axes/AxesWalker;

    #@0
    .prologue
    .line 237
    iput-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@2
    .line 235
    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 1
    .param p1, "context"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    #@3
    .line 155
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 157
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@9
    invoke-virtual {v0, p1}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    #@c
    .line 158
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@e
    iput-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@10
    .line 150
    :cond_0
    return-void
.end method
