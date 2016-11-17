.class public Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;
.super Lorg/apache/xml/dtm/ref/DTMNodeListBase;
.source "DTMChildIterNodeList.java"


# instance fields
.field private m_firstChild:I

.field private m_parentDTM:Lorg/apache/xml/dtm/DTM;


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

.method public constructor <init>(Lorg/apache/xml/dtm/DTM;I)V
    .locals 1
    .param p1, "parentDTM"    # Lorg/apache/xml/dtm/DTM;
    .param p2, "parentHandle"    # I

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    #@3
    .line 78
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    #@5
    .line 79
    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    #@8
    move-result v0

    #@9
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_firstChild:I

    #@b
    .line 77
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 3

    #@0
    .prologue
    .line 111
    const/4 v0, 0x0

    #@1
    .line 112
    .local v0, "count":I
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_firstChild:I

    #@3
    .line 113
    .local v1, "handle":I
    :goto_0
    const/4 v2, -0x1

    #@4
    .line 112
    if-eq v1, v2, :cond_0

    #@6
    .line 115
    add-int/lit8 v0, v0, 0x1

    #@8
    .line 114
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    #@a
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    #@d
    move-result v1

    #@e
    goto :goto_0

    #@f
    .line 117
    :cond_0
    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 96
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_firstChild:I

    #@3
    .line 97
    .local v0, "handle":I
    :goto_0
    add-int/lit8 p1, p1, -0x1

    #@5
    if-ltz p1, :cond_0

    #@7
    if-eq v0, v2, :cond_0

    #@9
    .line 98
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    #@b
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    #@e
    move-result v0

    #@f
    goto :goto_0

    #@10
    .line 100
    :cond_0
    if-ne v0, v2, :cond_1

    #@12
    .line 101
    const/4 v1, 0x0

    #@13
    return-object v1

    #@14
    .line 103
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    #@16
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method
