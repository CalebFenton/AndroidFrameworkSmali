.class public Lorg/apache/xalan/transformer/CountersTable;
.super Ljava/util/Hashtable;
.source "CountersTable.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x1df6aab6353531a3L


# instance fields
.field transient greylist m_countersMade:I

.field private transient greylist m_newFound:Lorg/apache/xpath/NodeSetDTM;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lorg/apache/xalan/transformer/CountersTable;->m_countersMade:I

    return-void
.end method


# virtual methods
.method greylist appendBtoFList(Lorg/apache/xpath/NodeSetDTM;Lorg/apache/xpath/NodeSetDTM;)V
    .registers 4

    .line 101
    invoke-virtual {p2}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_6
    if-ltz p0, :cond_12

    .line 105
    invoke-virtual {p2, p0}, Lorg/apache/xpath/NodeSetDTM;->item(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public greylist countNode(Lorg/apache/xpath/XPathContext;Lorg/apache/xalan/templates/ElemNumber;I)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0, p2}, Lorg/apache/xalan/transformer/CountersTable;->getCounters(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 136
    invoke-virtual {p2, p1, p3}, Lorg/apache/xalan/templates/ElemNumber;->getTargetNode(Lorg/apache/xpath/XPathContext;I)I

    move-result p3

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v3, p3, :cond_98

    move v4, v2

    :goto_11
    if-ge v4, v1, :cond_23

    .line 142
    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xalan/transformer/Counter;

    .line 144
    invoke-virtual {v5, p1, p3}, Lorg/apache/xalan/transformer/Counter;->getPreviouslyCounted(Lorg/apache/xpath/XPathContext;I)I

    move-result v5

    if-lez v5, :cond_20

    return v5

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 157
    :cond_23
    iget-object v4, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    if-nez v4, :cond_32

    .line 158
    new-instance v4, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    iput-object v4, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    :cond_32
    move v4, v2

    :goto_33
    if-eq v3, p3, :cond_74

    if-eqz v4, :cond_68

    move v5, v2

    :goto_38
    if-ge v5, v1, :cond_68

    .line 171
    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xalan/transformer/Counter;

    .line 172
    iget-object v7, v6, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v7}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v7

    if-lez v7, :cond_65

    .line 174
    iget-object v8, v6, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    add-int/lit8 v9, v7, -0x1

    .line 175
    invoke-virtual {v8, v9}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v8

    if-ne v8, p3, :cond_65

    .line 178
    iget p1, v6, Lorg/apache/xalan/transformer/Counter;->m_countNodesStartCount:I

    add-int/2addr p1, v7

    add-int/2addr v4, p1

    if-lez v7, :cond_5f

    .line 181
    iget-object p1, v6, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    iget-object p2, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/transformer/CountersTable;->appendBtoFList(Lorg/apache/xpath/NodeSetDTM;Lorg/apache/xpath/NodeSetDTM;)V

    .line 183
    :cond_5f
    iget-object p0, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->removeAllElements()V

    return v4

    :cond_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 190
    :cond_68
    iget-object v5, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v5, p3}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    add-int/lit8 v4, v4, 0x1

    .line 161
    invoke-virtual {p2, p1, p3}, Lorg/apache/xalan/templates/ElemNumber;->getPreviousNode(Lorg/apache/xpath/XPathContext;I)I

    move-result p3

    goto :goto_33

    .line 197
    :cond_74
    new-instance p3, Lorg/apache/xalan/transformer/Counter;

    new-instance v1, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    invoke-direct {p3, p2, v1}, Lorg/apache/xalan/transformer/Counter;-><init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/apache/xpath/NodeSetDTM;)V

    .line 199
    iget p1, p0, Lorg/apache/xalan/transformer/CountersTable;->m_countersMade:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xalan/transformer/CountersTable;->m_countersMade:I

    .line 201
    iget-object p1, p3, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    iget-object p2, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/transformer/CountersTable;->appendBtoFList(Lorg/apache/xpath/NodeSetDTM;Lorg/apache/xpath/NodeSetDTM;)V

    .line 202
    iget-object p0, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->removeAllElements()V

    .line 203
    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return v4

    :cond_98
    return v2
.end method

.method greylist getCounters(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;
    .registers 3

    .line 61
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_d

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/CountersTable;->putElemNumber(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v0
.end method

.method greylist putElemNumber(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;
    .registers 3

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 80
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
