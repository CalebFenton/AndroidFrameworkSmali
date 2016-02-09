.class public Lorg/apache/xpath/functions/FuncConcat;
.super Lorg/apache/xpath/functions/FunctionMultiArgs;
.source "FuncConcat.java"


# static fields
.field static final serialVersionUID:J = 0x181be077840824adL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionMultiArgs;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public checkNumberArgs(I)V
    .locals 1
    .param p1, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    const/4 v0, 0x2

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 78
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FuncConcat;->reportWrongNumberArgs()V

    #@6
    .line 75
    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 47
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 50
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncConcat;->m_arg0:Lorg/apache/xpath/Expression;

    #@7
    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 51
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncConcat;->m_arg1:Lorg/apache/xpath/Expression;

    #@14
    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f
    .line 53
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncConcat;->m_arg2:Lorg/apache/xpath/Expression;

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 54
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncConcat;->m_arg2:Lorg/apache/xpath/Expression;

    #@25
    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 56
    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncConcat;->m_args:[Lorg/apache/xpath/Expression;

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 58
    const/4 v0, 0x0

    #@35
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncConcat;->m_args:[Lorg/apache/xpath/Expression;

    #@37
    array-length v2, v2

    #@38
    if-ge v0, v2, :cond_1

    #@3a
    .line 60
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncConcat;->m_args:[Lorg/apache/xpath/Expression;

    #@3c
    aget-object v2, v2, v0

    #@3e
    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49
    .line 58
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 64
    .end local v0    # "i":I
    :cond_1
    new-instance v2, Lorg/apache/xpath/objects/XString;

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    invoke-direct {v2, v3}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@55
    return-object v2
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
    .line 88
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    #@2
    const-string/jumbo v1, "gtone"

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
