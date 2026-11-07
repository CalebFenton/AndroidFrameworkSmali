.class public Lorg/apache/xalan/templates/AbsPathChecker;
.super Lorg/apache/xpath/XPathVisitor;
.source "AbsPathChecker.java"


# instance fields
.field private greylist m_isAbs:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lorg/apache/xpath/XPathVisitor;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lorg/apache/xalan/templates/AbsPathChecker;->m_isAbs:Z

    return-void
.end method


# virtual methods
.method public greylist checkAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z
    .registers 3

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lorg/apache/xalan/templates/AbsPathChecker;->m_isAbs:Z

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0, p0}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 50
    iget-boolean p0, p0, Lorg/apache/xalan/templates/AbsPathChecker;->m_isAbs:Z

    return p0
.end method

.method public greylist visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z
    .registers 3

    .line 62
    instance-of p1, p2, Lorg/apache/xpath/functions/FuncCurrent;

    if-nez p1, :cond_8

    instance-of p1, p2, Lorg/apache/xpath/functions/FuncExtFunction;

    if-eqz p1, :cond_b

    :cond_8
    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lorg/apache/xalan/templates/AbsPathChecker;->m_isAbs:Z

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitVariableRef(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Variable;)Z
    .registers 3

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lorg/apache/xalan/templates/AbsPathChecker;->m_isAbs:Z

    const/4 p0, 0x1

    return p0
.end method
