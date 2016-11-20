.class public Lorg/apache/xml/dtm/ref/DTMNodeList;
.super Lorg/apache/xml/dtm/ref/DTMNodeListBase;
.source "DTMNodeList.java"


# instance fields
.field private m_iter:Lorg/apache/xml/dtm/DTMIterator;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 4
    .param p1, "dtmIterator"    # Lorg/apache/xml/dtm/DTMIterator;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    #@3
    .line 73
    if-eqz p1, :cond_0

    #@5
    .line 74
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    #@8
    move-result v1

    #@9
    .line 76
    .local v1, "pos":I
    :try_start_0
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    #@c
    move-result-object v2

    #@d
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 80
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@11
    const/4 v3, 0x1

    #@12
    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTMIterator;->setShouldCacheNodes(Z)V

    #@15
    .line 81
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@17
    const/4 v3, -0x1

    #@18
    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTMIterator;->runTo(I)V

    #@1b
    .line 82
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@1d
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTMIterator;->setCurrentPos(I)V

    #@20
    .line 72
    .end local v1    # "pos":I
    :cond_0
    return-void

    #@21
    .line 77
    .restart local v1    # "pos":I
    :catch_0
    move-exception v0

    #@22
    .line 78
    .local v0, "cnse":Ljava/lang/CloneNotSupportedException;
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@24
    goto :goto_0
.end method


# virtual methods
.method public getDTMIterator()Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@2
    return-object v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@6
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 109
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 110
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@7
    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTMIterator;->item(I)I

    #@a
    move-result v0

    #@b
    .line 111
    .local v0, "handle":I
    const/4 v1, -0x1

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 112
    return-object v2

    #@f
    .line 114
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@11
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@14
    move-result-object v1

    #@15
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@18
    move-result-object v1

    #@19
    return-object v1

    #@1a
    .line 116
    .end local v0    # "handle":I
    :cond_1
    return-object v2
.end method
