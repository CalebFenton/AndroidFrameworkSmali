.class public Lorg/apache/xml/dtm/ref/DTMNodeList;
.super Lorg/apache/xml/dtm/ref/DTMNodeListBase;
.source "DTMNodeList.java"


# instance fields
.field private greylist m_iter:Lorg/apache/xml/dtm/DTMIterator;


# direct methods
.method private constructor greylist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    if-eqz p1, :cond_23

    .line 74
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    move-result v0

    .line 76
    :try_start_9
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;
    :try_end_f
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_9 .. :try_end_f} :catch_10

    goto :goto_12

    .line 78
    :catch_10
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    .line 80
    :goto_12
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/apache/xml/dtm/DTMIterator;->setShouldCacheNodes(Z)V

    .line 81
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    const/4 v1, -0x1

    invoke-interface {p1, v1}, Lorg/apache/xml/dtm/DTMIterator;->runTo(I)V

    .line 82
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTMIterator;->setCurrentPos(I)V

    :cond_23
    return-void
.end method


# virtual methods
.method public greylist getDTMIterator()Lorg/apache/xml/dtm/DTMIterator;
    .registers 1

    .line 92
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    return-object p0
.end method

.method public whitelist test-api getLength()I
    .registers 1

    .line 125
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api item(I)Lorg/w3c/dom/Node;
    .registers 4

    .line 109
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 110
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTMIterator;->item(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    return-object v1

    .line 114
    :cond_d
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_18
    return-object v1
.end method
