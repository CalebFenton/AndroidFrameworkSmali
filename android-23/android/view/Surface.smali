.class public Landroid/view/Surface;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$OutOfResourcesException;,
        Landroid/view/Surface$CompatibleCanvas;,
        Landroid/view/Surface$HwuiContext;,
        Landroid/view/Surface$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Surface"


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCompatibleMatrix:Landroid/graphics/Matrix;

.field private mGenerationId:I

.field private mHwuiContext:Landroid/view/Surface$HwuiContext;

.field final mLock:Ljava/lang/Object;

.field private mLockedObject:J

.field private mName:Ljava/lang/String;

.field mNativeObject:J


# direct methods
.method static synthetic -get0(Landroid/view/Surface;)Landroid/graphics/Matrix;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(JJ)J
    .locals 2
    .param p0, "rootNode"    # J
    .param p2, "surface"    # J

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/view/Surface;->nHwuiCreate(JJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap1(J)V
    .locals 0
    .param p0, "renderer"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/view/Surface;->nHwuiDestroy(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(J)V
    .locals 0
    .param p0, "renderer"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/view/Surface;->nHwuiDraw(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(JJ)V
    .locals 0
    .param p0, "renderer"    # J
    .param p2, "surface"    # J

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/view/Surface;->nHwuiSetSurface(JJ)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 60
    new-instance v0, Landroid/view/Surface$1;

    #@2
    invoke-direct {v0}, Landroid/view/Surface$1;-><init>()V

    #@5
    .line 59
    sput-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 82
    new-instance v0, Ljava/lang/Object;

    #@b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@e
    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@10
    .line 87
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas;)V

    #@16
    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    #@18
    .line 124
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "nativeObject"    # J

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 82
    new-instance v0, Ljava/lang/Object;

    #@b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@e
    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@10
    .line 87
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas;)V

    #@16
    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    #@18
    .line 151
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@1a
    monitor-enter v0

    #@1b
    .line 152
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v0

    #@1f
    .line 150
    return-void

    #@20
    .line 151
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v0

    #@22
    throw v1
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 79
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@a
    .line 82
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@11
    .line 87
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    #@13
    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas;)V

    #@16
    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    #@18
    .line 139
    if-nez p1, :cond_0

    #@1a
    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v1, "surfaceTexture must not be null"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 143
    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@25
    monitor-enter v1

    #@26
    .line 144
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    #@2c
    .line 145
    invoke-static {p1}, Landroid/view/Surface;->nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)J

    #@2f
    move-result-wide v2

    #@30
    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    monitor-exit v1

    #@34
    .line 138
    return-void

    #@35
    .line 143
    :catchall_0
    move-exception v0

    #@36
    monitor-exit v1

    #@37
    throw v0
.end method

.method private checkNotReleasedLocked()V
    .locals 4

    #@0
    .prologue
    .line 472
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Surface has already been released."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 471
    :cond_0
    return-void
.end method

.method private static native nHwuiCreate(JJ)J
.end method

.method private static native nHwuiDestroy(J)V
.end method

.method private static native nHwuiDraw(J)V
.end method

.method private static native nHwuiSetSurface(JJ)V
.end method

.method private static native nativeAllocateBuffers(J)V
.end method

.method private static native nativeCreateFromSurfaceControl(J)J
.end method

.method private static native nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeIsConsumerRunningBehind(J)Z
.end method

.method private static native nativeIsValid(J)Z
.end method

.method private static native nativeLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method public static rotationToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "rotation"    # I

    #@0
    .prologue
    .line 510
    packed-switch p0, :pswitch_data_0

    #@3
    .line 524
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Invalid rotation: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 512
    :pswitch_0
    const-string/jumbo v0, "ROTATION_0"

    #@20
    return-object v0

    #@21
    .line 515
    :pswitch_1
    const-string/jumbo v0, "ROATATION_90"

    #@24
    return-object v0

    #@25
    .line 518
    :pswitch_2
    const-string/jumbo v0, "ROATATION_180"

    #@28
    return-object v0

    #@29
    .line 521
    :pswitch_3
    const-string/jumbo v0, "ROATATION_270"

    #@2c
    return-object v0

    #@2d
    .line 510
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setNativeObjectLocked(J)V
    .locals 5
    .param p1, "ptr"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 457
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    #@4
    cmp-long v0, v0, p1

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 458
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    #@a
    cmp-long v0, v0, v2

    #@c
    if-nez v0, :cond_2

    #@e
    cmp-long v0, p1, v2

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 459
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@14
    const-string/jumbo v1, "release"

    #@17
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@1a
    .line 463
    :cond_0
    :goto_0
    iput-wide p1, p0, Landroid/view/Surface;->mNativeObject:J

    #@1c
    .line 464
    iget v0, p0, Landroid/view/Surface;->mGenerationId:I

    #@1e
    add-int/lit8 v0, v0, 0x1

    #@20
    iput v0, p0, Landroid/view/Surface;->mGenerationId:I

    #@22
    .line 465
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 466
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    #@28
    invoke-virtual {v0}, Landroid/view/Surface$HwuiContext;->updateSurface()V

    #@2b
    .line 456
    :cond_1
    return-void

    #@2c
    .line 460
    :cond_2
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    #@2e
    cmp-long v0, v0, v2

    #@30
    if-eqz v0, :cond_0

    #@32
    cmp-long v0, p1, v2

    #@34
    if-nez v0, :cond_0

    #@36
    .line 461
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@38
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@3b
    goto :goto_0
.end method

.method private unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 288
    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    #@4
    if-eq p1, v0, :cond_0

    #@6
    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "canvas object must be the same instance that was previously returned by lockCanvas"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 292
    :cond_0
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    #@11
    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    #@13
    cmp-long v0, v0, v2

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 293
    const-string/jumbo v0, "Surface"

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "WARNING: Surface\'s mNativeObject (0x"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 294
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    #@28
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 294
    const-string/jumbo v2, ") != mLockedObject (0x"

    #@33
    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 295
    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    #@39
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 295
    const-string/jumbo v2, ")"

    #@44
    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 297
    :cond_1
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    #@51
    cmp-long v0, v0, v4

    #@53
    if-nez v0, :cond_2

    #@55
    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    #@57
    const-string/jumbo v1, "Surface was not locked"

    #@5a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v0

    #@5e
    .line 301
    :cond_2
    :try_start_0
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    #@60
    invoke-static {v0, v1, p1}, Landroid/view/Surface;->nativeUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@63
    .line 303
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    #@65
    invoke-static {v0, v1}, Landroid/view/Surface;->nativeRelease(J)V

    #@68
    .line 304
    iput-wide v4, p0, Landroid/view/Surface;->mLockedObject:J

    #@6a
    .line 287
    return-void

    #@6b
    .line 302
    :catchall_0
    move-exception v0

    #@6c
    .line 303
    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    #@6e
    invoke-static {v2, v3}, Landroid/view/Surface;->nativeRelease(J)V

    #@71
    .line 304
    iput-wide v4, p0, Landroid/view/Surface;->mLockedObject:J

    #@73
    .line 302
    throw v0
.end method


# virtual methods
.method public allocateBuffers()V
    .locals 4

    #@0
    .prologue
    .line 482
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 483
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    #@6
    .line 484
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    #@8
    invoke-static {v2, v3}, Landroid/view/Surface;->nativeAllocateBuffers(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 481
    return-void

    #@d
    .line 482
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public copyFrom(Landroid/view/SurfaceControl;)V
    .locals 10
    .param p1, "other"    # Landroid/view/SurfaceControl;

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 368
    if-nez p1, :cond_0

    #@4
    .line 369
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v5, "other must not be null"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 372
    :cond_0
    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    #@f
    .line 373
    .local v2, "surfaceControlPtr":J
    cmp-long v4, v2, v8

    #@11
    if-nez v4, :cond_1

    #@13
    .line 374
    new-instance v4, Ljava/lang/NullPointerException;

    #@15
    .line 375
    const-string/jumbo v5, "SurfaceControl native object is null. Are you using a released SurfaceControl?"

    #@18
    .line 374
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v4

    #@1c
    .line 377
    :cond_1
    invoke-static {v2, v3}, Landroid/view/Surface;->nativeCreateFromSurfaceControl(J)J

    #@1f
    move-result-wide v0

    #@20
    .line 379
    .local v0, "newNativeObject":J
    iget-object v5, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@22
    monitor-enter v5

    #@23
    .line 380
    :try_start_0
    iget-wide v6, p0, Landroid/view/Surface;->mNativeObject:J

    #@25
    cmp-long v4, v6, v8

    #@27
    if-eqz v4, :cond_2

    #@29
    .line 381
    iget-wide v6, p0, Landroid/view/Surface;->mNativeObject:J

    #@2b
    invoke-static {v6, v7}, Landroid/view/Surface;->nativeRelease(J)V

    #@2e
    .line 383
    :cond_2
    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    monitor-exit v5

    #@32
    .line 367
    return-void

    #@33
    .line 379
    :catchall_0
    move-exception v4

    #@34
    monitor-exit v5

    #@35
    throw v4
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 416
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public destroy()V
    .locals 0

    #@0
    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    #@3
    .line 192
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    :try_start_0
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 160
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 164
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@f
    .line 157
    return-void

    #@10
    .line 163
    :catchall_0
    move-exception v0

    #@11
    .line 164
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@14
    .line 163
    throw v0
.end method

.method public getGenerationId()I
    .locals 2

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 218
    :try_start_0
    iget v1, p0, Landroid/view/Surface;->mGenerationId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 217
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public isConsumerRunningBehind()Z
    .locals 4

    #@0
    .prologue
    .line 229
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 230
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    #@6
    .line 231
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    #@8
    invoke-static {v2, v3}, Landroid/view/Surface;->nativeIsConsumerRunningBehind(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    .line 229
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public isValid()Z
    .locals 6

    #@0
    .prologue
    .line 203
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 204
    :try_start_0
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    const-wide/16 v4, 0x0

    #@7
    cmp-long v0, v2, v4

    #@9
    if-nez v0, :cond_0

    #@b
    const/4 v0, 0x0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    .line 205
    :cond_0
    :try_start_1
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    #@10
    invoke-static {v2, v3}, Landroid/view/Surface;->nativeIsValid(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    move-result v0

    #@14
    monitor-exit v1

    #@15
    return v0

    #@16
    .line 203
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 6
    .param p1, "inOutDirty"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 255
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 256
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    #@6
    .line 257
    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    #@8
    const-wide/16 v4, 0x0

    #@a
    cmp-long v0, v2, v4

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "Surface was already locked"

    #@13
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 255
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0

    #@1a
    .line 264
    :cond_0
    :try_start_1
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    #@1c
    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    #@1e
    invoke-static {v2, v3, v0, p1}, Landroid/view/Surface;->nativeLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)J

    #@21
    move-result-wide v2

    #@22
    iput-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    #@24
    .line 265
    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit v1

    #@27
    return-object v0
.end method

.method public lockHardwareCanvas()Landroid/graphics/Canvas;
    .locals 6

    #@0
    .prologue
    .line 327
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 328
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    #@6
    .line 329
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 330
    new-instance v0, Landroid/view/Surface$HwuiContext;

    #@c
    invoke-direct {v0, p0}, Landroid/view/Surface$HwuiContext;-><init>(Landroid/view/Surface;)V

    #@f
    iput-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    #@11
    .line 332
    :cond_0
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    #@13
    .line 333
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    #@15
    invoke-static {v2, v3}, Landroid/view/Surface;->nativeGetWidth(J)I

    #@18
    move-result v2

    #@19
    .line 334
    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    #@1b
    invoke-static {v4, v5}, Landroid/view/Surface;->nativeGetHeight(J)I

    #@1e
    move-result v3

    #@1f
    .line 332
    invoke-virtual {v0, v2, v3}, Landroid/view/Surface$HwuiContext;->lockCanvas(II)Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v0

    #@23
    monitor-exit v1

    #@24
    return-object v0

    #@25
    .line 327
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 420
    if-nez p1, :cond_0

    #@2
    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "source must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 424
    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 429
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    #@14
    .line 430
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    #@16
    invoke-static {v2, v3, p1}, Landroid/view/Surface;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    #@19
    move-result-wide v2

    #@1a
    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v1

    #@1e
    .line 419
    return-void

    #@1f
    .line 424
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method public release()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 174
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 175
    :try_start_0
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    #@7
    cmp-long v0, v2, v4

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 176
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    #@d
    invoke-static {v2, v3}, Landroid/view/Surface;->nativeRelease(J)V

    #@10
    .line 177
    const-wide/16 v2, 0x0

    #@12
    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    #@15
    .line 179
    :cond_0
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 180
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    #@1b
    invoke-virtual {v0}, Landroid/view/Surface$HwuiContext;->destroy()V

    #@1e
    .line 181
    const/4 v0, 0x0

    #@1f
    iput-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :cond_1
    monitor-exit v1

    #@22
    .line 173
    return-void

    #@23
    .line 174
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0
.end method

.method setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V
    .locals 2
    .param p1, "translator"    # Landroid/content/res/CompatibilityInfo$Translator;

    #@0
    .prologue
    .line 351
    if-eqz p1, :cond_0

    #@2
    .line 352
    iget v0, p1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    #@4
    .line 353
    .local v0, "appScale":F
    new-instance v1, Landroid/graphics/Matrix;

    #@6
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@9
    iput-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    #@b
    .line 354
    iget-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    #@d
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    #@10
    .line 350
    .end local v0    # "appScale":F
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 450
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 451
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Surface(name="

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    iget-object v2, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v2, ")/@0x"

    #@18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 452
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1f
    move-result v2

    #@20
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 451
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result-object v0

    #@2c
    monitor-exit v1

    #@2d
    return-object v0

    #@2e
    .line 450
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method public transferFrom(Landroid/view/Surface;)V
    .locals 8
    .param p1, "other"    # Landroid/view/Surface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 395
    if-nez p1, :cond_0

    #@4
    .line 396
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v3, "other must not be null"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 398
    :cond_0
    if-eq p1, p0, :cond_2

    #@f
    .line 400
    iget-object v3, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@11
    monitor-enter v3

    #@12
    .line 401
    :try_start_0
    iget-wide v0, p1, Landroid/view/Surface;->mNativeObject:J

    #@14
    .line 402
    .local v0, "newPtr":J
    const-wide/16 v4, 0x0

    #@16
    invoke-direct {p1, v4, v5}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v3

    #@1a
    .line 405
    iget-object v3, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@1c
    monitor-enter v3

    #@1d
    .line 406
    :try_start_1
    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    #@1f
    cmp-long v2, v4, v6

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 407
    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    #@25
    invoke-static {v4, v5}, Landroid/view/Surface;->nativeRelease(J)V

    #@28
    .line 409
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2b
    monitor-exit v3

    #@2c
    .line 394
    .end local v0    # "newPtr":J
    :cond_2
    return-void

    #@2d
    .line 400
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit v3

    #@2f
    throw v2

    #@30
    .line 405
    .restart local v0    # "newPtr":J
    :catchall_1
    move-exception v2

    #@31
    monitor-exit v3

    #@32
    throw v2
.end method

.method public unlockCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 343
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 276
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 277
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    #@6
    .line 279
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 280
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    #@c
    invoke-virtual {v0, p1}, Landroid/view/Surface$HwuiContext;->unlockAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :goto_0
    monitor-exit v1

    #@10
    .line 275
    return-void

    #@11
    .line 282
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/view/Surface;->unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    goto :goto_0

    #@15
    .line 276
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 436
    if-nez p1, :cond_0

    #@2
    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "dest must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 439
    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 440
    :try_start_0
    iget-object v0, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 441
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    #@15
    invoke-static {v2, v3, p1}, Landroid/view/Surface;->nativeWriteToParcel(JLandroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 443
    and-int/lit8 v0, p2, 0x1

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 444
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    #@20
    .line 435
    :cond_1
    return-void

    #@21
    .line 439
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method
