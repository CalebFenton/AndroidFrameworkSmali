.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    .line 330
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    #@3
    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 1
    .param p1, "context"    # I

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getFirstChild(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public first(II)I
    .locals 3
    .param p1, "context"    # I
    .param p2, "expandedTypeID"    # I

    #@0
    .prologue
    .line 431
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@5
    move-result v1

    #@6
    .line 433
    .local v1, "identity":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@8
    invoke-virtual {v2, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_firstch(I)I

    #@b
    move-result v2

    #@c
    invoke-virtual {p0, v1, v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->getNextIndexed(III)I

    #@f
    move-result v0

    #@10
    .line 436
    .local v0, "firstMatch":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@12
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@15
    move-result v2

    #@16
    return v2
.end method

.method protected getNextIndexed(III)I
    .locals 7
    .param p1, "axisRoot"    # I
    .param p2, "nextPotential"    # I
    .param p3, "expandedTypeID"    # I

    #@0
    .prologue
    const/4 v6, -0x2

    #@1
    const/4 v5, -0x1

    #@2
    .line 349
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@4
    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@6
    invoke-virtual {v4, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    #@9
    move-result v2

    #@a
    .line 350
    .local v2, "nsIndex":I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@c
    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@e
    invoke-virtual {v4, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    #@11
    move-result v0

    #@12
    .line 354
    .local v0, "lnIndex":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@14
    invoke-virtual {v4, v2, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->findElementFromIndex(III)I

    #@17
    move-result v1

    #@18
    .line 356
    .local v1, "nextID":I
    if-eq v6, v1, :cond_5

    #@1a
    .line 358
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@1c
    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1e
    invoke-virtual {v4, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@21
    move-result v3

    #@22
    .line 361
    .local v3, "parentID":I
    if-ne v3, p1, :cond_1

    #@24
    .line 362
    return v1

    #@25
    .line 366
    :cond_1
    if-ge v3, p1, :cond_3

    #@27
    .line 367
    return v5

    #@28
    .line 380
    :cond_2
    if-le v3, p1, :cond_4

    #@2a
    .line 376
    :cond_3
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2c
    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2e
    invoke-virtual {v4, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@31
    move-result v3

    #@32
    .line 377
    if-ge v3, p1, :cond_2

    #@34
    .line 378
    return v5

    #@35
    .line 383
    :cond_4
    add-int/lit8 p2, v1, 0x1

    #@37
    .line 384
    goto :goto_0

    #@38
    .line 387
    .end local v3    # "parentID":I
    :cond_5
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@3a
    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->nextNode()Z

    #@3d
    .line 389
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@3f
    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@41
    invoke-virtual {v4, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@44
    move-result v4

    #@45
    if-eq v4, v6, :cond_0

    #@47
    .line 393
    return v5
.end method

.method public next(II)I
    .locals 1
    .param p1, "context"    # I
    .param p2, "current"    # I

    #@0
    .prologue
    .line 462
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNextSibling(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public next(III)I
    .locals 3
    .param p1, "context"    # I
    .param p2, "current"    # I
    .param p3, "expandedTypeID"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 478
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@3
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@5
    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_nextsib(I)I

    #@c
    move-result p2

    #@d
    :goto_0
    if-eq v2, p2, :cond_1

    #@f
    .line 482
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@11
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@13
    invoke-virtual {v0, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@16
    move-result v0

    #@17
    if-ne v0, p3, :cond_0

    #@19
    .line 483
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@1b
    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@1e
    move-result v0

    #@1f
    return v0

    #@20
    .line 480
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@22
    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_nextsib(I)I

    #@25
    move-result p2

    #@26
    goto :goto_0

    #@27
    .line 486
    :cond_1
    return v2
.end method
