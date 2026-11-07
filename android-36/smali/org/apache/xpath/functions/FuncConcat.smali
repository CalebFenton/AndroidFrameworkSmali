.class public Lorg/apache/xpath/functions/FuncConcat;
.super Lorg/apache/xpath/functions/FunctionMultiArgs;
.source "FuncConcat.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x181be077840824adL


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionMultiArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist checkNumberArgs(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ge p1, v0, :cond_6

    .line 78
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FuncConcat;->reportWrongNumberArgs()V

    :cond_6
    return-void
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    iget-object v1, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    iget-object v1, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    if-eqz v1, :cond_2e

    .line 54
    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    :cond_2e
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz v1, :cond_48

    const/4 v1, 0x0

    .line 58
    :goto_33
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v3, v2

    if-ge v1, v3, :cond_48

    .line 60
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 64
    :cond_48
    new-instance p0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method protected greylist reportWrongNumberArgs()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .line 88
    new-instance p0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v0, "gtone"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
