.class public Lorg/apache/xpath/axes/HasPositionalPredChecker;
.super Lorg/apache/xpath/XPathVisitor;
.source "HasPositionalPredChecker.java"


# instance fields
.field private m_hasPositionalPred:Z

.field private m_predDepth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 38
    invoke-direct {p0}, Lorg/apache/xpath/XPathVisitor;-><init>()V

    #@4
    .line 40
    iput-boolean v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    #@6
    .line 41
    iput v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    #@8
    .line 38
    return-void
.end method

.method public static check(Lorg/apache/xpath/axes/LocPathIterator;)Z
    .locals 2
    .param p0, "path"    # Lorg/apache/xpath/axes/LocPathIterator;

    #@0
    .prologue
    .line 52
    new-instance v0, Lorg/apache/xpath/axes/HasPositionalPredChecker;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/axes/HasPositionalPredChecker;-><init>()V

    #@5
    .line 53
    .local v0, "hppc":Lorg/apache/xpath/axes/HasPositionalPredChecker;
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@9
    .line 54
    iget-boolean v1, v0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    #@b
    return v1
.end method


# virtual methods
.method public visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z
    .locals 2
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "func"    # Lorg/apache/xpath/functions/Function;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 66
    instance-of v0, p2, Lorg/apache/xpath/functions/FuncPosition;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 67
    instance-of v0, p2, Lorg/apache/xpath/functions/FuncLast;

    #@7
    .line 66
    if-eqz v0, :cond_1

    #@9
    .line 68
    :cond_0
    iput-boolean v1, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    #@b
    .line 69
    :cond_1
    return v1
.end method

.method public visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z
    .locals 2
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "pred"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 97
    iget v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    #@7
    .line 99
    iget v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    #@9
    if-ne v0, v1, :cond_1

    #@b
    .line 101
    instance-of v0, p2, Lorg/apache/xpath/operations/Variable;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 102
    instance-of v0, p2, Lorg/apache/xpath/objects/XNumber;

    #@11
    .line 101
    if-nez v0, :cond_0

    #@13
    .line 103
    instance-of v0, p2, Lorg/apache/xpath/operations/Div;

    #@15
    .line 101
    if-nez v0, :cond_0

    #@17
    .line 104
    instance-of v0, p2, Lorg/apache/xpath/operations/Plus;

    #@19
    .line 101
    if-nez v0, :cond_0

    #@1b
    .line 105
    instance-of v0, p2, Lorg/apache/xpath/operations/Minus;

    #@1d
    .line 101
    if-nez v0, :cond_0

    #@1f
    .line 106
    instance-of v0, p2, Lorg/apache/xpath/operations/Mod;

    #@21
    .line 101
    if-nez v0, :cond_0

    #@23
    .line 107
    instance-of v0, p2, Lorg/apache/xpath/operations/Quo;

    #@25
    .line 101
    if-nez v0, :cond_0

    #@27
    .line 108
    instance-of v0, p2, Lorg/apache/xpath/operations/Mult;

    #@29
    .line 101
    if-nez v0, :cond_0

    #@2b
    .line 109
    instance-of v0, p2, Lorg/apache/xpath/operations/Number;

    #@2d
    .line 101
    if-nez v0, :cond_0

    #@2f
    .line 110
    instance-of v0, p2, Lorg/apache/xpath/functions/Function;

    #@31
    .line 101
    if-eqz v0, :cond_2

    #@33
    .line 111
    :cond_0
    iput-boolean v1, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    #@35
    .line 116
    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    #@37
    add-int/lit8 v0, v0, -0x1

    #@39
    iput v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    #@3b
    .line 119
    const/4 v0, 0x0

    #@3c
    return v0

    #@3d
    .line 113
    :cond_2
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@40
    goto :goto_0
.end method
