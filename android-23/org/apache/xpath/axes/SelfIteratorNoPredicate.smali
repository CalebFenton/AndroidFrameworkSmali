.class public Lorg/apache/xpath/axes/SelfIteratorNoPredicate;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "SelfIteratorNoPredicate.java"


# static fields
.field static final serialVersionUID:J = -0x3aa8ec27a3992a39L


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    #@4
    .line 59
    return-void
.end method

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
    .line 50
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    #@4
    .line 48
    return-void
.end method


# virtual methods
.method public asNode(Lorg/apache/xpath/XPathContext;)I
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 123
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public nextNode()I
    .locals 3

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 75
    iget-boolean v2, p0, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;->m_foundLast:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 76
    return v1

    #@6
    .line 80
    :cond_0
    iget v2, p0, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;->m_lastFetched:I

    #@8
    if-ne v1, v2, :cond_1

    #@a
    .line 81
    iget v0, p0, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;->m_context:I

    #@c
    .line 80
    .local v0, "next":I
    :goto_0
    iput v0, p0, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;->m_lastFetched:I

    #@e
    .line 85
    if-eq v1, v0, :cond_2

    #@10
    .line 87
    iget v1, p0, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;->m_pos:I

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    iput v1, p0, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;->m_pos:I

    #@16
    .line 89
    return v0

    #@17
    .end local v0    # "next":I
    :cond_1
    move v0, v1

    #@18
    .line 82
    goto :goto_0

    #@19
    .line 93
    .restart local v0    # "next":I
    :cond_2
    const/4 v2, 0x1

    #@1a
    iput-boolean v2, p0, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;->m_foundLast:Z

    #@1c
    .line 95
    return v1
.end method
