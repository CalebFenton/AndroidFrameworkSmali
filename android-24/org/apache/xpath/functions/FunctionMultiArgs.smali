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
.field static final serialVersionUID:J = 0x62c59436157a481dL


# instance fields
.field m_args:[Lorg/apache/xpath/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 4
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 196
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function3Args;->callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V

    #@3
    .line 197
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 199
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@9
    array-length v1, v2

    #@a
    .line 200
    .local v1, "n":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@d
    .line 202
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@f
    aget-object v2, v2, v0

    #@11
    new-instance v3, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;

    #@13
    invoke-direct {v3, p0, v0}, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;-><init>(Lorg/apache/xpath/functions/FunctionMultiArgs;I)V

    #@16
    invoke-virtual {v2, v3, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@19
    .line 200
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 194
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 146
    invoke-super {p0}, Lorg/apache/xpath/functions/Function3Args;->canTraverseOutsideSubtree()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 147
    return v3

    #@8
    .line 150
    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@a
    array-length v1, v2

    #@b
    .line 152
    .local v1, "n":I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@e
    .line 154
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@10
    aget-object v2, v2, v0

    #@12
    invoke-virtual {v2}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 155
    return v3

    #@19
    .line 152
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 158
    :cond_2
    const/4 v2, 0x0

    #@1d
    return v2
.end method

.method public checkNumberArgs(I)V
    .locals 0
    .param p1, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 6
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 212
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function3Args;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 213
    return v5

    #@8
    :cond_0
    move-object v0, p1

    #@9
    .line 215
    check-cast v0, Lorg/apache/xpath/functions/FunctionMultiArgs;

    #@b
    .line 216
    .local v0, "fma":Lorg/apache/xpath/functions/FunctionMultiArgs;
    iget-object v3, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@d
    if-eqz v3, :cond_4

    #@f
    .line 218
    iget-object v3, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@11
    array-length v2, v3

    #@12
    .line 219
    .local v2, "n":I
    if-eqz v0, :cond_1

    #@14
    iget-object v3, v0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@16
    array-length v3, v3

    #@17
    if-eq v3, v2, :cond_2

    #@19
    .line 220
    :cond_1
    return v5

    #@1a
    .line 222
    :cond_2
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    #@1d
    .line 224
    iget-object v3, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@1f
    aget-object v3, v3, v1

    #@21
    iget-object v4, v0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@23
    aget-object v4, v4, v1

    #@25
    invoke-virtual {v3, v4}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@28
    move-result v3

    #@29
    if-nez v3, :cond_3

    #@2b
    .line 225
    return v5

    #@2c
    .line 222
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 229
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_4
    iget-object v3, v0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@31
    if-eqz v3, :cond_5

    #@33
    .line 231
    return v5

    #@34
    .line 234
    :cond_5
    const/4 v3, 0x1

    #@35
    return v3
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/Function3Args;->fixupVariables(Ljava/util/Vector;I)V

    #@3
    .line 103
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 105
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@a
    array-length v1, v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 107
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@f
    aget-object v1, v1, v0

    #@11
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    #@14
    .line 105
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 100
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getArgs()[Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method protected reportWrongNumberArgs()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    const-string/jumbo v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    #@3
    .line 132
    const/4 v2, 0x1

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    const-string/jumbo v3, "Programmer\'s assertion:  the method FunctionMultiArgs.reportWrongNumberArgs() should never be called."

    #@9
    const/4 v4, 0x0

    #@a
    aput-object v3, v2, v4

    #@c
    .line 130
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 134
    .local v0, "fMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    #@12
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1
.end method

.method public setArg(Lorg/apache/xpath/Expression;I)V
    .locals 4
    .param p1, "arg"    # Lorg/apache/xpath/Expression;
    .param p2, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 66
    const/4 v1, 0x3

    #@2
    if-ge p2, v1, :cond_0

    #@4
    .line 67
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/Function3Args;->setArg(Lorg/apache/xpath/Expression;I)V

    #@7
    .line 63
    :goto_0
    return-void

    #@8
    .line 70
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@a
    if-nez v1, :cond_1

    #@c
    .line 72
    const/4 v1, 0x1

    #@d
    new-array v1, v1, [Lorg/apache/xpath/Expression;

    #@f
    iput-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@11
    .line 73
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@13
    aput-object p1, v1, v3

    #@15
    .line 86
    :goto_1
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@18
    goto :goto_0

    #@19
    .line 79
    :cond_1
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@1b
    array-length v1, v1

    #@1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    new-array v0, v1, [Lorg/apache/xpath/Expression;

    #@20
    .line 81
    .local v0, "args":[Lorg/apache/xpath/Expression;
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@22
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@24
    array-length v2, v2

    #@25
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@28
    .line 83
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@2a
    array-length v1, v1

    #@2b
    aput-object p1, v0, v1

    #@2d
    .line 84
    iput-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@2f
    goto :goto_1
.end method
