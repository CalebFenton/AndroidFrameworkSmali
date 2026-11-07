.class Landroid/widget/RemoteViews$RemoteCollectionCache;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteCollectionCache"
.end annotation


# instance fields
.field private final blacklist mIdToUriMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUriToCollectionMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/RemoteViews$RemoteCollectionItems;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public static synthetic blacklist $r8$lambda$0K3JyZ6BtSC02I0QK9fYDD4Kp3U(Landroid/widget/RemoteViews$RemoteCollectionCache;Ljava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->lambda$connectAllUniqueIntents$0(Ljava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdToUriMapping(Landroid/widget/RemoteViews$RemoteCollectionCache;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1487
    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1484
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    .line 1485
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    .line 1487
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 8
    .param p2, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1497
    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1484
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    .line 1485
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    .line 1498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1499
    .local v0, "cacheSize":I
    new-instance v1, Landroid/widget/RemoteViews$HierarchyRootData;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmBitmapCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;

    move-result-object v2

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplicationInfoCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$ApplicationInfoCache;

    move-result-object v3

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmClassCookies(Landroid/widget/RemoteViews;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, v2, p0, v3, p1}, Landroid/widget/RemoteViews$HierarchyRootData;-><init>(Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$RemoteCollectionCache;Landroid/widget/RemoteViews$ApplicationInfoCache;Ljava/util/Map;)V

    .line 1503
    .local v1, "currentRootData":Landroid/widget/RemoteViews$HierarchyRootData;
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_29
    if-ge p1, v0, :cond_3e

    .line 1504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1505
    .local v2, "intentId":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    .line 1506
    .local v3, "intentUri":Ljava/lang/String;
    new-instance v4, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-direct {v4, p2, v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 1507
    .local v4, "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    invoke-virtual {p0, v2, v3, v4}, Landroid/widget/RemoteViews$RemoteCollectionCache;->addMapping(ILjava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 1503
    .end local v2    # "intentId":I
    .end local v3    # "intentUri":Ljava/lang/String;
    .end local v4    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    add-int/lit8 p1, p1, 0x1

    goto :goto_29

    .line 1509
    .end local p1    # "i":I
    :cond_3e
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$RemoteCollectionCache;)V
    .registers 6
    .param p2, "src"    # Landroid/widget/RemoteViews$RemoteCollectionCache;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1489
    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1484
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    .line 1485
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    .line 1490
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_14
    iget-object v0, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_3f

    .line 1491
    iget-object v0, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1492
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    iget-object v2, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1493
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    iget-object v2, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    .end local v0    # "uri":Ljava/lang/String;
    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    .line 1495
    .end local p1    # "i":I
    :cond_3f
    return-void
.end method

.method private blacklist collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V
    .registers 11
    .param p1, "inViews"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1572
    .local p2, "idToIntentMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/Intent;>;"
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mhasSizedRemoteViews(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1573
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmSizedRemoteViews(Landroid/widget/RemoteViews;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 1574
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    invoke-direct {p0, v1, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    .line 1575
    .end local v1    # "remoteViews":Landroid/widget/RemoteViews;
    goto :goto_e

    :cond_1e
    goto/16 :goto_e1

    .line 1576
    :cond_20
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mhasLandscapeAndPortraitLayouts(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1577
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmLandscape(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    .line 1578
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmPortrait(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    goto/16 :goto_e1

    .line 1579
    :cond_36
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_e1

    .line 1580
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$Action;

    .line 1581
    .local v1, "action":Landroid/widget/RemoteViews$Action;
    instance-of v2, v1, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    if-eqz v2, :cond_cb

    move-object v2, v1

    check-cast v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    .line 1583
    .local v2, "rca":Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;
    iget v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_61

    iget-boolean v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    if-nez v3, :cond_61

    .line 1584
    goto :goto_44

    .line 1587
    :cond_61
    iget v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v3, v4, :cond_81

    iget-boolean v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    if-eqz v3, :cond_81

    .line 1588
    iput-boolean v6, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    .line 1593
    iget v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 1594
    goto :goto_44

    .line 1597
    :cond_76
    iget v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    iget-object v4, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1598
    invoke-static {v2, v5}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fputmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 1599
    goto :goto_44

    .line 1604
    :cond_81
    iget-object v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    if-eqz v3, :cond_b8

    .line 1605
    iget-object v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    .line 1606
    .local v3, "uri":Ljava/lang/String;
    iget-object v6, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->indexOfValueByValue(Ljava/lang/Object;)I

    move-result v6

    .line 1607
    .local v6, "index":I
    if-ne v6, v4, :cond_ac

    .line 1608
    iget-object v4, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1609
    .local v4, "newIntentId":I
    iput v4, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    .line 1610
    iget-object v7, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1611
    .end local v4    # "newIntentId":I
    nop

    .line 1617
    iget v4, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    iget-object v7, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {p2, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1618
    invoke-static {v2, v5}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fputmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 1619
    .end local v3    # "uri":Ljava/lang/String;
    .end local v6    # "index":I
    goto :goto_df

    .line 1612
    .restart local v3    # "uri":Ljava/lang/String;
    .restart local v6    # "index":I
    :cond_ac
    iget-object v4, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iput v4, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    .line 1613
    invoke-static {v2, v5}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fputmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 1614
    goto :goto_44

    .line 1620
    .end local v3    # "uri":Ljava/lang/String;
    .end local v6    # "index":I
    :cond_b8
    invoke-static {v2}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fgetmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$fgetmViews(Landroid/widget/RemoteViews$RemoteCollectionItems;)[Landroid/widget/RemoteViews;

    move-result-object v3

    array-length v4, v3

    :goto_c1
    if-ge v6, v4, :cond_df

    aget-object v5, v3, v6

    .line 1621
    .local v5, "views":Landroid/widget/RemoteViews;
    invoke-direct {p0, v5, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    .line 1620
    .end local v5    # "views":Landroid/widget/RemoteViews;
    add-int/lit8 v6, v6, 0x1

    goto :goto_c1

    .line 1624
    .end local v2    # "rca":Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;
    :cond_cb
    instance-of v2, v1, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    if-eqz v2, :cond_df

    move-object v2, v1

    check-cast v2, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    .local v2, "vgaa":Landroid/widget/RemoteViews$ViewGroupActionAdd;
    invoke-static {v2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v3

    if-eqz v3, :cond_df

    .line 1626
    invoke-static {v2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    .line 1628
    .end local v1    # "action":Landroid/widget/RemoteViews$Action;
    .end local v2    # "vgaa":Landroid/widget/RemoteViews$ViewGroupActionAdd;
    :cond_df
    :goto_df
    goto/16 :goto_44

    .line 1630
    :cond_e1
    :goto_e1
    return-void
.end method

.method private blacklist connectAllUniqueIntents(IILandroid/util/SparseArray;Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;
    .registers 11
    .param p1, "individualSize"    # I
    .param p2, "individualBitmapSize"    # I
    .param p4, "collectionCache"    # Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1635
    .local p3, "idToIntentMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/Intent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1636
    .local v0, "intentFutureList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 1637
    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1638
    .local v2, "currentIntentUri":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1639
    .local v3, "currentIntent":Landroid/content/Intent;
    invoke-static {v3, p1, p2, p4}, Landroid/widget/RemoteViews$RemoteCollectionCache;->getItemsFutureFromIntentWithTimeout(Landroid/content/Intent;IILandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    new-instance v5, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v2}, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda1;-><init>(Landroid/widget/RemoteViews$RemoteCollectionCache;Ljava/lang/String;)V

    .line 1641
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    .line 1639
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1636
    .end local v2    # "currentIntentUri":Ljava/lang/String;
    .end local v3    # "currentIntent":Landroid/content/Intent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1647
    .end local v1    # "i":I
    :cond_31
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getItemsFutureFromIntentWithTimeout(Landroid/content/Intent;IILandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;
    .registers 12
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "individualSize"    # I
    .param p2, "individualBitmapSize"    # I
    .param p3, "collectionCache"    # Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II",
            "Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/widget/RemoteViews$RemoteCollectionItems;",
            ">;"
        }
    .end annotation

    .line 1653
    if-nez p0, :cond_17

    .line 1654
    const-string v0, "RemoteViews"

    const-string v1, "Null intent received when generating adapter future"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    .line 1656
    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    .line 1655
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1659
    :cond_17
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1661
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1662
    .local v1, "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/widget/RemoteViews$RemoteCollectionItems;>;"
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1663
    .local v2, "contextPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 1664
    .local v3, "intentComponent":Landroid/content/ComponentName;
    if-eqz v2, :cond_43

    if-eqz v3, :cond_43

    .line 1666
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 1668
    new-instance v4, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v4}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 1669
    return-object v1

    .line 1672
    :cond_43
    new-instance v4, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, p2, v1}, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda0;-><init>(IILjava/util/concurrent/CompletableFuture;)V

    .line 1689
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 1672
    invoke-virtual {p3, p0, v4, v5}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->connectAndConsume(Landroid/content/Intent;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    .line 1691
    new-instance v4, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v4}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    .line 1692
    invoke-virtual {v4}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1691
    const-wide/16 v6, 0x4e20

    invoke-virtual {v1, v4, v6, v7, v5}, Ljava/util/concurrent/CompletableFuture;->completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    .line 1695
    return-object v1
.end method

.method private synthetic blacklist lambda$connectAllUniqueIntents$0(Ljava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V
    .registers 4
    .param p1, "currentIntentUri"    # Ljava/lang/String;
    .param p2, "items"    # Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 1642
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 1643
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    return-void
.end method

.method static synthetic blacklist lambda$connectAllUniqueIntents$1(I)[Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .param p0, "x$0"    # I

    .line 1647
    new-array v0, p0, [Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method static synthetic blacklist lambda$getItemsFutureFromIntentWithTimeout$2(IILjava/util/concurrent/CompletableFuture;Landroid/os/IBinder;)V
    .registers 8
    .param p0, "individualSize"    # I
    .param p1, "individualBitmapSize"    # I
    .param p2, "result"    # Ljava/util/concurrent/CompletableFuture;
    .param p3, "iBinder"    # Landroid/os/IBinder;

    .line 1675
    :try_start_0
    invoke-static {p3}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v0

    .line 1676
    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getRemoteCollectionItems(II)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 1682
    .local v0, "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    goto :goto_1b

    .line 1678
    .end local v0    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    :catch_9
    move-exception v0

    .line 1679
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v1

    .line 1680
    .local v1, "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    const-string v2, "RemoteViews"

    const-string v3, "Error getting collection items from the factory"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1684
    .end local v1    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    .local v0, "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    :goto_1b
    if-nez v0, :cond_26

    .line 1685
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    .line 1688
    :cond_26
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 1689
    return-void
.end method


# virtual methods
.method blacklist addMapping(ILjava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V
    .registers 5
    .param p1, "intentId"    # I
    .param p2, "intentUri"    # Ljava/lang/String;
    .param p3, "items"    # Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 1512
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1513
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    return-void
.end method

.method public blacklist collectAllIntentsNoComplete(Landroid/widget/RemoteViews;ILandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;
    .registers 11
    .param p1, "inViews"    # Landroid/widget/RemoteViews;
    .param p2, "bitmapSizeLimit"    # I
    .param p3, "collectionCache"    # Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "I",
            "Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1536
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1540
    .local v0, "idToIntentMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/Intent;>;"
    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    .line 1543
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1544
    .local v1, "numOfIntents":I
    if-nez v1, :cond_1b

    .line 1545
    const-string v2, "RemoteViews"

    const-string v3, "Possibly notifying updates for nonexistent view Id"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    return-object v2

    .line 1549
    :cond_1b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1553
    .local v2, "sizeTestParcel":Landroid/os/Parcel;
    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v0}, Landroid/widget/RemoteViews;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews;Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    .line 1556
    const v3, 0xc3500

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    sub-int/2addr v3, v5

    .line 1557
    .local v3, "remainingSize":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1559
    if-gez v3, :cond_33

    .line 1560
    goto :goto_35

    .line 1561
    :cond_33
    div-int v4, v3, v1

    :goto_35
    nop

    .line 1563
    .local v4, "individualSize":I
    iget-object v5, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v5}, Landroid/widget/RemoteViews;->-$$Nest$mgetBitmapMemoryUsedByActions(Landroid/widget/RemoteViews;)I

    move-result v5

    sub-int v5, p2, v5

    div-int/2addr v5, v1

    .line 1566
    .local v5, "individualBitmapSizeLimit":I
    invoke-direct {p0, v4, v5, v0, p3}, Landroid/widget/RemoteViews$RemoteCollectionCache;->connectAllUniqueIntents(IILandroid/util/SparseArray;Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v6

    return-object v6
.end method

.method blacklist getItemsForId(I)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .registers 4
    .param p1, "intentId"    # I

    .line 1529
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1530
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$RemoteCollectionItems;

    return-object v1
.end method

.method blacklist setHierarchyDataForId(ILandroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 6
    .param p1, "intentId"    # I
    .param p2, "data"    # Landroid/widget/RemoteViews$HierarchyRootData;

    .line 1518
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1519
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_29

    .line 1520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting hierarchy data for id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    return-void

    .line 1524
    :cond_29
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 1525
    .local v1, "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    invoke-virtual {v1, p2}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 1526
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V
    .registers 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1700
    .local p3, "intentsToIgnore":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/Intent;>;"
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1701
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 1702
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1703
    .local v1, "currentIntentId":I
    if-eqz p3, :cond_21

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1706
    goto :goto_3b

    .line 1708
    :cond_21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1709
    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1710
    .local v2, "intentUri":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1711
    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$RemoteCollectionItems;

    const/4 v4, 0x1

    invoke-static {v3, p1, p2, v4}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/os/Parcel;IZ)V

    .line 1701
    .end local v1    # "currentIntentId":I
    .end local v2    # "intentUri":Ljava/lang/String;
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1713
    .end local v0    # "i":I
    :cond_3e
    return-void
.end method

.method public blacklist writeToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "out"    # Landroid/util/proto/ProtoOutputStream;

    .line 1716
    const-wide v0, 0x10b0000000fL

    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1717
    .local v0, "token":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_57

    .line 1718
    const-wide v3, 0x20b00000001L

    invoke-virtual {p2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1719
    .local v3, "entryToken":J
    iget-object v5, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    .line 1720
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1719
    const-wide v6, 0x10300000001L

    invoke-virtual {p2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1721
    iget-object v5, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1722
    .local v5, "intentUri":Ljava/lang/String;
    const-wide v6, 0x10900000002L

    invoke-virtual {p2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1723
    const-wide v6, 0x10b00000003L

    invoke-virtual {p2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1725
    .local v6, "itemsToken":J
    iget-object v8, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$RemoteCollectionItems;

    const/4 v9, 0x1

    invoke-static {v8, p1, p2, v9}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mwriteToProto(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;Z)V

    .line 1727
    invoke-virtual {p2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1728
    invoke-virtual {p2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1717
    .end local v3    # "entryToken":J
    .end local v5    # "intentUri":Ljava/lang/String;
    .end local v6    # "itemsToken":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1730
    .end local v2    # "i":I
    :cond_57
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1731
    return-void
.end method
