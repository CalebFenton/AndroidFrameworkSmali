.class public abstract Landroid/view/SurfaceControlHdrLayerInfoListener;
.super Ljava/lang/Object;
.source "SurfaceControlHdrLayerInfoListener.java"


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private blacklist mRegisteredListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 32
    nop

    .line 34
    const-class v0, Landroid/view/SurfaceControlHdrLayerInfoListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/view/SurfaceControlHdrLayerInfoListener;->nGetDestructor()J

    move-result-wide v1

    .line 33
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControlHdrLayerInfoListener;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 32
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControlHdrLayerInfoListener;->mRegisteredListeners:Landroid/util/ArrayMap;

    return-void
.end method

.method private static native blacklist nGetDestructor()J
.end method

.method private native blacklist nRegister(Landroid/os/IBinder;)J
.end method


# virtual methods
.method public abstract blacklist onHdrInfoChanged(Landroid/os/IBinder;IIIIF)V
.end method

.method public blacklist register(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-enter p0

    .line 61
    :try_start_4
    iget-object v0, p0, Landroid/view/SurfaceControlHdrLayerInfoListener;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 62
    monitor-exit p0

    return-void

    .line 64
    :cond_e
    invoke-direct {p0, p1}, Landroid/view/SurfaceControlHdrLayerInfoListener;->nRegister(Landroid/os/IBinder;)J

    move-result-wide v0

    .line 65
    .local v0, "nativePtr":J
    sget-object v2, Landroid/view/SurfaceControlHdrLayerInfoListener;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v2

    .line 66
    .local v2, "destructor":Ljava/lang/Runnable;
    iget-object v3, p0, Landroid/view/SurfaceControlHdrLayerInfoListener;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    nop

    .end local v0    # "nativePtr":J
    .end local v2    # "destructor":Ljava/lang/Runnable;
    monitor-exit p0

    .line 68
    return-void

    .line 67
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public blacklist unregister(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 76
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-enter p0

    .line 79
    :try_start_4
    iget-object v0, p0, Landroid/view/SurfaceControlHdrLayerInfoListener;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 80
    .local v0, "destructor":Ljava/lang/Runnable;
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_13

    .line 81
    if-eqz v0, :cond_12

    .line 82
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 84
    :cond_12
    return-void

    .line 80
    .end local v0    # "destructor":Ljava/lang/Runnable;
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public blacklist unregisterAll()V
    .registers 4

    .line 92
    monitor-enter p0

    .line 93
    :try_start_1
    iget-object v0, p0, Landroid/view/SurfaceControlHdrLayerInfoListener;->mRegisteredListeners:Landroid/util/ArrayMap;

    .line 94
    .local v0, "toDestroy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/lang/Runnable;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceControlHdrLayerInfoListener;->mRegisteredListeners:Landroid/util/ArrayMap;

    .line 95
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_24

    .line 96
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 97
    .local v2, "destructor":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 98
    .end local v2    # "destructor":Ljava/lang/Runnable;
    goto :goto_13

    .line 99
    :cond_23
    return-void

    .line 95
    .end local v0    # "toDestroy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/lang/Runnable;>;"
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method
