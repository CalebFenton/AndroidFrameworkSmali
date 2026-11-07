.class public Lorg/apache/xpath/axes/SelfIteratorNoPredicate;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "SelfIteratorNoPredicate.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x3aa8ec27a3992a39L


# direct methods
.method public constructor greylist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

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

    .line 110
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result p0

    return p0
.end method

.method public greylist getLastPos(Lorg/apache/xpath/XPathContext;)I
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist nextNode()I
    .registers 4

    .line 75
    iget-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    .line 80
    :cond_6
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v1, v0, :cond_d

    .line 81
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    goto :goto_e

    :cond_d
    move v0, v1

    .line 82
    :goto_e
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    const/4 v2, 0x1

    if-eq v1, v0, :cond_19

    .line 87
    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    return v0

    .line 93
    :cond_19
    iput-boolean v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    return v1
.end method
