.class final Landroid/hardware/camera2/CameraManager$FoldStateListener;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FoldStateListener"
.end annotation


# instance fields
.field private blacklist mDeviceStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/camera2/CameraManager$DeviceStateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceStateManagerFlags:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

.field private blacklist mFoldedDeviceState:Z

.field private final blacklist mFoldedDeviceStates:[I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateListeners:Ljava/util/ArrayList;

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceStates:[I

    .line 264
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateManagerFlags:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

    .line 265
    return-void
.end method

.method private declared-synchronized blacklist handleStateChange(Landroid/hardware/devicestate/DeviceState;)V
    .registers 5
    .param p1, "state"    # Landroid/hardware/devicestate/DeviceState;

    monitor-enter p0

    .line 269
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateManagerFlags:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;->deviceStatePropertyMigration()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 270
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v0

    .local v0, "folded":Z
    goto :goto_1a

    .line 273
    .end local v0    # "folded":Z
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$FoldStateListener;
    :cond_10
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceStates:[I

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 276
    .restart local v0    # "folded":Z
    :goto_1a
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceState:Z

    .line 277
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 278
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;>;"
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 279
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    .line 280
    .local v2, "callback":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    if-eqz v2, :cond_3a

    .line 281
    invoke-interface {v2, v0}, Landroid/hardware/camera2/CameraManager$DeviceStateListener;->onDeviceStateChanged(Z)V

    goto :goto_3d

    .line 283
    :cond_3a
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_40

    .line 285
    .end local v2    # "callback":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    :goto_3d
    goto :goto_22

    .line 286
    :cond_3e
    monitor-exit p0

    return-void

    .line 268
    .end local v0    # "folded":Z
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;>;"
    .end local p1    # "state":Landroid/hardware/devicestate/DeviceState;
    :catchall_40
    move-exception p1

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p1
.end method

.method static synthetic blacklist lambda$addDeviceStateListener$0(Ljava/lang/ref/WeakReference;)Z
    .registers 2
    .param p0, "l"    # Ljava/lang/ref/WeakReference;

    .line 290
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public declared-synchronized blacklist addDeviceStateListener(Landroid/hardware/camera2/CameraManager$DeviceStateListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    monitor-enter p0

    .line 289
    :try_start_1
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceState:Z

    invoke-interface {p1, v0}, Landroid/hardware/camera2/CameraManager$DeviceStateListener;->onDeviceStateChanged(Z)V

    .line 290
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/hardware/camera2/CameraManager$FoldStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/hardware/camera2/CameraManager$FoldStateListener$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 291
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 292
    monitor-exit p0

    return-void

    .line 288
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$FoldStateListener;
    .end local p1    # "listener":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public whitelist onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .registers 2
    .param p1, "state"    # Landroid/hardware/devicestate/DeviceState;

    .line 297
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->handleStateChange(Landroid/hardware/devicestate/DeviceState;)V

    .line 298
    return-void
.end method
