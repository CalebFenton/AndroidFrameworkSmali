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
.field private mIndexMetaData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexRemoteViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRequestedIndex:I

.field private mLoadIndices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCount:I

.field private mMaxCountSlack:I

.field private final mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

.field private mPreloadLowerBound:I

.field private mPreloadUpperBound:I

.field private mRequestedIndices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;


# direct methods
.method static synthetic -get0(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

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
    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 593
    iput p1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    #@6
    .line 594
    iget v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    #@8
    div-int/lit8 v0, v0, 0x2

    #@a
    int-to-float v0, v0

    #@b
    const/high16 v1, 0x3f400000    # 0.75f

    #@d
    mul-float/2addr v0, v1

    #@e
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCountSlack:I

    #@14
    .line 595
    const/4 v0, 0x0

    #@15
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    #@17
    .line 596
    iput v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    #@19
    .line 597
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@1b
    invoke-direct {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@20
    .line 598
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@22
    invoke-direct {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;-><init>()V

    #@25
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@27
    .line 599
    new-instance v0, Ljava/util/HashMap;

    #@29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2c
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    #@2e
    .line 600
    new-instance v0, Ljava/util/HashMap;

    #@30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@33
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    #@35
    .line 601
    new-instance v0, Ljava/util/HashSet;

    #@37
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@3a
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    #@3c
    .line 602
    iput v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    #@3e
    .line 603
    new-instance v0, Ljava/util/HashSet;

    #@40
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@43
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    #@45
    .line 592
    return-void
.end method

.method private getFarthestPositionFrom(ILjava/util/ArrayList;)I
    .locals 8
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 683
    .local p2, "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    #@1
    .line 684
    .local v3, "maxDist":I
    const/4 v4, -0x1

    #@2
    .line 685
    .local v4, "maxDistIndex":I
    const/4 v6, 0x0

    #@3
    .line 686
    .local v6, "maxDistNotVisible":I
    const/4 v5, -0x1

    #@4
    .line 687
    .local v5, "maxDistIndexNotVisible":I
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    #@6
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@9
    move-result-object v7

    #@a
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .local v2, "i$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v7

    #@12
    if-eqz v7, :cond_3

    #@14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v7

    #@18
    check-cast v7, Ljava/lang/Integer;

    #@1a
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@1d
    move-result v1

    #@1e
    .line 688
    .local v1, "i":I
    sub-int v7, v1, p1

    #@20
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    #@23
    move-result v0

    #@24
    .line 689
    .local v0, "dist":I
    if-le v0, v6, :cond_1

    #@26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_2

    #@30
    .line 695
    :cond_1
    :goto_1
    if-lt v0, v3, :cond_0

    #@32
    .line 698
    move v4, v1

    #@33
    .line 699
    move v3, v0

    #@34
    goto :goto_0

    #@35
    .line 692
    :cond_2
    move v5, v1

    #@36
    .line 693
    move v6, v0

    #@37
    goto :goto_1

    #@38
    .line 702
    .end local v0    # "dist":I
    .end local v1    # "i":I
    :cond_3
    const/4 v7, -0x1

    #@39
    if-le v5, v7, :cond_4

    #@3b
    .line 703
    return v5

    #@3c
    .line 705
    :cond_4
    return v4
.end method

.method private getRemoteViewsBitmapMemoryUsage()I
    .locals 5

    #@0
    .prologue
    .line 671
    const/4 v2, 0x0

    #@1
    .line 672
    .local v2, "mem":I
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    #@3
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@6
    move-result-object v4

    #@7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/Integer;

    #@17
    .line 673
    .local v0, "i":Ljava/lang/Integer;
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    #@19
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroid/widget/RemoteViews;

    #@1f
    .line 674
    .local v3, "v":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_0

    #@21
    .line 675
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    #@24
    move-result v4

    #@25
    add-int/2addr v2, v4

    #@26
    goto :goto_0

    #@27
    .line 678
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v3    # "v":Landroid/widget/RemoteViews;
    :cond_1
    return v2
.end method


# virtual methods
.method public commitTemporaryMetaData()V
    .locals 4

    #@0
    .prologue
    .line 662
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@2
    monitor-enter v1

    #@3
    .line 663
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 664
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
    .line 661
    return-void

    #@10
    .line 663
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
    .line 662
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
    .line 777
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public containsRemoteViewAt(I)Z
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 774
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .locals 1

    #@0
    .prologue
    .line 643
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@2
    return-object v0
.end method

.method public getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 656
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    #@18
    return-object v0

    #@19
    .line 658
    :cond_0
    const/4 v0, 0x0

    #@1a
    return-object v0
.end method

.method public getNextIndexToLoad()[I
    .locals 5

    #@0
    .prologue
    .line 753
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    #@2
    monitor-enter v2

    #@3
    .line 755
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    #@5
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 756
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    #@d
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/Integer;

    #@17
    .line 757
    .local v0, "i":Ljava/lang/Integer;
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    #@19
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@1c
    .line 758
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    #@1e
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@21
    .line 759
    const/4 v1, 0x2

    #@22
    new-array v1, v1, [I

    #@24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@27
    move-result v3

    #@28
    const/4 v4, 0x0

    #@29
    aput v3, v1, v4

    #@2b
    const/4 v3, 0x1

    #@2c
    const/4 v4, 0x1

    #@2d
    aput v3, v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    return-object v1

    #@31
    .line 763
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    #@33
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    #@36
    move-result v1

    #@37
    if-nez v1, :cond_1

    #@39
    .line 764
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    #@3b
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v1

    #@3f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Ljava/lang/Integer;

    #@45
    .line 765
    .restart local v0    # "i":Ljava/lang/Integer;
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    #@47
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@4a
    .line 766
    const/4 v1, 0x2

    #@4b
    new-array v1, v1, [I

    #@4d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@50
    move-result v3

    #@51
    const/4 v4, 0x0

    #@52
    aput v3, v1, v4

    #@54
    const/4 v3, 0x0

    #@55
    const/4 v4, 0x1

    #@56
    aput v3, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    monitor-exit v2

    #@59
    return-object v1

    #@5a
    .line 769
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_1
    const/4 v1, -0x1

    #@5b
    const/4 v3, 0x0

    #@5c
    :try_start_2
    filled-new-array {v1, v3}, [I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    move-result-object v1

    #@60
    monitor-exit v2

    #@61
    return-object v1

    #@62
    .line 753
    :catchall_0
    move-exception v1

    #@63
    monitor-exit v2

    #@64
    throw v1
.end method

.method public getRemoteViewsAt(I)Landroid/widget/RemoteViews;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 649
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 650
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/widget/RemoteViews;

    #@18
    return-object v0

    #@19
    .line 652
    :cond_0
    const/4 v0, 0x0

    #@1a
    return-object v0
.end method

.method public getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .locals 1

    #@0
    .prologue
    .line 646
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@2
    return-object v0
.end method

.method public insert(ILandroid/widget/RemoteViews;JLjava/util/ArrayList;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/widget/RemoteViews;
    .param p3, "itemId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/RemoteViews;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 609
    .local p5, "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    #@2
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@5
    move-result v3

    #@6
    iget v4, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    #@8
    if-lt v3, v4, :cond_0

    #@a
    .line 610
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    #@c
    invoke-direct {p0, p1, p5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getFarthestPositionFrom(ILjava/util/ArrayList;)I

    #@f
    move-result v4

    #@10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 614
    :cond_0
    iget v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    #@19
    const/4 v4, -0x1

    #@1a
    if-le v3, v4, :cond_2

    #@1c
    iget v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    #@1e
    .line 615
    .local v1, "pruneFromPosition":I
    :goto_0
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsBitmapMemoryUsage()I

    #@21
    move-result v3

    #@22
    const/high16 v4, 0x200000

    #@24
    if-lt v3, v4, :cond_1

    #@26
    .line 621
    invoke-direct {p0, v1, p5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getFarthestPositionFrom(ILjava/util/ArrayList;)I

    #@29
    move-result v2

    #@2a
    .line 625
    .local v2, "trimIndex":I
    if-gez v2, :cond_3

    #@2c
    .line 633
    .end local v2    # "trimIndex":I
    :cond_1
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    #@2e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_4

    #@38
    .line 634
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    #@3a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    #@44
    .line 635
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    invoke-virtual {v0, p2, p3, p4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->set(Landroid/widget/RemoteViews;J)V

    #@47
    .line 639
    .end local v0    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    :goto_1
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    #@49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 607
    return-void

    #@51
    .line 614
    .end local v1    # "pruneFromPosition":I
    :cond_2
    move v1, p1

    #@52
    .restart local v1    # "pruneFromPosition":I
    goto :goto_0

    #@53
    .line 629
    .restart local v2    # "trimIndex":I
    :cond_3
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    #@55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    goto :goto_0

    #@5d
    .line 637
    .end local v2    # "trimIndex":I
    :cond_4
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    #@5f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v4

    #@63
    new-instance v5, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    #@65
    invoke-direct {v5, p2, p3, p4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;-><init>(Landroid/widget/RemoteViews;J)V

    #@68
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    goto :goto_1
.end method

.method public queuePositionsToBePreloadedFromRequestedPosition(I)Z
    .locals 9
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 717
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    #@3
    if-gt v6, p1, :cond_0

    #@5
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    #@7
    if-gt p1, v6, :cond_0

    #@9
    .line 718
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    #@b
    iget v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    #@d
    add-int/2addr v6, v7

    #@e
    div-int/lit8 v0, v6, 0x2

    #@10
    .line 719
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
    .line 720
    return v8

    #@1b
    .line 724
    .end local v0    # "center":I
    :cond_0
    const/4 v1, 0x0

    #@1c
    .line 725
    .local v1, "count":I
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@1e
    monitor-enter v7

    #@1f
    .line 726
    :try_start_0
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@21
    iget v1, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v7

    #@24
    .line 728
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    #@26
    monitor-enter v7

    #@27
    .line 729
    :try_start_1
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    #@29
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    #@2c
    .line 732
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    #@2e
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    #@30
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@33
    .line 735
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    #@35
    div-int/lit8 v4, v6, 0x2

    #@37
    .line 736
    .local v4, "halfMaxCount":I
    sub-int v6, p1, v4

    #@39
    iput v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    #@3b
    .line 737
    add-int v6, p1, v4

    #@3d
    iput v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    #@3f
    .line 738
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    #@41
    const/4 v8, 0x0

    #@42
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    #@45
    move-result v2

    #@46
    .line 739
    .local v2, "effectiveLowerBound":I
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    #@48
    add-int/lit8 v8, v1, -0x1

    #@4a
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    #@4d
    move-result v3

    #@4e
    .line 740
    .local v3, "effectiveUpperBound":I
    move v5, v2

    #@4f
    .local v5, "i":I
    :goto_0
    if-gt v5, v3, :cond_1

    #@51
    .line 741
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    #@53
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@5a
    .line 740
    add-int/lit8 v5, v5, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 725
    .end local v2    # "effectiveLowerBound":I
    .end local v3    # "effectiveUpperBound":I
    .end local v4    # "halfMaxCount":I
    .end local v5    # "i":I
    :catchall_0
    move-exception v6

    #@5e
    monitor-exit v7

    #@5f
    throw v6

    #@60
    .line 745
    .restart local v2    # "effectiveLowerBound":I
    .restart local v3    # "effectiveUpperBound":I
    .restart local v4    # "halfMaxCount":I
    .restart local v5    # "i":I
    :cond_1
    :try_start_2
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    #@62
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    #@64
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@67
    move-result-object v8

    #@68
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6b
    monitor-exit v7

    #@6c
    .line 747
    const/4 v6, 0x1

    #@6d
    return v6

    #@6e
    .line 728
    .end local v2    # "effectiveLowerBound":I
    .end local v3    # "effectiveUpperBound":I
    .end local v4    # "halfMaxCount":I
    .end local v5    # "i":I
    :catchall_1
    move-exception v6

    #@6f
    monitor-exit v7

    #@70
    throw v6
.end method

.method public queueRequestedPositionToLoad(I)V
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    .line 709
    iput p1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    #@2
    .line 710
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    #@4
    monitor-enter v1

    #@5
    .line 711
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    #@7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@e
    .line 712
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 708
    return-void

    #@19
    .line 710
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 785
    const/4 v0, 0x0

    #@2
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    #@4
    .line 786
    iput v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    #@6
    .line 787
    iput v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    #@8
    .line 788
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@d
    .line 789
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    #@f
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@12
    .line 790
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    #@14
    monitor-enter v1

    #@15
    .line 791
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    #@17
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    #@1a
    .line 792
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    #@1c
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    .line 780
    return-void

    #@21
    .line 790
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method
