.class public Lorg/apache/xpath/functions/FuncPosition;
.super Lorg/apache/xpath/functions/Function;
.source "FuncPosition.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x7e304793e581981eL


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

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncPosition;->getPositionInContextNodeList(Lorg/apache/xpath/XPathContext;)I

    move-result p0

    int-to-double p0, p0

    .line 124
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object v0
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public greylist getPositionInContextNodeList(Lorg/apache/xpath/XPathContext;)I
    .registers 4

    .line 62
    iget-boolean p0, p0, Lorg/apache/xpath/functions/FuncPosition;->m_isTopLevel:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    move-result-object p0

    :goto_a
    if-eqz p0, :cond_11

    .line 66
    invoke-interface {p0, p1}, Lorg/apache/xpath/axes/SubContextList;->getProximityPosition(Lorg/apache/xpath/XPathContext;)I

    move-result p0

    return p0

    .line 72
    :cond_11
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_43

    .line 76
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    move-result v1

    if-ne v1, v0, :cond_3e

    .line 79
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    move-result v1

    if-nez v1, :cond_26

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_26
    :try_start_26
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_26 .. :try_end_2a} :catch_37

    .line 95
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNode()I

    move-result p1

    .line 97
    :cond_2e
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v1

    if-eq v0, v1, :cond_3e

    if-ne v1, p1, :cond_2e

    goto :goto_3e

    :catch_37
    move-exception p0

    .line 93
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 105
    :cond_3e
    :goto_3e
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    move-result p0

    return p0

    :cond_43
    return v0
.end method

.method public greylist postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V
    .registers 3

    .line 46
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getLocationPathDepth()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iput-boolean p1, p0, Lorg/apache/xpath/functions/FuncPosition;->m_isTopLevel:Z

    return-void
.end method
