.class public Lorg/apache/xpath/objects/XNodeSetForDOM;
.super Lorg/apache/xpath/objects/XNodeSet;
.source "XNodeSetForDOM.java"


# static fields
.field static final serialVersionUID:J = -0x748542f81fc72280L


# instance fields
.field m_origObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/xpath/objects/XNodeSet;)V
    .locals 1
    .param p1, "val"    # Lorg/apache/xpath/objects/XNodeSet;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xpath/objects/XNodeSet;)V

    #@3
    .line 57
    instance-of v0, p1, Lorg/apache/xpath/objects/XNodeSetForDOM;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 58
    check-cast p1, Lorg/apache/xpath/objects/XNodeSetForDOM;

    #@9
    .end local p1    # "val":Lorg/apache/xpath/objects/XNodeSet;
    iget-object v0, p1, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    #@b
    iput-object v0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    #@d
    .line 54
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTMManager;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "dtmMgr"    # Lorg/apache/xml/dtm/DTMManager;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>()V

    #@3
    .line 42
    iput-object p2, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    #@5
    .line 43
    iput-object p1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    #@7
    .line 44
    invoke-virtual {p2, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    #@a
    move-result v0

    #@b
    .line 45
    .local v0, "dtmHandle":I
    new-instance v1, Lorg/apache/xpath/NodeSetDTM;

    #@d
    invoke-direct {v1, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    #@10
    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSetForDOM;->setObject(Ljava/lang/Object;)V

    #@13
    .line 46
    iget-object v1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_obj:Ljava/lang/Object;

    #@15
    check-cast v1, Lorg/apache/xpath/NodeSetDTM;

    #@17
    invoke-virtual {v1, v0}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    #@1a
    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V
    .locals 2
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>()V

    #@3
    .line 63
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    #@9
    .line 64
    iput-object p1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    #@b
    .line 70
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    #@d
    invoke-direct {v0, p1, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V

    #@10
    .line 71
    .local v0, "nsdtm":Lorg/apache/xpath/NodeSetDTM;
    invoke-virtual {v0}, Lorg/apache/xpath/NodeSetDTM;->getLength()I

    #@13
    move-result v1

    #@14
    iput v1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_last:I

    #@16
    .line 72
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSetForDOM;->setObject(Ljava/lang/Object;)V

    #@19
    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V
    .locals 2
    .param p1, "nodeIter"    # Lorg/w3c/dom/traversal/NodeIterator;
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>()V

    #@3
    .line 77
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    #@9
    .line 78
    iput-object p1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    #@b
    .line 84
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    #@d
    invoke-direct {v0, p1, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V

    #@10
    .line 85
    .local v0, "nsdtm":Lorg/apache/xpath/NodeSetDTM;
    invoke-virtual {v0}, Lorg/apache/xpath/NodeSetDTM;->getLength()I

    #@13
    move-result v1

    #@14
    iput v1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_last:I

    #@16
    .line 86
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSetForDOM;->setObject(Ljava/lang/Object;)V

    #@19
    .line 75
    return-void
.end method


# virtual methods
.method public nodelist()Lorg/w3c/dom/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Lorg/w3c/dom/NodeList;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 123
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    #@8
    check-cast v0, Lorg/w3c/dom/NodeList;

    #@a
    .line 122
    :goto_0
    return-object v0

    #@b
    .line 123
    :cond_0
    invoke-super {p0}, Lorg/apache/xpath/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method public nodeset()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Lorg/w3c/dom/traversal/NodeIterator;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 110
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    #@8
    check-cast v0, Lorg/w3c/dom/traversal/NodeIterator;

    #@a
    .line 109
    :goto_0
    return-object v0

    #@b
    .line 110
    :cond_0
    invoke-super {p0}, Lorg/apache/xpath/objects/XNodeSet;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method public object()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    #@2
    return-object v0
.end method
