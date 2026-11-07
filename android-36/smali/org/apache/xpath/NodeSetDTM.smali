.class public Lorg/apache/xpath/NodeSetDTM;
.super Lorg/apache/xml/utils/NodeVector;
.source "NodeSetDTM.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTMIterator;
.implements Ljava/lang/Cloneable;


# static fields
.field static final whitelist serialVersionUID:J = 0x6aabdcf4e04f714eL


# instance fields
.field protected transient greylist m_cacheNodes:Z

.field private transient greylist m_last:I

.field greylist m_manager:Lorg/apache/xml/dtm/DTMManager;

.field protected transient greylist m_mutable:Z

.field protected transient greylist m_next:I

.field protected greylist m_root:I


# direct methods
.method public constructor greylist <init>(IILorg/apache/xml/dtm/DTMManager;)V
    .registers 4

    .line 83
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/NodeVector;-><init>(I)V

    const/4 p1, 0x0

    .line 1103
    iput p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    const/4 p2, 0x1

    .line 1159
    iput-boolean p2, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    .line 1163
    iput-boolean p2, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 p2, -0x1

    .line 1166
    iput p2, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 1212
    iput p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    .line 84
    iput-object p3, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    return-void
.end method

.method public constructor greylist <init>(ILorg/apache/xml/dtm/DTMManager;)V
    .registers 5

    .line 186
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    const/4 v0, 0x0

    .line 1103
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    const/4 v1, 0x1

    .line 1159
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    .line 1163
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 v1, -0x1

    .line 1166
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 1212
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    .line 187
    iput-object p2, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    .line 189
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 4

    .line 127
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    const/4 v0, 0x0

    .line 1103
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    const/4 v1, 0x1

    .line 1159
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    .line 1163
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 v1, -0x1

    .line 1166
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 1212
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    .line 129
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    .line 130
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getRoot()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 131
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNodes(Lorg/apache/xml/dtm/DTMIterator;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMManager;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    const/4 v0, 0x0

    .line 1103
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    const/4 v1, 0x1

    .line 1159
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    .line 1163
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 v1, -0x1

    .line 1166
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 1212
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    .line 72
    iput-object p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xpath/NodeSetDTM;)V
    .registers 4

    .line 111
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    const/4 v0, 0x0

    .line 1103
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    const/4 v1, 0x1

    .line 1159
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    .line 1163
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 v1, -0x1

    .line 1166
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 1212
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    .line 112
    invoke-virtual {p1}, Lorg/apache/xpath/NodeSetDTM;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    .line 113
    invoke-virtual {p1}, Lorg/apache/xpath/NodeSetDTM;->getRoot()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNodes(Lorg/apache/xml/dtm/DTMIterator;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V
    .registers 6

    .line 163
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    const/4 v0, 0x0

    .line 1103
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    const/4 v1, 0x1

    .line 1159
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    .line 1163
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 v1, -0x1

    .line 1166
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 1212
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    .line 165
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    .line 167
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    :goto_1a
    if-ge v0, v1, :cond_2a

    .line 170
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 171
    invoke-virtual {p2, v2}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v2

    .line 173
    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2a
    return-void
.end method

.method public constructor greylist <init>(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V
    .registers 5

    .line 143
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    const/4 v0, 0x0

    .line 1103
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    const/4 v1, 0x1

    .line 1159
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    .line 1163
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 v1, -0x1

    .line 1166
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 1212
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    .line 146
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    .line 148
    :goto_16
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 150
    invoke-virtual {p2, v0}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    .line 151
    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I

    goto :goto_16

    :cond_24
    return-void
.end method


# virtual methods
.method public greylist addElement(I)V
    .registers 3

    .line 896
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_8

    .line 899
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    return-void

    .line 897
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist addNode(I)V
    .registers 3

    .line 538
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_8

    .line 541
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    return-void

    .line 539
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I
    .registers 4

    .line 870
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 873
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(IZLorg/apache/xpath/XPathContext;)I

    move-result p0

    return p0

    .line 871
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist addNodeInDocOrder(IZLorg/apache/xpath/XPathContext;)I
    .registers 7

    .line 795
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_40

    if-eqz p2, :cond_2f

    .line 806
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_c
    const/4 v0, -0x2

    if-ltz p2, :cond_25

    .line 810
    invoke-virtual {p0, p2}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v1

    if-ne v1, p1, :cond_17

    move p2, v0

    goto :goto_25

    .line 819
    :cond_17
    invoke-virtual {p3, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    .line 820
    invoke-interface {v2, p1, v1}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_25

    :cond_22
    add-int/lit8 p2, p2, -0x1

    goto :goto_c

    :cond_25
    :goto_25
    if-eq p2, v0, :cond_2d

    add-int/lit8 p2, p2, 0x1

    .line 830
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/NodeSetDTM;->insertElementAt(II)V

    return p2

    :cond_2d
    const/4 p0, -0x1

    return p0

    .line 835
    :cond_2f
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_34
    if-ge p3, p2, :cond_3c

    if-ne p3, p1, :cond_39

    return p2

    :cond_39
    add-int/lit8 p3, p3, 0x1

    goto :goto_34

    .line 850
    :cond_3c
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    return p2

    .line 796
    :cond_40
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist addNodes(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 4

    .line 649
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_12

    if-eqz p1, :cond_11

    .line 656
    :goto_6
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_11

    .line 658
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    goto :goto_6

    :cond_11
    return-void

    .line 650
    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist addNodesInDocOrder(Lorg/apache/xml/dtm/DTMIterator;Lorg/apache/xpath/XPathContext;)V
    .registers 5

    .line 706
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_10

    .line 711
    :goto_4
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_f

    .line 713
    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I

    goto :goto_4

    :cond_f
    return-void

    .line 707
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist allowDetachToRelease(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist appendNodes(Lorg/apache/xml/utils/NodeVector;)V
    .registers 3

    .line 932
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_8

    .line 935
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->appendNodes(Lorg/apache/xml/utils/NodeVector;)V

    return-void

    .line 933
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 255
    invoke-super {p0}, Lorg/apache/xml/utils/NodeVector;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/NodeSetDTM;

    return-object p0
.end method

.method public greylist cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/NodeSetDTM;

    .line 275
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->reset()V

    return-object p0
.end method

.method public greylist contains(I)Z
    .registers 3

    const/4 v0, -0x1

    .line 1059
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    .line 1061
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->contains(I)Z

    move-result p0

    return p0
.end method

.method public greylist detach()V
    .registers 1

    .line 0
    return-void
.end method

.method public greylist elementAt(I)I
    .registers 2

    .line 1044
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    .line 1046
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public greylist getAxis()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getCurrentNode()I
    .registers 4

    .line 1144
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    if-eqz v0, :cond_19

    .line 1148
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    if-lez v0, :cond_b

    add-int/lit8 v1, v0, -0x1

    goto :goto_c

    :cond_b
    move v1, v0

    .line 1153
    :goto_c
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v1, v2, :cond_15

    invoke-virtual {p0, v1}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v1

    goto :goto_16

    :cond_15
    const/4 v1, -0x1

    .line 1154
    :goto_16
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    return v1

    .line 1145
    :cond_19
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This NodeSetDTM can not do indexing or counting functions!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist getCurrentPos()I
    .registers 1

    .line 1115
    iget p0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    return p0
.end method

.method public greylist getDTM(I)Lorg/apache/xml/dtm/DTM;
    .registers 2

    .line 356
    iget-object p0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    return-object p0
.end method

.method public greylist getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .registers 1

    .line 372
    iget-object p0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    return-object p0
.end method

.method public greylist getExpandEntityReferences()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist getFilter()Lorg/apache/xml/dtm/DTMFilter;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getLast()I
    .registers 1

    .line 1216
    iget p0, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    return p0
.end method

.method public greylist getLength()I
    .registers 2

    const/4 v0, -0x1

    .line 522
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    .line 524
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result p0

    return p0
.end method

.method public greylist getRoot()I
    .registers 3

    .line 217
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_12

    .line 219
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->item(I)I

    move-result p0

    return p0

    :cond_11
    return v1

    :cond_12
    return v0
.end method

.method public greylist getShouldCacheNodes()Z
    .registers 1

    .line 1176
    iget-boolean p0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    return p0
.end method

.method public greylist getWhatToShow()I
    .registers 1

    .line 0
    const/16 p0, -0x11

    return p0
.end method

.method public greylist indexOf(I)I
    .registers 3

    const/4 v0, -0x1

    .line 1096
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    .line 1098
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->indexOf(I)I

    move-result p0

    return p0
.end method

.method public greylist indexOf(II)I
    .registers 4

    const/4 v0, -0x1

    .line 1078
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    .line 1080
    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public greylist insertElementAt(II)V
    .registers 4

    .line 916
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_8

    .line 919
    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->insertElementAt(II)V

    return-void

    .line 917
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist insertNode(II)V
    .registers 4

    .line 556
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_8

    .line 559
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/NodeSetDTM;->insertElementAt(II)V

    return-void

    .line 557
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist isDocOrdered()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isFresh()Z
    .registers 1

    .line 463
    iget p0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isMutable()Z
    .registers 1

    .line 1209
    iget-boolean p0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    return p0
.end method

.method public greylist item(I)I
    .registers 2

    .line 506
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    .line 508
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public greylist nextNode()I
    .registers 3

    .line 388
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 390
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v0

    .line 392
    iget v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    return v0

    :cond_15
    const/4 p0, -0x1

    return p0
.end method

.method public greylist previousNode()I
    .registers 3

    .line 414
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    if-eqz v0, :cond_15

    .line 418
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    add-int/lit8 v1, v0, -0x1

    if-lez v1, :cond_13

    add-int/lit8 v0, v0, -0x1

    .line 420
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    .line 422
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result p0

    return p0

    :cond_13
    const/4 p0, -0x1

    return p0

    .line 415
    :cond_15
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_NODESETDTM_CANNOT_ITERATE"

    const/4 v1, 0x0

    .line 416
    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist removeAllElements()V
    .registers 3

    .line 949
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_8

    .line 952
    invoke-super {p0}, Lorg/apache/xml/utils/NodeVector;->removeAllElements()V

    return-void

    .line 950
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist removeElement(I)Z
    .registers 3

    .line 971
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_9

    .line 974
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->removeElement(I)Z

    move-result p0

    return p0

    .line 972
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist removeElementAt(I)V
    .registers 3

    .line 990
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_8

    .line 993
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->removeElementAt(I)V

    return-void

    .line 991
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist removeNode(I)V
    .registers 3

    .line 572
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_8

    .line 575
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->removeElement(I)Z

    return-void

    .line 573
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 285
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    return-void
.end method

.method public greylist runTo(I)V
    .registers 4

    .line 481
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    if-eqz v0, :cond_16

    if-ltz p1, :cond_f

    .line 485
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v1, :cond_f

    .line 486
    iput p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    return-void

    .line 488
    :cond_f
    iget p1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    return-void

    .line 482
    :cond_16
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_CANNOT_INDEX"

    const/4 v0, 0x0

    .line 483
    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setCurrentPos(I)V
    .registers 3

    .line 1127
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    if-eqz v0, :cond_7

    .line 1131
    iput p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    return-void

    .line 1128
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_CANNOT_INDEX"

    const/4 v0, 0x0

    .line 1129
    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setElementAt(II)V
    .registers 4

    .line 1011
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_8

    .line 1014
    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->setElementAt(II)V

    return-void

    .line 1012
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setEnvironment(Ljava/lang/Object;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist setItem(II)V
    .registers 4

    .line 1028
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_8

    .line 1031
    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->setElementAt(II)V

    return-void

    .line 1029
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setLast(I)V
    .registers 2

    .line 1221
    iput p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    return-void
.end method

.method public greylist setRoot(ILjava/lang/Object;)V
    .registers 3

    .line 0
    return-void
.end method

.method public greylist setShouldCacheNodes(Z)V
    .registers 3

    .line 1193
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->isFresh()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1197
    iput-boolean p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 p1, 0x1

    .line 1198
    iput-boolean p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    return-void

    .line 1194
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_CANNOT_CALL_SETSHOULDCACHENODE"

    const/4 v0, 0x0

    .line 1195
    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist size()I
    .registers 1

    .line 883
    invoke-super {p0}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result p0

    return p0
.end method
