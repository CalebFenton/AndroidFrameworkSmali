.class public abstract Lorg/apache/xpath/operations/UnaryOperation;
.super Lorg/apache/xpath/Expression;
.source "UnaryOperation.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final serialVersionUID:J = 0x5ab4d598174fd7d6L


# instance fields
.field protected m_right:Lorg/apache/xpath/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 124
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitUnaryOperation(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/UnaryOperation;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 126
    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    #@8
    invoke-virtual {v0, p0, p2}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@b
    .line 122
    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    #@6
    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 65
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 67
    :cond_0
    const/4 v0, 0x0

    #@f
    return v0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 3
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 153
    invoke-virtual {p0, p1}, Lorg/apache/xpath/operations/UnaryOperation;->isSameClass(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 154
    return v2

    #@8
    .line 156
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    #@a
    check-cast p1, Lorg/apache/xpath/operations/UnaryOperation;

    #@c
    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    iget-object v1, p1, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    #@e
    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 157
    return v2

    #@15
    .line 159
    :cond_1
    const/4 v0, 0x1

    #@16
    return v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lorg/apache/xpath/operations/UnaryOperation;->operate(Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    #@5
    .line 50
    return-void
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method public getOperand()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method public abstract operate(Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 144
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@3
    .line 145
    iput-object p1, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    #@5
    .line 142
    return-void
.end method

.method public setRight(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "r"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 79
    iput-object p1, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    #@2
    .line 80
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@5
    .line 77
    return-void
.end method
