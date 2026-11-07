.class public Landroid/graphics/HardwareRenderer;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/HardwareRenderer$FrameRenderRequest;,
        Landroid/graphics/HardwareRenderer$ProcessInitializer;,
        Landroid/graphics/HardwareRenderer$DestroyContextRunnable;,
        Landroid/graphics/HardwareRenderer$FrameCommitCallback;,
        Landroid/graphics/HardwareRenderer$FrameCompleteCallback;,
        Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;,
        Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;,
        Landroid/graphics/HardwareRenderer$FrameDrawingCallback;,
        Landroid/graphics/HardwareRenderer$PictureCapturedCallback;,
        Landroid/graphics/HardwareRenderer$CopyRequest;,
        Landroid/graphics/HardwareRenderer$CacheTrimLevel;,
        Landroid/graphics/HardwareRenderer$DumpFlags;,
        Landroid/graphics/HardwareRenderer$SyncAndDrawResult;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_PATH_SHADERS:Ljava/lang/String; = "com.android.opengl.shaders_cache"

.field private static final blacklist CACHE_PATH_SKIASHADERS:Ljava/lang/String; = "com.android.skia.shaders_cache"

.field public static final blacklist CACHE_TRIM_ALL:I = 0x0

.field public static final blacklist CACHE_TRIM_FONT:I = 0x1

.field public static final blacklist CACHE_TRIM_RESOURCES:I = 0x2

.field public static final blacklist FLAG_DUMP_ALL:I = 0x1

.field public static final blacklist FLAG_DUMP_FRAMESTATS:I = 0x1

.field public static final blacklist FLAG_DUMP_RESET:I = 0x2

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "HardwareRenderer"

.field public static final whitelist SYNC_CONTEXT_IS_STOPPED:I = 0x4

.field public static final whitelist SYNC_FRAME_DROPPED:I = 0x8

.field public static final whitelist SYNC_LOST_SURFACE_REWARD_IF_FOUND:I = 0x2

.field public static final whitelist SYNC_OK:I = 0x0

.field public static final whitelist SYNC_REDRAW_REQUESTED:I = 0x1

.field private static blacklist sDensityDpi:I


# instance fields
.field private blacklist mColorMode:I

.field private blacklist mDesiredSdrHdrRatio:F

.field private blacklist mForceDark:I

.field private final blacklist mNativeProxy:J

.field private blacklist mOpaque:Z

.field private blacklist mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

.field protected blacklist mRootNode:Landroid/graphics/RenderNode;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNativeProxy(Landroid/graphics/HardwareRenderer;)J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRenderRequest(Landroid/graphics/HardwareRenderer;)Landroid/graphics/HardwareRenderer$FrameRenderRequest;
    .registers 1

    iget-object p0, p0, Landroid/graphics/HardwareRenderer;->mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnDeleteProxy(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/HardwareRenderer;->nDeleteProxy(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetRenderThreadTid(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/HardwareRenderer;->nGetRenderThreadTid(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnInitDisplayInfo(IIFIJJZZZ)V
    .registers 11

    invoke-static/range {p0 .. p10}, Landroid/graphics/HardwareRenderer;->nInitDisplayInfo(IIFIJJZZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnRotateProcessStatsBuffer()V
    .registers 0

    invoke-static {}, Landroid/graphics/HardwareRenderer;->nRotateProcessStatsBuffer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/HardwareRenderer;->nSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetIsHighEndGfx(Z)V
    .registers 1

    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetIsHighEndGfx(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetIsLowRam(Z)V
    .registers 1

    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetIsLowRam(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetProcessStatsBuffer(I)V
    .registers 1

    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetProcessStatsBuffer(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 182
    const/4 v0, 0x0

    sput v0, Landroid/graphics/HardwareRenderer;->sDensityDpi:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    .line 188
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/HardwareRenderer;->mForceDark:I

    .line 189
    iput v1, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    .line 190
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/graphics/HardwareRenderer;->mDesiredSdrHdrRatio:F

    .line 464
    new-instance v2, Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;-><init>(Landroid/graphics/HardwareRenderer;Landroid/graphics/HardwareRenderer-IA;)V

    iput-object v2, p0, Landroid/graphics/HardwareRenderer;->mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    .line 197
    sget-object v2, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v2}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initUsingContext()V

    .line 198
    invoke-static {}, Landroid/graphics/HardwareRenderer;->nCreateRootRenderNode()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/graphics/RenderNode;->adopt(J)Landroid/graphics/RenderNode;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    .line 199
    iget-object v2, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 200
    iget-boolean v1, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v1, v1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->nCreateProxy(ZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    .line 201
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_52

    .line 204
    new-instance v0, Landroid/graphics/HardwareRenderer$DestroyContextRunnable;

    iget-wide v1, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-direct {v0, v1, v2}, Landroid/graphics/HardwareRenderer$DestroyContextRunnable;-><init>(J)V

    invoke-static {p0, v0}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    .line 205
    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    iget-wide v1, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {v0, v1, v2}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->init(J)V

    .line 206
    return-void

    .line 202
    :cond_52
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Unable to create hardware renderer"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist copySurfaceInto(Landroid/view/Surface;Landroid/graphics/HardwareRenderer$CopyRequest;)V
    .registers 9
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "copyRequest"    # Landroid/graphics/HardwareRenderer$CopyRequest;

    .line 1148
    iget-object v0, p1, Landroid/graphics/HardwareRenderer$CopyRequest;->mSrcRect:Landroid/graphics/Rect;

    .line 1149
    .local v0, "srcRect":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    move-object v6, p1

    .end local p0    # "surface":Landroid/view/Surface;
    .end local p1    # "copyRequest":Landroid/graphics/HardwareRenderer$CopyRequest;
    .local v1, "surface":Landroid/view/Surface;
    .local v6, "copyRequest":Landroid/graphics/HardwareRenderer$CopyRequest;
    invoke-static/range {v1 .. v6}, Landroid/graphics/HardwareRenderer;->nCopySurfaceInto(Landroid/view/Surface;IIIILandroid/graphics/HardwareRenderer$CopyRequest;)V

    .line 1151
    return-void
.end method

.method public static blacklist createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "node"    # Landroid/graphics/RenderNode;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1161
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nCreateHardwareBitmap(JII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static native blacklist disableVsync()V
.end method

.method public static blacklist dumpGlobalProfileInfo(Ljava/io/FileDescriptor;I)V
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "dumpFlags"    # I

    .line 878
    invoke-static {p0, p1}, Landroid/graphics/HardwareRenderer;->nDumpGlobalProfileInfo(Ljava/io/FileDescriptor;I)V

    .line 879
    return-void
.end method

.method static blacklist invokePictureCapturedCallback(JLandroid/graphics/HardwareRenderer$PictureCapturedCallback;)V
    .registers 4
    .param p0, "picturePtr"    # J
    .param p2, "callback"    # Landroid/graphics/HardwareRenderer$PictureCapturedCallback;

    .line 918
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Picture;-><init>(J)V

    .line 919
    .local v0, "picture":Landroid/graphics/Picture;
    invoke-interface {p2, v0}, Landroid/graphics/HardwareRenderer$PictureCapturedCallback;->onPictureCaptured(Landroid/graphics/Picture;)V

    .line 920
    return-void
.end method

.method public static whitelist isDrawingEnabled()Z
    .registers 1

    .line 1249
    invoke-static {}, Landroid/graphics/HardwareRenderer;->nIsDrawingEnabled()Z

    move-result v0

    return v0
.end method

.method protected static native blacklist isWebViewOverlaysEnabled()Z
.end method

.method private static native blacklist nAddObserver(JJ)V
.end method

.method private static native blacklist nAddRenderNode(JJZ)V
.end method

.method private static native blacklist nAllocateBuffers(J)V
.end method

.method private static native blacklist nBuildLayer(JJ)V
.end method

.method private static native blacklist nCancelLayerUpdate(JJ)V
.end method

.method private static native blacklist nCopyLayerInto(JJJ)Z
.end method

.method private static native blacklist nCopySurfaceInto(Landroid/view/Surface;IIIILandroid/graphics/HardwareRenderer$CopyRequest;)V
.end method

.method private static native blacklist nCreateHardwareBitmap(JII)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nCreateProxy(ZJ)J
.end method

.method private static native blacklist nCreateRootRenderNode()J
.end method

.method private static native blacklist nCreateTextureLayer(J)J
.end method

.method private static native blacklist nDeleteProxy(J)V
.end method

.method private static native blacklist nDestroy(JJ)V
.end method

.method private static native blacklist nDestroyHardwareResources(J)V
.end method

.method private static native blacklist nDetachSurfaceTexture(JJ)V
.end method

.method private static native blacklist nDrawRenderNode(JJ)V
.end method

.method private static native blacklist nDumpGlobalProfileInfo(Ljava/io/FileDescriptor;I)V
.end method

.method private static native blacklist nDumpProfileInfo(JLjava/io/FileDescriptor;I)V
.end method

.method private static native blacklist nFence(J)V
.end method

.method private static native blacklist nForceDrawNextFrame(J)V
.end method

.method private static native blacklist nGetRenderThreadTid(J)I
.end method

.method private static native blacklist nInitDisplayInfo(IIFIJJZZZ)V
.end method

.method private static native blacklist nIsDrawingEnabled()Z
.end method

.method private static native blacklist nLoadSystemProperties(J)Z
.end method

.method private static native blacklist nNotifyCallbackPending(J)V
.end method

.method private static native blacklist nNotifyExpensiveFrame(J)V
.end method

.method private static native blacklist nNotifyFramePending(J)V
.end method

.method private static native blacklist nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native blacklist nPause(J)Z
.end method

.method private static native blacklist nPushLayerUpdate(JJ)V
.end method

.method private static native blacklist nRegisterAnimatingRenderNode(JJ)V
.end method

.method private static native blacklist nRegisterVectorDrawableAnimator(JJ)V
.end method

.method private static native blacklist nRemoveObserver(JJ)V
.end method

.method private static native blacklist nRemoveRenderNode(JJ)V
.end method

.method private static native blacklist nRotateProcessStatsBuffer()V
.end method

.method private static native blacklist nSetASurfaceTransactionCallback(JLandroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V
.end method

.method private static native blacklist nSetColorMode(JI)F
.end method

.method private static native blacklist nSetContentDrawBounds(JIIII)V
.end method

.method private static native blacklist nSetContextPriority(I)V
.end method

.method private static native blacklist nSetDebuggingEnabled(Z)V
.end method

.method private static native blacklist nSetDisplayDensityDpi(I)V
.end method

.method private static native blacklist nSetDrawingEnabled(Z)V
.end method

.method private static native blacklist nSetForceDark(JI)V
.end method

.method private static native blacklist nSetFrameCallback(JLandroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
.end method

.method private static native blacklist nSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V
.end method

.method private static native blacklist nSetFrameCompleteCallback(JLandroid/graphics/HardwareRenderer$FrameCompleteCallback;)V
.end method

.method private static native blacklist nSetHighContrastText(Z)V
.end method

.method private static native blacklist nSetIsHighEndGfx(Z)V
.end method

.method private static native blacklist nSetIsLowRam(Z)V
.end method

.method private static native blacklist nSetIsSystemOrPersistent(Z)V
.end method

.method private static native blacklist nSetIsolatedProcess(Z)V
.end method

.method private static native blacklist nSetLightAlpha(JFF)V
.end method

.method private static native blacklist nSetLightGeometry(JFFFF)V
.end method

.method private static native blacklist nSetName(JLjava/lang/String;)V
.end method

.method private static native blacklist nSetOpaque(JZ)V
.end method

.method private static native blacklist nSetPictureCaptureCallback(JLandroid/graphics/HardwareRenderer$PictureCapturedCallback;)V
.end method

.method private static native blacklist nSetPrepareSurfaceControlForWebviewCallback(JLandroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V
.end method

.method private static native blacklist nSetProcessStatsBuffer(I)V
.end method

.method private static native blacklist nSetRtAnimationsEnabled(Z)V
.end method

.method private static native blacklist nSetSdrWhitePoint(JF)V
.end method

.method private static native blacklist nSetStopped(JZ)V
.end method

.method private static native blacklist nSetSurface(JLandroid/view/Surface;Z)V
.end method

.method private static native blacklist nSetSurfaceControl(JJ)V
.end method

.method private static native blacklist nSetTargetSdrHdrRatio(JF)V
.end method

.method private static native blacklist nStopDrawing(J)V
.end method

.method private static native blacklist nSyncAndDrawFrame(J[JI)I
.end method

.method private static native blacklist nTrimCaches(I)V
.end method

.method private static native blacklist nTrimMemory(I)V
.end method

.method public static blacklist overrideProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 1193
    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    .line 1196
    invoke-static {p0, p1}, Landroid/graphics/HardwareRenderer;->nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    return-void

    .line 1194
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name and value must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native blacklist preInitBufferAllocator()V
.end method

.method public static native blacklist preload()V
.end method

.method public static blacklist sendDeviceConfigurationForDebugging(Landroid/content/res/Configuration;)V
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 1101
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    sget v1, Landroid/graphics/HardwareRenderer;->sDensityDpi:I

    if-eq v0, v1, :cond_13

    .line 1103
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    sput v0, Landroid/graphics/HardwareRenderer;->sDensityDpi:I

    .line 1104
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->nSetDisplayDensityDpi(I)V

    .line 1106
    :cond_13
    return-void
.end method

.method public static blacklist setContextForInit(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1224
    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->setContext(Landroid/content/Context;)V

    .line 1225
    return-void
.end method

.method public static blacklist setContextPriority(I)V
    .registers 1
    .param p0, "priority"    # I

    .line 1072
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetContextPriority(I)V

    .line 1073
    return-void
.end method

.method public static blacklist setDebuggingEnabled(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .line 1114
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetDebuggingEnabled(Z)V

    .line 1115
    return-void
.end method

.method public static whitelist setDrawingEnabled(Z)V
    .registers 1
    .param p0, "drawingEnabled"    # Z

    .line 1271
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetDrawingEnabled(Z)V

    .line 1272
    return-void
.end method

.method public static blacklist setFPSDivisor(I)V
    .registers 2
    .param p0, "divisor"    # I

    .line 1061
    const/4 v0, 0x1

    if-gt p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->nSetRtAnimationsEnabled(Z)V

    .line 1062
    return-void
.end method

.method public static blacklist setHighContrastText(Z)V
    .registers 1
    .param p0, "highContrastText"    # Z

    .line 1082
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetHighContrastText(Z)V

    .line 1083
    return-void
.end method

.method public static blacklist setIsSystemOrPersistent()V
    .registers 1

    .line 1234
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->nSetIsSystemOrPersistent(Z)V

    .line 1235
    return-void
.end method

.method public static blacklist setIsolatedProcess(Z)V
    .registers 2
    .param p0, "isIsolated"    # Z

    .line 1091
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetIsolatedProcess(Z)V

    .line 1092
    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->setIsolated(Z)V

    .line 1093
    return-void
.end method

.method public static blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1213
    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->setPackageName(Ljava/lang/String;)V

    .line 1214
    return-void
.end method

.method public static blacklist setRtAnimationsEnabled(Z)V
    .registers 1
    .param p0, "enabled"    # Z

    .line 1281
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetRtAnimationsEnabled(Z)V

    .line 1282
    return-void
.end method

.method public static blacklist setupDiskCache(Ljava/io/File;)V
    .registers 4
    .param p0, "cacheDir"    # Ljava/io/File;

    .line 1207
    new-instance v0, Ljava/io/File;

    const-string v1, "com.android.opengl.shaders_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "com.android.skia.shaders_cache"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1208
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1207
    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->setupShadersDiskCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    return-void
.end method

.method protected static native blacklist setupShadersDiskCache(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static blacklist trimCaches(I)V
    .registers 1
    .param p0, "level"    # I

    .line 1188
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nTrimCaches(I)V

    .line 1189
    return-void
.end method

.method public static blacklist trimMemory(I)V
    .registers 1
    .param p0, "level"    # I

    .line 1174
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nTrimMemory(I)V

    .line 1175
    return-void
.end method

.method private static blacklist validateAlpha(FLjava/lang/String;)V
    .registers 5
    .param p0, "alpha"    # F
    .param p1, "argumentName"    # Ljava/lang/String;

    .line 1018
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_c

    .line 1022
    return-void

    .line 1019
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be a valid alpha, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range of 0.0f to 1.0f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validateFinite(FLjava/lang/String;)V
    .registers 5
    .param p0, "f"    # F
    .param p1, "argumentName"    # Ljava/lang/String;

    .line 1032
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1035
    return-void

    .line 1033
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be finite, given="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validatePositive(FLjava/lang/String;)V
    .registers 5
    .param p0, "f"    # F
    .param p1, "argumentName"    # Ljava/lang/String;

    .line 1025
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_c

    .line 1029
    return-void

    .line 1026
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be a finite positive, given="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addObserver(J)V
    .registers 5
    .param p1, "nativeObserver"    # J

    .line 665
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nAddObserver(JJ)V

    .line 666
    return-void
.end method

.method public blacklist addObserver(Landroid/graphics/HardwareRendererObserver;)V
    .registers 6
    .param p1, "observer"    # Landroid/graphics/HardwareRendererObserver;

    .line 658
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/HardwareRendererObserver;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nAddObserver(JJ)V

    .line 659
    return-void
.end method

.method public blacklist addRenderNode(Landroid/graphics/RenderNode;Z)V
    .registers 7
    .param p1, "node"    # Landroid/graphics/RenderNode;
    .param p2, "placeFront"    # Z

    .line 838
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/graphics/HardwareRenderer;->nAddRenderNode(JJZ)V

    .line 839
    return-void
.end method

.method public blacklist allocateBuffers()V
    .registers 3

    .line 602
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nAllocateBuffers(J)V

    .line 603
    return-void
.end method

.method public blacklist buildLayer(Landroid/graphics/RenderNode;)V
    .registers 6
    .param p1, "node"    # Landroid/graphics/RenderNode;

    .line 780
    invoke-virtual {p1}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 781
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nBuildLayer(JJ)V

    .line 783
    :cond_d
    return-void
.end method

.method public whitelist clearContent()V
    .registers 3

    .line 570
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nDestroyHardwareResources(J)V

    .line 571
    return-void
.end method

.method public blacklist copyLayerInto(Landroid/graphics/TextureLayer;Landroid/graphics/Bitmap;)Z
    .registers 9
    .param p1, "layer"    # Landroid/graphics/TextureLayer;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 787
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    .line 788
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v4

    .line 787
    invoke-static/range {v0 .. v5}, Landroid/graphics/HardwareRenderer;->nCopyLayerInto(JJJ)Z

    move-result v0

    return v0
.end method

.method public whitelist createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;
    .registers 2

    .line 476
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    invoke-static {v0}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->-$$Nest$mreset(Landroid/graphics/HardwareRenderer$FrameRenderRequest;)V

    .line 477
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    return-object v0
.end method

.method public blacklist createTextureLayer()Landroid/graphics/TextureLayer;
    .registers 4

    .line 763
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nCreateTextureLayer(J)J

    move-result-wide v0

    .line 764
    .local v0, "layer":J
    invoke-static {p0, v0, v1}, Landroid/graphics/TextureLayer;->adoptTextureLayer(Landroid/graphics/HardwareRenderer;J)Landroid/graphics/TextureLayer;

    move-result-object v2

    return-object v2
.end method

.method public whitelist destroy()V
    .registers 5

    .line 224
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-object v2, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v2, v2, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nDestroy(JJ)V

    .line 225
    return-void
.end method

.method public blacklist detachSurfaceTexture(J)V
    .registers 5
    .param p1, "hardwareLayer"    # J

    .line 774
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nDetachSurfaceTexture(JJ)V

    .line 775
    return-void
.end method

.method public blacklist drawRenderNode(Landroid/graphics/RenderNode;)V
    .registers 6
    .param p1, "node"    # Landroid/graphics/RenderNode;

    .line 859
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nDrawRenderNode(JJ)V

    .line 860
    return-void
.end method

.method public blacklist dumpProfileInfo(Ljava/io/FileDescriptor;I)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "dumpFlags"    # I

    .line 885
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nDumpProfileInfo(JLjava/io/FileDescriptor;I)V

    .line 886
    return-void
.end method

.method public blacklist fence()V
    .registers 3

    .line 727
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nFence(J)V

    .line 728
    return-void
.end method

.method public blacklist forceDrawNextFrame()V
    .registers 3

    .line 908
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nForceDrawNextFrame(J)V

    .line 909
    return-void
.end method

.method public whitelist isOpaque()Z
    .registers 2

    .line 639
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    return v0
.end method

.method public blacklist loadSystemProperties()Z
    .registers 3

    .line 871
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nLoadSystemProperties(J)Z

    move-result v0

    return v0
.end method

.method public blacklist notifyCallbackPending()V
    .registers 3

    .line 1043
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nNotifyCallbackPending(J)V

    .line 1044
    return-void
.end method

.method public blacklist notifyExpensiveFrame()V
    .registers 3

    .line 1052
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nNotifyExpensiveFrame(J)V

    .line 1053
    return-void
.end method

.method public whitelist notifyFramePending()V
    .registers 3

    .line 611
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nNotifyFramePending(J)V

    .line 612
    return-void
.end method

.method public blacklist onLayerDestroyed(Landroid/graphics/TextureLayer;)V
    .registers 6
    .param p1, "layer"    # Landroid/graphics/TextureLayer;

    .line 809
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nCancelLayerUpdate(JJ)V

    .line 810
    return-void
.end method

.method public blacklist pause()Z
    .registers 3

    .line 509
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nPause(J)Z

    move-result v0

    return v0
.end method

.method public blacklist pushLayerUpdate(Landroid/graphics/TextureLayer;)V
    .registers 6
    .param p1, "layer"    # Landroid/graphics/TextureLayer;

    .line 799
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nPushLayerUpdate(JJ)V

    .line 800
    return-void
.end method

.method public blacklist registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V
    .registers 6
    .param p1, "animator"    # Landroid/graphics/RenderNode;

    .line 732
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v0, v0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRegisterAnimatingRenderNode(JJ)V

    .line 733
    return-void
.end method

.method public blacklist registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V
    .registers 6
    .param p1, "animator"    # Landroid/view/NativeVectorDrawableAnimator;

    .line 737
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v0, v0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 738
    invoke-interface {p1}, Landroid/view/NativeVectorDrawableAnimator;->getAnimatorNativePtr()J

    move-result-wide v2

    .line 737
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRegisterVectorDrawableAnimator(JJ)V

    .line 739
    return-void
.end method

.method public blacklist removeObserver(J)V
    .registers 5
    .param p1, "nativeObserver"    # J

    .line 681
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nRemoveObserver(JJ)V

    .line 682
    return-void
.end method

.method public blacklist removeObserver(Landroid/graphics/HardwareRendererObserver;)V
    .registers 6
    .param p1, "observer"    # Landroid/graphics/HardwareRendererObserver;

    .line 674
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/HardwareRendererObserver;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRemoveObserver(JJ)V

    .line 675
    return-void
.end method

.method public blacklist removeRenderNode(Landroid/graphics/RenderNode;)V
    .registers 6
    .param p1, "node"    # Landroid/graphics/RenderNode;

    .line 848
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRemoveRenderNode(JJ)V

    .line 849
    return-void
.end method

.method protected blacklist setASurfaceTransactionCallback(Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;

    .line 814
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetASurfaceTransactionCallback(JLandroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V

    .line 815
    return-void
.end method

.method public blacklist setColorMode(I)F
    .registers 4
    .param p1, "colorMode"    # I

    .line 692
    iget v0, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    if-eq v0, p1, :cond_e

    .line 693
    iput p1, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    .line 694
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetColorMode(JI)F

    move-result v0

    iput v0, p0, Landroid/graphics/HardwareRenderer;->mDesiredSdrHdrRatio:F

    .line 696
    :cond_e
    iget v0, p0, Landroid/graphics/HardwareRenderer;->mDesiredSdrHdrRatio:F

    return v0
.end method

.method public blacklist setColorMode(IF)V
    .registers 5
    .param p1, "colorMode"    # I
    .param p2, "whitePoint"    # F

    .line 707
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p2}, Landroid/graphics/HardwareRenderer;->nSetSdrWhitePoint(JF)V

    .line 708
    iput p1, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    .line 709
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetColorMode(JI)F

    .line 710
    return-void
.end method

.method public blacklist setContentDrawBounds(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 900
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "left":I
    .end local p2    # "top":I
    .end local p3    # "right":I
    .end local p4    # "bottom":I
    .local v2, "left":I
    .local v3, "top":I
    .local v4, "right":I
    .local v5, "bottom":I
    invoke-static/range {v0 .. v5}, Landroid/graphics/HardwareRenderer;->nSetContentDrawBounds(JIIII)V

    .line 901
    return-void
.end method

.method public whitelist setContentRoot(Landroid/graphics/RenderNode;)V
    .registers 4
    .param p1, "content"    # Landroid/graphics/RenderNode;

    .line 299
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 300
    .local v0, "canvas":Landroid/graphics/RecordingCanvas;
    if-eqz p1, :cond_b

    .line 301
    invoke-virtual {v0, p1}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 303
    :cond_b
    iget-object v1, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 304
    return-void
.end method

.method public blacklist setForceDark(I)Z
    .registers 4
    .param p1, "type"    # I

    .line 578
    iget v0, p0, Landroid/graphics/HardwareRenderer;->mForceDark:I

    if-eq v0, p1, :cond_d

    .line 579
    iput p1, p0, Landroid/graphics/HardwareRenderer;->mForceDark:I

    .line 580
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetForceDark(JI)V

    .line 581
    const/4 v0, 0x1

    return v0

    .line 583
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    .line 825
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetFrameCallback(JLandroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 826
    return-void
.end method

.method public blacklist setFrameCommitCallback(Landroid/graphics/HardwareRenderer$FrameCommitCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameCommitCallback;

    .line 644
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V

    .line 645
    return-void
.end method

.method public blacklist setFrameCompleteCallback(Landroid/graphics/HardwareRenderer$FrameCompleteCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameCompleteCallback;

    .line 649
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetFrameCompleteCallback(JLandroid/graphics/HardwareRenderer$FrameCompleteCallback;)V

    .line 650
    return-void
.end method

.method public whitelist setLightSourceAlpha(FF)V
    .registers 5
    .param p1, "ambientShadowAlpha"    # F
    .param p2, "spotShadowAlpha"    # F

    .line 284
    const-string v0, "ambientShadowAlpha"

    invoke-static {p1, v0}, Landroid/graphics/HardwareRenderer;->validateAlpha(FLjava/lang/String;)V

    .line 285
    const-string/jumbo v0, "spotShadowAlpha"

    invoke-static {p2, v0}, Landroid/graphics/HardwareRenderer;->validateAlpha(FLjava/lang/String;)V

    .line 286
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nSetLightAlpha(JFF)V

    .line 287
    return-void
.end method

.method public whitelist setLightSourceGeometry(FFFF)V
    .registers 12
    .param p1, "lightX"    # F
    .param p2, "lightY"    # F
    .param p3, "lightZ"    # F
    .param p4, "lightRadius"    # F

    .line 260
    const-string/jumbo v0, "lightX"

    invoke-static {p1, v0}, Landroid/graphics/HardwareRenderer;->validateFinite(FLjava/lang/String;)V

    .line 261
    const-string/jumbo v0, "lightY"

    invoke-static {p2, v0}, Landroid/graphics/HardwareRenderer;->validateFinite(FLjava/lang/String;)V

    .line 262
    const-string/jumbo v0, "lightZ"

    invoke-static {p3, v0}, Landroid/graphics/HardwareRenderer;->validatePositive(FLjava/lang/String;)V

    .line 263
    const-string/jumbo v0, "lightRadius"

    invoke-static {p4, v0}, Landroid/graphics/HardwareRenderer;->validatePositive(FLjava/lang/String;)V

    .line 264
    iget-wide v1, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "lightX":F
    .end local p2    # "lightY":F
    .end local p3    # "lightZ":F
    .end local p4    # "lightRadius":F
    .local v3, "lightX":F
    .local v4, "lightY":F
    .local v5, "lightZ":F
    .local v6, "lightRadius":F
    invoke-static/range {v1 .. v6}, Landroid/graphics/HardwareRenderer;->nSetLightGeometry(JFFFF)V

    .line 265
    return-void
.end method

.method public whitelist setName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 235
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetName(JLjava/lang/String;)V

    .line 236
    return-void
.end method

.method public whitelist setOpaque(Z)V
    .registers 5
    .param p1, "opaque"    # Z

    .line 627
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    if-eq v0, p1, :cond_d

    .line 628
    iput-boolean p1, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    .line 629
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-boolean v2, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    invoke-static {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->nSetOpaque(JZ)V

    .line 631
    :cond_d
    return-void
.end method

.method public blacklist setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$PictureCapturedCallback;

    .line 913
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetPictureCaptureCallback(JLandroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    .line 914
    return-void
.end method

.method protected blacklist setPrepareSurfaceControlForWebviewCallback(Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;

    .line 820
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetPrepareSurfaceControlForWebviewCallback(JLandroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V

    .line 821
    return-void
.end method

.method public blacklist setStopped(Z)V
    .registers 4
    .param p1, "stopped"    # Z

    .line 528
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetStopped(JZ)V

    .line 529
    return-void
.end method

.method public whitelist setSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;Z)V

    .line 327
    return-void
.end method

.method public blacklist setSurface(Landroid/view/Surface;Z)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "discardBuffer"    # Z

    .line 340
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 341
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is invalid. surface.isValid() == false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_11
    :goto_11
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nSetSurface(JLandroid/view/Surface;Z)V

    .line 344
    return-void
.end method

.method public blacklist setSurfaceControl(Landroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;)V
    .registers 7
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "blastBufferQueue"    # Landroid/graphics/BLASTBufferQueue;

    .line 354
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    if-eqz p1, :cond_7

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    goto :goto_9

    :cond_7
    const-wide/16 v2, 0x0

    :goto_9
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nSetSurfaceControl(JJ)V

    .line 355
    return-void
.end method

.method public blacklist setTargetHdrSdrRatio(F)V
    .registers 4
    .param p1, "ratio"    # F

    .line 714
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_c

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/high16 p1, 0x3f800000    # 1.0f

    .line 715
    :cond_e
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetTargetSdrHdrRatio(JF)V

    .line 716
    return-void
.end method

.method public whitelist start()V
    .registers 4

    .line 552
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->nSetStopped(JZ)V

    .line 553
    return-void
.end method

.method public whitelist stop()V
    .registers 4

    .line 541
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->nSetStopped(JZ)V

    .line 542
    return-void
.end method

.method public blacklist stopDrawing()V
    .registers 3

    .line 752
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nStopDrawing(J)V

    .line 753
    return-void
.end method

.method public blacklist syncAndDrawFrame(Landroid/graphics/FrameInfo;)I
    .registers 6
    .param p1, "frameInfo"    # Landroid/graphics/FrameInfo;

    .line 487
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-object v2, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    iget-object v3, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    array-length v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nSyncAndDrawFrame(J[JI)I

    move-result v0

    return v0
.end method
