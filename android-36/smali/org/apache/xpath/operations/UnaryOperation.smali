.class public abstract Lorg/apache/xpath/operations/UnaryOperation;
.super Lorg/apache/xpath/Expression;
.source "UnaryOperation.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final whitelist serialVersionUID:J = 0x5ab4d598174fd7d6L


# instance fields
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
    .registers 3

    .line 124
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitUnaryOperation(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/UnaryOperation;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 126
    iget-object p1, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    invoke-interface {p1, p0, p2}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_b
    return-void
.end method

.method public greylist canTraverseOutsideSubtree()Z
    .registers 1

    .line 64
    iget-object p0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 4

    .line 153
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 156
    :cond_8
    iget-object p0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    check-cast p1, Lorg/apache/xpath/operations/UnaryOperation;

    iget-object p1, p1, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result p0

    if-nez p0, :cond_15

    return v1

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/operations/UnaryOperation;->operate(Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 52
    iget-object p0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 136
    iget-object p0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public greylist getOperand()Lorg/apache/xpath/Expression;
    .registers 1

    .line 116
    iget-object p0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public abstract greylist operate(Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 144
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 145
    iput-object p1, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public greylist setRight(Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    .line 80
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    return-void
.end method
