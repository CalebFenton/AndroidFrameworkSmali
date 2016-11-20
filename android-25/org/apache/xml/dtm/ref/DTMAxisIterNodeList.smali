.class public Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;
.super Lorg/apache/xml/dtm/ref/DTMNodeListBase;
.source "DTMAxisIterNodeList.java"


# instance fields
.field private m_cachedNodes:Lorg/apache/xml/utils/IntVector;

.field private m_dtm:Lorg/apache/xml/dtm/DTM;

.field private m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

.field private m_last:I


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    #@3
    .line 62
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    #@6
    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTM;Lorg/apache/xml/dtm/DTMAxisIterator;)V
    .locals 1
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p2, "dtmAxisIterator"    # Lorg/apache/xml/dtm/DTMAxisIterator;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    #@3
    .line 62
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    #@6
    .line 73
    if-nez p2, :cond_0

    #@8
    .line 74
    const/4 v0, 0x0

    #@9
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    #@b
    .line 79
    :goto_0
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@d
    .line 72
    return-void

    #@e
    .line 76
    :cond_0
    new-instance v0, Lorg/apache/xml/utils/IntVector;

    #@10
    invoke-direct {v0}, Lorg/apache/xml/utils/IntVector;-><init>()V

    #@13
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    #@15
    .line 77
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@17
    goto :goto_0
.end method


# virtual methods
.method public getDTMAxisIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@2
    return-object v0
.end method

.method public getLength()I
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 133
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    #@3
    if-ne v1, v2, :cond_1

    #@5
    .line 135
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@7
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    #@a
    move-result v0

    #@b
    .local v0, "node":I
    if-eq v0, v2, :cond_0

    #@d
    .line 136
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    #@f
    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    #@12
    goto :goto_0

    #@13
    .line 138
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    #@15
    invoke-virtual {v1}, Lorg/apache/xml/utils/IntVector;->size()I

    #@18
    move-result v1

    #@19
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    #@1b
    .line 140
    .end local v0    # "node":I
    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    #@1d
    return v1
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    .line 105
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@4
    if-eqz v2, :cond_2

    #@6
    .line 107
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    #@8
    invoke-virtual {v2}, Lorg/apache/xml/utils/IntVector;->size()I

    #@b
    move-result v0

    #@c
    .line 109
    .local v0, "count":I
    if-le v0, p1, :cond_0

    #@e
    .line 110
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    #@10
    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    #@13
    move-result v1

    #@14
    .line 111
    .local v1, "node":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@16
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@19
    move-result-object v2

    #@1a
    return-object v2

    #@1b
    .line 112
    .end local v1    # "node":I
    :cond_0
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    #@1d
    if-ne v2, v3, :cond_2

    #@1f
    .line 113
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@21
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    #@24
    move-result v1

    #@25
    .restart local v1    # "node":I
    if-eq v1, v3, :cond_1

    #@27
    .line 114
    if-gt v0, p1, :cond_1

    #@29
    .line 115
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    #@2b
    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    #@2e
    .line 116
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 118
    :cond_1
    if-ne v1, v3, :cond_3

    #@33
    .line 119
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    #@35
    .line 125
    .end local v0    # "count":I
    .end local v1    # "node":I
    :cond_2
    return-object v4

    #@36
    .line 121
    .restart local v0    # "count":I
    .restart local v1    # "node":I
    :cond_3
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@38
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@3b
    move-result-object v2

    #@3c
    return-object v2
.end method
