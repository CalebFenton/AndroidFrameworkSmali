.class public abstract Lorg/apache/xpath/functions/Function;
.super Lorg/apache/xpath/Expression;
.source "Function.java"


# static fields
.field static final serialVersionUID:J = 0x6023ff31b9615858L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 109
    return-void
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 119
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 121
    invoke-virtual {p0, p2}, Lorg/apache/xpath/functions/Function;->callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V

    #@9
    .line 117
    :cond_0
    return-void
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
    .line 74
    if-eqz p1, :cond_0

    #@2
    .line 75
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function;->reportWrongNumberArgs()V

    #@5
    .line 72
    :cond_0
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 1
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/Function;->isSameClass(Lorg/apache/xpath/Expression;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 131
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 133
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v1, "Error! Function.execute should not be called!"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 103
    const/4 v0, 0x0

    #@9
    return-object v0
.end method

.method public postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V
    .locals 0
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;

    #@0
    .prologue
    .line 140
    return-void
.end method

.method protected reportWrongNumberArgs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    #@2
    const-string/jumbo v1, "zero"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method

.method public setArg(Lorg/apache/xpath/Expression;I)V
    .locals 0
    .param p1, "arg"    # Lorg/apache/xpath/Expression;
    .param p2, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function;->reportWrongNumberArgs()V

    #@3
    .line 56
    return-void
.end method
