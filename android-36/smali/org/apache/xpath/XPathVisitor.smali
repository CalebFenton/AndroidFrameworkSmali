.class public Lorg/apache/xpath/XPathVisitor;
.super Ljava/lang/Object;
.source "XPathVisitor.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist visitBinaryOperation(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Operation;)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitMatchPattern(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/StepPattern;)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitNumberLiteral(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/objects/XNumber;)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitStep(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/NodeTest;)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitStringLiteral(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/objects/XString;)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitUnaryOperation(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/UnaryOperation;)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitUnionPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/UnionPathIterator;)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitUnionPattern(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/UnionPattern;)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitVariableRef(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Variable;)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method
