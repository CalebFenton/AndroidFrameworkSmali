.class public Lorg/apache/xpath/axes/AttributeIterator;
.super Lorg/apache/xpath/axes/ChildTestIterator;
.source "AttributeIterator.java"


# static fields
.field static final serialVersionUID:J = -0x74d2b24dcbea3b36L


# direct methods
.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 0
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
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    #@3
    .line 46
    return-void
.end method


# virtual methods
.method public getAxis()I
    .locals 1

    #@0
    .prologue
    .line 70
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method protected getNextNode()I
    .locals 2

    #@0
    .prologue
    .line 56
    iget v0, p0, Lorg/apache/xpath/axes/AttributeIterator;->m_lastFetched:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v1, v0, :cond_0

    #@5
    .line 57
    iget-object v0, p0, Lorg/apache/xpath/axes/AttributeIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    #@7
    iget v1, p0, Lorg/apache/xpath/axes/AttributeIterator;->m_context:I

    #@9
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    #@c
    move-result v0

    #@d
    .line 56
    :goto_0
    iput v0, p0, Lorg/apache/xpath/axes/AttributeIterator;->m_lastFetched:I

    #@f
    .line 59
    iget v0, p0, Lorg/apache/xpath/axes/AttributeIterator;->m_lastFetched:I

    #@11
    return v0

    #@12
    .line 58
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/AttributeIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    #@14
    iget v1, p0, Lorg/apache/xpath/axes/AttributeIterator;->m_lastFetched:I

    #@16
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    #@19
    move-result v0

    #@1a
    goto :goto_0
.end method
