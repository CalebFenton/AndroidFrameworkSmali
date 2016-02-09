.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendantTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    .line 581
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;)V

    #@6
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    #@3
    return-void
.end method


# virtual methods
.method protected axisHasBeenProcessed(I)Z
    .locals 2
    .param p1, "axisRoot"    # I

    #@0
    .prologue
    .line 606
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@4
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@7
    move-result v0

    #@8
    const/4 v1, -0x2

    #@9
    if-eq v0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public first(II)I
    .locals 4
    .param p1, "context"    # I
    .param p2, "expandedTypeID"    # I

    #@0
    .prologue
    .line 682
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->isIndexed(I)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 684
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getSubtreeRoot(I)I

    #@9
    move-result v1

    #@a
    .line 685
    .local v1, "identity":I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getFirstPotential(I)I

    #@d
    move-result v0

    #@e
    .line 687
    .local v0, "firstPotential":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@10
    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getNextIndexed(III)I

    #@13
    move-result v3

    #@14
    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@17
    move-result v2

    #@18
    return v2

    #@19
    .line 690
    .end local v0    # "firstPotential":I
    .end local v1    # "identity":I
    :cond_0
    invoke-virtual {p0, p1, p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->next(III)I

    #@1c
    move-result v2

    #@1d
    return v2
.end method

.method protected getFirstPotential(I)I
    .locals 1
    .param p1, "identity"    # I

    #@0
    .prologue
    .line 593
    add-int/lit8 v0, p1, 0x1

    #@2
    return v0
.end method

.method protected getSubtreeRoot(I)I
    .locals 1
    .param p1, "handle"    # I

    #@0
    .prologue
    .line 619
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isAfterAxis(II)Z
    .locals 1
    .param p1, "axisRoot"    # I
    .param p2, "identity"    # I

    #@0
    .prologue
    .line 656
    :cond_0
    if-ne p2, p1, :cond_1

    #@2
    .line 657
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 658
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@6
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@8
    invoke-virtual {v0, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@b
    move-result p2

    #@c
    .line 660
    if-ge p2, p1, :cond_0

    #@e
    .line 662
    const/4 v0, 0x1

    #@f
    return v0
.end method

.method protected isDescendant(II)Z
    .locals 1
    .param p1, "subtreeRootIdentity"    # I
    .param p2, "identity"    # I

    #@0
    .prologue
    .line 636
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_parent(I)I

    #@5
    move-result v0

    #@6
    if-lt v0, p1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public next(II)I
    .locals 3
    .param p1, "context"    # I
    .param p2, "current"    # I

    #@0
    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getSubtreeRoot(I)I

    #@3
    move-result v0

    #@4
    .line 706
    .local v0, "subtreeRootIdent":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@6
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@9
    move-result v2

    #@a
    add-int/lit8 p2, v2, 0x1

    #@c
    .line 708
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@e
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_type(I)S

    #@11
    move-result v1

    #@12
    .line 710
    .local v1, "type":I
    invoke-virtual {p0, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->isDescendant(II)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    .line 711
    const/4 v2, -0x1

    #@19
    return v2

    #@1a
    .line 713
    :cond_0
    const/4 v2, 0x2

    #@1b
    if-eq v2, v1, :cond_1

    #@1d
    const/16 v2, 0xd

    #@1f
    if-ne v2, v1, :cond_2

    #@21
    .line 706
    :cond_1
    add-int/lit8 p2, p2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 716
    :cond_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@26
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@29
    move-result v2

    #@2a
    return v2
.end method

.method public next(III)I
    .locals 4
    .param p1, "context"    # I
    .param p2, "current"    # I
    .param p3, "expandedTypeID"    # I

    #@0
    .prologue
    .line 733
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getSubtreeRoot(I)I

    #@3
    move-result v1

    #@4
    .line 735
    .local v1, "subtreeRootIdent":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@6
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@9
    move-result v2

    #@a
    add-int/lit8 p2, v2, 0x1

    #@c
    .line 737
    invoke-virtual {p0, p3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->isIndexed(I)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 739
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@14
    invoke-virtual {p0, v1, p2, p3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getNextIndexed(III)I

    #@17
    move-result v3

    #@18
    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@1b
    move-result v2

    #@1c
    return v2

    #@1d
    .line 749
    .local v0, "exptype":I
    :cond_0
    if-eq v0, p3, :cond_2

    #@1f
    .line 742
    add-int/lit8 p2, p2, 0x1

    #@21
    .line 744
    .end local v0    # "exptype":I
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@23
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_exptype(I)I

    #@26
    move-result v0

    #@27
    .line 746
    .restart local v0    # "exptype":I
    invoke-virtual {p0, v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->isDescendant(II)Z

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_0

    #@2d
    .line 747
    const/4 v2, -0x1

    #@2e
    return v2

    #@2f
    .line 752
    :cond_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@31
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@34
    move-result v2

    #@35
    return v2
.end method
