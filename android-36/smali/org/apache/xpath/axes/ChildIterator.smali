.class public Lorg/apache/xpath/axes/ChildIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "ChildIterator.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x603f9708c7e3feafL


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    const/4 p1, -0x1

    .line 55
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(I)V

    return-void
.end method


# virtual methods
.method public greylist asNode(Lorg/apache/xpath/XPathContext;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result p0

    .line 71
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    .line 73
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result p0

    return p0
.end method

.method public greylist getAxis()I
    .registers 1

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public greylist nextNode()I
    .registers 4

    .line 86
    iget-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    .line 91
    :cond_6
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v1, v0, :cond_13

    .line 92
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v0

    goto :goto_19

    .line 93
    :cond_13
    iget-object v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v0

    :goto_19
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    const/4 v2, 0x1

    if-eq v1, v0, :cond_24

    .line 98
    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    return v0

    .line 103
    :cond_24
    iput-boolean v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    return v1
.end method
