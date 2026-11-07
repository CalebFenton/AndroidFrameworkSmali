.class public Lorg/apache/xpath/functions/FuncLast;
.super Lorg/apache/xpath/functions/Function;
.source "FuncLast.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x7fc19d9b2acad86fL


# instance fields
.field private greylist m_isTopLevel:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncLast;->getCountOfContextNodeList(Lorg/apache/xpath/XPathContext;)I

    move-result p0

    int-to-double p0, p0

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object v0
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public greylist getCountOfContextNodeList(Lorg/apache/xpath/XPathContext;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 65
    iget-boolean p0, p0, Lorg/apache/xpath/functions/FuncLast;->m_isTopLevel:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    move-result-object p0

    :goto_a
    if-eqz p0, :cond_11

    .line 69
    invoke-interface {p0, p1}, Lorg/apache/xpath/axes/SubContextList;->getLastPos(Lorg/apache/xpath/XPathContext;)I

    move-result p0

    return p0

    .line 71
    :cond_11
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 75
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result p0

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public greylist postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V
    .registers 3

    .line 47
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getLocationPathDepth()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iput-boolean p1, p0, Lorg/apache/xpath/functions/FuncLast;->m_isTopLevel:Z

    return-void
.end method
