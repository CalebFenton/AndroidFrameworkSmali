.class public Lorg/apache/xpath/axes/FilterExprIterator;
.super Lorg/apache/xpath/axes/BasicTestIterator;
.source "FilterExprIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;
    }
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = 0x236b26a548a4ce8eL


# instance fields
.field private greylist m_canDetachNodeset:Z

.field private greylist m_expr:Lorg/apache/xpath/Expression;

.field private transient greylist m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

.field private greylist m_mustHardReset:Z


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetm_expr(Lorg/apache/xpath/axes/FilterExprIterator;)Lorg/apache/xpath/Expression;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fputm_expr(Lorg/apache/xpath/axes/FilterExprIterator;Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/BasicTestIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_mustHardReset:Z

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_canDetachNodeset:Z

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xpath/Expression;)V
    .registers 3

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/BasicTestIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_mustHardReset:Z

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_canDetachNodeset:Z

    .line 58
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    return-void
.end method


# virtual methods
.method public greylist callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 4

    .line 194
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;-><init>(Lorg/apache/xpath/axes/FilterExprIterator;)V

    invoke-interface {v0, v1, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 196
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    return-void
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 4

    .line 204
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 207
    :cond_8
    check-cast p1, Lorg/apache/xpath/axes/FilterExprIterator;

    .line 208
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    iget-object p1, p1, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result p0

    if-nez p0, :cond_15

    return v1

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public greylist detach()V
    .registers 2

    .line 101
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    .line 102
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/NodeSequence;->detach()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    return-void
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 118
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    .line 119
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public greylist getAnalysisBits()I
    .registers 2

    .line 145
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    if-eqz p0, :cond_f

    instance-of v0, p0, Lorg/apache/xpath/axes/PathComponent;

    if-eqz v0, :cond_f

    .line 147
    check-cast p0, Lorg/apache/xpath/axes/PathComponent;

    invoke-interface {p0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    move-result p0

    return p0

    :cond_f
    const/high16 p0, 0x4000000

    return p0
.end method

.method public greylist getInnerExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 127
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method protected greylist getNextNode()I
    .registers 2

    .line 84
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v0, :cond_b

    .line 86
    invoke-virtual {v0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    goto :goto_e

    :cond_b
    const/4 v0, -0x1

    .line 89
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    .line 91
    :goto_e
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    return p0
.end method

.method public greylist isDocOrdered()Z
    .registers 1

    .line 161
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->isDocOrdered()Z

    move-result p0

    return p0
.end method

.method public greylist setInnerExpression(Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 135
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 136
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public greylist setRoot(ILjava/lang/Object;)V
    .registers 9

    .line 70
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    .line 73
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    .line 74
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getIsTopLevel()Z

    move-result v3

    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    iget-object v5, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    move v0, p1

    .line 72
    invoke-static/range {v0 .. v5}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->executeFilterExpr(ILorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/PrefixResolver;ZILorg/apache/xpath/Expression;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    return-void
.end method
