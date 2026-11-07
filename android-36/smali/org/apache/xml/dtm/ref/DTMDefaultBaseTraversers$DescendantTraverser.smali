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
.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 581
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    return-void
.end method

.method synthetic constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method protected greylist axisHasBeenProcessed(I)Z
    .registers 2

    .line 606
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    const/4 p1, -0x2

    if-eq p0, p1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public greylist first(II)I
    .registers 5

    .line 682
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->isIndexed(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 684
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getSubtreeRoot(I)I

    move-result p1

    .line 685
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getFirstPotential(I)I

    move-result v0

    .line 687
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->getNextIndexed(III)I

    move-result p0

    invoke-virtual {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    .line 690
    :cond_19
    invoke-virtual {p0, p1, p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->next(III)I

    move-result p0

    return p0
.end method

.method protected greylist getFirstPotential(I)I
    .registers 2

    .line 0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected greylist getSubtreeRoot(I)I
    .registers 2

    .line 619
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p0

    return p0
.end method

.method protected greylist isAfterAxis(II)Z
    .registers 4

    :cond_0
    if-ne p2, p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 658
    :cond_4
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p2

    if-ge p2, p1, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method protected greylist isDescendant(II)Z
    .registers 3

    .line 636
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result p0

    if-lt p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public greylist next(II)I
    .registers 5

    .line 704
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getSubtreeRoot(I)I

    move-result p1

    .line 706
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p2

    :cond_a
    :goto_a
    add-int/lit8 p2, p2, 0x1

    .line 708
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    .line 710
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->isDescendant(II)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 p0, -0x1

    return p0

    :cond_1a
    const/4 v1, 0x2

    if-eq v1, v0, :cond_a

    const/16 v1, 0xd

    if-ne v1, v0, :cond_22

    goto :goto_a

    .line 716
    :cond_22
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public greylist next(III)I
    .registers 6

    .line 733
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getSubtreeRoot(I)I

    move-result p1

    .line 735
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 737
    invoke-virtual {p0, p3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->isIndexed(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 739
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->getNextIndexed(III)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    .line 744
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v0

    .line 746
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->isDescendant(II)Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 p0, -0x1

    return p0

    :cond_2b
    if-eq v0, p3, :cond_30

    add-int/lit8 p2, p2, 0x1

    goto :goto_1d

    .line 752
    :cond_30
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method
