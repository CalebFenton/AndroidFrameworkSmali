.class public Landroid/view/SurfaceControl;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    }
.end annotation


# static fields
.field public static final BUILT_IN_DISPLAY_ID_HDMI:I = 0x1

.field public static final BUILT_IN_DISPLAY_ID_MAIN:I = 0x0

.field public static final CURSOR_WINDOW:I = 0x2000

.field public static final FX_SURFACE_DIM:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final HIDDEN:I = 0x4

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final OPAQUE:I = 0x400

.field public static final POWER_MODE_DOZE:I = 0x1

.field public static final POWER_MODE_DOZE_SUSPEND:I = 0x3

.field public static final POWER_MODE_NORMAL:I = 0x2

.field public static final POWER_MODE_OFF:I = 0x0

.field public static final PROTECTED_APP:I = 0x800

.field public static final SECURE:I = 0x80

.field private static final SURFACE_HIDDEN:I = 0x1

.field private static final SURFACE_OPAQUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SurfaceControl"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mName:Ljava/lang/String;

.field mNativeObject:J


# direct methods
.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .locals 4
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 101
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 285
    if-nez p1, :cond_0

    #@b
    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "session must not be null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 288
    :cond_0
    if-nez p2, :cond_1

    #@16
    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "name must not be null"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 292
    :cond_1
    and-int/lit8 v0, p6, 0x4

    #@21
    if-nez v0, :cond_2

    #@23
    .line 293
    const-string/jumbo v0, "SurfaceControl"

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "Surfaces should always be created with the HIDDEN flag set to ensure that they are not made visible prematurely before all of the surface\'s properties have been configured.  Set the other properties and make the surface visible within a transaction.  New surface name: "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 298
    new-instance v2, Ljava/lang/Throwable;

    #@3c
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@3f
    .line 293
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    .line 301
    :cond_2
    iput-object p2, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    #@44
    .line 302
    invoke-static/range {p1 .. p6}, Landroid/view/SurfaceControl;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)J

    #@47
    move-result-wide v0

    #@48
    iput-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@4a
    .line 303
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@4c
    const-wide/16 v2, 0x0

    #@4e
    cmp-long v0, v0, v2

    #@50
    if-nez v0, :cond_3

    #@52
    .line 304
    new-instance v0, Landroid/view/Surface$OutOfResourcesException;

    #@54
    .line 305
    const-string/jumbo v1, "Couldn\'t allocate SurfaceControl native object"

    #@57
    .line 304
    invoke-direct {v0, v1}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v0

    #@5b
    .line 308
    :cond_3
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@5d
    const-string/jumbo v1, "release"

    #@60
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@63
    .line 284
    return-void
.end method

.method private checkNotReleased()V
    .locals 4

    #@0
    .prologue
    .line 366
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    .line 367
    const-string/jumbo v1, "mNativeObject is null. Have you called release() already?"

    #@d
    .line 366
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 365
    :cond_0
    return-void
.end method

.method public static clearAnimationFrameStats()Z
    .locals 1

    #@0
    .prologue
    .line 464
    invoke-static {}, Landroid/view/SurfaceControl;->nativeClearAnimationFrameStats()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static closeTransaction()V
    .locals 1

    #@0
    .prologue
    .line 382
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Landroid/view/SurfaceControl;->nativeCloseTransaction(Z)V

    #@4
    .line 381
    return-void
.end method

.method public static closeTransactionSync()V
    .locals 1

    #@0
    .prologue
    .line 386
    const/4 v0, 0x1

    #@1
    invoke-static {v0}, Landroid/view/SurfaceControl;->nativeCloseTransaction(Z)V

    #@4
    .line 385
    return-void
.end method

.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    #@0
    .prologue
    .line 712
    if-nez p0, :cond_0

    #@2
    .line 713
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "name must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 715
    :cond_0
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static destroyDisplay(Landroid/os/IBinder;)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 719
    if-nez p0, :cond_0

    #@2
    .line 720
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "displayToken must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 722
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeDestroyDisplay(Landroid/os/IBinder;)V

    #@e
    .line 718
    return-void
.end method

.method public static getActiveColorMode(Landroid/os/IBinder;)I
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 643
    if-nez p0, :cond_0

    #@2
    .line 644
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "displayToken must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 646
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetActiveColorMode(Landroid/os/IBinder;)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public static getActiveConfig(Landroid/os/IBinder;)I
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 622
    if-nez p0, :cond_0

    #@2
    .line 623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "displayToken must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 625
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetActiveConfig(Landroid/os/IBinder;)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public static getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    .locals 1
    .param p0, "outStats"    # Landroid/view/WindowAnimationFrameStats;

    #@0
    .prologue
    .line 468
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getBuiltInDisplay(I)Landroid/os/IBinder;
    .locals 1
    .param p0, "builtInDisplayId"    # I

    #@0
    .prologue
    .line 726
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetBuiltInDisplay(I)Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getDisplayColorModes(Landroid/os/IBinder;)[I
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 636
    if-nez p0, :cond_0

    #@2
    .line 637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "displayToken must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 639
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayColorModes(Landroid/os/IBinder;)[I

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 615
    if-nez p0, :cond_0

    #@2
    .line 616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "displayToken must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 618
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static getHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 705
    if-nez p0, :cond_0

    #@2
    .line 706
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "displayToken must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 708
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method private static native nativeClearAnimationFrameStats()Z
.end method

.method private static native nativeClearContentFrameStats(J)Z
.end method

.method private static native nativeCloseTransaction(Z)V
.end method

.method private static native nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
.end method

.method private static native nativeDeferTransactionUntil(JLandroid/os/IBinder;J)V
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeDestroyDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeDisconnect(J)V
.end method

.method private static native nativeGetActiveColorMode(Landroid/os/IBinder;)I
.end method

.method private static native nativeGetActiveConfig(Landroid/os/IBinder;)I
.end method

.method private static native nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
.end method

.method private static native nativeGetBuiltInDisplay(I)Landroid/os/IBinder;
.end method

.method private static native nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z
.end method

.method private static native nativeGetDisplayColorModes(Landroid/os/IBinder;)[I
.end method

.method private static native nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
.end method

.method private static native nativeGetHandle(J)Landroid/os/IBinder;
.end method

.method private static native nativeGetHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;
.end method

.method private static native nativeGetTransformToDisplayInverse(J)Z
.end method

.method private static native nativeOpenTransaction()V
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V
.end method

.method private static native nativeSetActiveColorMode(Landroid/os/IBinder;I)Z
.end method

.method private static native nativeSetActiveConfig(Landroid/os/IBinder;I)Z
.end method

.method private static native nativeSetAlpha(JF)V
.end method

.method private static native nativeSetAnimationTransaction()V
.end method

.method private static native nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayProjection(Landroid/os/IBinder;IIIIIIIII)V
.end method

.method private static native nativeSetDisplaySize(Landroid/os/IBinder;II)V
.end method

.method private static native nativeSetDisplaySurface(Landroid/os/IBinder;J)V
.end method

.method private static native nativeSetFinalCrop(JIIII)V
.end method

.method private static native nativeSetFlags(JII)V
.end method

.method private static native nativeSetGeometryAppliesWithResize(J)V
.end method

.method private static native nativeSetLayer(JI)V
.end method

.method private static native nativeSetLayerStack(JI)V
.end method

.method private static native nativeSetMatrix(JFFFF)V
.end method

.method private static native nativeSetOverrideScalingMode(JI)V
.end method

.method private static native nativeSetPosition(JFF)V
.end method

.method private static native nativeSetSize(JII)V
.end method

.method private static native nativeSetTransparentRegionHint(JLandroid/graphics/Region;)V
.end method

.method private static native nativeSetWindowCrop(JIIII)V
.end method

.method public static openTransaction()V
    .locals 0

    #@0
    .prologue
    .line 377
    invoke-static {}, Landroid/view/SurfaceControl;->nativeOpenTransaction()V

    #@3
    .line 376
    return-void
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 832
    invoke-static {v4}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    #@4
    move-result-object v0

    #@5
    .line 834
    .local v0, "displayToken":Landroid/os/IBinder;
    new-instance v1, Landroid/graphics/Rect;

    #@7
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@a
    const/4 v6, 0x1

    #@b
    move v2, p0

    #@c
    move v3, p1

    #@d
    move v5, v4

    #@e
    move v7, v4

    #@f
    move v8, v4

    #@10
    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method public static screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I
    .param p5, "useIdentityTransform"    # Z
    .param p6, "rotation"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 812
    invoke-static {v6}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    #@4
    move-result-object v0

    #@5
    .local v0, "displayToken":Landroid/os/IBinder;
    move-object v1, p0

    #@6
    move v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    move v5, p4

    #@a
    move v7, p5

    #@b
    move v8, p6

    #@c
    .line 814
    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 775
    new-instance v2, Landroid/graphics/Rect;

    #@3
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@6
    const/4 v7, 0x1

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move v4, v3

    #@a
    move v5, v3

    #@b
    move v6, v3

    #@c
    move v8, v3

    #@d
    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    #@10
    .line 774
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;II)V
    .locals 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 765
    new-instance v2, Landroid/graphics/Rect;

    #@3
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@6
    const/4 v7, 0x1

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move v3, p2

    #@a
    move v4, p3

    #@b
    move v6, v5

    #@c
    move v8, v5

    #@d
    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    #@10
    .line 764
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V
    .locals 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minLayer"    # I
    .param p5, "maxLayer"    # I
    .param p6, "useIdentityTransform"    # Z

    #@0
    .prologue
    .line 749
    new-instance v2, Landroid/graphics/Rect;

    #@2
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@5
    .line 750
    const/4 v7, 0x0

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move v3, p2

    #@9
    move v4, p3

    #@a
    move v5, p4

    #@b
    move v6, p5

    #@c
    move v8, p6

    #@d
    .line 749
    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    #@10
    .line 748
    return-void
.end method

.method private static screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V
    .locals 2
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "sourceCrop"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "minLayer"    # I
    .param p6, "maxLayer"    # I
    .param p7, "allLayers"    # Z
    .param p8, "useIdentityTransform"    # Z

    #@0
    .prologue
    .line 841
    if-nez p0, :cond_0

    #@2
    .line 842
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "displayToken must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 844
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 845
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "consumer must not be null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 847
    :cond_1
    invoke-static/range {p0 .. p8}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    #@19
    .line 840
    return-void
.end method

.method public static setActiveColorMode(Landroid/os/IBinder;I)Z
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "colorMode"    # I

    #@0
    .prologue
    .line 650
    if-nez p0, :cond_0

    #@2
    .line 651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "displayToken must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 653
    :cond_0
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveColorMode(Landroid/os/IBinder;I)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public static setActiveConfig(Landroid/os/IBinder;I)Z
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "id"    # I

    #@0
    .prologue
    .line 629
    if-nez p0, :cond_0

    #@2
    .line 630
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "displayToken must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 632
    :cond_0
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveConfig(Landroid/os/IBinder;I)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public static setAnimationTransaction()V
    .locals 0

    #@0
    .prologue
    .line 408
    invoke-static {}, Landroid/view/SurfaceControl;->nativeSetAnimationTransaction()V

    #@3
    .line 407
    return-void
.end method

.method public static setDisplayLayerStack(Landroid/os/IBinder;I)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "layerStack"    # I

    #@0
    .prologue
    .line 673
    if-nez p0, :cond_0

    #@2
    .line 674
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "displayToken must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 676
    :cond_0
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V

    #@e
    .line 672
    return-void
.end method

.method public static setDisplayPowerMode(Landroid/os/IBinder;I)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 608
    if-nez p0, :cond_0

    #@2
    .line 609
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "displayToken must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 611
    :cond_0
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V

    #@e
    .line 607
    return-void
.end method

.method public static setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "orientation"    # I
    .param p2, "layerStackRect"    # Landroid/graphics/Rect;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 658
    if-nez p0, :cond_0

    #@2
    .line 659
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "displayToken must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 661
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 662
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "layerStackRect must not be null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 664
    :cond_1
    if-nez p3, :cond_2

    #@18
    .line 665
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "displayRect must not be null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 668
    :cond_2
    iget v2, p2, Landroid/graphics/Rect;->left:I

    #@23
    iget v3, p2, Landroid/graphics/Rect;->top:I

    #@25
    iget v4, p2, Landroid/graphics/Rect;->right:I

    #@27
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    #@29
    .line 669
    iget v6, p3, Landroid/graphics/Rect;->left:I

    #@2b
    iget v7, p3, Landroid/graphics/Rect;->top:I

    #@2d
    iget v8, p3, Landroid/graphics/Rect;->right:I

    #@2f
    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    #@31
    move-object v0, p0

    #@32
    move v1, p1

    #@33
    .line 667
    invoke-static/range {v0 .. v9}, Landroid/view/SurfaceControl;->nativeSetDisplayProjection(Landroid/os/IBinder;IIIIIIIII)V

    #@36
    .line 657
    return-void
.end method

.method public static setDisplaySize(Landroid/os/IBinder;II)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 694
    if-nez p0, :cond_0

    #@2
    .line 695
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "displayToken must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 697
    :cond_0
    if-lez p1, :cond_1

    #@d
    if-gtz p2, :cond_2

    #@f
    .line 698
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "width and height must be positive"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 701
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeSetDisplaySize(Landroid/os/IBinder;II)V

    #@1b
    .line 693
    return-void
.end method

.method public static setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 680
    if-nez p0, :cond_0

    #@2
    .line 681
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "displayToken must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 684
    :cond_0
    if-eqz p1, :cond_1

    #@d
    .line 685
    iget-object v1, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v1

    #@10
    .line 686
    :try_start_0
    iget-wide v2, p1, Landroid/view/Surface;->mNativeObject:J

    #@12
    invoke-static {p0, v2, v3}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(Landroid/os/IBinder;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 679
    :goto_0
    return-void

    #@17
    .line 685
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0

    #@1a
    .line 689
    :cond_1
    const-wide/16 v0, 0x0

    #@1c
    invoke-static {p0, v0, v1}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(Landroid/os/IBinder;J)V

    #@1f
    goto :goto_0
.end method


# virtual methods
.method public clearContentFrameStats()Z
    .locals 2

    #@0
    .prologue
    .line 454
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@3
    .line 455
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@5
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeClearContentFrameStats(J)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 2
    .param p1, "handle"    # Landroid/os/IBinder;
    .param p2, "frame"    # J

    #@0
    .prologue
    .line 390
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeDeferTransactionUntil(JLandroid/os/IBinder;J)V

    #@5
    .line 389
    return-void
.end method

.method public destroy()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 349
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 350
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@a
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDestroy(J)V

    #@d
    .line 351
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@f
    .line 353
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@11
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@14
    .line 348
    return-void
.end method

.method public disconnect()V
    .locals 4

    #@0
    .prologue
    .line 360
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 361
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@a
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDisconnect(J)V

    #@d
    .line 359
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 315
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 317
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@b
    const-wide/16 v2, 0x0

    #@d
    cmp-long v0, v0, v2

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 318
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@13
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 321
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@19
    .line 312
    return-void

    #@1a
    .line 320
    :catchall_0
    move-exception v0

    #@1b
    .line 321
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@1e
    .line 320
    throw v0
.end method

.method public getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .locals 2
    .param p1, "outStats"    # Landroid/view/WindowContentFrameStats;

    #@0
    .prologue
    .line 459
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@3
    .line 460
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@5
    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getHandle()Landroid/os/IBinder;
    .locals 2

    #@0
    .prologue
    .line 399
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@2
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetHandle(J)Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTransformToDisplayInverse()Z
    .locals 2

    #@0
    .prologue
    .line 403
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@2
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetTransformToDisplayInverse(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hide()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 439
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@4
    .line 440
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@6
    invoke-static {v0, v1, v2, v2}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    #@9
    .line 438
    return-void
.end method

.method public release()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 336
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 337
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@a
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V

    #@d
    .line 338
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@f
    .line 340
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@11
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@14
    .line 335
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 476
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@3
    .line 477
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@5
    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetAlpha(JF)V

    #@8
    .line 475
    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "crop"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 496
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@4
    .line 497
    if-eqz p1, :cond_0

    #@6
    .line 498
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@8
    .line 499
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@a
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@c
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@e
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    #@10
    .line 498
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetFinalCrop(JIIII)V

    #@13
    .line 495
    :goto_0
    return-void

    #@14
    .line 501
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@16
    move v3, v2

    #@17
    move v4, v2

    #@18
    move v5, v2

    #@19
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetFinalCrop(JIIII)V

    #@1c
    goto :goto_0
.end method

.method public setGeometryAppliesWithResize()V
    .locals 2

    #@0
    .prologue
    .line 429
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@3
    .line 430
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@5
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeSetGeometryAppliesWithResize(J)V

    #@8
    .line 428
    return-void
.end method

.method public setLayer(I)V
    .locals 2
    .param p1, "zorder"    # I

    #@0
    .prologue
    .line 412
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@3
    .line 413
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@5
    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetLayer(JI)V

    #@8
    .line 411
    return-void
.end method

.method public setLayerStack(I)V
    .locals 2
    .param p1, "layerStack"    # I

    #@0
    .prologue
    .line 506
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@3
    .line 507
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@5
    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetLayerStack(JI)V

    #@8
    .line 505
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 6
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    #@0
    .prologue
    .line 481
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@3
    .line 482
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@5
    move v2, p1

    #@6
    move v3, p2

    #@7
    move v4, p3

    #@8
    move v5, p4

    #@9
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetMatrix(JFFFF)V

    #@c
    .line 480
    return-void
.end method

.method public setOpaque(Z)V
    .locals 4
    .param p1, "isOpaque"    # Z

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 515
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@4
    .line 516
    if-eqz p1, :cond_0

    #@6
    .line 517
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@8
    invoke-static {v0, v1, v3, v3}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    #@b
    .line 514
    :goto_0
    return-void

    #@c
    .line 519
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@e
    const/4 v2, 0x0

    #@f
    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    #@12
    goto :goto_0
.end method

.method public setOverrideScalingMode(I)V
    .locals 2
    .param p1, "scalingMode"    # I

    #@0
    .prologue
    .line 394
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@3
    .line 395
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@5
    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetOverrideScalingMode(JI)V

    #@8
    .line 393
    return-void
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 417
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@3
    .line 418
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@5
    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeSetPosition(JFF)V

    #@8
    .line 416
    return-void
.end method

.method public setSecure(Z)V
    .locals 4
    .param p1, "isSecure"    # Z

    #@0
    .prologue
    const/16 v3, 0x80

    #@2
    .line 528
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@5
    .line 529
    if-eqz p1, :cond_0

    #@7
    .line 530
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@9
    invoke-static {v0, v1, v3, v3}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    #@c
    .line 527
    :goto_0
    return-void

    #@d
    .line 532
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@f
    const/4 v2, 0x0

    #@10
    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    #@13
    goto :goto_0
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    .line 434
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@3
    .line 435
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@5
    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeSetSize(JII)V

    #@8
    .line 433
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 449
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@3
    .line 450
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@5
    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(JLandroid/graphics/Region;)V

    #@8
    .line 448
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "crop"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 486
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@4
    .line 487
    if-eqz p1, :cond_0

    #@6
    .line 488
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@8
    .line 489
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@a
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@c
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@e
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    #@10
    .line 488
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JIIII)V

    #@13
    .line 485
    :goto_0
    return-void

    #@14
    .line 491
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@16
    move v3, v2

    #@17
    move v4, v2

    #@18
    move v5, v2

    #@19
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JIIII)V

    #@1c
    goto :goto_0
.end method

.method public show()V
    .locals 4

    #@0
    .prologue
    .line 444
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    #@3
    .line 445
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    #@5
    const/4 v2, 0x0

    #@6
    const/4 v3, 0x1

    #@7
    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    #@a
    .line 443
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Surface(name="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ")"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method
