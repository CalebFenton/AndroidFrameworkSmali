.class final Landroid/os/StrictMode$InstanceTracker;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceTracker"
.end annotation


# static fields
.field private static final sInstanceCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mKlass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2511
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 2510
    sput-object v0, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    #@7
    .line 2509
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6
    .param p1, "instance"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2516
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v2

    #@7
    iput-object v2, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    #@9
    .line 2518
    sget-object v3, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    #@b
    monitor-enter v3

    #@c
    .line 2519
    :try_start_0
    sget-object v2, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    #@e
    iget-object v4, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    #@10
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/lang/Integer;

    #@16
    .line 2520
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    #@18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v2

    #@1c
    add-int/lit8 v0, v2, 0x1

    #@1e
    .line 2521
    .local v0, "newValue":I
    :goto_0
    sget-object v2, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    #@20
    iget-object v4, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    #@22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit v3

    #@2a
    .line 2515
    return-void

    #@2b
    .line 2520
    .end local v0    # "newValue":I
    :cond_0
    const/4 v0, 0x1

    #@2c
    .restart local v0    # "newValue":I
    goto :goto_0

    #@2d
    .line 2518
    .end local v0    # "newValue":I
    .end local v1    # "value":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit v3

    #@2f
    throw v2
.end method

.method public static getInstanceCount(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 2545
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 2546
    :try_start_0
    sget-object v1, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Integer;

    #@b
    .line 2547
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v1

    #@11
    :goto_0
    monitor-exit v2

    #@12
    return v1

    #@13
    :cond_0
    const/4 v1, 0x0

    #@14
    goto :goto_0

    #@15
    .line 2545
    .end local v0    # "value":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method


# virtual methods
.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 2528
    :try_start_0
    sget-object v3, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    #@2
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3
    .line 2529
    :try_start_1
    sget-object v2, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    #@5
    iget-object v4, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    #@7
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Ljava/lang/Integer;

    #@d
    .line 2530
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    #@f
    .line 2531
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result v2

    #@13
    add-int/lit8 v0, v2, -0x1

    #@15
    .line 2532
    .local v0, "newValue":I
    if-lez v0, :cond_1

    #@17
    .line 2533
    sget-object v2, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    #@19
    iget-object v4, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    #@1b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .end local v0    # "newValue":I
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    .line 2540
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@26
    .line 2526
    return-void

    #@27
    .line 2535
    .restart local v0    # "newValue":I
    :cond_1
    :try_start_3
    sget-object v2, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    #@29
    iget-object v4, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    #@2b
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 2528
    .end local v0    # "newValue":I
    .end local v1    # "value":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    #@30
    :try_start_4
    monitor-exit v3

    #@31
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@32
    .line 2539
    :catchall_1
    move-exception v2

    #@33
    .line 2540
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@36
    .line 2539
    throw v2
.end method
