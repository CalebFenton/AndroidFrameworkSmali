.class Landroid/widget/ExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "ExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListConnector$MyDataSetObserver;,
        Landroid/widget/ExpandableListConnector$GroupMetadata;,
        Landroid/widget/ExpandableListConnector$PositionMetadata;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private mMaxExpGroupCount:I

.field private mTotalExpChildrenCount:I


# direct methods
.method static synthetic -wrap0(Landroid/widget/ExpandableListConnector;ZZ)V
    .locals 0
    .param p1, "forceChildrenCountRefresh"    # Z
    .param p2, "syncGroupPositions"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    .line 67
    const v0, 0x7fffffff

    #@6
    iput v0, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    #@8
    .line 70
    new-instance v0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;

    #@a
    invoke-direct {v0, p0}, Landroid/widget/ExpandableListConnector$MyDataSetObserver;-><init>(Landroid/widget/ExpandableListConnector;)V

    #@d
    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@f
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    #@16
    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    #@19
    .line 75
    return-void
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 13
    .param p1, "forceChildrenCountRefresh"    # Z
    .param p2, "syncGroupPositions"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v12, -0x1

    #@2
    .line 520
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    #@4
    .line 521
    .local v2, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    .line 522
    .local v3, "egmlSize":I
    const/4 v0, 0x0

    #@9
    .line 525
    .local v0, "curFlPos":I
    iput v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    #@b
    .line 527
    if-eqz p2, :cond_3

    #@d
    .line 529
    const/4 v8, 0x0

    #@e
    .line 531
    .local v8, "positionsChanged":Z
    add-int/lit8 v5, v3, -0x1

    #@10
    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    #@12
    .line 532
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@18
    .line 533
    .local v1, "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-wide v10, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gId:J

    #@1a
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@1c
    invoke-virtual {p0, v10, v11, v9}, Landroid/widget/ExpandableListConnector;->findGroupPosition(JI)I

    #@1f
    move-result v7

    #@20
    .line 534
    .local v7, "newGPos":I
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@22
    if-eq v7, v9, :cond_1

    #@24
    .line 535
    if-ne v7, v12, :cond_0

    #@26
    .line 537
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@29
    .line 538
    add-int/lit8 v3, v3, -0x1

    #@2b
    .line 541
    :cond_0
    iput v7, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@2d
    .line 542
    if-nez v8, :cond_1

    #@2f
    const/4 v8, 0x1

    #@30
    .line 531
    :cond_1
    add-int/lit8 v5, v5, -0x1

    #@32
    goto :goto_0

    #@33
    .line 546
    .end local v1    # "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v7    # "newGPos":I
    :cond_2
    if-eqz v8, :cond_3

    #@35
    .line 548
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@38
    .line 553
    .end local v5    # "i":I
    .end local v8    # "positionsChanged":Z
    :cond_3
    const/4 v6, 0x0

    #@39
    .line 554
    .local v6, "lastGPos":I
    const/4 v5, 0x0

    #@3a
    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v3, :cond_6

    #@3c
    .line 556
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v1

    #@40
    check-cast v1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@42
    .line 562
    .restart local v1    # "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    #@44
    if-eq v9, v12, :cond_4

    #@46
    if-eqz p1, :cond_5

    #@48
    .line 563
    :cond_4
    iget-object v9, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@4a
    iget v10, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@4c
    invoke-interface {v9, v10}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    #@4f
    move-result v4

    #@50
    .line 572
    .local v4, "gChildrenCount":I
    :goto_2
    iget v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    #@52
    add-int/2addr v9, v4

    #@53
    iput v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    #@55
    .line 579
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@57
    sub-int/2addr v9, v6

    #@58
    add-int/2addr v0, v9

    #@59
    .line 580
    iget v6, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@5b
    .line 583
    iput v0, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    #@5d
    .line 584
    add-int/2addr v0, v4

    #@5e
    .line 585
    iput v0, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    #@60
    .line 554
    add-int/lit8 v5, v5, 0x1

    #@62
    goto :goto_1

    #@63
    .line 568
    .end local v4    # "gChildrenCount":I
    :cond_5
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    #@65
    iget v10, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    #@67
    sub-int v4, v9, v10

    #@69
    .restart local v4    # "gChildrenCount":I
    goto :goto_2

    #@6a
    .line 519
    .end local v1    # "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v4    # "gChildrenCount":I
    :cond_6
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@2
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method collapseGroup(I)Z
    .locals 5
    .param p1, "groupPos"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 596
    const/4 v3, 0x2

    #@2
    .line 595
    invoke-static {v3, p1, v4, v4}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    #@5
    move-result-object v0

    #@6
    .line 597
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@9
    move-result-object v1

    #@a
    .line 598
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    #@d
    .line 599
    if-nez v1, :cond_0

    #@f
    const/4 v3, 0x0

    #@10
    return v3

    #@11
    .line 601
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    #@14
    move-result v2

    #@15
    .line 602
    .local v2, "retValue":Z
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@18
    .line 603
    return v2
.end method

.method collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .locals 3
    .param p1, "posMetadata"    # Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 616
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@3
    if-nez v0, :cond_0

    #@5
    return v2

    #@6
    .line 619
    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    #@8
    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@d
    .line 622
    invoke-direct {p0, v2, v2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    #@10
    .line 625
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    #@13
    .line 628
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@15
    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@17
    iget v1, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@19
    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    #@1c
    .line 630
    const/4 v0, 0x1

    #@1d
    return v0
.end method

.method expandGroup(I)Z
    .locals 5
    .param p1, "groupPos"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 639
    const/4 v3, 0x2

    #@2
    .line 638
    invoke-static {v3, p1, v4, v4}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    #@5
    move-result-object v0

    #@6
    .line 640
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@9
    move-result-object v1

    #@a
    .line 641
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    #@d
    .line 642
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    #@10
    move-result v2

    #@11
    .line 643
    .local v2, "retValue":Z
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@14
    .line 644
    return v2
.end method

.method expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .locals 8
    .param p1, "posMetadata"    # Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 652
    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@4
    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@6
    if-gez v3, :cond_0

    #@8
    .line 654
    new-instance v3, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v4, "Need group"

    #@d
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 657
    :cond_0
    iget v3, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    #@13
    if-nez v3, :cond_1

    #@15
    return v6

    #@16
    .line 660
    :cond_1
    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@18
    if-eqz v3, :cond_2

    #@1a
    return v6

    #@1b
    .line 663
    :cond_2
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v3

    #@21
    iget v4, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    #@23
    if-lt v3, v4, :cond_3

    #@25
    .line 667
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@2d
    .line 669
    .local v0, "collapsedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@32
    move-result v1

    #@33
    .line 671
    .local v1, "collapsedIndex":I
    iget v3, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@35
    invoke-virtual {p0, v3}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    #@38
    .line 674
    iget v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    #@3a
    if-le v3, v1, :cond_3

    #@3c
    .line 675
    iget v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    #@3e
    add-int/lit8 v3, v3, -0x1

    #@40
    iput v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    #@42
    .line 682
    .end local v0    # "collapsedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v1    # "collapsedIndex":I
    :cond_3
    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@44
    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@46
    .line 683
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@48
    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@4a
    iget v5, v5, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@4c
    invoke-interface {v4, v5}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    #@4f
    move-result-wide v4

    #@50
    .line 679
    invoke-static {v7, v7, v3, v4, v5}, Landroid/widget/ExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@53
    move-result-object v2

    #@54
    .line 685
    .local v2, "expandedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    #@56
    iget v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    #@58
    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@5b
    .line 688
    invoke-direct {p0, v6, v6}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    #@5e
    .line 691
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    #@61
    .line 694
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@63
    iget v4, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@65
    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    #@68
    .line 696
    const/4 v3, 0x1

    #@69
    return v3
.end method

.method findGroupPosition(JI)I
    .locals 19
    .param p1, "groupIdToMatch"    # J
    .param p3, "seedGroupPosition"    # I

    #@0
    .prologue
    .line 779
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@4
    invoke-interface {v11}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    #@7
    move-result v3

    #@8
    .line 781
    .local v3, "count":I
    if-nez v3, :cond_0

    #@a
    .line 782
    const/4 v11, -0x1

    #@b
    return v11

    #@c
    .line 786
    :cond_0
    const-wide/high16 v14, -0x8000000000000000L

    #@e
    cmp-long v11, p1, v14

    #@10
    if-nez v11, :cond_1

    #@12
    .line 787
    const/4 v11, -0x1

    #@13
    return v11

    #@14
    .line 791
    :cond_1
    const/4 v11, 0x0

    #@15
    move/from16 v0, p3

    #@17
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    #@1a
    move-result p3

    #@1b
    .line 792
    add-int/lit8 v11, v3, -0x1

    #@1d
    move/from16 v0, p3

    #@1f
    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    #@22
    move-result p3

    #@23
    .line 794
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@26
    move-result-wide v14

    #@27
    const-wide/16 v16, 0x64

    #@29
    add-long v4, v14, v16

    #@2b
    .line 799
    .local v4, "endTime":J
    move/from16 v6, p3

    #@2d
    .line 802
    .local v6, "first":I
    move/from16 v9, p3

    #@2f
    .line 805
    .local v9, "last":I
    const/4 v10, 0x0

    #@30
    .line 815
    .local v10, "next":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    #@33
    move-result-object v2

    #@34
    .line 816
    .local v2, "adapter":Landroid/widget/ExpandableListAdapter;
    if-nez v2, :cond_3

    #@36
    .line 817
    const/4 v11, -0x1

    #@37
    return v11

    #@38
    .line 837
    .local v7, "hitFirst":Z
    .local v8, "hitLast":Z
    .local v12, "rowId":J
    :cond_2
    add-int/lit8 v9, v9, 0x1

    #@3a
    .line 838
    move/from16 p3, v9

    #@3c
    .line 840
    const/4 v10, 0x0

    #@3d
    .line 820
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@40
    move-result-wide v14

    #@41
    cmp-long v11, v14, v4

    #@43
    if-gtz v11, :cond_5

    #@45
    .line 821
    move/from16 v0, p3

    #@47
    invoke-interface {v2, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    #@4a
    move-result-wide v12

    #@4b
    .line 822
    .restart local v12    # "rowId":J
    cmp-long v11, v12, p1

    #@4d
    if-nez v11, :cond_4

    #@4f
    .line 824
    return p3

    #@50
    .line 827
    :cond_4
    add-int/lit8 v11, v3, -0x1

    #@52
    if-ne v9, v11, :cond_6

    #@54
    const/4 v8, 0x1

    #@55
    .line 828
    .restart local v8    # "hitLast":Z
    :goto_1
    if-nez v6, :cond_7

    #@57
    const/4 v7, 0x1

    #@58
    .line 830
    .restart local v7    # "hitFirst":Z
    :goto_2
    if-eqz v8, :cond_8

    #@5a
    if-eqz v7, :cond_8

    #@5c
    .line 851
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_5
    const/4 v11, -0x1

    #@5d
    return v11

    #@5e
    .line 827
    .restart local v12    # "rowId":J
    :cond_6
    const/4 v8, 0x0

    #@5f
    .restart local v8    # "hitLast":Z
    goto :goto_1

    #@60
    .line 828
    :cond_7
    const/4 v7, 0x0

    #@61
    .restart local v7    # "hitFirst":Z
    goto :goto_2

    #@62
    .line 835
    :cond_8
    if-nez v7, :cond_2

    #@64
    if-eqz v10, :cond_9

    #@66
    if-eqz v8, :cond_2

    #@68
    .line 841
    :cond_9
    if-nez v8, :cond_a

    #@6a
    if-nez v10, :cond_3

    #@6c
    if-nez v7, :cond_3

    #@6e
    .line 843
    :cond_a
    add-int/lit8 v6, v6, -0x1

    #@70
    .line 844
    move/from16 p3, v6

    #@72
    .line 846
    const/4 v10, 0x1

    #@73
    goto :goto_0
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    #@0
    .prologue
    .line 725
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@2
    return-object v0
.end method

.method public getCount()I
    .locals 2

    #@0
    .prologue
    .line 397
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@2
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 738
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    #@0
    .prologue
    .line 729
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    #@3
    move-result-object v0

    #@4
    .line 730
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 731
    check-cast v0, Landroid/widget/Filterable;

    #@a
    .end local v0    # "adapter":Landroid/widget/ExpandableListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 733
    .restart local v0    # "adapter":Landroid/widget/ExpandableListAdapter;
    :cond_0
    const/4 v1, 0x0

    #@10
    return-object v1
.end method

.method getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 24
    .param p1, "pos"    # Landroid/widget/ExpandableListPosition;

    #@0
    .prologue
    .line 259
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    #@4
    move-object/from16 v20, v0

    #@6
    .line 260
    .local v20, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v22

    #@a
    .line 263
    .local v22, "numExpGroups":I
    const/4 v13, 0x0

    #@b
    .line 264
    .local v13, "leftExpGroupIndex":I
    add-int/lit8 v19, v22, -0x1

    #@d
    .line 265
    .local v19, "rightExpGroupIndex":I
    const/4 v7, 0x0

    #@e
    .line 268
    .local v7, "midExpGroupIndex":I
    if-nez v22, :cond_0

    #@10
    .line 274
    move-object/from16 v0, p1

    #@12
    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@14
    move-object/from16 v0, p1

    #@16
    iget v3, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@18
    .line 275
    move-object/from16 v0, p1

    #@1a
    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@1c
    move-object/from16 v0, p1

    #@1e
    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    #@20
    const/4 v6, 0x0

    #@21
    const/4 v7, 0x0

    #@22
    .line 274
    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@25
    .end local v7    # "midExpGroupIndex":I
    move-result-object v2

    #@26
    return-object v2

    #@27
    .line 283
    .restart local v7    # "midExpGroupIndex":I
    :cond_0
    :goto_0
    move/from16 v0, v19

    #@29
    if-gt v13, v0, :cond_5

    #@2b
    .line 284
    sub-int v2, v19, v13

    #@2d
    div-int/lit8 v2, v2, 0x2

    #@2f
    add-int v7, v2, v13

    #@31
    .line 285
    move-object/from16 v0, v20

    #@33
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v6

    #@37
    check-cast v6, Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@39
    .line 287
    .local v6, "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, p1

    #@3b
    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@3d
    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@3f
    if-le v2, v3, :cond_1

    #@41
    .line 291
    add-int/lit8 v13, v7, 0x1

    #@43
    goto :goto_0

    #@44
    .line 292
    :cond_1
    move-object/from16 v0, p1

    #@46
    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@48
    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@4a
    if-ge v2, v3, :cond_2

    #@4c
    .line 296
    add-int/lit8 v19, v7, -0x1

    #@4e
    goto :goto_0

    #@4f
    .line 297
    :cond_2
    move-object/from16 v0, p1

    #@51
    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@53
    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@55
    if-ne v2, v3, :cond_0

    #@57
    .line 302
    move-object/from16 v0, p1

    #@59
    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@5b
    const/4 v3, 0x2

    #@5c
    if-ne v2, v3, :cond_3

    #@5e
    .line 304
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    #@60
    move-object/from16 v0, p1

    #@62
    iget v3, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@64
    .line 305
    move-object/from16 v0, p1

    #@66
    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@68
    move-object/from16 v0, p1

    #@6a
    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    #@6c
    .line 304
    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@6f
    move-result-object v2

    #@70
    return-object v2

    #@71
    .line 306
    :cond_3
    move-object/from16 v0, p1

    #@73
    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@75
    const/4 v3, 0x1

    #@76
    if-ne v2, v3, :cond_4

    #@78
    .line 308
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    #@7a
    move-object/from16 v0, p1

    #@7c
    iget v3, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    #@7e
    add-int/2addr v2, v3

    #@7f
    add-int/lit8 v2, v2, 0x1

    #@81
    .line 309
    move-object/from16 v0, p1

    #@83
    iget v3, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@85
    move-object/from16 v0, p1

    #@87
    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@89
    move-object/from16 v0, p1

    #@8b
    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    #@8d
    .line 308
    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@90
    move-result-object v2

    #@91
    return-object v2

    #@92
    .line 312
    :cond_4
    const/4 v2, 0x0

    #@93
    return-object v2

    #@94
    .line 321
    .end local v6    # "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_5
    move-object/from16 v0, p1

    #@96
    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@98
    const/4 v3, 0x2

    #@99
    if-eq v2, v3, :cond_6

    #@9b
    .line 323
    const/4 v2, 0x0

    #@9c
    return-object v2

    #@9d
    .line 331
    :cond_6
    if-le v13, v7, :cond_7

    #@9f
    .line 342
    add-int/lit8 v2, v13, -0x1

    #@a1
    move-object/from16 v0, v20

    #@a3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a6
    move-result-object v21

    #@a7
    check-cast v21, Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@a9
    .line 344
    .local v21, "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v21

    #@ab
    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    #@ad
    .line 345
    move-object/from16 v0, p1

    #@af
    iget v3, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@b1
    move-object/from16 v0, v21

    #@b3
    iget v4, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@b5
    sub-int/2addr v3, v4

    #@b6
    .line 344
    add-int v8, v2, v3

    #@b8
    .line 347
    .local v8, "flPos":I
    move-object/from16 v0, p1

    #@ba
    iget v9, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@bc
    move-object/from16 v0, p1

    #@be
    iget v10, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@c0
    .line 348
    move-object/from16 v0, p1

    #@c2
    iget v11, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    #@c4
    const/4 v12, 0x0

    #@c5
    .line 347
    invoke-static/range {v8 .. v13}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@c8
    move-result-object v2

    #@c9
    return-object v2

    #@ca
    .line 349
    .end local v8    # "flPos":I
    .end local v21    # "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_7
    move/from16 v0, v19

    #@cc
    if-ge v0, v7, :cond_8

    #@ce
    .line 357
    add-int/lit8 v19, v19, 0x1

    #@d0
    move-object/from16 v0, v20

    #@d2
    move/from16 v1, v19

    #@d4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d7
    move-result-object v23

    #@d8
    check-cast v23, Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@da
    .line 359
    .local v23, "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v23

    #@dc
    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    #@de
    .line 360
    move-object/from16 v0, v23

    #@e0
    iget v3, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@e2
    move-object/from16 v0, p1

    #@e4
    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@e6
    sub-int/2addr v3, v4

    #@e7
    .line 359
    sub-int v8, v2, v3

    #@e9
    .line 361
    .restart local v8    # "flPos":I
    move-object/from16 v0, p1

    #@eb
    iget v15, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@ed
    move-object/from16 v0, p1

    #@ef
    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@f1
    move/from16 v16, v0

    #@f3
    .line 362
    move-object/from16 v0, p1

    #@f5
    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    #@f7
    move/from16 v17, v0

    #@f9
    const/16 v18, 0x0

    #@fb
    move v14, v8

    #@fc
    .line 361
    invoke-static/range {v14 .. v19}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@ff
    move-result-object v2

    #@100
    return-object v2

    #@101
    .line 364
    .end local v8    # "flPos":I
    .end local v23    # "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_8
    const/4 v2, 0x0

    #@102
    return-object v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "flatListPos"    # I

    #@0
    .prologue
    .line 401
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@3
    move-result-object v0

    #@4
    .line 404
    .local v0, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@6
    iget v2, v2, Landroid/widget/ExpandableListPosition;->type:I

    #@8
    const/4 v3, 0x2

    #@9
    if-ne v2, v3, :cond_0

    #@b
    .line 405
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@d
    .line 406
    iget-object v3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@f
    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@11
    .line 405
    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    .line 415
    .local v1, "retValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@18
    .line 417
    return-object v1

    #@19
    .line 407
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_0
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@1b
    iget v2, v2, Landroid/widget/ExpandableListPosition;->type:I

    #@1d
    const/4 v3, 0x1

    #@1e
    if-ne v2, v3, :cond_1

    #@20
    .line 408
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@22
    iget-object v3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@24
    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@26
    .line 409
    iget-object v4, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@28
    iget v4, v4, Landroid/widget/ExpandableListPosition;->childPos:I

    #@2a
    .line 408
    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    .restart local v1    # "retValue":Ljava/lang/Object;
    goto :goto_0

    #@2f
    .line 412
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@31
    const-string/jumbo v3, "Flat list position is of unknown type"

    #@34
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@37
    throw v2
.end method

.method public getItemId(I)J
    .locals 10
    .param p1, "flatListPos"    # I

    #@0
    .prologue
    .line 421
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@3
    move-result-object v4

    #@4
    .line 422
    .local v4, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@6
    iget-object v8, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@8
    iget v8, v8, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@a
    invoke-interface {v5, v8}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    #@d
    move-result-wide v2

    #@e
    .line 425
    .local v2, "groupId":J
    iget-object v5, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@10
    iget v5, v5, Landroid/widget/ExpandableListPosition;->type:I

    #@12
    const/4 v8, 0x2

    #@13
    if-ne v5, v8, :cond_0

    #@15
    .line 426
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@17
    invoke-interface {v5, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    #@1a
    move-result-wide v6

    #@1b
    .line 436
    .local v6, "retValue":J
    :goto_0
    invoke-virtual {v4}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@1e
    .line 438
    return-wide v6

    #@1f
    .line 427
    .end local v6    # "retValue":J
    :cond_0
    iget-object v5, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@21
    iget v5, v5, Landroid/widget/ExpandableListPosition;->type:I

    #@23
    const/4 v8, 0x1

    #@24
    if-ne v5, v8, :cond_1

    #@26
    .line 428
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@28
    iget-object v8, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@2a
    iget v8, v8, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@2c
    .line 429
    iget-object v9, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@2e
    iget v9, v9, Landroid/widget/ExpandableListPosition;->childPos:I

    #@30
    .line 428
    invoke-interface {v5, v8, v9}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    #@33
    move-result-wide v0

    #@34
    .line 430
    .local v0, "childId":J
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@36
    invoke-interface {v5, v2, v3, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    #@39
    move-result-wide v6

    #@3a
    .restart local v6    # "retValue":J
    goto :goto_0

    #@3b
    .line 433
    .end local v0    # "childId":J
    .end local v6    # "retValue":J
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    #@3d
    const-string/jumbo v8, "Flat list position is of unknown type"

    #@40
    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@43
    throw v5
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "flatListPos"    # I

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    .line 465
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@4
    move-result-object v2

    #@5
    .line 466
    .local v2, "metadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@7
    .line 469
    .local v3, "pos":Landroid/widget/ExpandableListPosition;
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@9
    instance-of v5, v5, Landroid/widget/HeterogeneousExpandableList;

    #@b
    if-eqz v5, :cond_1

    #@d
    .line 471
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@f
    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    #@11
    .line 472
    .local v0, "adapter":Landroid/widget/HeterogeneousExpandableList;
    iget v5, v3, Landroid/widget/ExpandableListPosition;->type:I

    #@13
    if-ne v5, v6, :cond_0

    #@15
    .line 473
    iget v5, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@17
    invoke-interface {v0, v5}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    #@1a
    move-result v4

    #@1b
    .line 486
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    .local v4, "retValue":I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@1e
    .line 488
    return v4

    #@1f
    .line 475
    .end local v4    # "retValue":I
    .restart local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    :cond_0
    iget v5, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@21
    iget v6, v3, Landroid/widget/ExpandableListPosition;->childPos:I

    #@23
    invoke-interface {v0, v5, v6}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    #@26
    move-result v1

    #@27
    .line 476
    .local v1, "childType":I
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    #@2a
    move-result v5

    #@2b
    add-int v4, v5, v1

    #@2d
    .restart local v4    # "retValue":I
    goto :goto_0

    #@2e
    .line 479
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    .end local v1    # "childType":I
    .end local v4    # "retValue":I
    :cond_1
    iget v5, v3, Landroid/widget/ExpandableListPosition;->type:I

    #@30
    if-ne v5, v6, :cond_2

    #@32
    .line 480
    const/4 v4, 0x0

    #@33
    .restart local v4    # "retValue":I
    goto :goto_0

    #@34
    .line 482
    .end local v4    # "retValue":I
    :cond_2
    const/4 v4, 0x1

    #@35
    .restart local v4    # "retValue":I
    goto :goto_0
.end method

.method getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 19
    .param p1, "flPos"    # I

    #@0
    .prologue
    .line 109
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    #@4
    .line 110
    .local v13, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v16

    #@8
    .line 113
    .local v16, "numExpGroups":I
    const/4 v15, 0x0

    #@9
    .line 114
    .local v15, "leftExpGroupIndex":I
    add-int/lit8 v18, v16, -0x1

    #@b
    .line 115
    .local v18, "rightExpGroupIndex":I
    const/4 v6, 0x0

    #@c
    .line 118
    .local v6, "midExpGroupIndex":I
    if-nez v16, :cond_0

    #@e
    .line 124
    const/4 v2, 0x2

    #@f
    .line 125
    const/4 v4, -0x1

    #@10
    const/4 v5, 0x0

    #@11
    const/4 v6, 0x0

    #@12
    move/from16 v1, p1

    #@14
    move/from16 v3, p1

    #@16
    .line 124
    invoke-static/range {v1 .. v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@19
    .end local v6    # "midExpGroupIndex":I
    move-result-object v1

    #@1a
    return-object v1

    #@1b
    .line 140
    .restart local v6    # "midExpGroupIndex":I
    :cond_0
    :goto_0
    move/from16 v0, v18

    #@1d
    if-gt v15, v0, :cond_4

    #@1f
    .line 142
    sub-int v1, v18, v15

    #@21
    div-int/lit8 v1, v1, 0x2

    #@23
    add-int v6, v1, v15

    #@25
    .line 144
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@2b
    .line 146
    .local v5, "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    #@2d
    move/from16 v0, p1

    #@2f
    if-le v0, v1, :cond_1

    #@31
    .line 151
    add-int/lit8 v15, v6, 0x1

    #@33
    goto :goto_0

    #@34
    .line 152
    :cond_1
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    #@36
    move/from16 v0, p1

    #@38
    if-ge v0, v1, :cond_2

    #@3a
    .line 157
    add-int/lit8 v18, v6, -0x1

    #@3c
    goto :goto_0

    #@3d
    .line 158
    :cond_2
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    #@3f
    move/from16 v0, p1

    #@41
    if-ne v0, v1, :cond_3

    #@43
    .line 164
    iget v3, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@45
    .line 163
    const/4 v2, 0x2

    #@46
    .line 164
    const/4 v4, -0x1

    #@47
    move/from16 v1, p1

    #@49
    .line 163
    invoke-static/range {v1 .. v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@4c
    move-result-object v1

    #@4d
    return-object v1

    #@4e
    .line 165
    :cond_3
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    #@50
    move/from16 v0, p1

    #@52
    if-gt v0, v1, :cond_0

    #@54
    .line 175
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    #@56
    add-int/lit8 v1, v1, 0x1

    #@58
    sub-int v4, p1, v1

    #@5a
    .line 177
    .local v4, "childPos":I
    iget v3, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@5c
    .line 176
    const/4 v2, 0x1

    #@5d
    move/from16 v1, p1

    #@5f
    invoke-static/range {v1 .. v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@62
    move-result-object v1

    #@63
    return-object v1

    #@64
    .line 192
    .end local v4    # "childPos":I
    .end local v5    # "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_4
    const/4 v12, 0x0

    #@65
    .line 195
    .local v12, "insertPosition":I
    const/4 v9, 0x0

    #@66
    .line 202
    .local v9, "groupPos":I
    if-le v15, v6, :cond_5

    #@68
    .line 210
    add-int/lit8 v1, v15, -0x1

    #@6a
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6d
    move-result-object v14

    #@6e
    check-cast v14, Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@70
    .line 212
    .local v14, "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move v12, v15

    #@71
    .line 219
    iget v1, v14, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    #@73
    sub-int v1, p1, v1

    #@75
    iget v2, v14, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@77
    add-int v9, v1, v2

    #@79
    .line 243
    .end local v14    # "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :goto_1
    const/4 v8, 0x2

    #@7a
    const/4 v10, -0x1

    #@7b
    .line 244
    const/4 v11, 0x0

    #@7c
    move/from16 v7, p1

    #@7e
    .line 243
    invoke-static/range {v7 .. v12}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@81
    move-result-object v1

    #@82
    return-object v1

    #@83
    .line 220
    :cond_5
    move/from16 v0, v18

    #@85
    if-ge v0, v6, :cond_6

    #@87
    .line 227
    add-int/lit8 v18, v18, 0x1

    #@89
    move/from16 v0, v18

    #@8b
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v17

    #@8f
    check-cast v17, Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@91
    .line 229
    .local v17, "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move/from16 v12, v18

    #@93
    .line 237
    move-object/from16 v0, v17

    #@95
    iget v1, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@97
    move-object/from16 v0, v17

    #@99
    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    #@9b
    sub-int v2, v2, p1

    #@9d
    sub-int v9, v1, v2

    #@9f
    goto :goto_1

    #@a0
    .line 240
    .end local v17    # "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    #@a2
    const-string/jumbo v2, "Unknown state"

    #@a5
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a8
    throw v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "flatListPos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 442
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@3
    move-result-object v6

    #@4
    .line 445
    .local v6, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@6
    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@8
    const/4 v1, 0x2

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 446
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@d
    iget-object v1, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@f
    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@11
    .line 447
    invoke-virtual {v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    #@14
    move-result v2

    #@15
    .line 446
    invoke-interface {v0, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@18
    move-result-object v7

    #@19
    .line 458
    .local v7, "retValue":Landroid/view/View;
    :goto_0
    invoke-virtual {v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@1c
    .line 460
    return-object v7

    #@1d
    .line 448
    .end local v7    # "retValue":Landroid/view/View;
    :cond_0
    iget-object v0, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@1f
    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@21
    const/4 v1, 0x1

    #@22
    if-ne v0, v1, :cond_2

    #@24
    .line 449
    iget-object v0, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@26
    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    #@28
    if-ne v0, p1, :cond_1

    #@2a
    const/4 v3, 0x1

    #@2b
    .line 451
    .local v3, "isLastChild":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@2d
    iget-object v1, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@2f
    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@31
    .line 452
    iget-object v2, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@33
    iget v2, v2, Landroid/widget/ExpandableListPosition;->childPos:I

    #@35
    move-object v4, p2

    #@36
    move-object v5, p3

    #@37
    .line 451
    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@3a
    move-result-object v7

    #@3b
    .restart local v7    # "retValue":Landroid/view/View;
    goto :goto_0

    #@3c
    .line 449
    .end local v3    # "isLastChild":Z
    .end local v7    # "retValue":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    #@3d
    .restart local v3    # "isLastChild":Z
    goto :goto_1

    #@3e
    .line 455
    .end local v3    # "isLastChild":Z
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    #@40
    const-string/jumbo v1, "Flat list position is of unknown type"

    #@43
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0
.end method

.method public getViewTypeCount()I
    .locals 3

    #@0
    .prologue
    .line 493
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@2
    instance-of v1, v1, Landroid/widget/HeterogeneousExpandableList;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 495
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@8
    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    #@a
    .line 496
    .local v0, "adapter":Landroid/widget/HeterogeneousExpandableList;
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    #@d
    move-result v1

    #@e
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    #@11
    move-result v2

    #@12
    add-int/2addr v1, v2

    #@13
    return v1

    #@14
    .line 498
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    :cond_0
    const/4 v1, 0x2

    #@15
    return v1
.end method

.method public hasStableIds()Z
    .locals 1

    #@0
    .prologue
    .line 504
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@2
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .line 763
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    #@3
    move-result-object v0

    #@4
    .line 764
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    if-eqz v0, :cond_0

    #@6
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x1

    #@c
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 6
    .param p1, "flatListPos"    # I

    #@0
    .prologue
    .line 375
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@3
    move-result-object v0

    #@4
    .line 376
    .local v0, "metadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@6
    .line 379
    .local v1, "pos":Landroid/widget/ExpandableListPosition;
    iget v3, v1, Landroid/widget/ExpandableListPosition;->type:I

    #@8
    const/4 v4, 0x1

    #@9
    if-ne v3, v4, :cond_0

    #@b
    .line 380
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@d
    iget v4, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@f
    iget v5, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    #@11
    invoke-interface {v3, v4, v5}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    #@14
    move-result v2

    #@15
    .line 386
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@18
    .line 388
    return v2

    #@19
    .line 383
    :cond_0
    const/4 v2, 0x1

    #@1a
    .local v2, "retValue":Z
    goto :goto_0
.end method

.method public isGroupExpanded(I)Z
    .locals 4
    .param p1, "groupPosition"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 706
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v1, v2, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 707
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@13
    .line 709
    .local v0, "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@15
    if-ne v2, p1, :cond_0

    #@17
    .line 710
    const/4 v2, 0x1

    #@18
    return v2

    #@19
    .line 706
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 714
    .end local v0    # "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_1
    return v3
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 88
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@6
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@8
    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@b
    .line 91
    :cond_0
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@d
    .line 92
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@f
    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@12
    .line 86
    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "expandedGroupMetadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    const/4 v3, 0x0

    #@1
    .line 743
    if-eqz p1, :cond_0

    #@3
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@5
    if-nez v2, :cond_1

    #@7
    .line 744
    :cond_0
    return-void

    #@8
    .line 749
    :cond_1
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    #@a
    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    #@d
    move-result v1

    #@e
    .line 750
    .local v1, "numGroups":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v2

    #@12
    add-int/lit8 v0, v2, -0x1

    #@14
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    #@16
    .line 751
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@1c
    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    #@1e
    if-lt v2, v1, :cond_2

    #@20
    .line 753
    return-void

    #@21
    .line 750
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@23
    goto :goto_0

    #@24
    .line 757
    :cond_3
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    #@26
    .line 758
    const/4 v2, 0x1

    #@27
    invoke-direct {p0, v2, v3}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    #@2a
    .line 741
    return-void
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0
    .param p1, "maxExpGroupCount"    # I

    #@0
    .prologue
    .line 721
    iput p1, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    #@2
    .line 720
    return-void
.end method
