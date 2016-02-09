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
.field static final serialVersionUID:J = 0x236b26a548a4ce8eL


# instance fields
.field private m_canDetachNodeset:Z

.field private m_expr:Lorg/apache/xpath/Expression;

.field private transient m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

.field private m_mustHardReset:Z


# direct methods
.method static synthetic -get0(Lorg/apache/xpath/axes/FilterExprIterator;)Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lorg/apache/xpath/axes/FilterExprIterator;Lorg/apache/xpath/Expression;)Lorg/apache/xpath/Expression;
    .locals 0

    #@0
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    #@2
    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/BasicTestIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    #@4
    .line 39
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_mustHardReset:Z

    #@7
    .line 40
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_canDetachNodeset:Z

    #@a
    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/Expression;)V
    .locals 1
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 57
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/BasicTestIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    #@4
    .line 39
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_mustHardReset:Z

    #@7
    .line 40
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_canDetachNodeset:Z

    #@a
    .line 58
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    #@c
    .line 55
    return-void
.end method


# virtual methods
.method public callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    #@2
    new-instance v1, Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;

    #@4
    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;-><init>(Lorg/apache/xpath/axes/FilterExprIterator;)V

    #@7
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@a
    .line 196
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/BasicTestIterator;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    #@d
    .line 192
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 4
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 204
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/BasicTestIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 205
    return v3

    #@8
    :cond_0
    move-object v0, p1

    #@9
    .line 207
    check-cast v0, Lorg/apache/xpath/axes/FilterExprIterator;

    #@b
    .line 208
    .local v0, "fet":Lorg/apache/xpath/axes/FilterExprIterator;
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    #@d
    iget-object v2, v0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    #@f
    invoke-virtual {v1, v2}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 209
    return v3

    #@16
    .line 211
    :cond_1
    const/4 v1, 0x1

    #@17
    return v1
.end method

.method public detach()V
    .locals 1

    #@0
    .prologue
    .line 101
    invoke-super {p0}, Lorg/apache/xpath/axes/BasicTestIterator;->detach()V

    #@3
    .line 102
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@5
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->detach()V

    #@8
    .line 103
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@b
    .line 99
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/BasicTestIterator;->fixupVariables(Ljava/util/Vector;I)V

    #@3
    .line 119
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    #@5
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    #@8
    .line 116
    return-void
.end method

.method public getAnalysisBits()I
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    #@6
    instance-of v0, v0, Lorg/apache/xpath/axes/PathComponent;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 147
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    #@c
    check-cast v0, Lorg/apache/xpath/axes/PathComponent;

    #@e
    invoke-interface {v0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 149
    :cond_0
    const/high16 v0, 0x4000000

    #@15
    return v0
.end method

.method public getInnerExpression()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method protected getNextNode()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 86
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@6
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_lastFetched:I

    #@c
    .line 91
    :goto_0
    iget v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_lastFetched:I

    #@e
    return v0

    #@f
    .line 89
    :cond_0
    const/4 v0, -0x1

    #@10
    iput v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_lastFetched:I

    #@12
    goto :goto_0
.end method

.method public isDocOrdered()Z
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@2
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->isDocOrdered()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setInnerExpression(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 135
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@3
    .line 136
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    #@5
    .line 133
    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 6
    .param p1, "context"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/BasicTestIterator;->setRoot(ILjava/lang/Object;)V

    #@3
    .line 73
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@5
    invoke-virtual {p0}, Lorg/apache/xpath/axes/FilterExprIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    #@8
    move-result-object v2

    #@9
    .line 74
    invoke-virtual {p0}, Lorg/apache/xpath/axes/FilterExprIterator;->getIsTopLevel()Z

    #@c
    move-result v3

    #@d
    iget v4, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_stackFrame:I

    #@f
    iget-object v5, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    #@11
    move v0, p1

    #@12
    .line 72
    invoke-static/range {v0 .. v5}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->executeFilterExpr(ILorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/PrefixResolver;ZILorg/apache/xpath/Expression;)Lorg/apache/xpath/objects/XNodeSet;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@18
    .line 68
    return-void
.end method
