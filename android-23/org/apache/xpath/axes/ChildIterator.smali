.class public Lorg/apache/xpath/axes/ChildIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "ChildIterator.java"


# static fields
.field static final serialVersionUID:J = -0x603f9708c7e3feafL


# direct methods
.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 1
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .param p3, "analysis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    #@4
    .line 55
    const/4 v0, -0x1

    #@5
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/ChildIterator;->initNodeTest(I)V

    #@8
    .line 50
    return-void
.end method


# virtual methods
.method public asNode(Lorg/apache/xpath/XPathContext;)I
    .locals 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@3
    move-result v0

    #@4
    .line 71
    .local v0, "current":I
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@7
    move-result-object v1

    #@8
    .line 73
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    #@b
    move-result v2

    #@c
    return v2
.end method

.method public getAxis()I
    .locals 1

    #@0
    .prologue
    .line 117
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public nextNode()I
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 86
    iget-boolean v1, p0, Lorg/apache/xpath/axes/ChildIterator;->m_foundLast:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 87
    return v3

    #@6
    .line 91
    :cond_0
    iget v1, p0, Lorg/apache/xpath/axes/ChildIterator;->m_lastFetched:I

    #@8
    if-ne v3, v1, :cond_1

    #@a
    .line 92
    iget-object v1, p0, Lorg/apache/xpath/axes/ChildIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    #@c
    iget v2, p0, Lorg/apache/xpath/axes/ChildIterator;->m_context:I

    #@e
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    #@11
    move-result v0

    #@12
    .line 91
    .local v0, "next":I
    :goto_0
    iput v0, p0, Lorg/apache/xpath/axes/ChildIterator;->m_lastFetched:I

    #@14
    .line 96
    if-eq v3, v0, :cond_2

    #@16
    .line 98
    iget v1, p0, Lorg/apache/xpath/axes/ChildIterator;->m_pos:I

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    iput v1, p0, Lorg/apache/xpath/axes/ChildIterator;->m_pos:I

    #@1c
    .line 99
    return v0

    #@1d
    .line 93
    .end local v0    # "next":I
    :cond_1
    iget-object v1, p0, Lorg/apache/xpath/axes/ChildIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    #@1f
    iget v2, p0, Lorg/apache/xpath/axes/ChildIterator;->m_lastFetched:I

    #@21
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    #@24
    move-result v0

    #@25
    goto :goto_0

    #@26
    .line 103
    .restart local v0    # "next":I
    :cond_2
    const/4 v1, 0x1

    #@27
    iput-boolean v1, p0, Lorg/apache/xpath/axes/ChildIterator;->m_foundLast:Z

    #@29
    .line 105
    return v3
.end method
