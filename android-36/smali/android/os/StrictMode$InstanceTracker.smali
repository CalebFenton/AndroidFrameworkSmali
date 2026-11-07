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
.field private static final greylist-max-o sInstanceCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mKlass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 8
    .param p1, "instance"    # Ljava/lang/Object;

    .line 3304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    .line 3307
    sget-object v0, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    monitor-enter v0

    .line 3308
    :try_start_c
    sget-object v1, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3309
    .local v1, "value":Ljava/lang/Integer;
    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 3310
    .local v2, "newValue":I
    :cond_1e
    sget-object v3, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3311
    nop

    .end local v1    # "value":Ljava/lang/Integer;
    .end local v2    # "newValue":I
    monitor-exit v0

    .line 3312
    return-void

    .line 3311
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public static greylist-max-o getInstanceCount(Ljava/lang/Class;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 3334
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    monitor-enter v0

    .line 3335
    :try_start_3
    sget-object v1, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3336
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    monitor-exit v0

    return v2

    .line 3337
    .end local v1    # "value":Ljava/lang/Integer;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3317
    :try_start_0
    sget-object v0, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_33

    .line 3318
    :try_start_3
    sget-object v1, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3319
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_2a

    .line 3320
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 3321
    .local v2, "newValue":I
    if-lez v2, :cond_23

    .line 3322
    sget-object v3, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 3324
    :cond_23
    sget-object v3, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3327
    .end local v1    # "value":Ljava/lang/Integer;
    .end local v2    # "newValue":I
    :cond_2a
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_30

    .line 3329
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3330
    nop

    .line 3331
    return-void

    .line 3327
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local p0    # "this":Landroid/os/StrictMode$InstanceTracker;
    :try_start_32
    throw v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 3329
    .restart local p0    # "this":Landroid/os/StrictMode$InstanceTracker;
    :catchall_33
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3330
    throw v0
.end method
