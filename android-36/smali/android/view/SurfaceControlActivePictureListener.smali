.class public abstract Landroid/view/SurfaceControlActivePictureListener;
.super Ljava/lang/Object;
.source "SurfaceControlActivePictureListener.java"


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private blacklist mDestructor:Ljava/lang/Runnable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 28
    nop

    .line 30
    const-class v0, Landroid/view/SurfaceControlActivePictureListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 31
    invoke-static {}, Landroid/view/SurfaceControlActivePictureListener;->nativeGetDestructor()J

    move-result-wide v1

    .line 29
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControlActivePictureListener;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 28
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist nativeGetDestructor()J
.end method

.method private native blacklist nativeMakeAndStartListening()J
.end method


# virtual methods
.method public abstract blacklist onActivePicturesChanged([Landroid/view/SurfaceControlActivePicture;)V
.end method

.method public blacklist startListening()V
    .registers 4

    .line 45
    monitor-enter p0

    .line 46
    :try_start_1
    invoke-direct {p0}, Landroid/view/SurfaceControlActivePictureListener;->nativeMakeAndStartListening()J

    move-result-wide v0

    .line 47
    .local v0, "nativePtr":J
    sget-object v2, Landroid/view/SurfaceControlActivePictureListener;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v2

    iput-object v2, p0, Landroid/view/SurfaceControlActivePictureListener;->mDestructor:Ljava/lang/Runnable;

    .line 48
    .end local v0    # "nativePtr":J
    monitor-exit p0

    .line 49
    return-void

    .line 48
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public blacklist stopListening()V
    .registers 2

    .line 57
    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Landroid/view/SurfaceControlActivePictureListener;->mDestructor:Ljava/lang/Runnable;

    .line 59
    .local v0, "destructor":Ljava/lang/Runnable;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_a

    .line 60
    if-eqz v0, :cond_9

    .line 61
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 63
    :cond_9
    return-void

    .line 59
    .end local v0    # "destructor":Ljava/lang/Runnable;
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method
