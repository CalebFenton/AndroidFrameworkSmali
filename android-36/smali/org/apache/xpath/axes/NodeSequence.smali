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
.field static final whitelist serialVersionUID:J = 0x35a7b8becbfe0b34L


# instance fields
.field private greylist m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

.field protected greylist m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

.field protected greylist m_iter:Lorg/apache/xml/dtm/DTMIterator;

.field protected greylist m_last:I

.field protected greylist m_next:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 212
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/Object;)V
    .registers 4

    .line 179
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 180
    instance-of v0, p1, Lorg/apache/xml/utils/NodeVector;

    if-eqz v0, :cond_13

    .line 181
    move-object v1, p1

    check-cast v1, Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    :cond_13
    if-eqz p1, :cond_29

    .line 185
    const-string v1, "Must have a NodeVector as the object for NodeSequence!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    .line 187
    instance-of v0, p1, Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_29

    .line 189
    check-cast p1, Lorg/apache/xml/dtm/DTMIterator;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 190
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result p1

    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    :cond_29
    return-void
.end method

.method private constructor greylist <init>(Lorg/apache/xml/dtm/DTMIterator;ILorg/apache/xpath/XPathContext;Z)V
    .registers 6

    .line 166
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 167
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 168
    invoke-virtual {p0, p2, p3}, Lorg/apache/xpath/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    .line 169
    invoke-virtual {p0, p4}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    return-void
.end method

.method private constructor greylist <init>(Lorg/apache/xml/dtm/DTMManager;)V
    .registers 3

    .line 202
    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 203
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 204
    iput-object p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    return-void
.end method

.method private greylist cacheComplete()Z
    .registers 1

    .line 106
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz p0, :cond_9

    .line 107
    invoke-static {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-$$Nest$misComplete(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private greylist getCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .registers 1

    .line 77
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    return-object p0
.end method

.method private greylist markCacheComplete()V
    .registers 2

    .line 119
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 121
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-$$Nest$msetCacheComplete(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Z)V

    :cond_c
    return-void
.end method


# virtual methods
.method protected greylist SetVector(Lorg/apache/xml/utils/NodeVector;)V
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method protected greylist addNodeInDocOrder(I)I
    .registers 7

    .line 723
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    const-string v1, "addNodeInDocOrder must be done on a mutable sequence!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v0

    .line 732
    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_13
    const/4 v2, -0x2

    if-ltz v1, :cond_2e

    .line 736
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v3

    if-ne v3, p1, :cond_1e

    move v1, v2

    goto :goto_2e

    .line 745
    :cond_1e
    iget-object v4, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v4, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v4

    .line 746
    invoke-interface {v4, p1, v3}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_2e

    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_2e
    :goto_2e
    if-eq v1, v2, :cond_36

    add-int/lit8 v1, v1, 0x1

    .line 756
    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/utils/NodeVector;->insertElementAt(II)V

    return v1

    :cond_36
    const/4 p0, -0x1

    return p0
.end method

.method public greylist allowDetachToRelease(Z)V
    .registers 3

    if-nez p1, :cond_c

    .line 409
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 411
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    .line 414
    :cond_c
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_13

    .line 415
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTMIterator;->allowDetachToRelease(Z)V

    .line 416
    :cond_13
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 654
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/NodeSequence;

    .line 655
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/DTMIterator;

    iput-object v1, v0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    .line 656
    :cond_12
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz p0, :cond_19

    .line 662
    invoke-static {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-$$Nest$mincreaseUseCount(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V

    :cond_19
    return-object v0
.end method

.method public greylist cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 629
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/NodeSequence;

    const/4 v1, 0x0

    .line 630
    iput v1, v0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 631
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz p0, :cond_10

    .line 637
    invoke-static {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-$$Nest$mincreaseUseCount(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V

    :cond_10
    return-object v0
.end method

.method public greylist detach()V
    .registers 2

    .line 397
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_7

    .line 398
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 399
    :cond_7
    invoke-super {p0}, Lorg/apache/xpath/objects/XObject;->detach()V

    return-void
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 710
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/objects/XObject;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public greylist getAnalysisBits()I
    .registers 2

    .line 699
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz p0, :cond_f

    instance-of v0, p0, Lorg/apache/xpath/axes/PathComponent;

    if-eqz v0, :cond_f

    .line 700
    check-cast p0, Lorg/apache/xpath/axes/PathComponent;

    invoke-interface {p0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getAxis()I
    .registers 3

    .line 685
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_9

    .line 686
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getAxis()I

    move-result p0

    return p0

    .line 689
    :cond_9
    const-string v0, "Can not getAxis from a non-iterated node sequence!"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    return v1
.end method

.method public final greylist getContainedIter()Lorg/apache/xml/dtm/DTMIterator;
    .registers 1

    .line 146
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    return-object p0
.end method

.method public greylist getCurrentNode()I
    .registers 4

    .line 424
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1d

    .line 426
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v0, v0, -0x1

    .line 427
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object p0

    if-ltz v0, :cond_1c

    .line 428
    invoke-virtual {p0}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 429
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result p0

    return p0

    :cond_1c
    return v1

    .line 434
    :cond_1d
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz p0, :cond_26

    .line 436
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    move-result p0

    return p0

    :cond_26
    return v1
.end method

.method public greylist getCurrentPos()I
    .registers 1

    .line 481
    iget p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return p0
.end method

.method public greylist getDTM(I)Lorg/apache/xml/dtm/DTM;
    .registers 3

    .line 222
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 224
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p1, 0x0

    .line 227
    const-string v0, "Can not get a DTM Unless a DTMManager has been set!"

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .registers 1

    .line 237
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    return-object p0
.end method

.method public greylist getExpandEntityReferences()Z
    .registers 1

    .line 301
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz p0, :cond_9

    .line 302
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->getExpandEntityReferences()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method protected greylist getIteratorCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .registers 1

    .line 950
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    return-object p0
.end method

.method public greylist getLength()I
    .registers 4

    .line 589
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;->getCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2f

    .line 594
    invoke-static {v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-$$Nest$misComplete(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 597
    invoke-static {v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-$$Nest$mgetVector(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;

    move-result-object p0

    .line 598
    invoke-virtual {p0}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result p0

    return p0

    .line 604
    :cond_16
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    instance-of v2, v0, Lorg/apache/xpath/NodeSetDTM;

    if-eqz v2, :cond_21

    .line 606
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result p0

    return p0

    .line 609
    :cond_21
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    if-ne v1, v0, :cond_2c

    .line 611
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 612
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->runTo(I)V

    .line 613
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 615
    :cond_2c
    iget p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    return p0

    .line 619
    :cond_2f
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    if-ne v1, v0, :cond_3b

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    :cond_3b
    return v0
.end method

.method public greylist getRoot()I
    .registers 1

    .line 245
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz p0, :cond_9

    .line 246
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->getRoot()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method protected greylist getVector()Lorg/apache/xml/utils/NodeVector;
    .registers 1

    .line 66
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-$$Nest$mgetVector(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getWhatToShow()I
    .registers 2

    .line 292
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x11

    return p0

    .line 293
    :cond_9
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->getWhatToShow()I

    move-result p0

    return p0
.end method

.method public greylist hasCache()Z
    .registers 1

    .line 95
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isDocOrdered()Z
    .registers 1

    .line 674
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz p0, :cond_9

    .line 675
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->isDocOrdered()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isFresh()Z
    .registers 1

    .line 447
    iget p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isMutable()Z
    .registers 1

    .line 473
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result p0

    return p0
.end method

.method public greylist item(I)I
    .registers 3

    .line 529
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setCurrentPos(I)V

    .line 530
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v0

    .line 531
    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return v0
.end method

.method public greylist nextNode()I
    .registers 5

    .line 314
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_31

    .line 318
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 321
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v0

    .line 322
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return v0

    .line 325
    :cond_1c
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;->cacheComplete()Z

    move-result v0

    if-nez v0, :cond_2a

    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    if-ne v1, v0, :cond_2a

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-nez v0, :cond_31

    .line 327
    :cond_2a
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return v1

    .line 332
    :cond_31
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-nez v0, :cond_36

    return v1

    .line 335
    :cond_36
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    if-eq v1, v0, :cond_6c

    .line 338
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 340
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->isDocOrdered()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 342
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    .line 343
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return v0

    .line 347
    :cond_58
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->addNodeInDocOrder(I)I

    move-result v1

    if-ltz v1, :cond_64

    .line 349
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    :cond_64
    return v0

    .line 353
    :cond_65
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return v0

    .line 360
    :cond_6c
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;->markCacheComplete()V

    .line 362
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    add-int/lit8 v1, v1, 0x1

    .line 363
    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return v0
.end method

.method public greylist previousNode()I
    .registers 2

    .line 374
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 376
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-gtz v0, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    add-int/lit8 v0, v0, -0x1

    .line 380
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 381
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->item(I)I

    move-result p0

    return p0

    .line 386
    :cond_15
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->previousNode()I

    .line 387
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return v0
.end method

.method public greylist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 283
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return-void
.end method

.method public greylist runTo(I)V
    .registers 5

    const/4 v0, -0x1

    if-ne v0, p1, :cond_f

    .line 493
    iget p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 494
    :goto_5
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v1

    if-eq v0, v1, :cond_c

    goto :goto_5

    .line 495
    :cond_c
    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return-void

    .line 497
    :cond_f
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-ne v1, p1, :cond_14

    goto :goto_49

    .line 501
    :cond_14
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_29

    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 503
    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return-void

    .line 505
    :cond_29
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v1

    if-nez v1, :cond_3e

    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-ge p1, v1, :cond_3e

    .line 507
    :goto_33
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-lt v1, p1, :cond_49

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->previousNode()I

    move-result v1

    if-eq v0, v1, :cond_49

    goto :goto_33

    .line 511
    :cond_3e
    :goto_3e
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-ge v1, p1, :cond_49

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v1

    if-eq v0, v1, :cond_49

    goto :goto_3e

    :cond_49
    :goto_49
    return-void
.end method

.method public greylist setCurrentPos(I)V
    .registers 2

    .line 521
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->runTo(I)V

    return-void
.end method

.method public greylist setItem(II)V
    .registers 6

    .line 540
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 543
    invoke-virtual {v0, p2}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v1

    if-eq v1, p1, :cond_3a

    .line 544
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-$$Nest$museCount(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3a

    .line 552
    new-instance v1, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    invoke-direct {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;-><init>()V

    .line 555
    :try_start_1a
    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/NodeVector;
    :try_end_20
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1a .. :try_end_20} :catch_2c

    .line 562
    invoke-static {v1, v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-$$Nest$msetVector(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V

    .line 563
    invoke-static {v1, v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-$$Nest$msetCacheComplete(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Z)V

    .line 564
    iput-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    .line 568
    invoke-super {p0, v0}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    goto :goto_3a

    :catch_2c
    move-exception p0

    .line 558
    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 559
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 560
    throw p1

    .line 577
    :cond_3a
    :goto_3a
    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->setElementAt(II)V

    .line 578
    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result p1

    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    return-void

    .line 581
    :cond_44
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {p0, p1, p2}, Lorg/apache/xml/dtm/DTMIterator;->setItem(II)V

    return-void
.end method

.method public final greylist setIter(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    return-void
.end method

.method protected greylist setObject(Ljava/lang/Object;)V
    .registers 3

    .line 778
    instance-of v0, p1, Lorg/apache/xml/utils/NodeVector;

    if-eqz v0, :cond_1e

    .line 781
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    .line 784
    check-cast p1, Lorg/apache/xml/utils/NodeVector;

    .line 785
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v0, :cond_11

    .line 786
    invoke-static {v0, p1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-$$Nest$msetVector(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V

    return-void

    :cond_11
    if-eqz p1, :cond_1d

    .line 788
    new-instance v0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    invoke-direct {v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    .line 789
    invoke-static {v0, p1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-$$Nest$msetVector(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V

    :cond_1d
    return-void

    .line 791
    :cond_1e
    instance-of v0, p1, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v0, :cond_31

    .line 792
    check-cast p1, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    .line 793
    iput-object p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    .line 794
    invoke-static {p1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-$$Nest$mincreaseUseCount(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V

    .line 797
    invoke-static {p1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->-$$Nest$mgetVector(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    return-void

    .line 799
    :cond_31
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist setRoot(ILjava/lang/Object;)V
    .registers 5

    .line 261
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 263
    move-object v0, p2

    check-cast v0, Lorg/apache/xpath/XPathContext;

    .line 264
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 265
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 266
    iget-object p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->isDocOrdered()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 268
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result p1

    if-nez p1, :cond_25

    const/4 p1, 0x1

    .line 269
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    :cond_25
    const/4 p1, -0x1

    .line 270
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->runTo(I)V

    .line 271
    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    :cond_2b
    return-void

    .line 275
    :cond_2c
    const-string p1, "Can not setRoot on a non-iterated NodeSequence!"

    invoke-virtual {p0, v1, p1}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public greylist setShouldCacheNodes(Z)V
    .registers 2

    if-eqz p1, :cond_11

    .line 457
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result p1

    if-nez p1, :cond_10

    .line 459
    new-instance p1, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {p1}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    :cond_10
    return-void

    :cond_11
    const/4 p1, 0x0

    .line 465
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    return-void
.end method
