.class public Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;
.super Lorg/apache/xml/dtm/ref/DTMNodeListBase;
.source "DTMAxisIterNodeList.java"


# instance fields
.field private greylist m_cachedNodes:Lorg/apache/xml/utils/IntVector;

.field private greylist m_dtm:Lorg/apache/xml/dtm/DTM;

.field private greylist m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

.field private greylist m_last:I


# direct methods
.method private constructor greylist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTM;Lorg/apache/xml/dtm/DTMAxisIterator;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    if-nez p2, :cond_c

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    goto :goto_15

    .line 76
    :cond_c
    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntVector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    .line 77
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 79
    :goto_15
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    return-void
.end method


# virtual methods
.method public greylist getDTMAxisIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 1

    .line 88
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    return-object p0
.end method

.method public whitelist test-api getLength()I
    .registers 4

    .line 133
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    .line 135
    :goto_5
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    move-result v0

    if-eq v0, v1, :cond_13

    .line 136
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    goto :goto_5

    .line 138
    :cond_13
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntVector;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    .line 140
    :cond_1b
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    return p0
.end method

.method public whitelist test-api item(I)Lorg/w3c/dom/Node;
    .registers 6

    .line 105
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    if-eqz v0, :cond_3c

    .line 107
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntVector;->size()I

    move-result v0

    if-le v0, p1, :cond_19

    .line 110
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    move-result p1

    .line 111
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    .line 112
    :cond_19
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3c

    .line 113
    :goto_1e
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    move-result v1

    if-eq v1, v2, :cond_30

    if-gt v0, p1, :cond_30

    .line 115
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v3, v1}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_30
    if-ne v1, v2, :cond_35

    .line 119
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    goto :goto_3c

    .line 121
    :cond_35
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_3c
    :goto_3c
    const/4 p0, 0x0

    return-object p0
.end method
