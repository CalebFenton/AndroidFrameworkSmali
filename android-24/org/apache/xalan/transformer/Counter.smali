.class public Lorg/apache/xalan/transformer/Counter;
.super Ljava/lang/Object;
.source "Counter.java"


# static fields
.field static final MAXCOUNTNODES:I = 0x1f4


# instance fields
.field m_countNodes:Lorg/apache/xpath/NodeSetDTM;

.field m_countNodesStartCount:I

.field m_countResult:I

.field m_fromNode:I

.field m_numberElem:Lorg/apache/xalan/templates/ElemNumber;


# direct methods
.method constructor <init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/apache/xpath/NodeSetDTM;)V
    .locals 1
    .param p1, "numberElem"    # Lorg/apache/xalan/templates/ElemNumber;
    .param p2, "countNodes"    # Lorg/apache/xpath/NodeSetDTM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodesStartCount:I

    #@6
    .line 64
    const/4 v0, -0x1

    #@7
    iput v0, p0, Lorg/apache/xalan/transformer/Counter;->m_fromNode:I

    #@9
    .line 88
    iput-object p2, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    #@b
    .line 89
    iput-object p1, p0, Lorg/apache/xalan/transformer/Counter;->m_numberElem:Lorg/apache/xalan/templates/ElemNumber;

    #@d
    .line 86
    return-void
.end method


# virtual methods
.method getLast()I
    .locals 3

    #@0
    .prologue
    .line 153
    iget-object v1, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    #@2
    invoke-virtual {v1}, Lorg/apache/xpath/NodeSetDTM;->size()I

    #@5
    move-result v0

    #@6
    .line 155
    .local v0, "size":I
    if-lez v0, :cond_0

    #@8
    iget-object v1, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    #@a
    add-int/lit8 v2, v0, -0x1

    #@c
    invoke-virtual {v1, v2}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    #@f
    move-result v1

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    const/4 v1, -0x1

    #@12
    goto :goto_0
.end method

.method getPreviouslyCounted(Lorg/apache/xpath/XPathContext;I)I
    .locals 6
    .param p1, "support"    # Lorg/apache/xpath/XPathContext;
    .param p2, "node"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 116
    iget-object v4, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    #@3
    invoke-virtual {v4}, Lorg/apache/xpath/NodeSetDTM;->size()I

    #@6
    move-result v3

    #@7
    .line 118
    .local v3, "n":I
    iput v5, p0, Lorg/apache/xalan/transformer/Counter;->m_countResult:I

    #@9
    .line 120
    add-int/lit8 v2, v3, -0x1

    #@b
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@d
    .line 122
    iget-object v4, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    #@f
    invoke-virtual {v4, v2}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    #@12
    move-result v0

    #@13
    .line 124
    .local v0, "countedNode":I
    if-ne p2, v0, :cond_1

    #@15
    .line 129
    add-int/lit8 v4, v2, 0x1

    #@17
    iget v5, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodesStartCount:I

    #@19
    add-int/2addr v4, v5

    #@1a
    iput v4, p0, Lorg/apache/xalan/transformer/Counter;->m_countResult:I

    #@1c
    .line 142
    .end local v0    # "countedNode":I
    :cond_0
    iget v4, p0, Lorg/apache/xalan/transformer/Counter;->m_countResult:I

    #@1e
    return v4

    #@1f
    .line 134
    .restart local v0    # "countedNode":I
    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@22
    move-result-object v1

    #@23
    .line 138
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, v0, p2}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    #@26
    move-result v4

    #@27
    if-nez v4, :cond_0

    #@29
    .line 120
    add-int/lit8 v2, v2, -0x1

    #@2b
    goto :goto_0
.end method
