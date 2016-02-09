.class public Lorg/apache/xpath/functions/FuncLast;
.super Lorg/apache/xpath/functions/Function;
.source "FuncLast.java"


# static fields
.field static final serialVersionUID:J = 0x7fc19d9b2acad86fL


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
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    #@2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncLast;->getCountOfContextNodeList(Lorg/apache/xpath/XPathContext;)I

    #@5
    move-result v1

    #@6
    int-to-double v2, v1

    #@7
    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@a
    .line 95
    .local v0, "xnum":Lorg/apache/xpath/objects/XNumber;
    return-object v0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 101
    return-void
.end method

.method public getCountOfContextNodeList(Lorg/apache/xpath/XPathContext;)I
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    iget-boolean v3, p0, Lorg/apache/xpath/functions/FuncLast;->m_isTopLevel:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    const/4 v2, 0x0

    #@5
    .line 68
    :goto_0
    if-eqz v2, :cond_1

    #@7
    .line 69
    invoke-interface {v2, p1}, Lorg/apache/xpath/axes/SubContextList;->getLastPos(Lorg/apache/xpath/XPathContext;)I

    #@a
    move-result v3

    #@b
    return v3

    #@c
    .line 65
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    #@f
    move-result-object v2

    #@10
    .local v2, "iter":Lorg/apache/xpath/axes/SubContextList;
    goto :goto_0

    #@11
    .line 71
    .end local v2    # "iter":Lorg/apache/xpath/axes/SubContextList;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    #@14
    move-result-object v0

    #@15
    .line 73
    .local v0, "cnl":Lorg/apache/xml/dtm/DTMIterator;
    if-eqz v0, :cond_2

    #@17
    .line 75
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    #@1a
    move-result v1

    #@1b
    .line 80
    .local v1, "count":I
    :goto_1
    return v1

    #@1c
    .line 79
    .end local v1    # "count":I
    :cond_2
    const/4 v1, 0x0

    #@1d
    .restart local v1    # "count":I
    goto :goto_1
.end method

.method public postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V
    .locals 2
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;

    #@0
    .prologue
    .line 47
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
    iput-boolean v0, p0, Lorg/apache/xpath/functions/FuncLast;->m_isTopLevel:Z

    #@a
    .line 45
    return-void

    #@b
    .line 47
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method
