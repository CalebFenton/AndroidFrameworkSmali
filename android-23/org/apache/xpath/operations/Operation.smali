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
.field static final serialVersionUID:J = -0x2a2616514e5fefbeL


# instance fields
.field protected m_left:Lorg/apache/xpath/Expression;

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
    .locals 2
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 172
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitBinaryOperation(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Operation;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 174
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    #@8
    new-instance v1, Lorg/apache/xpath/operations/Operation$LeftExprOwner;

    #@a
    invoke-direct {v1, p0}, Lorg/apache/xpath/operations/Operation$LeftExprOwner;-><init>(Lorg/apache/xpath/operations/Operation;)V

    #@d
    invoke-virtual {v0, v1, p2}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@10
    .line 175
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    #@12
    invoke-virtual {v0, p0, p2}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@15
    .line 170
    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 70
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    #@7
    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 71
    return v1

    #@e
    .line 73
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    #@10
    if-eqz v0, :cond_1

    #@12
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    #@14
    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 74
    return v1

    #@1b
    .line 76
    :cond_1
    const/4 v0, 0x0

    #@1c
    return v0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 3
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 201
    invoke-virtual {p0, p1}, Lorg/apache/xpath/operations/Operation;->isSameClass(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 202
    return v2

    #@8
    .line 204
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    #@a
    move-object v0, p1

    #@b
    check-cast v0, Lorg/apache/xpath/operations/Operation;

    #@d
    iget-object v0, v0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    #@f
    invoke-virtual {v1, v0}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 205
    return v2

    #@16
    .line 207
    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    #@18
    check-cast p1, Lorg/apache/xpath/operations/Operation;

    #@1a
    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    iget-object v1, p1, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    #@1c
    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_2

    #@22
    .line 208
    return v2

    #@23
    .line 210
    :cond_2
    const/4 v0, 0x1

    #@24
    return v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 5
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 109
    iget-object v3, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    #@3
    invoke-virtual {v3, p1, v4}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    #@6
    move-result-object v0

    #@7
    .line 110
    .local v0, "left":Lorg/apache/xpath/objects/XObject;
    iget-object v3, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    #@9
    invoke-virtual {v3, p1, v4}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    #@c
    move-result-object v2

    #@d
    .line 112
    .local v2, "right":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {p0, v0, v2}, Lorg/apache/xpath/operations/Operation;->operate(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;

    #@10
    move-result-object v1

    #@11
    .line 113
    .local v1, "result":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->detach()V

    #@14
    .line 114
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->detach()V

    #@17
    .line 115
    return-object v1
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    #@5
    .line 57
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    #@7
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    #@a
    .line 54
    return-void
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method public getLeftOperand()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method public getRightOperand()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method public operate(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p1, "left"    # Lorg/apache/xpath/objects/XObject;
    .param p2, "right"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 192
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@3
    .line 193
    iput-object p1, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    #@5
    .line 190
    return-void
.end method

.method public setLeftRight(Lorg/apache/xpath/Expression;Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "l"    # Lorg/apache/xpath/Expression;
    .param p2, "r"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 88
    iput-object p1, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    #@2
    .line 89
    iput-object p2, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    #@4
    .line 90
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@7
    .line 91
    invoke-virtual {p2, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@a
    .line 86
    return-void
.end method
