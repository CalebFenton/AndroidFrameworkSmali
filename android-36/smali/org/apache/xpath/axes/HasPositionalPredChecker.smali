.class public Lorg/apache/xpath/axes/HasPositionalPredChecker;
.super Lorg/apache/xpath/XPathVisitor;
.source "HasPositionalPredChecker.java"


# instance fields
.field private greylist m_hasPositionalPred:Z

.field private greylist m_predDepth:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lorg/apache/xpath/XPathVisitor;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    .line 41
    iput v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    return-void
.end method

.method public static greylist check(Lorg/apache/xpath/axes/LocPathIterator;)Z
    .registers 3

    .line 52
    new-instance v0, Lorg/apache/xpath/axes/HasPositionalPredChecker;

    invoke-direct {v0}, Lorg/apache/xpath/axes/HasPositionalPredChecker;-><init>()V

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 54
    iget-boolean p0, v0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    return p0
.end method


# virtual methods
.method public greylist visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z
    .registers 4

    .line 66
    instance-of p1, p2, Lorg/apache/xpath/functions/FuncPosition;

    const/4 v0, 0x1

    if-nez p1, :cond_9

    instance-of p1, p2, Lorg/apache/xpath/functions/FuncLast;

    if-eqz p1, :cond_b

    .line 68
    :cond_9
    iput-boolean v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    :cond_b
    return v0
.end method

.method public greylist visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z
    .registers 5

    .line 97
    iget v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    if-ne v0, v1, :cond_37

    .line 101
    instance-of v0, p2, Lorg/apache/xpath/operations/Variable;

    if-nez v0, :cond_35

    instance-of v0, p2, Lorg/apache/xpath/objects/XNumber;

    if-nez v0, :cond_35

    instance-of v0, p2, Lorg/apache/xpath/operations/Div;

    if-nez v0, :cond_35

    instance-of v0, p2, Lorg/apache/xpath/operations/Plus;

    if-nez v0, :cond_35

    instance-of v0, p2, Lorg/apache/xpath/operations/Minus;

    if-nez v0, :cond_35

    instance-of v0, p2, Lorg/apache/xpath/operations/Mod;

    if-nez v0, :cond_35

    instance-of v0, p2, Lorg/apache/xpath/operations/Quo;

    if-nez v0, :cond_35

    instance-of v0, p2, Lorg/apache/xpath/operations/Mult;

    if-nez v0, :cond_35

    instance-of v0, p2, Lorg/apache/xpath/operations/Number;

    if-nez v0, :cond_35

    instance-of v0, p2, Lorg/apache/xpath/functions/Function;

    if-eqz v0, :cond_31

    goto :goto_35

    .line 113
    :cond_31
    invoke-interface {p2, p1, p0}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    goto :goto_37

    .line 111
    :cond_35
    :goto_35
    iput-boolean v1, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    .line 116
    :cond_37
    :goto_37
    iget p1, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    const/4 p0, 0x0

    return p0
.end method
