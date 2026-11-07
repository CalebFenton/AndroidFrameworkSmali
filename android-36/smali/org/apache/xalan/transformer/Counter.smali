.class public Lorg/apache/xalan/transformer/Counter;
.super Ljava/lang/Object;
.source "Counter.java"


# static fields
.field static final greylist MAXCOUNTNODES:I = 0x1f4


# instance fields
.field greylist m_countNodes:Lorg/apache/xpath/NodeSetDTM;

.field greylist m_countNodesStartCount:I

.field greylist m_countResult:I

.field greylist m_fromNode:I

.field greylist m_numberElem:Lorg/apache/xalan/templates/ElemNumber;


# direct methods
.method constructor greylist <init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/apache/xpath/NodeSetDTM;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodesStartCount:I

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lorg/apache/xalan/transformer/Counter;->m_fromNode:I

    .line 88
    iput-object p2, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    .line 89
    iput-object p1, p0, Lorg/apache/xalan/transformer/Counter;->m_numberElem:Lorg/apache/xalan/templates/ElemNumber;

    return-void
.end method


# virtual methods
.method greylist getLast()I
    .registers 2

    .line 153
    iget-object v0, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 155
    iget-object p0, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result p0

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method greylist getPreviouslyCounted(Lorg/apache/xpath/XPathContext;I)I
    .registers 6

    .line 116
    iget-object v0, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 118
    iput v1, p0, Lorg/apache/xalan/transformer/Counter;->m_countResult:I

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_2b

    .line 122
    iget-object v1, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v1, v0}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v1

    if-ne p2, v1, :cond_1d

    add-int/lit8 v0, v0, 0x1

    .line 129
    iget p1, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodesStartCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/xalan/transformer/Counter;->m_countResult:I

    goto :goto_2b

    .line 134
    :cond_1d
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    .line 138
    invoke-interface {v2, v1, p2}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 142
    :cond_2b
    :goto_2b
    iget p0, p0, Lorg/apache/xalan/transformer/Counter;->m_countResult:I

    return p0
.end method
