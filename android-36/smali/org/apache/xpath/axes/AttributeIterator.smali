.class public Lorg/apache/xpath/axes/AttributeIterator;
.super Lorg/apache/xpath/axes/ChildTestIterator;
.source "AttributeIterator.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x74d2b24dcbea3b36L


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    return-void
.end method


# virtual methods
.method public greylist getAxis()I
    .registers 1

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method protected greylist getNextNode()I
    .registers 3

    .line 56
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_e

    .line 57
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    goto :goto_14

    .line 58
    :cond_e
    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    :goto_14
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    return v0
.end method
