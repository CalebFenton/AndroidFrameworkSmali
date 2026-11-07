.class public final Landroid/os/BatteryStats$HistoryEventTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryEventTracker"
.end annotation


# instance fields
.field private final greylist-max-o mActiveEvents:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 2352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2353
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public greylist-max-o getStateForEvent(I)Ljava/util/HashMap;
    .registers 3
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .line 2405
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public greylist-max-o removeEvents(I)V
    .registers 5
    .param p1, "code"    # I

    .line 2400
    const v0, -0xc001

    and-int/2addr v0, p1

    .line 2401
    .local v0, "idx":I
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 2402
    return-void
.end method

.method public greylist-max-o updateState(ILjava/lang/String;II)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "poolIdx"    # I

    .line 2357
    const v0, 0x8000

    and-int/2addr v0, p1

    const v1, -0xc001

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    .line 2358
    and-int v0, p1, v1

    .line 2359
    .local v0, "idx":I
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    .line 2360
    .local v1, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v1, :cond_1c

    .line 2361
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    .line 2362
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aput-object v1, v3, v0

    .line 2364
    :cond_1c
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 2365
    .local v3, "uids":Landroid/util/SparseIntArray;
    if-nez v3, :cond_2d

    .line 2366
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    move-object v3, v4

    .line 2367
    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2369
    :cond_2d
    invoke-virtual {v3, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_34

    .line 2371
    return v2

    .line 2373
    :cond_34
    invoke-virtual {v3, p3, p4}, Landroid/util/SparseIntArray;->put(II)V

    .end local v0    # "idx":I
    .end local v1    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v3    # "uids":Landroid/util/SparseIntArray;
    goto :goto_62

    .line 2374
    :cond_38
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_62

    .line 2375
    and-int v0, p1, v1

    .line 2376
    .restart local v0    # "idx":I
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    .line 2377
    .restart local v1    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v1, :cond_45

    .line 2379
    return v2

    .line 2381
    :cond_45
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 2382
    .restart local v3    # "uids":Landroid/util/SparseIntArray;
    if-nez v3, :cond_4e

    .line 2384
    return v2

    .line 2386
    :cond_4e
    invoke-virtual {v3, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 2387
    if-gez v0, :cond_55

    .line 2389
    return v2

    .line 2391
    :cond_55
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2392
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_63

    .line 2393
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 2374
    .end local v0    # "idx":I
    .end local v1    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v3    # "uids":Landroid/util/SparseIntArray;
    :cond_62
    :goto_62
    nop

    .line 2396
    :cond_63
    :goto_63
    const/4 v0, 0x1

    return v0
.end method
