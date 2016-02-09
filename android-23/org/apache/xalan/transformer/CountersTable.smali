.class public Lorg/apache/xalan/transformer/CountersTable;
.super Ljava/util/Hashtable;
.source "CountersTable.java"


# static fields
.field static final serialVersionUID:J = 0x1df6aab6353531a3L


# instance fields
.field transient m_countersMade:I

.field private transient m_newFound:Lorg/apache/xpath/NodeSetDTM;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    #@3
    .line 112
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lorg/apache/xalan/transformer/CountersTable;->m_countersMade:I

    #@6
    .line 47
    return-void
.end method


# virtual methods
.method appendBtoFList(Lorg/apache/xpath/NodeSetDTM;Lorg/apache/xpath/NodeSetDTM;)V
    .locals 3
    .param p1, "flist"    # Lorg/apache/xpath/NodeSetDTM;
    .param p2, "blist"    # Lorg/apache/xpath/NodeSetDTM;

    #@0
    .prologue
    .line 101
    invoke-virtual {p2}, Lorg/apache/xpath/NodeSetDTM;->size()I

    #@3
    move-result v1

    #@4
    .line 103
    .local v1, "n":I
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 105
    invoke-virtual {p2, v0}, Lorg/apache/xpath/NodeSetDTM;->item(I)I

    #@b
    move-result v2

    #@c
    invoke-virtual {p1, v2}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    #@f
    .line 103
    add-int/lit8 v0, v0, -0x1

    #@11
    goto :goto_0

    #@12
    .line 98
    :cond_0
    return-void
.end method

.method public countNode(Lorg/apache/xpath/XPathContext;Lorg/apache/xalan/templates/ElemNumber;I)I
    .locals 10
    .param p1, "support"    # Lorg/apache/xpath/XPathContext;
    .param p2, "numberElem"    # Lorg/apache/xalan/templates/ElemNumber;
    .param p3, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    .line 130
    const/4 v1, 0x0

    #@2
    .line 131
    .local v1, "count":I
    invoke-virtual {p0, p2}, Lorg/apache/xalan/transformer/CountersTable;->getCounters(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;

    #@5
    move-result-object v3

    #@6
    .line 132
    .local v3, "counters":Ljava/util/Vector;
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@9
    move-result v5

    #@a
    .line 136
    .local v5, "nCounters":I
    invoke-virtual {p2, p1, p3}, Lorg/apache/xalan/templates/ElemNumber;->getTargetNode(Lorg/apache/xpath/XPathContext;I)I

    #@d
    move-result v6

    #@e
    .line 138
    .local v6, "target":I
    if-eq v9, v6, :cond_7

    #@10
    .line 140
    const/4 v4, 0x0

    #@11
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    #@13
    .line 142
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lorg/apache/xalan/transformer/Counter;

    #@19
    .line 144
    .local v2, "counter":Lorg/apache/xalan/transformer/Counter;
    invoke-virtual {v2, p1, v6}, Lorg/apache/xalan/transformer/Counter;->getPreviouslyCounted(Lorg/apache/xpath/XPathContext;I)I

    #@1c
    move-result v1

    #@1d
    .line 146
    if-lez v1, :cond_0

    #@1f
    .line 147
    return v1

    #@20
    .line 140
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@22
    goto :goto_0

    #@23
    .line 156
    .end local v2    # "counter":Lorg/apache/xalan/transformer/Counter;
    :cond_1
    const/4 v1, 0x0

    #@24
    .line 157
    iget-object v7, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    #@26
    if-nez v7, :cond_2

    #@28
    .line 158
    new-instance v7, Lorg/apache/xpath/NodeSetDTM;

    #@2a
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@2d
    move-result-object v8

    #@2e
    invoke-direct {v7, v8}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    #@31
    iput-object v7, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    #@33
    .line 160
    :cond_2
    :goto_1
    if-eq v9, v6, :cond_6

    #@35
    .line 167
    if-eqz v1, :cond_5

    #@37
    .line 169
    const/4 v4, 0x0

    #@38
    :goto_2
    if-ge v4, v5, :cond_5

    #@3a
    .line 171
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@3d
    move-result-object v2

    #@3e
    check-cast v2, Lorg/apache/xalan/transformer/Counter;

    #@40
    .line 172
    .restart local v2    # "counter":Lorg/apache/xalan/transformer/Counter;
    iget-object v7, v2, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    #@42
    invoke-virtual {v7}, Lorg/apache/xpath/NodeSetDTM;->size()I

    #@45
    move-result v0

    #@46
    .line 174
    .local v0, "cacheLen":I
    if-lez v0, :cond_4

    #@48
    .line 175
    iget-object v7, v2, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    #@4a
    add-int/lit8 v8, v0, -0x1

    #@4c
    invoke-virtual {v7, v8}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    #@4f
    move-result v7

    #@50
    if-ne v7, v6, :cond_4

    #@52
    .line 178
    iget v7, v2, Lorg/apache/xalan/transformer/Counter;->m_countNodesStartCount:I

    #@54
    add-int/2addr v7, v0

    #@55
    add-int/2addr v1, v7

    #@56
    .line 180
    if-lez v0, :cond_3

    #@58
    .line 181
    iget-object v7, v2, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    #@5a
    iget-object v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    #@5c
    invoke-virtual {p0, v7, v8}, Lorg/apache/xalan/transformer/CountersTable;->appendBtoFList(Lorg/apache/xpath/NodeSetDTM;Lorg/apache/xpath/NodeSetDTM;)V

    #@5f
    .line 183
    :cond_3
    iget-object v7, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    #@61
    invoke-virtual {v7}, Lorg/apache/xpath/NodeSetDTM;->removeAllElements()V

    #@64
    .line 185
    return v1

    #@65
    .line 169
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@67
    goto :goto_2

    #@68
    .line 190
    .end local v0    # "cacheLen":I
    .end local v2    # "counter":Lorg/apache/xalan/transformer/Counter;
    :cond_5
    iget-object v7, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    #@6a
    invoke-virtual {v7, v6}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    #@6d
    .line 192
    add-int/lit8 v1, v1, 0x1

    #@6f
    .line 161
    invoke-virtual {p2, p1, v6}, Lorg/apache/xalan/templates/ElemNumber;->getPreviousNode(Lorg/apache/xpath/XPathContext;I)I

    #@72
    move-result v6

    #@73
    goto :goto_1

    #@74
    .line 197
    :cond_6
    new-instance v2, Lorg/apache/xalan/transformer/Counter;

    #@76
    new-instance v7, Lorg/apache/xpath/NodeSetDTM;

    #@78
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@7b
    move-result-object v8

    #@7c
    invoke-direct {v7, v8}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    #@7f
    invoke-direct {v2, p2, v7}, Lorg/apache/xalan/transformer/Counter;-><init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/apache/xpath/NodeSetDTM;)V

    #@82
    .line 199
    .restart local v2    # "counter":Lorg/apache/xalan/transformer/Counter;
    iget v7, p0, Lorg/apache/xalan/transformer/CountersTable;->m_countersMade:I

    #@84
    add-int/lit8 v7, v7, 0x1

    #@86
    iput v7, p0, Lorg/apache/xalan/transformer/CountersTable;->m_countersMade:I

    #@88
    .line 201
    iget-object v7, v2, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    #@8a
    iget-object v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    #@8c
    invoke-virtual {p0, v7, v8}, Lorg/apache/xalan/transformer/CountersTable;->appendBtoFList(Lorg/apache/xpath/NodeSetDTM;Lorg/apache/xpath/NodeSetDTM;)V

    #@8f
    .line 202
    iget-object v7, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    #@91
    invoke-virtual {v7}, Lorg/apache/xpath/NodeSetDTM;->removeAllElements()V

    #@94
    .line 203
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@97
    .line 206
    .end local v2    # "counter":Lorg/apache/xalan/transformer/Counter;
    .end local v4    # "i":I
    :cond_7
    return v1
.end method

.method getCounters(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;
    .locals 1
    .param p1, "numberElem"    # Lorg/apache/xalan/templates/ElemNumber;

    #@0
    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/CountersTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Vector;

    #@6
    .line 63
    .local v0, "counters":Ljava/util/Vector;
    if-nez v0, :cond_0

    #@8
    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/CountersTable;->putElemNumber(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;

    #@b
    move-result-object v0

    #@c
    .end local v0    # "counters":Ljava/util/Vector;
    :cond_0
    return-object v0
.end method

.method putElemNumber(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;
    .locals 1
    .param p1, "numberElem"    # Lorg/apache/xalan/templates/ElemNumber;

    #@0
    .prologue
    .line 78
    new-instance v0, Ljava/util/Vector;

    #@2
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@5
    .line 80
    .local v0, "counters":Ljava/util/Vector;
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/transformer/CountersTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 82
    return-object v0
.end method
