.class public Lorg/apache/xpath/functions/FuncPosition;
.super Lorg/apache/xpath/functions/Function;
.source "FuncPosition.java"


# static fields
.field static final serialVersionUID:J = -0x7e304793e581981eL


# instance fields
.field private m_isTopLevel:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncPosition;->getPositionInContextNodeList(Lorg/apache/xpath/XPathContext;)I

    #@3
    move-result v2

    #@4
    int-to-double v0, v2

    #@5
    .line 124
    .local v0, "pos":D
    new-instance v2, Lorg/apache/xpath/objects/XNumber;

    #@7
    invoke-direct {v2, v0, v1}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@a
    return-object v2
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 130
    return-void
.end method

.method public getPositionInContextNodeList(Lorg/apache/xpath/XPathContext;)I
    .locals 9
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, -0x1

    #@2
    .line 62
    iget-boolean v6, p0, Lorg/apache/xpath/functions/FuncPosition;->m_isTopLevel:Z

    #@4
    if-eqz v6, :cond_0

    #@6
    const/4 v3, 0x0

    #@7
    .line 64
    :goto_0
    if-eqz v3, :cond_1

    #@9
    .line 66
    invoke-interface {v3, p1}, Lorg/apache/xpath/axes/SubContextList;->getProximityPosition(Lorg/apache/xpath/XPathContext;)I

    #@c
    move-result v5

    #@d
    .line 69
    .local v5, "prox":I
    return v5

    #@e
    .line 62
    .end local v5    # "prox":I
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    #@11
    move-result-object v3

    #@12
    .local v3, "iter":Lorg/apache/xpath/axes/SubContextList;
    goto :goto_0

    #@13
    .line 72
    .end local v3    # "iter":Lorg/apache/xpath/axes/SubContextList;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    #@16
    move-result-object v0

    #@17
    .line 74
    .local v0, "cnl":Lorg/apache/xml/dtm/DTMIterator;
    if-eqz v0, :cond_5

    #@19
    .line 76
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    #@1c
    move-result v4

    #@1d
    .line 77
    .local v4, "n":I
    if-ne v4, v7, :cond_4

    #@1f
    .line 79
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    #@22
    move-result v6

    #@23
    if-nez v6, :cond_2

    #@25
    .line 80
    return v8

    #@26
    .line 89
    :cond_2
    :try_start_0
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result-object v0

    #@2a
    .line 95
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNode()I

    #@2d
    move-result v2

    #@2e
    .line 97
    .local v2, "currentNode":I
    :cond_3
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@31
    move-result v4

    #@32
    if-eq v7, v4, :cond_4

    #@34
    .line 99
    if-ne v4, v2, :cond_3

    #@36
    .line 105
    .end local v2    # "currentNode":I
    :cond_4
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    #@39
    move-result v6

    #@3a
    return v6

    #@3b
    .line 92
    :catch_0
    move-exception v1

    #@3c
    .line 93
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    new-instance v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@3e
    invoke-direct {v6, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@41
    throw v6

    #@42
    .line 109
    .end local v1    # "cnse":Ljava/lang/CloneNotSupportedException;
    .end local v4    # "n":I
    :cond_5
    return v7
.end method

.method public postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V
    .locals 2
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;

    #@0
    .prologue
    .line 46
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getLocationPathDepth()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    iput-boolean v0, p0, Lorg/apache/xpath/functions/FuncPosition;->m_isTopLevel:Z

    #@a
    .line 44
    return-void

    #@b
    .line 46
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method
