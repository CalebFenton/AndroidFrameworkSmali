.class public Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;
.super Lorg/apache/xml/dtm/ref/DTMNodeListBase;
.source "DTMChildIterNodeList.java"


# instance fields
.field private greylist m_firstChild:I

.field private greylist m_parentDTM:Lorg/apache/xml/dtm/DTM;


# direct methods
.method private constructor greylist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTM;I)V
    .registers 3

    .line 77
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    .line 79
    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result p1

    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_firstChild:I

    return-void
.end method


# virtual methods
.method public whitelist test-api getLength()I
    .registers 4

    .line 112
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_firstChild:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    add-int/lit8 v1, v1, 0x1

    .line 114
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v0

    goto :goto_3

    :cond_f
    return v1
.end method

.method public whitelist test-api item(I)Lorg/w3c/dom/Node;
    .registers 4

    .line 96
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_firstChild:I

    :goto_2
    const/4 v1, -0x1

    add-int/2addr p1, v1

    if-ltz p1, :cond_f

    if-eq v0, v1, :cond_f

    .line 98
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v0

    goto :goto_2

    :cond_f
    if-ne v0, v1, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_13
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method
