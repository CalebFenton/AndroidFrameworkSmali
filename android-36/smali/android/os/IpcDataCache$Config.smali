.class public Landroid/os/IpcDataCache$Config;
.super Ljava/lang/Object;
.source "IpcDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IpcDataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field final blacklist mArgs:Landroid/app/PropertyInvalidatedCache$Args;

.field private blacklist mChildren:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDisabled:Z

.field final blacklist mName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "maxEntries"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "api"    # Ljava/lang/String;

    .line 474
    invoke-direct {p0, p1, p2, p3, p3}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "maxEntries"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .line 466
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    invoke-direct {v0, p2}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Landroid/os/IpcDataCache$Config;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;)V
    .registers 4
    .param p1, "args"    # Landroid/app/PropertyInvalidatedCache$Args;
    .param p2, "name"    # Ljava/lang/String;

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/IpcDataCache$Config;->mDisabled:Z

    .line 457
    iput-object p1, p0, Landroid/os/IpcDataCache$Config;->mArgs:Landroid/app/PropertyInvalidatedCache$Args;

    .line 458
    iput-object p2, p0, Landroid/os/IpcDataCache$Config;->mName:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IpcDataCache$Config;Ljava/lang/String;)V
    .registers 4
    .param p1, "root"    # Landroid/os/IpcDataCache$Config;
    .param p2, "api"    # Ljava/lang/String;

    .line 490
    iget-object v0, p1, Landroid/os/IpcDataCache$Config;->mArgs:Landroid/app/PropertyInvalidatedCache$Args;

    invoke-virtual {v0, p2}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/os/IpcDataCache$Config;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IpcDataCache$Config;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "root"    # Landroid/os/IpcDataCache$Config;
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 482
    iget-object v0, p1, Landroid/os/IpcDataCache$Config;->mArgs:Landroid/app/PropertyInvalidatedCache$Args;

    invoke-virtual {v0, p2}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/os/IpcDataCache$Config;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method private final blacklist registerChild(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 523
    monitor-enter p0

    .line 524
    :try_start_1
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    if-nez v0, :cond_c

    .line 525
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    .line 527
    :cond_c
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 528
    iget-boolean v0, p0, Landroid/os/IpcDataCache$Config;->mDisabled:Z

    if-eqz v0, :cond_18

    .line 529
    invoke-static {p1}, Landroid/os/IpcDataCache;->disableForCurrentProcess(Ljava/lang/String;)V

    .line 531
    :cond_18
    monitor-exit p0

    .line 532
    return-void

    .line 531
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method


# virtual methods
.method public blacklist cacheNulls(Z)Landroid/os/IpcDataCache$Config;
    .registers 5
    .param p1, "enable"    # Z

    .line 508
    new-instance v0, Landroid/os/IpcDataCache$Config;

    iget-object v1, p0, Landroid/os/IpcDataCache$Config;->mArgs:Landroid/app/PropertyInvalidatedCache$Args;

    invoke-virtual {v1, p1}, Landroid/app/PropertyInvalidatedCache$Args;->cacheNulls(Z)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v1

    iget-object v2, p0, Landroid/os/IpcDataCache$Config;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/os/IpcDataCache$Config;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 499
    new-instance v0, Landroid/os/IpcDataCache$Config;

    iget-object v1, p0, Landroid/os/IpcDataCache$Config;->mArgs:Landroid/app/PropertyInvalidatedCache$Args;

    invoke-direct {v0, v1, p1}, Landroid/os/IpcDataCache$Config;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;)V

    .line 500
    .local v0, "result":Landroid/os/IpcDataCache$Config;
    invoke-direct {p0, p1}, Landroid/os/IpcDataCache$Config;->registerChild(Ljava/lang/String;)V

    .line 501
    return-object v0
.end method

.method public blacklist disableAllForCurrentProcess()V
    .registers 3

    .line 553
    monitor-enter p0

    .line 554
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/os/IpcDataCache$Config;->mDisabled:Z

    .line 555
    invoke-virtual {p0}, Landroid/os/IpcDataCache$Config;->disableForCurrentProcess()V

    .line 556
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    if-eqz v0, :cond_21

    .line 557
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 558
    .local v1, "c":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/IpcDataCache;->disableForCurrentProcess(Ljava/lang/String;)V

    .line 559
    .end local v1    # "c":Ljava/lang/String;
    goto :goto_11

    .line 561
    :cond_21
    monitor-exit p0

    .line 562
    return-void

    .line 561
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public blacklist disableForCurrentProcess()V
    .registers 2

    .line 545
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/IpcDataCache;->disableForCurrentProcess(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public blacklist invalidateCache()V
    .registers 2

    .line 538
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mArgs:Landroid/app/PropertyInvalidatedCache$Args;

    invoke-static {v0}, Landroid/os/IpcDataCache;->invalidateCache(Landroid/app/PropertyInvalidatedCache$Args;)V

    .line 539
    return-void
.end method

.method public blacklist isolateUids(Z)Landroid/os/IpcDataCache$Config;
    .registers 5
    .param p1, "enable"    # Z

    .line 515
    new-instance v0, Landroid/os/IpcDataCache$Config;

    iget-object v1, p0, Landroid/os/IpcDataCache$Config;->mArgs:Landroid/app/PropertyInvalidatedCache$Args;

    invoke-virtual {v1, p1}, Landroid/app/PropertyInvalidatedCache$Args;->isolateUids(Z)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v1

    iget-object v2, p0, Landroid/os/IpcDataCache$Config;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/os/IpcDataCache$Config;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;)V

    return-object v0
.end method
