.class public Lorg/apache/xpath/axes/NodeSequence;
.super Lorg/apache/xpath/objects/XObject;
.source "NodeSequence.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTMIterator;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xpath/axes/PathComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x35a7b8becbfe0b34L


# instance fields
.field private m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

.field protected m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

.field protected m_iter:Lorg/apache/xml/dtm/DTMIterator;

.field protected m_last:I

.field protected m_next:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 211
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    #@3
    .line 43
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    #@6
    .line 50
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@9
    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "nodeVector"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 179
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 43
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    #@6
    .line 50
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@9
    .line 180
    instance-of v0, p1, Lorg/apache/xml/utils/NodeVector;

    #@b
    if-eqz v0, :cond_0

    #@d
    move-object v0, p1

    #@e
    .line 181
    check-cast v0, Lorg/apache/xml/utils/NodeVector;

    #@10
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    #@13
    .line 183
    :cond_0
    if-eqz p1, :cond_1

    #@15
    .line 185
    instance-of v0, p1, Lorg/apache/xml/utils/NodeVector;

    #@17
    .line 186
    const-string/jumbo v1, "Must have a NodeVector as the object for NodeSequence!"

    #@1a
    .line 185
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    #@1d
    .line 187
    instance-of v0, p1, Lorg/apache/xml/dtm/DTMIterator;

    #@1f
    if-eqz v0, :cond_1

    #@21
    move-object v0, p1

    #@22
    .line 189
    check-cast v0, Lorg/apache/xml/dtm/DTMIterator;

    #@24
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    #@27
    .line 190
    check-cast p1, Lorg/apache/xml/dtm/DTMIterator;

    #@29
    .end local p1    # "nodeVector":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    #@2c
    move-result v0

    #@2d
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    #@2f
    .line 177
    :cond_1
    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/dtm/DTMIterator;ILorg/apache/xpath/XPathContext;Z)V
    .locals 1
    .param p1, "iter"    # Lorg/apache/xml/dtm/DTMIterator;
    .param p2, "context"    # I
    .param p3, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p4, "shouldCacheNodes"    # Z

    #@0
    .prologue
    .line 165
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    #@3
    .line 43
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    #@6
    .line 50
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@9
    .line 167
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    #@c
    .line 168
    invoke-virtual {p0, p2, p3}, Lorg/apache/xpath/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    #@f
    .line 169
    invoke-virtual {p0, p4}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    #@12
    .line 165
    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/dtm/DTMManager;)V
    .locals 2
    .param p1, "dtmMgr"    # Lorg/apache/xml/dtm/DTMManager;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 202
    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    #@3
    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    #@6
    invoke-direct {p0, v0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    #@9
    .line 43
    const/4 v0, -0x1

    #@a
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    #@c
    .line 50
    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@e
    .line 203
    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    #@10
    .line 204
    iput-object p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    #@12
    .line 200
    return-void
.end method

.method private cacheComplete()Z
    .locals 2

    #@0
    .prologue
    .line 106
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 107
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@6
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-wrap0(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Z

    #@9
    move-result v0

    #@a
    .line 111
    :goto_0
    return v0

    #@b
    .line 109
    :cond_0
    const/4 v0, 0x0

    #@c
    .local v0, "complete":Z
    goto :goto_0
.end method

.method private getCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@2
    return-object v0
.end method

.method private markCacheComplete()V
    .locals 3

    #@0
    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    #@3
    move-result-object v0

    #@4
    .line 120
    .local v0, "nv":Lorg/apache/xml/utils/NodeVector;
    if-eqz v0, :cond_0

    #@6
    .line 121
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-static {v1, v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-wrap4(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Z)V

    #@c
    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method protected SetVector(Lorg/apache/xml/utils/NodeVector;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/NodeVector;

    #@0
    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setObject(Ljava/lang/Object;)V

    #@3
    .line 83
    return-void
.end method

.method protected addNodeInDocOrder(I)I
    .locals 8
    .param p1, "node"    # I

    #@0
    .prologue
    .line 723
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    #@3
    move-result v6

    #@4
    const-string/jumbo v7, "addNodeInDocOrder must be done on a mutable sequence!"

    #@7
    invoke-virtual {p0, v6, v7}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    #@a
    .line 725
    const/4 v3, -0x1

    #@b
    .line 727
    .local v3, "insertIndex":I
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    #@e
    move-result-object v5

    #@f
    .line 732
    .local v5, "vec":Lorg/apache/xml/utils/NodeVector;
    invoke-virtual {v5}, Lorg/apache/xml/utils/NodeVector;->size()I

    #@12
    move-result v4

    #@13
    .line 734
    .local v4, "size":I
    add-int/lit8 v2, v4, -0x1

    #@15
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@17
    .line 736
    invoke-virtual {v5, v2}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    #@1a
    move-result v0

    #@1b
    .line 738
    .local v0, "child":I
    if-ne v0, p1, :cond_2

    #@1d
    .line 740
    const/4 v2, -0x2

    #@1e
    .line 752
    .end local v0    # "child":I
    :cond_0
    const/4 v6, -0x2

    #@1f
    if-eq v2, v6, :cond_1

    #@21
    .line 754
    add-int/lit8 v3, v2, 0x1

    #@23
    .line 756
    invoke-virtual {v5, p1, v3}, Lorg/apache/xml/utils/NodeVector;->insertElementAt(II)V

    #@26
    .line 760
    :cond_1
    return v3

    #@27
    .line 745
    .restart local v0    # "child":I
    :cond_2
    iget-object v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    #@29
    invoke-virtual {v6, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@2c
    move-result-object v1

    #@2d
    .line 746
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, p1, v0}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    #@30
    move-result v6

    #@31
    if-eqz v6, :cond_0

    #@33
    .line 734
    add-int/lit8 v2, v2, -0x1

    #@35
    goto :goto_0
.end method

.method public allowDetachToRelease(Z)V
    .locals 1
    .param p1, "allowRelease"    # Z

    #@0
    .prologue
    .line 409
    if-nez p1, :cond_0

    #@2
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 414
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 415
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@e
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTMIterator;->allowDetachToRelease(Z)V

    #@11
    .line 416
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    #@14
    .line 407
    return-void

    #@15
    .line 411
    :cond_2
    const/4 v0, 0x1

    #@16
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    #@19
    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 654
    invoke-super {p0}, Lorg/apache/xpath/objects/XObject;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/axes/NodeSequence;

    #@6
    .line 655
    .local v0, "clone":Lorg/apache/xpath/axes/NodeSequence;
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@c
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lorg/apache/xml/dtm/DTMIterator;

    #@12
    iput-object v1, v0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@14
    .line 656
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 662
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@1a
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-wrap3(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V

    #@1d
    .line 665
    :cond_1
    return-object v0
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 629
    invoke-super {p0}, Lorg/apache/xpath/objects/XObject;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/axes/NodeSequence;

    #@6
    .line 630
    .local v0, "seq":Lorg/apache/xpath/axes/NodeSequence;
    const/4 v1, 0x0

    #@7
    iput v1, v0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@9
    .line 631
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 637
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@f
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-wrap3(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V

    #@12
    .line 640
    :cond_0
    return-object v0
.end method

.method public detach()V
    .locals 1

    #@0
    .prologue
    .line 397
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 398
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@6
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    #@9
    .line 399
    :cond_0
    invoke-super {p0}, Lorg/apache/xpath/objects/XObject;->detach()V

    #@c
    .line 395
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 710
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/objects/XObject;->fixupVariables(Ljava/util/Vector;I)V

    #@3
    .line 708
    return-void
.end method

.method public getAnalysisBits()I
    .locals 1

    #@0
    .prologue
    .line 699
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@6
    instance-of v0, v0, Lorg/apache/xpath/axes/PathComponent;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 700
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@c
    check-cast v0, Lorg/apache/xpath/axes/PathComponent;

    #@e
    invoke-interface {v0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 702
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public getAxis()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 685
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 686
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@7
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getAxis()I

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 689
    :cond_0
    const-string/jumbo v0, "Can not getAxis from a non-iterated node sequence!"

    #@f
    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    #@12
    .line 690
    return v1
.end method

.method public final getContainedIter()Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@2
    return-object v0
.end method

.method public getCurrentNode()I
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 424
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 426
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@9
    add-int/lit8 v0, v2, -0x1

    #@b
    .line 427
    .local v0, "currentIndex":I
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    #@e
    move-result-object v1

    #@f
    .line 428
    .local v1, "vec":Lorg/apache/xml/utils/NodeVector;
    if-ltz v0, :cond_0

    #@11
    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->size()I

    #@14
    move-result v2

    #@15
    if-ge v0, v2, :cond_0

    #@17
    .line 429
    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    #@1a
    move-result v2

    #@1b
    return v2

    #@1c
    .line 431
    :cond_0
    return v3

    #@1d
    .line 434
    .end local v0    # "currentIndex":I
    .end local v1    # "vec":Lorg/apache/xml/utils/NodeVector;
    :cond_1
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@1f
    if-eqz v2, :cond_2

    #@21
    .line 436
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@23
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    #@26
    move-result v2

    #@27
    return v2

    #@28
    .line 439
    :cond_2
    return v3
.end method

.method public getCurrentPos()I
    .locals 1

    #@0
    .prologue
    .line 481
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@2
    return v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .locals 4
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 222
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@4
    move-result-object v0

    #@5
    .line 223
    .local v0, "mgr":Lorg/apache/xml/dtm/DTMManager;
    if-eqz v0, :cond_0

    #@7
    .line 224
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 227
    :cond_0
    const-string/jumbo v1, "Can not get a DTM Unless a DTMManager has been set!"

    #@13
    const/4 v2, 0x0

    #@14
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    #@17
    .line 228
    return-object v3
.end method

.method public getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .locals 1

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    #@2
    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 302
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@6
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getExpandEntityReferences()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 304
    :cond_0
    const/4 v0, 0x1

    #@c
    return v0
.end method

.method protected getIteratorCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .locals 1

    #@0
    .prologue
    .line 950
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@2
    return-object v0
.end method

.method public getLength()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 589
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;->getCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@4
    move-result-object v0

    #@5
    .line 591
    .local v0, "cache":Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    if-eqz v0, :cond_3

    #@7
    .line 594
    invoke-static {v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-wrap0(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 597
    invoke-static {v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-wrap2(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;

    #@10
    move-result-object v1

    #@11
    .line 598
    .local v1, "nv":Lorg/apache/xml/utils/NodeVector;
    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->size()I

    #@14
    move-result v3

    #@15
    return v3

    #@16
    .line 604
    .end local v1    # "nv":Lorg/apache/xml/utils/NodeVector;
    :cond_0
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@18
    instance-of v3, v3, Lorg/apache/xpath/NodeSetDTM;

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 606
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@1e
    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    #@21
    move-result v3

    #@22
    return v3

    #@23
    .line 609
    :cond_1
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    #@25
    if-ne v4, v3, :cond_2

    #@27
    .line 611
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@29
    .line 612
    .local v2, "pos":I
    invoke-virtual {p0, v4}, Lorg/apache/xpath/axes/NodeSequence;->runTo(I)V

    #@2c
    .line 613
    iput v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@2e
    .line 615
    .end local v2    # "pos":I
    :cond_2
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    #@30
    return v3

    #@31
    .line 619
    :cond_3
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    #@33
    if-ne v4, v3, :cond_4

    #@35
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@37
    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    #@3a
    move-result v3

    #@3b
    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    #@3d
    :goto_0
    return v3

    #@3e
    :cond_4
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    #@40
    goto :goto_0
.end method

.method public getRoot()I
    .locals 1

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 246
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@6
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getRoot()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 252
    :cond_0
    const/4 v0, -0x1

    #@c
    return v0
.end method

.method protected getVector()Lorg/apache/xml/utils/NodeVector;
    .locals 2

    #@0
    .prologue
    .line 66
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@6
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-wrap2(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;

    #@9
    move-result-object v0

    #@a
    .line 67
    :goto_0
    return-object v0

    #@b
    .line 66
    :cond_0
    const/4 v0, 0x0

    #@c
    .local v0, "nv":Lorg/apache/xml/utils/NodeVector;
    goto :goto_0
.end method

.method public getWhatToShow()I
    .locals 1

    #@0
    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/16 v0, -0x11

    #@8
    :goto_0
    return v0

    #@9
    .line 293
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@b
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getWhatToShow()I

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method public hasCache()Z
    .locals 2

    #@0
    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    #@3
    move-result-object v0

    #@4
    .line 96
    .local v0, "nv":Lorg/apache/xml/utils/NodeVector;
    if-eqz v0, :cond_0

    #@6
    const/4 v1, 0x1

    #@7
    :goto_0
    return v1

    #@8
    :cond_0
    const/4 v1, 0x0

    #@9
    goto :goto_0
.end method

.method public isDocOrdered()Z
    .locals 1

    #@0
    .prologue
    .line 674
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 675
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@6
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->isDocOrdered()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 677
    :cond_0
    const/4 v0, 0x1

    #@c
    return v0
.end method

.method public isFresh()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 447
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public isMutable()Z
    .locals 1

    #@0
    .prologue
    .line 473
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public item(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setCurrentPos(I)V

    #@3
    .line 530
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    #@6
    move-result v0

    #@7
    .line 531
    .local v0, "n":I
    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@9
    .line 532
    return v0
.end method

.method public nextNode()I
    .locals 6

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 314
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    #@4
    move-result-object v2

    #@5
    .line 315
    .local v2, "vec":Lorg/apache/xml/utils/NodeVector;
    if-eqz v2, :cond_3

    #@7
    .line 318
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@9
    invoke-virtual {v2}, Lorg/apache/xml/utils/NodeVector;->size()I

    #@c
    move-result v4

    #@d
    if-ge v3, v4, :cond_0

    #@f
    .line 321
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@11
    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    #@14
    move-result v1

    #@15
    .line 322
    .local v1, "next":I
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@17
    add-int/lit8 v3, v3, 0x1

    #@19
    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@1b
    .line 323
    return v1

    #@1c
    .line 325
    .end local v1    # "next":I
    :cond_0
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;->cacheComplete()Z

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_1

    #@22
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    #@24
    if-eq v5, v3, :cond_2

    #@26
    .line 327
    :cond_1
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@28
    add-int/lit8 v3, v3, 0x1

    #@2a
    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@2c
    .line 328
    return v5

    #@2d
    .line 325
    :cond_2
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@2f
    if-eqz v3, :cond_1

    #@31
    .line 332
    :cond_3
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@33
    if-nez v3, :cond_4

    #@35
    .line 333
    return v5

    #@36
    .line 335
    :cond_4
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@38
    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@3b
    move-result v1

    #@3c
    .line 336
    .restart local v1    # "next":I
    if-eq v5, v1, :cond_8

    #@3e
    .line 338
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_7

    #@44
    .line 340
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@46
    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->isDocOrdered()Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_6

    #@4c
    .line 342
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3, v1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    #@53
    .line 343
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@55
    add-int/lit8 v3, v3, 0x1

    #@57
    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@59
    .line 366
    :cond_5
    :goto_0
    return v1

    #@5a
    .line 347
    :cond_6
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->addNodeInDocOrder(I)I

    #@5d
    move-result v0

    #@5e
    .line 348
    .local v0, "insertIndex":I
    if-ltz v0, :cond_5

    #@60
    .line 349
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@62
    add-int/lit8 v3, v3, 0x1

    #@64
    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@66
    goto :goto_0

    #@67
    .line 353
    .end local v0    # "insertIndex":I
    :cond_7
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@69
    add-int/lit8 v3, v3, 0x1

    #@6b
    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@6d
    goto :goto_0

    #@6e
    .line 360
    :cond_8
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;->markCacheComplete()V

    #@71
    .line 362
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@73
    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    #@75
    .line 363
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@77
    add-int/lit8 v3, v3, 0x1

    #@79
    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@7b
    goto :goto_0
.end method

.method public previousNode()I
    .locals 2

    #@0
    .prologue
    .line 374
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 376
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@8
    if-gtz v1, :cond_0

    #@a
    .line 377
    const/4 v1, -0x1

    #@b
    return v1

    #@c
    .line 380
    :cond_0
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@12
    .line 381
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@14
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->item(I)I

    #@17
    move-result v1

    #@18
    return v1

    #@19
    .line 386
    :cond_1
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@1b
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->previousNode()I

    #@1e
    move-result v0

    #@1f
    .line 387
    .local v0, "n":I
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@21
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    #@24
    move-result v1

    #@25
    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@27
    .line 388
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@29
    return v1
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 283
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@3
    .line 281
    return-void
.end method

.method public runTo(I)V
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 491
    if-ne v4, p1, :cond_2

    #@3
    .line 493
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@5
    .line 494
    .local v1, "pos":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    #@8
    move-result v0

    #@9
    .local v0, "n":I
    if-ne v4, v0, :cond_0

    #@b
    .line 495
    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@d
    .line 487
    .end local v0    # "n":I
    .end local v1    # "pos":I
    :cond_1
    :goto_0
    return-void

    #@e
    .line 497
    :cond_2
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@10
    if-ne v2, p1, :cond_3

    #@12
    .line 499
    return-void

    #@13
    .line 501
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_4

    #@19
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@1b
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Lorg/apache/xml/utils/NodeVector;->size()I

    #@22
    move-result v3

    #@23
    if-ge v2, v3, :cond_4

    #@25
    .line 503
    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@27
    goto :goto_0

    #@28
    .line 505
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    #@2b
    move-result-object v2

    #@2c
    if-nez v2, :cond_5

    #@2e
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@30
    if-ge p1, v2, :cond_5

    #@32
    .line 507
    :goto_1
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@34
    if-lt v2, p1, :cond_1

    #@36
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->previousNode()I

    #@39
    move-result v0

    #@3a
    .restart local v0    # "n":I
    if-eq v4, v0, :cond_1

    #@3c
    goto :goto_1

    #@3d
    .line 511
    .end local v0    # "n":I
    :cond_5
    :goto_2
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@3f
    if-ge v2, p1, :cond_1

    #@41
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    #@44
    move-result v0

    #@45
    .restart local v0    # "n":I
    if-eq v4, v0, :cond_1

    #@47
    goto :goto_2
.end method

.method public setCurrentPos(I)V
    .locals 0
    .param p1, "i"    # I

    #@0
    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->runTo(I)V

    #@3
    .line 519
    return-void
.end method

.method public setItem(II)V
    .locals 8
    .param p1, "node"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 540
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    #@4
    move-result-object v5

    #@5
    .line 541
    .local v5, "vec":Lorg/apache/xml/utils/NodeVector;
    if-eqz v5, :cond_1

    #@7
    .line 543
    invoke-virtual {v5, p2}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    #@a
    move-result v3

    #@b
    .line 544
    .local v3, "oldNode":I
    if-eq v3, p1, :cond_0

    #@d
    iget-object v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@f
    invoke-static {v6}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-wrap1(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)I

    #@12
    move-result v6

    #@13
    if-le v6, v7, :cond_0

    #@15
    .line 552
    new-instance v1, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@17
    invoke-direct {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;-><init>()V

    #@1a
    .line 555
    .local v1, "newCache":Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    :try_start_0
    invoke-virtual {v5}, Lorg/apache/xml/utils/NodeVector;->clone()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Lorg/apache/xml/utils/NodeVector;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 562
    .local v2, "nv":Lorg/apache/xml/utils/NodeVector;
    invoke-static {v1, v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-wrap5(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V

    #@23
    .line 563
    invoke-static {v1, v7}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-wrap4(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Z)V

    #@26
    .line 564
    iput-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@28
    .line 565
    move-object v5, v2

    #@29
    .line 568
    invoke-super {p0, v2}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    #@2c
    .line 577
    .end local v1    # "newCache":Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .end local v2    # "nv":Lorg/apache/xml/utils/NodeVector;
    :cond_0
    invoke-virtual {v5, p1, p2}, Lorg/apache/xml/utils/NodeVector;->setElementAt(II)V

    #@2f
    .line 578
    invoke-virtual {v5}, Lorg/apache/xml/utils/NodeVector;->size()I

    #@32
    move-result v6

    #@33
    iput v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    #@35
    .line 538
    .end local v3    # "oldNode":I
    :goto_0
    return-void

    #@36
    .line 556
    .restart local v1    # "newCache":Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .restart local v3    # "oldNode":I
    :catch_0
    move-exception v0

    #@37
    .line 558
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    #@3a
    .line 559
    new-instance v4, Ljava/lang/RuntimeException;

    #@3c
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@43
    .line 560
    .local v4, "rte":Ljava/lang/RuntimeException;
    throw v4

    #@44
    .line 581
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    .end local v1    # "newCache":Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .end local v3    # "oldNode":I
    .end local v4    # "rte":Ljava/lang/RuntimeException;
    :cond_1
    iget-object v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@46
    invoke-interface {v6, p1, p2}, Lorg/apache/xml/dtm/DTMIterator;->setItem(II)V

    #@49
    goto :goto_0
.end method

.method public final setIter(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 0
    .param p1, "iter"    # Lorg/apache/xml/dtm/DTMIterator;

    #@0
    .prologue
    .line 137
    iput-object p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@2
    .line 135
    return-void
.end method

.method protected setObject(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 778
    instance-of v2, p1, Lorg/apache/xml/utils/NodeVector;

    #@2
    if-eqz v2, :cond_2

    #@4
    .line 781
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    #@7
    move-object v1, p1

    #@8
    .line 784
    check-cast v1, Lorg/apache/xml/utils/NodeVector;

    #@a
    .line 785
    .local v1, "v":Lorg/apache/xml/utils/NodeVector;
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 786
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@10
    invoke-static {v2, v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-wrap5(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V

    #@13
    .line 777
    .end local v1    # "v":Lorg/apache/xml/utils/NodeVector;
    :cond_0
    :goto_0
    return-void

    #@14
    .line 787
    .restart local v1    # "v":Lorg/apache/xml/utils/NodeVector;
    :cond_1
    if-eqz v1, :cond_0

    #@16
    .line 788
    new-instance v2, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@18
    invoke-direct {v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;-><init>()V

    #@1b
    iput-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@1d
    .line 789
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@1f
    invoke-static {v2, v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-wrap5(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V

    #@22
    goto :goto_0

    #@23
    .line 791
    .end local v1    # "v":Lorg/apache/xml/utils/NodeVector;
    :cond_2
    instance-of v2, p1, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@25
    if-eqz v2, :cond_3

    #@27
    move-object v0, p1

    #@28
    .line 792
    check-cast v0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@2a
    .line 793
    .local v0, "cache":Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    iput-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@2c
    .line 794
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@2e
    invoke-static {v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-wrap3(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V

    #@31
    .line 797
    invoke-static {v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-wrap2(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;

    #@34
    move-result-object v2

    #@35
    invoke-super {p0, v2}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    #@38
    goto :goto_0

    #@39
    .line 799
    .end local v0    # "cache":Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    :cond_3
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    #@3c
    goto :goto_0
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 3
    .param p1, "nodeHandle"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 261
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@3
    if-eqz v1, :cond_2

    #@5
    move-object v0, p2

    #@6
    .line 263
    check-cast v0, Lorg/apache/xpath/XPathContext;

    #@8
    .line 264
    .local v0, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    #@e
    .line 265
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@10
    invoke-interface {v1, p1, p2}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    #@13
    .line 266
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@15
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->isDocOrdered()Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 268
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_0

    #@21
    .line 269
    const/4 v1, 0x1

    #@22
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    #@25
    .line 270
    :cond_0
    const/4 v1, -0x1

    #@26
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->runTo(I)V

    #@29
    .line 271
    iput v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    #@2b
    .line 259
    .end local v0    # "xctxt":Lorg/apache/xpath/XPathContext;
    :cond_1
    :goto_0
    return-void

    #@2c
    .line 275
    :cond_2
    const-string/jumbo v1, "Can not setRoot on a non-iterated NodeSequence!"

    #@2f
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    #@32
    goto :goto_0
.end method

.method public setShouldCacheNodes(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 455
    if-eqz p1, :cond_1

    #@2
    .line 457
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 459
    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    #@a
    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    #@d
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    #@10
    .line 453
    :cond_0
    :goto_0
    return-void

    #@11
    .line 465
    :cond_1
    const/4 v0, 0x0

    #@12
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    #@15
    goto :goto_0
.end method
