.class public Lorg/apache/xpath/objects/XNodeSetForDOM;
.super Lorg/apache/xpath/objects/XNodeSet;
.source "XNodeSetForDOM.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x748542f81fc72280L


# instance fields
.field greylist m_origObj:Ljava/lang/Object;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xpath/objects/XNodeSet;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xpath/objects/XNodeSet;)V

    .line 57
    instance-of v0, p1, Lorg/apache/xpath/objects/XNodeSetForDOM;

    if-eqz v0, :cond_d

    .line 58
    check-cast p1, Lorg/apache/xpath/objects/XNodeSetForDOM;

    iget-object p1, p1, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method public constructor greylist <init>(Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTMManager;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>()V

    .line 42
    iput-object p2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 43
    iput-object p1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    .line 44
    invoke-virtual {p2, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p1

    .line 45
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-direct {v0, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->setObject(Ljava/lang/Object;)V

    .line 46
    iget-object p0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast p0, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>()V

    .line 63
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 64
    iput-object p1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    .line 70
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-direct {v0, p1, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V

    .line 71
    invoke-virtual {v0}, Lorg/apache/xpath/NodeSetDTM;->getLength()I

    move-result p1

    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 72
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V
    .registers 4

    .line 76
    invoke-direct {p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>()V

    .line 77
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 78
    iput-object p1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    .line 84
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-direct {v0, p1, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V

    .line 85
    invoke-virtual {v0}, Lorg/apache/xpath/NodeSetDTM;->getLength()I

    move-result p1

    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 86
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->setObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public greylist nodelist()Lorg/w3c/dom/NodeList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    instance-of v1, v0, Lorg/w3c/dom/NodeList;

    if-eqz v1, :cond_9

    .line 123
    check-cast v0, Lorg/w3c/dom/NodeList;

    return-object v0

    :cond_9
    invoke-super {p0}, Lorg/apache/xpath/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public greylist nodeset()Lorg/w3c/dom/traversal/NodeIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    instance-of v1, v0, Lorg/w3c/dom/traversal/NodeIterator;

    if-eqz v1, :cond_9

    .line 110
    check-cast v0, Lorg/w3c/dom/traversal/NodeIterator;

    return-object v0

    :cond_9
    invoke-super {p0}, Lorg/apache/xpath/objects/XNodeSet;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p0

    return-object p0
.end method

.method public greylist object()Ljava/lang/Object;
    .registers 1

    .line 97
    iget-object p0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    return-object p0
.end method
