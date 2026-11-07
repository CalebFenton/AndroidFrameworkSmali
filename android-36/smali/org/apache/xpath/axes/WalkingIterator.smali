.class public Lorg/apache/xpath/axes/WalkingIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "WalkingIterator.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final whitelist serialVersionUID:J = 0x7e6e0639dd78a4f2L


# instance fields
.field protected greylist m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

.field protected greylist m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 60
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    if-eqz p4, :cond_12

    const/4 p3, 0x0

    .line 64
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xpath/axes/WalkerFactory;->loadWalkers(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 65
    iput-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    :cond_12
    return-void
.end method


# virtual methods
.method public greylist callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 3

    .line 304
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 306
    iget-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz p1, :cond_d

    .line 308
    invoke-virtual {p1, p0, p2}, Lorg/apache/xpath/axes/AxesWalker;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_d
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 114
    invoke-super {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/WalkingIterator;

    .line 118
    iget-object p0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz p0, :cond_11

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/AxesWalker;->cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    :cond_11
    return-object v0
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 4

    .line 344
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 347
    :cond_8
    iget-object p0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 348
    check-cast p1, Lorg/apache/xpath/axes/WalkingIterator;

    iget-object p1, p1, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    :goto_e
    if-eqz p0, :cond_22

    if-eqz p1, :cond_22

    .line 351
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    .line 353
    :cond_19
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p0

    .line 354
    invoke-virtual {p1}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p1

    goto :goto_e

    :cond_22
    if-nez p0, :cond_29

    if-eqz p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x1

    return p0

    :cond_29
    :goto_29
    return v1
.end method

.method public greylist detach()V
    .registers 2

    .line 260
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_16

    .line 262
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    :goto_6
    if-eqz v0, :cond_10

    .line 265
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->detach()V

    .line 266
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 272
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    :cond_16
    return-void
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 4

    const/4 v0, -0x1

    .line 288
    iput v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    .line 290
    iget-object p0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    :goto_5
    if-eqz p0, :cond_f

    .line 294
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    .line 295
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p0

    goto :goto_5

    :cond_f
    return-void
.end method

.method public greylist getAnalysisBits()I
    .registers 3

    .line 89
    iget-object p0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    :goto_5
    if-eqz p0, :cond_11

    .line 95
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getAnalysisBits()I

    move-result v1

    or-int/2addr v0, v1

    .line 97
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p0

    goto :goto_5

    :cond_11
    return v0
.end method

.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 327
    iget-object p0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object p0
.end method

.method public final greylist getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;
    .registers 1

    .line 214
    iget-object p0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object p0
.end method

.method public final greylist getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;
    .registers 1

    .line 248
    iget-object p0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object p0
.end method

.method public greylist nextNode()I
    .registers 4

    .line 171
    iget-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    .line 182
    :cond_6
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-ne v1, v0, :cond_15

    .line 184
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->nextNode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/LocPathIterator;->returnNextNode(I)I

    move-result p0

    return p0

    .line 188
    :cond_15
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v1

    .line 193
    iget v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    invoke-virtual {v0, v2}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 195
    iget-object v2, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v2}, Lorg/apache/xpath/axes/AxesWalker;->nextNode()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xpath/axes/LocPathIterator;->returnNextNode(I)I

    move-result p0

    .line 198
    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    return p0
.end method

.method public greylist reset()V
    .registers 2

    .line 132
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->reset()V

    .line 134
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v0, :cond_e

    .line 136
    iput-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 138
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {v0, p0}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    :cond_e
    return-void
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 335
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 336
    check-cast p1, Lorg/apache/xpath/axes/AxesWalker;

    iput-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-void
.end method

.method public final greylist setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-void
.end method

.method public final greylist setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-void
.end method

.method public greylist setRoot(ILjava/lang/Object;)V
    .registers 3

    .line 153
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 155
    iget-object p2, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz p2, :cond_e

    .line 157
    invoke-virtual {p2, p1}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    .line 158
    iget-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    iput-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    :cond_e
    return-void
.end method
