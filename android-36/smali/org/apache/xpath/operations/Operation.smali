.class public Lorg/apache/xpath/operations/Operation;
.super Lorg/apache/xpath/Expression;
.source "Operation.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/operations/Operation$LeftExprOwner;
    }
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = -0x2a2616514e5fefbeL


# instance fields
.field protected greylist m_left:Lorg/apache/xpath/Expression;

.field protected greylist m_right:Lorg/apache/xpath/Expression;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 4

    .line 172
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitBinaryOperation(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Operation;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 174
    iget-object p1, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    new-instance v0, Lorg/apache/xpath/operations/Operation$LeftExprOwner;

    invoke-direct {v0, p0}, Lorg/apache/xpath/operations/Operation$LeftExprOwner;-><init>(Lorg/apache/xpath/operations/Operation;)V

    invoke-interface {p1, v0, p2}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 175
    iget-object p1, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    invoke-interface {p1, p0, p2}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_15
    return-void
.end method

.method public greylist canTraverseOutsideSubtree()Z
    .registers 3

    .line 70
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 73
    :cond_c
    iget-object p0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result p0

    if-eqz p0, :cond_17

    return v1

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 5

    .line 201
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 204
    :cond_8
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    check-cast p1, Lorg/apache/xpath/operations/Operation;

    iget-object v2, p1, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, v2}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 207
    :cond_15
    iget-object p0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    iget-object p1, p1, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result p0

    if-nez p0, :cond_20

    return v1

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 110
    iget-object v2, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, p1, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    move-result-object p1

    .line 112
    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/operations/Operation;->operate(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    .line 113
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->detach()V

    .line 114
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->detach()V

    return-object p0
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 4

    .line 56
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 57
    iget-object p0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 184
    iget-object p0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public greylist getLeftOperand()Lorg/apache/xpath/Expression;
    .registers 1

    .line 138
    iget-object p0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public greylist getRightOperand()Lorg/apache/xpath/Expression;
    .registers 1

    .line 144
    iget-object p0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public greylist operate(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 192
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 193
    iput-object p1, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public greylist setLeftRight(Lorg/apache/xpath/Expression;Lorg/apache/xpath/Expression;)V
    .registers 3

    .line 88
    iput-object p1, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    .line 89
    iput-object p2, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    .line 90
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 91
    invoke-virtual {p2, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    return-void
.end method
