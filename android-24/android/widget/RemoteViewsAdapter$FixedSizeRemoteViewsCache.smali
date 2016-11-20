.class Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedSizeRemoteViewsCache"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FixedSizeRemoteViewsCache"

.field private static final sMaxCountSlackPercent:F = 0.75f

.field private static final sMaxMemoryLimitInBytes:I = 0x200000


# instance fields
.field private final mIndexMetaData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndexRemoteViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndicesToLoad:Landroid/util/SparseBooleanArray;

.field private mLastRequestedIndex:I

.field private final mMaxCount:I

.field private final mMaxCountSlack:I

.field private final mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

.field private mPreloadLowerBound:I

.field private mPreloadUpperBound:I

.field private final mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;


# direct methods
.method static synthetic -get0(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@2
    return-object v0
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxCacheSize"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 523
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@6
    invoke-direct {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;-><init>()V

    #@9
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@b
    .line 524
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@d
    invoke-direct {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;-><init>()V

    #@10
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@12
    .line 533
    new-instance v0, Landroid/util/SparseArray;

    #@14
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@17
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    #@19
    .line 537
    new-instance v0, Landroid/util/SparseArray;

    #@1b
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    #@20
    .line 541
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@22
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@25
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@27
    .line 563
    iput p1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    #@29
    .line 564
    iget v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    #@2b
    div-int/lit8 v0, v0, 0x2

    #@2d
    int-to-float v0, v0

    #@2e
    const/high16 v1, 0x3f400000    # 0.75f

    #@30
    mul-float/2addr v0, v1

    #@31
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCountSlack:I

    #@37
    .line 565
    const/4 v0, 0x0

    #@38
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    #@3a
    .line 566
    iput v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    #@3c
    .line 567
    iput v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    #@3e
    .line 562
    return-void
.end method

.method private getFarthestPositionFrom(I[I)I
    .locals 8
    .param p1, "pos"    # I
    .param p2, "visibleWindow"    # [I

    #@0
    .prologue
    .line 640
    const/4 v3, 0x0

    #@1
    .line 641
    .local v3, "maxDist":I
    const/4 v4, -0x1

    #@2
    .line 642
    .local v4, "maxDistIndex":I
    const/4 v6, 0x0

    #@3
    .line 643
    .local v6, "maxDistNotVisible":I
    const/4 v5, -0x1

    #@4
    .line 644
    .local v5, "maxDistIndexNotVisible":I
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    #@9
    move-result v7

    #@a
    add-int/lit8 v1, v7, -0x1

    #@c
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@e
    .line 645
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@13
    move-result v2

    #@14
    .line 646
    .local v2, "index":I
    sub-int v7, v2, p1

    #@16
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    #@19
    move-result v0

    #@1a
    .line 647
    .local v0, "dist":I
    if-le v0, v6, :cond_0

    #@1c
    invoke-static {p2, v2}, Ljava/util/Arrays;->binarySearch([II)I

    #@1f
    move-result v7

    #@20
    if-gez v7, :cond_0

    #@22
    .line 650
    move v5, v2

    #@23
    .line 651
    move v6, v0

    #@24
    .line 653
    :cond_0
    if-lt v0, v3, :cond_1

    #@26
    .line 656
    move v4, v2

    #@27
    .line 657
    move v3, v0

    #@28
    .line 644
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 660
    .end local v0    # "dist":I
    .end local v2    # "index":I
    :cond_2
    const/4 v7, -0x1

    #@2c
    if-le v5, v7, :cond_3

    #@2e
    .line 661
    return v5

    #@2f
    .line 663
    :cond_3
    return v4
.end method

.method private getRemoteViewsBitmapMemoryUsage()I
    .locals 4

    #@0
    .prologue
    .line 628
    const/4 v1, 0x0

    #@1
    .line 629
    .local v1, "mem":I
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v3

    #@7
    add-int/lit8 v0, v3, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 630
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/widget/RemoteViews;

    #@13
    .line 631
    .local v2, "v":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_0

    #@15
    .line 632
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    #@18
    move-result v3

    #@19
    add-int/2addr v1, v3

    #@1a
    .line 629
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 635
    .end local v2    # "v":Landroid/widget/RemoteViews;
    :cond_1
    return v1
.end method


# virtual methods
.method public commitTemporaryMetaData()V
    .locals 4

    #@0
    .prologue
    .line 619
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@2
    monitor-enter v1

    #@3
    .line 620
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 621
    :try_start_1
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@8
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@a
    invoke-virtual {v0, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->set(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@e
    monitor-exit v1

    #@f
    .line 618
    return-void

    #@10
    .line 620
    :catchall_0
    move-exception v0

    #@11
    :try_start_3
    monitor-exit v2

    #@12
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@13
    .line 619
    :catchall_1
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public containsMetaDataAt(I)Z
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 733
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@6
    move-result v1

    #@7
    if-ltz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public containsRemoteViewAt(I)Z
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 730
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@6
    move-result v1

    #@7
    if-ltz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .locals 1

    #@0
    .prologue
    .line 606
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@2
    return-object v0
.end method

.method public getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 615
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    #@8
    return-object v0
.end method

.method public getNextIndexToLoad()I
    .locals 5

    #@0
    .prologue
    .line 712
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@2
    monitor-enter v3

    #@3
    .line 714
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@5
    const/4 v4, 0x1

    #@6
    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    #@9
    move-result v0

    #@a
    .line 715
    .local v0, "index":I
    if-gez v0, :cond_0

    #@c
    .line 717
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@e
    const/4 v4, 0x0

    #@f
    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    .line 719
    :cond_0
    if-gez v0, :cond_1

    #@15
    .line 720
    const/4 v2, -0x1

    #@16
    monitor-exit v3

    #@17
    return v2

    #@18
    .line 722
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@1a
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@1d
    move-result v1

    #@1e
    .line 723
    .local v1, "key":I
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@20
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit v3

    #@24
    .line 724
    return v1

    #@25
    .line 712
    .end local v0    # "index":I
    .end local v1    # "key":I
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2
.end method

.method public getRemoteViewsAt(I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 612
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/widget/RemoteViews;

    #@8
    return-object v0
.end method

.method public getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .locals 1

    #@0
    .prologue
    .line 609
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@2
    return-object v0
.end method

.method public insert(ILandroid/widget/RemoteViews;J[I)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/widget/RemoteViews;
    .param p3, "itemId"    # J
    .param p5, "visibleWindow"    # [I

    #@0
    .prologue
    .line 572
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v3

    #@6
    iget v4, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    #@8
    if-lt v3, v4, :cond_0

    #@a
    .line 573
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    #@c
    invoke-direct {p0, p1, p5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getFarthestPositionFrom(I[I)I

    #@f
    move-result v4

    #@10
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    #@13
    .line 577
    :cond_0
    iget v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    #@15
    const/4 v4, -0x1

    #@16
    if-le v3, v4, :cond_2

    #@18
    iget v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    #@1a
    .line 578
    .local v1, "pruneFromPosition":I
    :goto_0
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsBitmapMemoryUsage()I

    #@1d
    move-result v3

    #@1e
    const/high16 v4, 0x200000

    #@20
    if-lt v3, v4, :cond_1

    #@22
    .line 584
    invoke-direct {p0, v1, p5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getFarthestPositionFrom(I[I)I

    #@25
    move-result v2

    #@26
    .line 588
    .local v2, "trimIndex":I
    if-gez v2, :cond_3

    #@28
    .line 596
    .end local v2    # "trimIndex":I
    :cond_1
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    #@2a
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    #@30
    .line 597
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    if-eqz v0, :cond_4

    #@32
    .line 598
    invoke-virtual {v0, p2, p3, p4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->set(Landroid/widget/RemoteViews;J)V

    #@35
    .line 602
    :goto_1
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    #@37
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3a
    .line 570
    return-void

    #@3b
    .line 577
    .end local v0    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v1    # "pruneFromPosition":I
    :cond_2
    move v1, p1

    #@3c
    .restart local v1    # "pruneFromPosition":I
    goto :goto_0

    #@3d
    .line 592
    .restart local v2    # "trimIndex":I
    :cond_3
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    #@3f
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    #@42
    goto :goto_0

    #@43
    .line 600
    .end local v2    # "trimIndex":I
    .restart local v0    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    :cond_4
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    #@45
    new-instance v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    #@47
    invoke-direct {v4, p2, p3, p4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;-><init>(Landroid/widget/RemoteViews;J)V

    #@4a
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@4d
    goto :goto_1
.end method

.method public queuePositionsToBePreloadedFromRequestedPosition(I)Z
    .locals 9
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 674
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    #@3
    if-gt v6, p1, :cond_0

    #@5
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    #@7
    if-gt p1, v6, :cond_0

    #@9
    .line 675
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    #@b
    iget v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    #@d
    add-int/2addr v6, v7

    #@e
    div-int/lit8 v0, v6, 0x2

    #@10
    .line 676
    .local v0, "center":I
    sub-int v6, p1, v0

    #@12
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    #@15
    move-result v6

    #@16
    iget v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCountSlack:I

    #@18
    if-ge v6, v7, :cond_0

    #@1a
    .line 677
    return v8

    #@1b
    .line 681
    .end local v0    # "center":I
    :cond_0
    const/4 v1, 0x0

    #@1c
    .line 682
    .local v1, "count":I
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@1e
    monitor-enter v7

    #@1f
    .line 683
    :try_start_0
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@21
    iget v1, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v7

    #@24
    .line 685
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@26
    monitor-enter v7

    #@27
    .line 687
    :try_start_1
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@29
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    #@2c
    move-result v6

    #@2d
    add-int/lit8 v5, v6, -0x1

    #@2f
    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    #@31
    .line 688
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@33
    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@36
    move-result v6

    #@37
    if-nez v6, :cond_1

    #@39
    .line 689
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@3b
    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3e
    .line 687
    :cond_1
    add-int/lit8 v5, v5, -0x1

    #@40
    goto :goto_0

    #@41
    .line 682
    .end local v5    # "i":I
    :catchall_0
    move-exception v6

    #@42
    monitor-exit v7

    #@43
    throw v6

    #@44
    .line 694
    .restart local v5    # "i":I
    :cond_2
    :try_start_2
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    #@46
    div-int/lit8 v4, v6, 0x2

    #@48
    .line 695
    .local v4, "halfMaxCount":I
    sub-int v6, p1, v4

    #@4a
    iput v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    #@4c
    .line 696
    add-int v6, p1, v4

    #@4e
    iput v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    #@50
    .line 697
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    #@52
    const/4 v8, 0x0

    #@53
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    #@56
    move-result v2

    #@57
    .line 698
    .local v2, "effectiveLowerBound":I
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    #@59
    add-int/lit8 v8, v1, -0x1

    #@5b
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    #@5e
    move-result v3

    #@5f
    .line 699
    .local v3, "effectiveUpperBound":I
    move v5, v2

    #@60
    :goto_1
    if-gt v5, v3, :cond_5

    #@62
    .line 700
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    #@64
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@67
    move-result v6

    #@68
    if-gez v6, :cond_3

    #@6a
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@6c
    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@6f
    move-result v6

    #@70
    if-eqz v6, :cond_4

    #@72
    .line 699
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@74
    goto :goto_1

    #@75
    .line 702
    :cond_4
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@77
    const/4 v8, 0x0

    #@78
    invoke-virtual {v6, v5, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@7b
    goto :goto_2

    #@7c
    .line 685
    .end local v2    # "effectiveLowerBound":I
    .end local v3    # "effectiveUpperBound":I
    .end local v4    # "halfMaxCount":I
    .end local v5    # "i":I
    :catchall_1
    move-exception v6

    #@7d
    monitor-exit v7

    #@7e
    throw v6

    #@7f
    .restart local v2    # "effectiveLowerBound":I
    .restart local v3    # "effectiveUpperBound":I
    .restart local v4    # "halfMaxCount":I
    .restart local v5    # "i":I
    :cond_5
    monitor-exit v7

    #@80
    .line 706
    const/4 v6, 0x1

    #@81
    return v6
.end method

.method public queueRequestedPositionToLoad(I)V
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    .line 667
    iput p1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    #@2
    .line 668
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@4
    monitor-enter v1

    #@5
    .line 669
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@7
    const/4 v2, 0x1

    #@8
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 666
    return-void

    #@d
    .line 668
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 741
    const/4 v0, 0x0

    #@2
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    #@4
    .line 742
    iput v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    #@6
    .line 743
    iput v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    #@8
    .line 744
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@d
    .line 745
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@12
    .line 746
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@14
    monitor-enter v1

    #@15
    .line 747
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    #@17
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 736
    return-void

    #@1c
    .line 746
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method
