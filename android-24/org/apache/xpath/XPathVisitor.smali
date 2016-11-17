.class public Lorg/apache/xpath/XPathVisitor;
.super Ljava/lang/Object;
.source "XPathVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public visitBinaryOperation(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Operation;)Z
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "op"    # Lorg/apache/xpath/operations/Operation;

    #@0
    .prologue
    .line 113
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "func"    # Lorg/apache/xpath/functions/Function;

    #@0
    .prologue
    .line 149
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "path"    # Lorg/apache/xpath/axes/LocPathIterator;

    #@0
    .prologue
    .line 62
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public visitMatchPattern(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/StepPattern;)Z
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "pattern"    # Lorg/apache/xpath/patterns/StepPattern;

    #@0
    .prologue
    .line 161
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public visitNumberLiteral(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/objects/XNumber;)Z
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "num"    # Lorg/apache/xpath/objects/XNumber;

    #@0
    .prologue
    .line 198
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "pred"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 101
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public visitStep(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/NodeTest;)Z
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "step"    # Lorg/apache/xpath/patterns/NodeTest;

    #@0
    .prologue
    .line 86
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public visitStringLiteral(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/objects/XString;)Z
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "str"    # Lorg/apache/xpath/objects/XString;

    #@0
    .prologue
    .line 185
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public visitUnaryOperation(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/UnaryOperation;)Z
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "op"    # Lorg/apache/xpath/operations/UnaryOperation;

    #@0
    .prologue
    .line 125
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public visitUnionPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/UnionPathIterator;)Z
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "path"    # Lorg/apache/xpath/axes/UnionPathIterator;

    #@0
    .prologue
    .line 74
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public visitUnionPattern(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/UnionPattern;)Z
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "pattern"    # Lorg/apache/xpath/patterns/UnionPattern;

    #@0
    .prologue
    .line 173
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public visitVariableRef(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Variable;)Z
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "var"    # Lorg/apache/xpath/operations/Variable;

    #@0
    .prologue
    .line 137
    const/4 v0, 0x1

    #@1
    return v0
.end method
