.class public Lorg/apache/xpath/functions/FunctionOneArg;
.super Lorg/apache/xpath/functions/Function;
.source "FunctionOneArg.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final whitelist serialVersionUID:J = -0x47e3acf8bf2f2f1eL


# instance fields
.field greylist m_arg0:Lorg/apache/xpath/Expression;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 3

    .line 129
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_7

    .line 130
    invoke-interface {v0, p0, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_7
    return-void
.end method

.method public greylist canTraverseOutsideSubtree()Z
    .registers 1

    .line 105
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {p0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result p0

    return p0
.end method

.method public greylist checkNumberArgs(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 84
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FunctionOneArg;->reportWrongNumberArgs()V

    :cond_6
    return-void
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 4

    .line 156
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 159
    :cond_8
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    if-eqz p0, :cond_1a

    .line 161
    check-cast p1, Lorg/apache/xpath/functions/FunctionOneArg;

    iget-object p1, p1, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez p1, :cond_13

    return v1

    .line 164
    :cond_13
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result p0

    if-nez p0, :cond_21

    return v1

    .line 167
    :cond_1a
    check-cast p1, Lorg/apache/xpath/functions/FunctionOneArg;

    iget-object p0, p1, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    if-eqz p0, :cond_21

    return v1

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 120
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    if-eqz p0, :cond_7

    .line 121
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    :cond_7
    return-void
.end method

.method public greylist getArg0()Lorg/apache/xpath/Expression;
    .registers 1

    .line 48
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 139
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method protected greylist reportWrongNumberArgs()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .line 94
    new-instance p0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v0, "one"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setArg(Lorg/apache/xpath/Expression;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    if-nez p2, :cond_8

    .line 66
    iput-object p1, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    .line 67
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    return-void

    .line 70
    :cond_8
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FunctionOneArg;->reportWrongNumberArgs()V

    return-void
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 147
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 148
    iput-object p1, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    return-void
.end method
