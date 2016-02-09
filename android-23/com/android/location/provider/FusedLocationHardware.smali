.class public final Lcom/android/location/provider/FusedLocationHardware;
.super Ljava/lang/Object;
.source "FusedLocationHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;,
        Lcom/android/location/provider/FusedLocationHardware$MessageCommand;,
        Lcom/android/location/provider/FusedLocationHardware$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FusedLocationHardware"


# instance fields
.field private mInternalSink:Landroid/hardware/location/IFusedLocationHardwareSink;

.field private mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

.field mSinkList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/location/provider/FusedLocationHardwareSink;",
            "Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/location/provider/FusedLocationHardware;I)V
    .locals 0
    .param p1, "capabilities"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/location/provider/FusedLocationHardware;->dispatchCapabilities(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/location/provider/FusedLocationHardware;Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/location/provider/FusedLocationHardware;->dispatchDiagnosticData(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/location/provider/FusedLocationHardware;[Landroid/location/Location;)V
    .locals 0
    .param p1, "locations"    # [Landroid/location/Location;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/location/provider/FusedLocationHardware;->dispatchLocations([Landroid/location/Location;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/location/provider/FusedLocationHardware;I)V
    .locals 0
    .param p1, "status"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/location/provider/FusedLocationHardware;->dispatchStatus(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/hardware/location/IFusedLocationHardware;)V
    .locals 1
    .param p1, "locationHardware"    # Landroid/hardware/location/IFusedLocationHardware;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 42
    iput-object v0, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    #@a
    .line 45
    new-instance v0, Lcom/android/location/provider/FusedLocationHardware$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/location/provider/FusedLocationHardware$1;-><init>(Lcom/android/location/provider/FusedLocationHardware;)V

    #@f
    iput-object v0, p0, Lcom/android/location/provider/FusedLocationHardware;->mInternalSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    #@11
    .line 71
    iput-object p1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@13
    .line 70
    return-void
.end method

.method private dispatchCapabilities(I)V
    .locals 12
    .param p1, "capabilities"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 344
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    #@3
    monitor-enter v0

    #@4
    .line 345
    :try_start_0
    iget-object v10, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .local v10, "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    monitor-exit v0

    #@7
    .line 348
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v8

    #@f
    .local v8, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v7

    #@19
    check-cast v7, Ljava/util/Map$Entry;

    #@1b
    .line 350
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    move-object v11, v0

    #@20
    check-cast v11, Landroid/os/Handler;

    #@22
    .line 352
    new-instance v0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;

    #@24
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Lcom/android/location/provider/FusedLocationHardwareSink;

    #@2a
    const/4 v6, 0x0

    #@2b
    move-object v1, p0

    #@2c
    move-object v4, v3

    #@2d
    move v5, p1

    #@2e
    invoke-direct/range {v0 .. v6}, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;-><init>(Lcom/android/location/provider/FusedLocationHardware;Lcom/android/location/provider/FusedLocationHardwareSink;[Landroid/location/Location;Ljava/lang/String;II)V

    #@31
    .line 351
    const/4 v1, 0x3

    #@32
    .line 349
    invoke-static {v11, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@35
    move-result-object v9

    #@36
    .line 353
    .local v9, "message":Landroid/os/Message;
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    #@39
    goto :goto_0

    #@3a
    .line 344
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    .end local v8    # "entry$iterator":Ljava/util/Iterator;
    .end local v9    # "message":Landroid/os/Message;
    .end local v10    # "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v0

    #@3c
    throw v1

    #@3d
    .line 342
    .restart local v8    # "entry$iterator":Ljava/util/Iterator;
    .restart local v10    # "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    :cond_0
    return-void
.end method

.method private dispatchDiagnosticData(Ljava/lang/String;)V
    .locals 12
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 329
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    #@3
    monitor-enter v0

    #@4
    .line 330
    :try_start_0
    iget-object v10, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .local v10, "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    monitor-exit v0

    #@7
    .line 333
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v8

    #@f
    .local v8, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v7

    #@19
    check-cast v7, Ljava/util/Map$Entry;

    #@1b
    .line 335
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    move-object v11, v0

    #@20
    check-cast v11, Landroid/os/Handler;

    #@22
    .line 337
    new-instance v0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;

    #@24
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Lcom/android/location/provider/FusedLocationHardwareSink;

    #@2a
    const/4 v3, 0x0

    #@2b
    move-object v1, p0

    #@2c
    move-object v4, p1

    #@2d
    move v6, v5

    #@2e
    invoke-direct/range {v0 .. v6}, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;-><init>(Lcom/android/location/provider/FusedLocationHardware;Lcom/android/location/provider/FusedLocationHardwareSink;[Landroid/location/Location;Ljava/lang/String;II)V

    #@31
    .line 336
    const/4 v1, 0x2

    #@32
    .line 334
    invoke-static {v11, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@35
    move-result-object v9

    #@36
    .line 338
    .local v9, "message":Landroid/os/Message;
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    #@39
    goto :goto_0

    #@3a
    .line 329
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    .end local v8    # "entry$iterator":Ljava/util/Iterator;
    .end local v9    # "message":Landroid/os/Message;
    .end local v10    # "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v0

    #@3c
    throw v1

    #@3d
    .line 327
    .restart local v8    # "entry$iterator":Ljava/util/Iterator;
    .restart local v10    # "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    :cond_0
    return-void
.end method

.method private dispatchLocations([Landroid/location/Location;)V
    .locals 12
    .param p1, "locations"    # [Landroid/location/Location;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 314
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    #@3
    monitor-enter v0

    #@4
    .line 315
    :try_start_0
    iget-object v10, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .local v10, "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    monitor-exit v0

    #@7
    .line 318
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v8

    #@f
    .local v8, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v7

    #@19
    check-cast v7, Ljava/util/Map$Entry;

    #@1b
    .line 320
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    move-object v11, v0

    #@20
    check-cast v11, Landroid/os/Handler;

    #@22
    .line 322
    new-instance v0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;

    #@24
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Lcom/android/location/provider/FusedLocationHardwareSink;

    #@2a
    const/4 v4, 0x0

    #@2b
    move-object v1, p0

    #@2c
    move-object v3, p1

    #@2d
    move v6, v5

    #@2e
    invoke-direct/range {v0 .. v6}, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;-><init>(Lcom/android/location/provider/FusedLocationHardware;Lcom/android/location/provider/FusedLocationHardwareSink;[Landroid/location/Location;Ljava/lang/String;II)V

    #@31
    .line 321
    const/4 v1, 0x1

    #@32
    .line 319
    invoke-static {v11, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@35
    move-result-object v9

    #@36
    .line 323
    .local v9, "message":Landroid/os/Message;
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    #@39
    goto :goto_0

    #@3a
    .line 314
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    .end local v8    # "entry$iterator":Ljava/util/Iterator;
    .end local v9    # "message":Landroid/os/Message;
    .end local v10    # "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v0

    #@3c
    throw v1

    #@3d
    .line 312
    .restart local v8    # "entry$iterator":Ljava/util/Iterator;
    .restart local v10    # "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    :cond_0
    return-void
.end method

.method private dispatchStatus(I)V
    .locals 12
    .param p1, "status"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 359
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    #@3
    monitor-enter v0

    #@4
    .line 360
    :try_start_0
    iget-object v10, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .local v10, "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    monitor-exit v0

    #@7
    .line 363
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v8

    #@f
    .local v8, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v7

    #@19
    check-cast v7, Ljava/util/Map$Entry;

    #@1b
    .line 365
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    move-object v11, v0

    #@20
    check-cast v11, Landroid/os/Handler;

    #@22
    .line 367
    new-instance v0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;

    #@24
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Lcom/android/location/provider/FusedLocationHardwareSink;

    #@2a
    const/4 v5, 0x0

    #@2b
    move-object v1, p0

    #@2c
    move-object v4, v3

    #@2d
    move v6, p1

    #@2e
    invoke-direct/range {v0 .. v6}, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;-><init>(Lcom/android/location/provider/FusedLocationHardware;Lcom/android/location/provider/FusedLocationHardwareSink;[Landroid/location/Location;Ljava/lang/String;II)V

    #@31
    .line 366
    const/4 v1, 0x4

    #@32
    .line 364
    invoke-static {v11, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@35
    move-result-object v9

    #@36
    .line 368
    .local v9, "message":Landroid/os/Message;
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    #@39
    goto :goto_0

    #@3a
    .line 359
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    .end local v8    # "entry$iterator":Ljava/util/Iterator;
    .end local v9    # "message":Landroid/os/Message;
    .end local v10    # "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v0

    #@3c
    throw v1

    #@3d
    .line 357
    .restart local v8    # "entry$iterator":Ljava/util/Iterator;
    .restart local v10    # "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public flushBatchedLocations()V
    .locals 3

    #@0
    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@2
    invoke-interface {v1}, Landroid/hardware/location/IFusedLocationHardware;->flushBatchedLocations()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 177
    :goto_0
    return-void

    #@6
    .line 180
    :catch_0
    move-exception v0

    #@7
    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FusedLocationHardware"

    #@a
    const-string/jumbo v2, "RemoteException at flushBatchedLocations"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    goto :goto_0
.end method

.method public getSupportedBatchSize()I
    .locals 3

    #@0
    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@2
    invoke-interface {v1}, Landroid/hardware/location/IFusedLocationHardware;->getSupportedBatchSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 139
    :catch_0
    move-exception v0

    #@8
    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FusedLocationHardware"

    #@b
    const-string/jumbo v2, "RemoteException at getSupportedBatchSize"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 141
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public getVersion()I
    .locals 3

    #@0
    .prologue
    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@2
    invoke-interface {v1}, Landroid/hardware/location/IFusedLocationHardware;->getVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 233
    :catch_0
    move-exception v0

    #@8
    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FusedLocationHardware"

    #@b
    const-string/jumbo v2, "RemoteException at getVersion"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 236
    const/4 v1, 0x1

    #@12
    return v1
.end method

.method public injectDeviceContext(I)V
    .locals 3
    .param p1, "deviceEnabledContext"    # I

    #@0
    .prologue
    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardware;->injectDeviceContext(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 211
    :goto_0
    return-void

    #@6
    .line 214
    :catch_0
    move-exception v0

    #@7
    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FusedLocationHardware"

    #@a
    const-string/jumbo v2, "RemoteException at injectDeviceContext"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    goto :goto_0
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardware;->injectDiagnosticData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 194
    :goto_0
    return-void

    #@6
    .line 197
    :catch_0
    move-exception v0

    #@7
    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FusedLocationHardware"

    #@a
    const-string/jumbo v2, "RemoteException at injectDiagnosticData"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    goto :goto_0
.end method

.method public registerSink(Lcom/android/location/provider/FusedLocationHardwareSink;Landroid/os/Looper;)V
    .locals 5
    .param p1, "sink"    # Lcom/android/location/provider/FusedLocationHardwareSink;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 78
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 79
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v4, "Parameter sink and looper cannot be null."

    #@9
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 83
    :cond_1
    iget-object v4, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    #@f
    monitor-enter v4

    #@10
    .line 85
    :try_start_0
    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    #@12
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_2

    #@18
    const/4 v2, 0x1

    #@19
    .line 87
    .local v2, "registerSink":Z
    :goto_0
    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_3

    #@21
    monitor-exit v4

    #@22
    .line 88
    return-void

    #@23
    .line 85
    .end local v2    # "registerSink":Z
    :cond_2
    const/4 v2, 0x0

    #@24
    .restart local v2    # "registerSink":Z
    goto :goto_0

    #@25
    .line 92
    :cond_3
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    #@27
    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    #@29
    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@2c
    .line 93
    .local v1, "newSinkList":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    new-instance v3, Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;

    #@2e
    invoke-direct {v3, p0, p2}, Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;-><init>(Lcom/android/location/provider/FusedLocationHardware;Landroid/os/Looper;)V

    #@31
    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    .line 94
    iput-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    monitor-exit v4

    #@37
    .line 97
    if-eqz v2, :cond_4

    #@39
    .line 99
    :try_start_2
    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@3b
    iget-object v4, p0, Lcom/android/location/provider/FusedLocationHardware;->mInternalSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    #@3d
    invoke-interface {v3, v4}, Landroid/hardware/location/IFusedLocationHardware;->registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@40
    .line 77
    :cond_4
    :goto_1
    return-void

    #@41
    .line 83
    .end local v1    # "newSinkList":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    .end local v2    # "registerSink":Z
    :catchall_0
    move-exception v3

    #@42
    monitor-exit v4

    #@43
    throw v3

    #@44
    .line 100
    .restart local v1    # "newSinkList":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    .restart local v2    # "registerSink":Z
    :catch_0
    move-exception v0

    #@45
    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FusedLocationHardware"

    #@48
    const-string/jumbo v4, "RemoteException at registerSink"

    #@4b
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    goto :goto_1
.end method

.method public requestBatchOfLocations(I)V
    .locals 3
    .param p1, "batchSizeRequest"    # I

    #@0
    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardware;->requestBatchOfLocations(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 169
    :goto_0
    return-void

    #@6
    .line 172
    :catch_0
    move-exception v0

    #@7
    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FusedLocationHardware"

    #@a
    const-string/jumbo v2, "RemoteException at requestBatchOfLocations"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    goto :goto_0
.end method

.method public startBatching(ILcom/android/location/provider/GmsFusedBatchOptions;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "batchOptions"    # Lcom/android/location/provider/GmsFusedBatchOptions;

    #@0
    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@2
    invoke-virtual {p2}, Lcom/android/location/provider/GmsFusedBatchOptions;->getParcelableOptions()Landroid/location/FusedBatchOptions;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, p1, v2}, Landroid/hardware/location/IFusedLocationHardware;->startBatching(ILandroid/location/FusedBatchOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 145
    :goto_0
    return-void

    #@a
    .line 148
    :catch_0
    move-exception v0

    #@b
    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FusedLocationHardware"

    #@e
    const-string/jumbo v2, "RemoteException at startBatching"

    #@11
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    goto :goto_0
.end method

.method public stopBatching(I)V
    .locals 3
    .param p1, "id"    # I

    #@0
    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardware;->stopBatching(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 153
    :goto_0
    return-void

    #@6
    .line 156
    :catch_0
    move-exception v0

    #@7
    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FusedLocationHardware"

    #@a
    const-string/jumbo v2, "RemoteException at stopBatching"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    goto :goto_0
.end method

.method public supportsDeviceContextInjection()Z
    .locals 3

    #@0
    .prologue
    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@2
    invoke-interface {v1}, Landroid/hardware/location/IFusedLocationHardware;->supportsDeviceContextInjection()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 205
    :catch_0
    move-exception v0

    #@8
    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FusedLocationHardware"

    #@b
    const-string/jumbo v2, "RemoteException at supportsDeviceContextInjection"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 207
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public supportsDiagnosticDataInjection()Z
    .locals 3

    #@0
    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@2
    invoke-interface {v1}, Landroid/hardware/location/IFusedLocationHardware;->supportsDiagnosticDataInjection()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 188
    :catch_0
    move-exception v0

    #@8
    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FusedLocationHardware"

    #@b
    const-string/jumbo v2, "RemoteException at supportsDiagnisticDataInjection"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 190
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public unregisterSink(Lcom/android/location/provider/FusedLocationHardwareSink;)V
    .locals 5
    .param p1, "sink"    # Lcom/android/location/provider/FusedLocationHardwareSink;

    #@0
    .prologue
    .line 107
    if-nez p1, :cond_0

    #@2
    .line 108
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "Parameter sink cannot be null."

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 112
    :cond_0
    iget-object v4, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    #@d
    monitor-enter v4

    #@e
    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    #@10
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_1

    #@16
    monitor-exit v4

    #@17
    .line 115
    return-void

    #@18
    .line 119
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    #@1a
    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    #@1c
    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@1f
    .line 120
    .local v1, "newSinkList":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 122
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_3

    #@28
    const/4 v2, 0x1

    #@29
    .line 124
    .local v2, "unregisterSink":Z
    :goto_0
    iput-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    monitor-exit v4

    #@2c
    .line 127
    if-eqz v2, :cond_2

    #@2e
    .line 129
    :try_start_2
    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@30
    iget-object v4, p0, Lcom/android/location/provider/FusedLocationHardware;->mInternalSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    #@32
    invoke-interface {v3, v4}, Landroid/hardware/location/IFusedLocationHardware;->unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@35
    .line 106
    :cond_2
    :goto_1
    return-void

    #@36
    .line 122
    .end local v2    # "unregisterSink":Z
    :cond_3
    const/4 v2, 0x0

    #@37
    .restart local v2    # "unregisterSink":Z
    goto :goto_0

    #@38
    .line 112
    .end local v1    # "newSinkList":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    .end local v2    # "unregisterSink":Z
    :catchall_0
    move-exception v3

    #@39
    monitor-exit v4

    #@3a
    throw v3

    #@3b
    .line 130
    .restart local v1    # "newSinkList":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    .restart local v2    # "unregisterSink":Z
    :catch_0
    move-exception v0

    #@3c
    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FusedLocationHardware"

    #@3f
    const-string/jumbo v4, "RemoteException at unregisterSink"

    #@42
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    goto :goto_1
.end method

.method public updateBatchingOptions(ILcom/android/location/provider/GmsFusedBatchOptions;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "batchOptions"    # Lcom/android/location/provider/GmsFusedBatchOptions;

    #@0
    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@2
    invoke-virtual {p2}, Lcom/android/location/provider/GmsFusedBatchOptions;->getParcelableOptions()Landroid/location/FusedBatchOptions;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, p1, v2}, Landroid/hardware/location/IFusedLocationHardware;->updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 161
    :goto_0
    return-void

    #@a
    .line 164
    :catch_0
    move-exception v0

    #@b
    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FusedLocationHardware"

    #@e
    const-string/jumbo v2, "RemoteException at updateBatchingOptions"

    #@11
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    goto :goto_0
.end method
