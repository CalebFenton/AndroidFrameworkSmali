.class public final Landroid/view/ThreadedRenderer;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;,
        Landroid/view/ThreadedRenderer$ProcessInitializer;
    }
.end annotation


# static fields
.field private static final CACHE_PATH_SHADERS:Ljava/lang/String; = "com.android.opengl.shaders_cache"

.field public static final DEBUG_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.show_dirty_regions"

.field public static final DEBUG_OVERDRAW_PROPERTY:Ljava/lang/String; = "debug.hwui.overdraw"

.field public static final DEBUG_SHOW_LAYERS_UPDATES_PROPERTY:Ljava/lang/String; = "debug.hwui.show_layers_updates"

.field public static final DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY:Ljava/lang/String; = "debug.hwui.show_non_rect_clip"

.field private static final FLAG_DUMP_FRAMESTATS:I = 0x1

.field private static final FLAG_DUMP_RESET:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ThreadedRenderer"

.field public static final OVERDRAW_PROPERTY_SHOW:Ljava/lang/String; = "show"

.field static final PRINT_CONFIG_PROPERTY:Ljava/lang/String; = "debug.hwui.print_config"

.field static final PROFILE_MAXFRAMES_PROPERTY:Ljava/lang/String; = "debug.hwui.profile.maxframes"

.field public static final PROFILE_PROPERTY:Ljava/lang/String; = "debug.hwui.profile"

.field public static final PROFILE_PROPERTY_VISUALIZE_BARS:Ljava/lang/String; = "visual_bars"

.field static final RENDER_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.render_dirty_regions"

.field private static final SYNC_CONTEXT_IS_STOPPED:I = 0x4

.field private static final SYNC_INVALIDATE_REQUIRED:I = 0x1

.field private static final SYNC_LOST_SURFACE_REWARD_IF_FOUND:I = 0x2

.field private static final SYNC_OK:I

.field private static final VISUALIZERS:[Ljava/lang/String;

.field public static sRendererDisabled:Z

.field public static sSystemRendererDisabled:Z

.field public static sTrimForeground:Z


# instance fields
.field private final mAmbientShadowAlpha:I

.field private mChoreographer:Landroid/view/Choreographer;

.field private mEnabled:Z

.field private mHasInsets:Z

.field private mHeight:I

.field private mInitialized:Z

.field private mInsetLeft:I

.field private mInsetTop:I

.field private final mLightRadius:F

.field private final mLightY:F

.field private final mLightZ:F

.field private mNativeProxy:J

.field private mRequested:Z

.field private mRootNode:Landroid/view/RenderNode;

.field private mRootNodeNeedsUpdate:Z

.field private final mSpotShadowAlpha:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mWidth:I


# direct methods
.method static synthetic -wrap0(JLandroid/view/GraphicBuffer;[J)V
    .locals 0
    .param p0, "nativeProxy"    # J
    .param p2, "buffer"    # Landroid/view/GraphicBuffer;
    .param p3, "map"    # [J

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/view/ThreadedRenderer;->nSetAtlas(JLandroid/view/GraphicBuffer;[J)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(JI)V
    .locals 0
    .param p0, "nativeProxy"    # J
    .param p2, "fd"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nSetProcessStatsBuffer(JI)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 198
    sput-boolean v2, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    #@3
    .line 205
    sput-boolean v2, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    #@5
    .line 219
    sput-boolean v2, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    #@7
    .line 306
    const/4 v0, 0x1

    #@8
    new-array v0, v0, [Ljava/lang/String;

    #@a
    .line 307
    const-string/jumbo v1, "visual_bars"

    #@d
    aput-object v1, v0, v2

    #@f
    .line 306
    sput-object v0, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    #@11
    .line 67
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/high16 v8, 0x437f0000    # 255.0f

    #@3
    const/high16 v7, 0x3f000000    # 0.5f

    #@5
    const/4 v6, 0x0

    #@6
    const/4 v5, 0x0

    #@7
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@a
    .line 339
    iput-boolean v6, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    #@c
    .line 345
    iput-boolean v9, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    #@e
    .line 348
    sget-object v1, Lcom/android/internal/R$styleable;->Lighting:[I

    #@10
    const/4 v4, 0x0

    #@11
    invoke-virtual {p1, v4, v1, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@14
    move-result-object v0

    #@15
    .line 349
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    #@16
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@19
    move-result v1

    #@1a
    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    #@1c
    .line 350
    const/4 v1, 0x3

    #@1d
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@20
    move-result v1

    #@21
    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    #@23
    .line 351
    const/4 v1, 0x4

    #@24
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@27
    move-result v1

    #@28
    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    #@2a
    .line 353
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@2d
    move-result v1

    #@2e
    mul-float/2addr v1, v8

    #@2f
    add-float/2addr v1, v7

    #@30
    float-to-int v1, v1

    #@31
    .line 352
    iput v1, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    #@33
    .line 354
    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@36
    move-result v1

    #@37
    mul-float/2addr v1, v8

    #@38
    add-float/2addr v1, v7

    #@39
    float-to-int v1, v1

    #@3a
    iput v1, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    #@3c
    .line 355
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3f
    .line 357
    invoke-static {}, Landroid/view/ThreadedRenderer;->nCreateRootRenderNode()J

    #@42
    move-result-wide v2

    #@43
    .line 358
    .local v2, "rootNodePtr":J
    invoke-static {v2, v3}, Landroid/view/RenderNode;->adopt(J)Landroid/view/RenderNode;

    #@46
    move-result-object v1

    #@47
    iput-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    #@49
    .line 359
    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    #@4b
    invoke-virtual {v1, v6}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    #@4e
    .line 360
    invoke-static {p2, v2, v3}, Landroid/view/ThreadedRenderer;->nCreateProxy(ZJ)J

    #@51
    move-result-wide v4

    #@52
    iput-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@54
    .line 362
    sget-object v1, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    #@56
    iget-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@58
    invoke-virtual {v1, p1, v4, v5}, Landroid/view/ThreadedRenderer$ProcessInitializer;->init(Landroid/content/Context;J)V

    #@5b
    .line 364
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->loadSystemProperties()Z

    #@5e
    .line 347
    return-void
.end method

.method public static copySurfaceInto(Landroid/view/Surface;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 889
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nCopySurfaceInto(Landroid/view/Surface;Landroid/graphics/Bitmap;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static create(Landroid/content/Context;Z)Landroid/view/ThreadedRenderer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "translucent"    # Z

    #@0
    .prologue
    .line 262
    const/4 v0, 0x0

    #@1
    .line 263
    .local v0, "renderer":Landroid/view/ThreadedRenderer;
    invoke-static {}, Landroid/view/DisplayListCanvas;->isAvailable()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 264
    new-instance v0, Landroid/view/ThreadedRenderer;

    #@9
    .end local v0    # "renderer":Landroid/view/ThreadedRenderer;
    invoke-direct {v0, p0, p1}, Landroid/view/ThreadedRenderer;-><init>(Landroid/content/Context;Z)V

    #@c
    .line 266
    :cond_0
    return-object v0
.end method

.method private static destroyResources(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    #@3
    .line 510
    instance-of v3, p0, Landroid/view/ViewGroup;

    #@5
    if-eqz v3, :cond_0

    #@7
    move-object v1, p0

    #@8
    .line 511
    check-cast v1, Landroid/view/ViewGroup;

    #@a
    .line 513
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@d
    move-result v0

    #@e
    .line 514
    .local v0, "count":I
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@11
    .line 515
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v3

    #@15
    invoke-static {v3}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    #@18
    .line 514
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 507
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public static disable(Z)V
    .locals 1
    .param p0, "system"    # Z

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 213
    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    #@3
    .line 214
    if-eqz p0, :cond_0

    #@5
    .line 215
    sput-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    #@7
    .line 212
    :cond_0
    return-void
.end method

.method public static dumpProfileData([BLjava/io/FileDescriptor;)V
    .locals 0
    .param p0, "data"    # [B
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 289
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nDumpProfileData([BLjava/io/FileDescriptor;)V

    #@3
    .line 288
    return-void
.end method

.method public static enableForegroundTrimming()V
    .locals 1

    #@0
    .prologue
    .line 228
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    #@3
    .line 227
    return-void
.end method

.method static invokeFunctor(JZ)V
    .locals 0
    .param p0, "functor"    # J
    .param p2, "waitForCompletion"    # Z

    #@0
    .prologue
    .line 803
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nInvokeFunctor(JZ)V

    #@3
    .line 802
    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 239
    invoke-static {}, Landroid/view/DisplayListCanvas;->isAvailable()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static native nAddFrameMetricsObserver(JLandroid/view/FrameMetricsObserver;)J
.end method

.method private static native nAddRenderNode(JJZ)V
.end method

.method private static native nBuildLayer(JJ)V
.end method

.method private static native nCancelLayerUpdate(JJ)V
.end method

.method private static native nCopyLayerInto(JJLandroid/graphics/Bitmap;)Z
.end method

.method private static native nCopySurfaceInto(Landroid/view/Surface;Landroid/graphics/Bitmap;)I
.end method

.method private static native nCreateProxy(ZJ)J
.end method

.method private static native nCreateRootRenderNode()J
.end method

.method private static native nCreateTextureLayer(J)J
.end method

.method private static native nDeleteProxy(J)V
.end method

.method private static native nDestroy(JJ)V
.end method

.method private static native nDestroyHardwareResources(J)V
.end method

.method private static native nDetachSurfaceTexture(JJ)V
.end method

.method private static native nDrawRenderNode(JJ)V
.end method

.method private static native nDumpProfileData([BLjava/io/FileDescriptor;)V
.end method

.method private static native nDumpProfileInfo(JLjava/io/FileDescriptor;I)V
.end method

.method private static native nFence(J)V
.end method

.method private static native nInitialize(JLandroid/view/Surface;)V
.end method

.method private static native nInvokeFunctor(JZ)V
.end method

.method private static native nLoadSystemProperties(J)Z
.end method

.method private static native nNotifyFramePending(J)V
.end method

.method private static native nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nPauseSurface(JLandroid/view/Surface;)Z
.end method

.method private static native nPushLayerUpdate(JJ)V
.end method

.method private static native nRegisterAnimatingRenderNode(JJ)V
.end method

.method private static native nRemoveFrameMetricsObserver(JJ)V
.end method

.method private static native nRemoveRenderNode(JJ)V
.end method

.method private static native nSerializeDisplayListTree(J)V
.end method

.method private static native nSetAtlas(JLandroid/view/GraphicBuffer;[J)V
.end method

.method private static native nSetContentDrawBounds(JIIII)V
.end method

.method private static native nSetLightCenter(JFFF)V
.end method

.method private static native nSetName(JLjava/lang/String;)V
.end method

.method private static native nSetOpaque(JZ)V
.end method

.method private static native nSetProcessStatsBuffer(JI)V
.end method

.method private static native nSetStopped(JZ)V
.end method

.method private static native nSetup(JIIFII)V
.end method

.method private static native nStopDrawing(J)V
.end method

.method private static native nSyncAndDrawFrame(J[JI)I
.end method

.method private static native nTrimMemory(I)V
.end method

.method private static native nUpdateSurface(JLandroid/view/Surface;)V
.end method

.method public static overrideProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 282
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 283
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "name and value must be non-null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 285
    :cond_1
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 281
    return-void
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 2
    .param p0, "cacheDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 251
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "com.android.opengl.shaders_cache"

    #@5
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Landroid/view/ThreadedRenderer;->setupShadersDiskCache(Ljava/lang/String;)V

    #@f
    .line 250
    return-void
.end method

.method static native setupShadersDiskCache(Ljava/lang/String;)V
.end method

.method public static trimMemory(I)V
    .locals 0
    .param p0, "level"    # I

    #@0
    .prologue
    .line 278
    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nTrimMemory(I)V

    #@3
    .line 277
    return-void
.end method

.method private updateEnabledState(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 415
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 418
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    #@a
    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    #@d
    .line 414
    :goto_0
    return-void

    #@e
    .line 416
    :cond_0
    const/4 v0, 0x0

    #@f
    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    #@12
    goto :goto_0
.end method

.method private updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callbacks"    # Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;

    #@0
    .prologue
    const-wide/16 v6, 0x8

    #@2
    .line 661
    const-string/jumbo v2, "Record View#draw()"

    #@5
    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8
    .line 662
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateViewTreeDisplayList(Landroid/view/View;)V

    #@b
    .line 664
    iget-boolean v2, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    #@d
    if-nez v2, :cond_0

    #@f
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    #@11
    invoke-virtual {v2}, Landroid/view/RenderNode;->isValid()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 682
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@1a
    .line 660
    return-void

    #@1b
    .line 665
    :cond_0
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    #@1d
    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    #@1f
    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    #@21
    invoke-virtual {v2, v3, v4}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    #@24
    move-result-object v0

    #@25
    .line 667
    .local v0, "canvas":Landroid/view/DisplayListCanvas;
    :try_start_0
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->save()I

    #@28
    move-result v1

    #@29
    .line 668
    .local v1, "saveCount":I
    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    #@2b
    int-to-float v2, v2

    #@2c
    iget v3, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    #@2e
    int-to-float v3, v3

    #@2f
    invoke-virtual {v0, v2, v3}, Landroid/view/DisplayListCanvas;->translate(FF)V

    #@32
    .line 669
    invoke-interface {p2, v0}, Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;->onHardwarePreDraw(Landroid/view/DisplayListCanvas;)V

    #@35
    .line 671
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertReorderBarrier()V

    #@38
    .line 672
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v0, v2}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    #@3f
    .line 673
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertInorderBarrier()V

    #@42
    .line 675
    invoke-interface {p2, v0}, Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/DisplayListCanvas;)V

    #@45
    .line 676
    invoke-virtual {v0, v1}, Landroid/view/DisplayListCanvas;->restoreToCount(I)V

    #@48
    .line 677
    const/4 v2, 0x0

    #@49
    iput-boolean v2, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 679
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    #@4d
    invoke-virtual {v2, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    #@50
    goto :goto_0

    #@51
    .line 678
    .end local v1    # "saveCount":I
    :catchall_0
    move-exception v2

    #@52
    .line 679
    iget-object v3, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    #@54
    invoke-virtual {v3, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    #@57
    .line 678
    throw v2
.end method

.method private updateViewTreeDisplayList(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/high16 v2, -0x80000000

    #@3
    .line 652
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@5
    or-int/lit8 v0, v0, 0x20

    #@7
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@9
    .line 653
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@b
    and-int/2addr v0, v2

    #@c
    if-ne v0, v2, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    #@11
    .line 655
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@13
    const v2, 0x7fffffff

    #@16
    and-int/2addr v0, v2

    #@17
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@19
    .line 656
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    #@1c
    .line 657
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    #@1e
    .line 651
    return-void

    #@1f
    :cond_0
    move v0, v1

    #@20
    .line 653
    goto :goto_0
.end method


# virtual methods
.method addFrameMetricsObserver(Landroid/view/FrameMetricsObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/view/FrameMetricsObserver;

    #@0
    .prologue
    .line 962
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v2, v3, p1}, Landroid/view/ThreadedRenderer;->nAddFrameMetricsObserver(JLandroid/view/FrameMetricsObserver;)J

    #@5
    move-result-wide v0

    #@6
    .line 963
    .local v0, "nativeObserver":J
    new-instance v2, Lcom/android/internal/util/VirtualRefBasePtr;

    #@8
    invoke-direct {v2, v0, v1}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    #@b
    iput-object v2, p1, Landroid/view/FrameMetricsObserver;->mNative:Lcom/android/internal/util/VirtualRefBasePtr;

    #@d
    .line 961
    return-void
.end method

.method public addRenderNode(Landroid/view/RenderNode;Z)V
    .locals 4
    .param p1, "node"    # Landroid/view/RenderNode;
    .param p2, "placeFront"    # Z

    #@0
    .prologue
    .line 693
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    #@4
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/ThreadedRenderer;->nAddRenderNode(JJZ)V

    #@7
    .line 692
    return-void
.end method

.method buildLayer(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "node"    # Landroid/view/RenderNode;

    #@0
    .prologue
    .line 819
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nBuildLayer(JJ)V

    #@9
    .line 818
    return-void
.end method

.method copyLayerInto(Landroid/view/HardwareLayer;Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "layer"    # Landroid/view/HardwareLayer;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 824
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    .line 825
    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    #@5
    move-result-wide v2

    #@6
    .line 824
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/ThreadedRenderer;->nCopyLayerInto(JJLandroid/graphics/Bitmap;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method createTextureLayer()Landroid/view/HardwareLayer;
    .locals 4

    #@0
    .prologue
    .line 813
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v2, v3}, Landroid/view/ThreadedRenderer;->nCreateTextureLayer(J)J

    #@5
    move-result-wide v0

    #@6
    .line 814
    .local v0, "layer":J
    invoke-static {p0, v0, v1}, Landroid/view/HardwareLayer;->adoptTextureLayer(Landroid/view/ThreadedRenderer;J)Landroid/view/HardwareLayer;

    #@9
    move-result-object v2

    #@a
    return-object v2
.end method

.method destroy()V
    .locals 4

    #@0
    .prologue
    .line 371
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    #@3
    .line 372
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    #@7
    .line 373
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@9
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    #@b
    iget-wide v2, v2, Landroid/view/RenderNode;->mNativeRenderNode:J

    #@d
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nDestroy(JJ)V

    #@10
    .line 370
    return-void
.end method

.method destroyHardwareResources(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 503
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    #@3
    .line 504
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@5
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDestroyHardwareResources(J)V

    #@8
    .line 502
    return-void
.end method

.method detachSurfaceTexture(J)V
    .locals 3
    .param p1, "hardwareLayer"    # J

    #@0
    .prologue
    .line 535
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/view/ThreadedRenderer;->nDetachSurfaceTexture(JJ)V

    #@5
    .line 534
    return-void
.end method

.method draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "callbacks"    # Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 765
    const/4 v5, 0x1

    #@3
    iput-boolean v5, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    #@5
    .line 767
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@7
    iget-object v0, v5, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@9
    .line 768
    .local v0, "choreographer":Landroid/view/Choreographer;
    iget-object v5, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    #@b
    invoke-virtual {v5}, Landroid/view/FrameInfo;->markDrawStart()V

    #@e
    .line 770
    invoke-direct {p0, p1, p3}, Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;)V

    #@11
    .line 772
    iput-boolean v8, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    #@13
    .line 776
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@15
    if-eqz v5, :cond_1

    #@17
    .line 777
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@19
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@1c
    move-result v1

    #@1d
    .line 778
    .local v1, "count":I
    const/4 v3, 0x0

    #@1e
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@20
    .line 780
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@22
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v5

    #@26
    check-cast v5, Landroid/view/RenderNode;

    #@28
    .line 779
    invoke-virtual {p0, v5}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    #@2b
    .line 778
    add-int/lit8 v3, v3, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 782
    :cond_0
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@30
    invoke-interface {v5}, Ljava/util/List;->clear()V

    #@33
    .line 785
    iput-object v6, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@35
    .line 788
    .end local v1    # "count":I
    .end local v3    # "i":I
    :cond_1
    iget-object v5, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    #@37
    iget-object v2, v5, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@39
    .line 789
    .local v2, "frameInfo":[J
    iget-wide v6, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@3b
    array-length v5, v2

    #@3c
    invoke-static {v6, v7, v2, v5}, Landroid/view/ThreadedRenderer;->nSyncAndDrawFrame(J[JI)I

    #@3f
    move-result v4

    #@40
    .line 790
    .local v4, "syncResult":I
    and-int/lit8 v5, v4, 0x2

    #@42
    if-eqz v5, :cond_2

    #@44
    .line 791
    invoke-virtual {p0, v8}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    #@47
    .line 792
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@49
    iget-object v5, v5, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@4b
    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    #@4e
    .line 795
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@50
    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->invalidate()V

    #@53
    .line 797
    :cond_2
    and-int/lit8 v5, v4, 0x1

    #@55
    if-eqz v5, :cond_3

    #@57
    .line 798
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@59
    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->invalidate()V

    #@5c
    .line 764
    :cond_3
    return-void
.end method

.method public drawRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "node"    # Landroid/view/RenderNode;

    #@0
    .prologue
    .line 710
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    #@4
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nDrawRenderNode(JJ)V

    #@7
    .line 709
    return-void
.end method

.method dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 621
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    #@3
    .line 622
    const/4 v0, 0x0

    #@4
    .line 623
    .local v0, "flags":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    array-length v2, p3

    #@6
    if-ge v1, v2, :cond_2

    #@8
    .line 624
    aget-object v2, p3, v1

    #@a
    const-string/jumbo v3, "framestats"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 626
    or-int/lit8 v0, v0, 0x1

    #@15
    .line 623
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 624
    :cond_1
    const-string/jumbo v3, "reset"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 629
    or-int/lit8 v0, v0, 0x2

    #@23
    .line 630
    goto :goto_1

    #@24
    .line 633
    :cond_2
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@26
    invoke-static {v2, v3, p2, v0}, Landroid/view/ThreadedRenderer;->nDumpProfileInfo(JLjava/io/FileDescriptor;I)V

    #@29
    .line 620
    return-void
.end method

.method fence()V
    .locals 2

    #@0
    .prologue
    .line 859
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nFence(J)V

    #@5
    .line 858
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 895
    :try_start_0
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDeleteProxy(J)V

    #@5
    .line 896
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 898
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@c
    .line 893
    return-void

    #@d
    .line 897
    :catchall_0
    move-exception v0

    #@e
    .line 898
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@11
    .line 897
    throw v0
.end method

.method getHeight()I
    .locals 1

    #@0
    .prologue
    .line 614
    iget v0, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    #@2
    return v0
.end method

.method getWidth()I
    .locals 1

    #@0
    .prologue
    .line 604
    iget v0, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    #@2
    return v0
.end method

.method initialize(Landroid/view/Surface;)Z
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    #@0
    .prologue
    .line 430
    iget-boolean v1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    .line 431
    .local v0, "status":Z
    :goto_0
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    #@8
    .line 432
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    #@b
    .line 433
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@d
    invoke-static {v2, v3, p1}, Landroid/view/ThreadedRenderer;->nInitialize(JLandroid/view/Surface;)V

    #@10
    .line 434
    return v0

    #@11
    .line 430
    .end local v0    # "status":Z
    :cond_0
    const/4 v0, 0x1

    #@12
    .restart local v0    # "status":Z
    goto :goto_0
.end method

.method initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p4, "surface"    # Landroid/view/Surface;
    .param p5, "surfaceInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    #@0
    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isRequested()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 457
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 458
    invoke-virtual {p0, p4}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 459
    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    #@15
    .line 460
    const/4 v0, 0x1

    #@16
    return v0

    #@17
    .line 464
    :cond_0
    const/4 v0, 0x0

    #@18
    return v0
.end method

.method invalidate(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 527
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V

    #@3
    .line 526
    return-void
.end method

.method invalidateRoot()V
    .locals 1

    #@0
    .prologue
    .line 754
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    #@3
    .line 753
    return-void
.end method

.method isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 382
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    #@2
    return v0
.end method

.method isRequested()Z
    .locals 1

    #@0
    .prologue
    .line 401
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    #@2
    return v0
.end method

.method loadSystemProperties()Z
    .locals 4

    #@0
    .prologue
    .line 644
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v2, v3}, Landroid/view/ThreadedRenderer;->nLoadSystemProperties(J)Z

    #@5
    move-result v0

    #@6
    .line 645
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    #@8
    .line 646
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    #@b
    .line 648
    :cond_0
    return v0
.end method

.method public notifyFramePending()V
    .locals 2

    #@0
    .prologue
    .line 876
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nNotifyFramePending(J)V

    #@5
    .line 875
    return-void
.end method

.method onLayerDestroyed(Landroid/view/HardwareLayer;)V
    .locals 4
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    #@0
    .prologue
    .line 843
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nCancelLayerUpdate(JJ)V

    #@9
    .line 842
    return-void
.end method

.method pauseSurface(Landroid/view/Surface;)Z
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 485
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nPauseSurface(JLandroid/view/Surface;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method pushLayerUpdate(Landroid/view/HardwareLayer;)V
    .locals 4
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    #@0
    .prologue
    .line 835
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nPushLayerUpdate(JJ)V

    #@9
    .line 834
    return-void
.end method

.method registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "animator"    # Landroid/view/RenderNode;

    #@0
    .prologue
    .line 881
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    #@2
    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    #@4
    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRegisterAnimatingRenderNode(JJ)V

    #@9
    .line 880
    return-void
.end method

.method removeFrameMetricsObserver(Landroid/view/FrameMetricsObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/view/FrameMetricsObserver;

    #@0
    .prologue
    .line 967
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    iget-object v2, p1, Landroid/view/FrameMetricsObserver;->mNative:Lcom/android/internal/util/VirtualRefBasePtr;

    #@4
    invoke-virtual {v2}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@7
    move-result-wide v2

    #@8
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRemoveFrameMetricsObserver(JJ)V

    #@b
    .line 968
    const/4 v0, 0x0

    #@c
    iput-object v0, p1, Landroid/view/FrameMetricsObserver;->mNative:Lcom/android/internal/util/VirtualRefBasePtr;

    #@e
    .line 966
    return-void
.end method

.method public removeRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "node"    # Landroid/view/RenderNode;

    #@0
    .prologue
    .line 701
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    #@4
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRemoveRenderNode(JJ)V

    #@7
    .line 700
    return-void
.end method

.method public serializeDisplayListTree()V
    .locals 2

    #@0
    .prologue
    .line 885
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nSerializeDisplayListTree(J)V

    #@5
    .line 884
    return-void
.end method

.method public setContentDrawBounds(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 723
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/view/ThreadedRenderer;->nSetContentDrawBounds(JIIII)V

    #@9
    .line 722
    return-void
.end method

.method setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 391
    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    #@2
    .line 390
    return-void
.end method

.method setLightCenter(Landroid/view/View$AttachInfo;)V
    .locals 6
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;

    #@0
    .prologue
    .line 582
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    #@2
    .line 583
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v3, p1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    #@4
    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@7
    .line 584
    iget v3, v0, Landroid/graphics/Point;->x:I

    #@9
    int-to-float v3, v3

    #@a
    const/high16 v4, 0x40000000    # 2.0f

    #@c
    div-float/2addr v3, v4

    #@d
    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@f
    int-to-float v4, v4

    #@10
    sub-float v1, v3, v4

    #@12
    .line 585
    .local v1, "lightX":F
    iget v3, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    #@14
    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@16
    int-to-float v4, v4

    #@17
    sub-float v2, v3, v4

    #@19
    .line 587
    .local v2, "lightY":F
    iget-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@1b
    iget v3, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    #@1d
    invoke-static {v4, v5, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nSetLightCenter(JFFF)V

    #@20
    .line 580
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 852
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetName(JLjava/lang/String;)V

    #@5
    .line 851
    return-void
.end method

.method setOpaque(Z)V
    .locals 4
    .param p1, "opaque"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 594
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@3
    if-eqz p1, :cond_0

    #@5
    iget-boolean v1, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    invoke-static {v2, v3, v0}, Landroid/view/ThreadedRenderer;->nSetOpaque(JZ)V

    #@c
    .line 593
    return-void

    #@d
    .line 594
    :cond_1
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method setRequested(Z)V
    .locals 0
    .param p1, "requested"    # Z

    #@0
    .prologue
    .line 411
    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    #@2
    .line 410
    return-void
.end method

.method setStopped(Z)V
    .locals 2
    .param p1, "stopped"    # Z

    #@0
    .prologue
    .line 493
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetStopped(JZ)V

    #@5
    .line 492
    return-void
.end method

.method setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p4, "surfaceInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 547
    iput p1, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    #@3
    .line 548
    iput p2, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    #@5
    .line 550
    if-eqz p4, :cond_2

    #@7
    iget v0, p4, Landroid/graphics/Rect;->left:I

    #@9
    if-nez v0, :cond_0

    #@b
    iget v0, p4, Landroid/graphics/Rect;->right:I

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 552
    :cond_0
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    #@12
    .line 553
    iget v0, p4, Landroid/graphics/Rect;->left:I

    #@14
    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    #@16
    .line 554
    iget v0, p4, Landroid/graphics/Rect;->top:I

    #@18
    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    #@1a
    .line 555
    iget v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    #@1c
    add-int/2addr v0, p1

    #@1d
    iget v1, p4, Landroid/graphics/Rect;->right:I

    #@1f
    add-int/2addr v0, v1

    #@20
    iput v0, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    #@22
    .line 556
    iget v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    #@24
    add-int/2addr v0, p2

    #@25
    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    #@27
    add-int/2addr v0, v1

    #@28
    iput v0, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    #@2a
    .line 559
    invoke-virtual {p0, v2}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    #@2d
    .line 568
    :goto_0
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    #@2f
    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    #@31
    neg-int v1, v1

    #@32
    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    #@34
    neg-int v2, v2

    #@35
    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    #@37
    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    #@39
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    #@3c
    .line 569
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@3e
    iget v2, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    #@40
    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    #@42
    iget v4, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    #@44
    .line 570
    iget v5, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    #@46
    iget v6, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    #@48
    .line 569
    invoke-static/range {v0 .. v6}, Landroid/view/ThreadedRenderer;->nSetup(JIIFII)V

    #@4b
    .line 572
    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    #@4e
    .line 546
    return-void

    #@4f
    .line 551
    :cond_1
    iget v0, p4, Landroid/graphics/Rect;->top:I

    #@51
    if-nez v0, :cond_0

    #@53
    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    #@55
    if-nez v0, :cond_0

    #@57
    .line 561
    :cond_2
    iput-boolean v2, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    #@59
    .line 562
    iput v2, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    #@5b
    .line 563
    iput v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    #@5d
    .line 564
    iput p1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    #@5f
    .line 565
    iput p2, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    #@61
    goto :goto_0
.end method

.method stopDrawing()V
    .locals 2

    #@0
    .prologue
    .line 869
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nStopDrawing(J)V

    #@5
    .line 868
    return-void
.end method

.method updateSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    #@0
    .prologue
    .line 473
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    #@3
    .line 474
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@5
    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nUpdateSurface(JLandroid/view/Surface;)V

    #@8
    .line 472
    return-void
.end method
