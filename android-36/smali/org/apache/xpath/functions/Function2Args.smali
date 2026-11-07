.class public Lorg/apache/xpath/functions/Function2Args;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "Function2Args.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/functions/Function2Args$Arg1Owner;
    }
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = 0x4d5bdfc4080c0671L


# instance fields
.field greylist m_arg1:Lorg/apache/xpath/Expression;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 4

    .line 157
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/FunctionOneArg;->callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 158
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_f

    .line 159
    new-instance v1, Lorg/apache/xpath/functions/Function2Args$Arg1Owner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/functions/Function2Args$Arg1Owner;-><init>(Lorg/apache/xpath/functions/Function2Args;)V

    invoke-interface {v0, v1, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_f
    return-void
.end method

.method public greylist canTraverseOutsideSubtree()Z
    .registers 2

    .line 126
    invoke-super {p0}, Lorg/apache/xpath/functions/FunctionOneArg;->canTraverseOutsideSubtree()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 127
    :cond_8
    iget-object p0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

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

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    .line 105
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function2Args;->reportWrongNumberArgs()V

    :cond_6
    return-void
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 4

    .line 167
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/FunctionOneArg;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 170
    :cond_8
    iget-object p0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    if-eqz p0, :cond_1a

    .line 172
    check-cast p1, Lorg/apache/xpath/functions/Function2Args;

    iget-object p1, p1, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    if-nez p1, :cond_13

    return v1

    .line 175
    :cond_13
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result p0

    if-nez p0, :cond_21

    return v1

    .line 178
    :cond_1a
    check-cast p1, Lorg/apache/xpath/functions/Function2Args;

    iget-object p0, p1, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    if-eqz p0, :cond_21

    return v1

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 63
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/FunctionOneArg;->fixupVariables(Ljava/util/Vector;I)V

    .line 64
    iget-object p0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    if-eqz p0, :cond_a

    .line 65
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    :cond_a
    return-void
.end method

.method public greylist getArg1()Lorg/apache/xpath/Expression;
    .registers 1

    .line 48
    iget-object p0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method protected greylist reportWrongNumberArgs()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .line 115
    new-instance p0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v0, "two"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setArg(Lorg/apache/xpath/Expression;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    if-nez p2, :cond_6

    .line 84
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/FunctionOneArg;->setArg(Lorg/apache/xpath/Expression;I)V

    return-void

    :cond_6
    const/4 v0, 0x1

    if-ne v0, p2, :cond_f

    .line 87
    iput-object p1, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    .line 88
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    return-void

    .line 91
    :cond_f
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function2Args;->reportWrongNumberArgs()V

    return-void
.end method
