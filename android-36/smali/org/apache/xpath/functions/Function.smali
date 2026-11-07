.class public abstract Lorg/apache/xpath/functions/Function;
.super Lorg/apache/xpath/Expression;
.source "Function.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x6023ff31b9615858L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 3

    .line 119
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 121
    invoke-virtual {p0, p2}, Lorg/apache/xpath/functions/Function;->callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V

    :cond_9
    return-void
.end method

.method public greylist checkNumberArgs(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 75
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function;->reportWrongNumberArgs()V

    :cond_5
    return-void
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 2

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 101
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Error! Function.execute should not be called!"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V
    .registers 2

    .line 0
    return-void
.end method

.method protected greylist reportWrongNumberArgs()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .line 86
    new-instance p0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v0, "zero"

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

    .line 59
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function;->reportWrongNumberArgs()V

    return-void
.end method
