.class public Lorg/apache/xpath/functions/FunctionMultiArgs;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FunctionMultiArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;
    }
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = 0x62c59436157a481dL


# instance fields
.field greylist m_args:[Lorg/apache/xpath/Expression;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 6

    .line 196
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function3Args;->callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 197
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_1a

    .line 199
    array-length v0, v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1a

    .line 202
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v2, v2, v1

    new-instance v3, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;

    invoke-direct {v3, p0, v1}, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;-><init>(Lorg/apache/xpath/functions/FunctionMultiArgs;I)V

    invoke-interface {v2, v3, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    return-void
.end method

.method public greylist canTraverseOutsideSubtree()Z
    .registers 6

    .line 146
    invoke-super {p0}, Lorg/apache/xpath/functions/Function3Args;->canTraverseOutsideSubtree()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 150
    :cond_8
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v0, :cond_1d

    .line 154
    iget-object v4, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v4

    if-eqz v4, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1d
    return v2
.end method

.method public greylist checkNumberArgs(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 7

    .line 212
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function3Args;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 215
    :cond_8
    check-cast p1, Lorg/apache/xpath/functions/FunctionMultiArgs;

    .line 216
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_2d

    .line 218
    array-length v0, v0

    if-eqz p1, :cond_2c

    .line 219
    iget-object v2, p1, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v2, v2

    if-eq v2, v0, :cond_17

    goto :goto_2c

    :cond_17
    move v2, v1

    :goto_18
    if-ge v2, v0, :cond_32

    .line 224
    iget-object v3, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-nez v3, :cond_29

    return v1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2c
    :goto_2c
    return v1

    .line 229
    :cond_2d
    iget-object p0, p1, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz p0, :cond_32

    return v1

    :cond_32
    const/4 p0, 0x1

    return p0
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 6

    .line 102
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/Function3Args;->fixupVariables(Ljava/util/Vector;I)V

    .line 103
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 105
    :goto_8
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 107
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    return-void
.end method

.method public greylist getArgs()[Lorg/apache/xpath/Expression;
    .registers 1

    .line 49
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method protected greylist reportWrongNumberArgs()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .line 130
    const-string p0, "Programmer\'s assertion:  the method FunctionMultiArgs.reportWrongNumberArgs() should never be called."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    invoke-static {v0, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setArg(Lorg/apache/xpath/Expression;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x3

    if-ge p2, v0, :cond_7

    .line 67
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/Function3Args;->setArg(Lorg/apache/xpath/Expression;I)V

    return-void

    .line 70
    :cond_7
    iget-object p2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_14

    .line 72
    new-array p2, v0, [Lorg/apache/xpath/Expression;

    iput-object p2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    .line 73
    aput-object p1, p2, v1

    goto :goto_23

    .line 79
    :cond_14
    array-length v2, p2

    add-int/2addr v2, v0

    new-array v0, v2, [Lorg/apache/xpath/Expression;

    .line 81
    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object p2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length p2, p2

    aput-object p1, v0, p2

    .line 84
    iput-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    .line 86
    :goto_23
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    return-void
.end method
