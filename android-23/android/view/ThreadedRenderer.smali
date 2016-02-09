.class public Landroid/view/ThreadedRenderer;
.super Landroid/view/HardwareRenderer;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ThreadedRenderer$ProcessInitializer;
    }
.end annotation


# static fields
.field private static final FLAG_DUMP_FRAMESTATS:I = 0x1

.field private static final FLAG_DUMP_RESET:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "ThreadedRenderer"

.field private static final SYNC_INVALIDATE_REQUIRED:I = 0x1

.field private static final SYNC_LOST_SURFACE_REWARD_IF_FOUND:I = 0x2

.field private static final SYNC_OK:I

.field private static final VISUALIZERS:[Ljava/lang/String;


# instance fields
.field private final mAmbientShadowAlpha:I

.field private mChoreographer:Landroid/view/Choreographer;

.field private mHasInsets:Z

.field private mHeight:I

.field private mInitialized:Z

.field private mInsetLeft:I

.field private mInsetTop:I

.field private final mLightRadius:F

.field private final mLightY:F

.field private final mLightZ:F

.field private mNativeProxy:J

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
    .line 73
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 74
    const-string/jumbo v1, "visual_bars"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 73
    sput-object v0, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    #@b
    .line 62
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z

    #@0
    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    #@2
    const/high16 v7, 0x3f000000    # 0.5f

    #@4
    const/4 v6, 0x0

    #@5
    const/4 v5, 0x0

    #@6
    .line 111
    invoke-direct {p0}, Landroid/view/HardwareRenderer;-><init>()V

    #@9
    .line 106
    iput-boolean v6, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    #@b
    .line 112
    sget-object v1, Lcom/android/internal/R$styleable;->Lighting:[I

    #@d
    const/4 v4, 0x0

    #@e
    invoke-virtual {p1, v4, v1, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@11
    move-result-object v0

    #@12
    .line 113
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    #@13
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@16
    move-result v1

    #@17
    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    #@19
    .line 114
    const/4 v1, 0x3

    #@1a
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@1d
    move-result v1

    #@1e
    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    #@20
    .line 115
    const/4 v1, 0x4

    #@21
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@24
    move-result v1

    #@25
    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    #@27
    .line 117
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@2a
    move-result v1

    #@2b
    mul-float/2addr v1, v8

    #@2c
    add-float/2addr v1, v7

    #@2d
    float-to-int v1, v1

    #@2e
    .line 116
    iput v1, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    #@30
    .line 118
    const/4 v1, 0x1

    #@31
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@34
    move-result v1

    #@35
    mul-float/2addr v1, v8

    #@36
    add-float/2addr v1, v7

    #@37
    float-to-int v1, v1

    #@38
    iput v1, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    #@3a
    .line 119
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3d
    .line 121
    invoke-static {}, Landroid/view/ThreadedRenderer;->nCreateRootRenderNode()J

    #@40
    move-result-wide v2

    #@41
    .line 122
    .local v2, "rootNodePtr":J
    invoke-static {v2, v3}, Landroid/view/RenderNode;->adopt(J)Landroid/view/RenderNode;

    #@44
    move-result-object v1

    #@45
    iput-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    #@47
    .line 123
    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    #@49
    invoke-virtual {v1, v6}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    #@4c
    .line 124
    invoke-static {p2, v2, v3}, Landroid/view/ThreadedRenderer;->nCreateProxy(ZJ)J

    #@4f
    move-result-wide v4

    #@50
    iput-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@52
    .line 126
    sget-object v1, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    #@54
    iget-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@56
    invoke-virtual {v1, p1, v4, v5}, Landroid/view/ThreadedRenderer$ProcessInitializer;->init(Landroid/content/Context;J)V

    #@59
    .line 128
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->loadSystemProperties()Z

    #@5c
    .line 111
    return-void
.end method

.method private static destroyResources(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    #@3
    .line 174
    instance-of v3, p0, Landroid/view/ViewGroup;

    #@5
    if-eqz v3, :cond_0

    #@7
    move-object v1, p0

    #@8
    .line 175
    check-cast v1, Landroid/view/ViewGroup;

    #@a
    .line 177
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@d
    move-result v0

    #@e
    .line 178
    .local v0, "count":I
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@11
    .line 179
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v3

    #@15
    invoke-static {v3}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    #@18
    .line 178
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 171
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public static dumpProfileData([BLjava/io/FileDescriptor;)V
    .locals 0
    .param p0, "data"    # [B
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 432
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nDumpProfileData([BLjava/io/FileDescriptor;)V

    #@3
    .line 431
    return-void
.end method

.method static invokeFunctor(JZ)V
    .locals 0
    .param p0, "functor"    # J
    .param p2, "waitForCompletion"    # Z

    #@0
    .prologue
    .line 355
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nInvokeFunctor(JZ)V

    #@3
    .line 354
    return-void
.end method

.method private static native nBuildLayer(JJ)V
.end method

.method private static native nCancelLayerUpdate(JJ)V
.end method

.method private static native nCopyLayerInto(JJLandroid/graphics/Bitmap;)Z
.end method

.method private static native nCreateProxy(ZJ)J
.end method

.method private static native nCreateRootRenderNode()J
.end method

.method private static native nCreateTextureLayer(J)J
.end method

.method private static native nDeleteProxy(J)V
.end method

.method private static native nDestroy(J)V
.end method

.method private static native nDestroyHardwareResources(J)V
.end method

.method private static native nDetachSurfaceTexture(JJ)V
.end method

.method private static native nDumpProfileData([BLjava/io/FileDescriptor;)V
.end method

.method private static native nDumpProfileInfo(JLjava/io/FileDescriptor;I)V
.end method

.method private static native nFence(J)V
.end method

.method private static native nInitialize(JLandroid/view/Surface;)Z
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

.method private static native nSetAtlas(JLandroid/view/GraphicBuffer;[J)V
.end method

.method private static native nSetLightCenter(JFFF)V
.end method

.method private static native nSetName(JLjava/lang/String;)V
.end method

.method private static native nSetOpaque(JZ)V
.end method

.method private static native nSetProcessStatsBuffer(JI)V
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
    .line 425
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 426
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "name and value must be non-null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 428
    :cond_1
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 424
    return-void
.end method

.method static native setupShadersDiskCache(Ljava/lang/String;)V
.end method

.method static trimMemory(I)V
    .locals 0
    .param p0, "level"    # I

    #@0
    .prologue
    .line 421
    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nTrimMemory(I)V

    #@3
    .line 420
    return-void
.end method

.method private updateEnabledState(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 139
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 142
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    #@a
    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    #@d
    .line 138
    :goto_0
    return-void

    #@e
    .line 140
    :cond_0
    const/4 v0, 0x0

    #@f
    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    #@12
    goto :goto_0
.end method

.method private updateRootDisplayList(Landroid/view/View;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callbacks"    # Landroid/view/HardwareRenderer$HardwareDrawCallbacks;

    #@0
    .prologue
    const-wide/16 v6, 0x8

    #@2
    .line 286
    const-string/jumbo v2, "Record View#draw()"

    #@5
    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8
    .line 287
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateViewTreeDisplayList(Landroid/view/View;)V

    #@b
    .line 289
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
    .line 307
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@1a
    .line 285
    return-void

    #@1b
    .line 290
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
    .line 292
    .local v0, "canvas":Landroid/view/DisplayListCanvas;
    :try_start_0
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->save()I

    #@28
    move-result v1

    #@29
    .line 293
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
    .line 294
    invoke-interface {p2, v0}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePreDraw(Landroid/view/DisplayListCanvas;)V

    #@35
    .line 296
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertReorderBarrier()V

    #@38
    .line 297
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v0, v2}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    #@3f
    .line 298
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertInorderBarrier()V

    #@42
    .line 300
    invoke-interface {p2, v0}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/DisplayListCanvas;)V

    #@45
    .line 301
    invoke-virtual {v0, v1}, Landroid/view/DisplayListCanvas;->restoreToCount(I)V

    #@48
    .line 302
    const/4 v2, 0x0

    #@49
    iput-boolean v2, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 304
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    #@4d
    invoke-virtual {v2, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    #@50
    goto :goto_0

    #@51
    .line 303
    .end local v1    # "saveCount":I
    :catchall_0
    move-exception v2

    #@52
    .line 304
    iget-object v3, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    #@54
    invoke-virtual {v3, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    #@57
    .line 303
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
    .line 277
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@5
    or-int/lit8 v0, v0, 0x20

    #@7
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@9
    .line 278
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
    .line 280
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@13
    const v2, 0x7fffffff

    #@16
    and-int/2addr v0, v2

    #@17
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@19
    .line 281
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    #@1c
    .line 282
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    #@1e
    .line 276
    return-void

    #@1f
    :cond_0
    move v0, v1

    #@20
    .line 278
    goto :goto_0
.end method


# virtual methods
.method buildLayer(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "node"    # Landroid/view/RenderNode;

    #@0
    .prologue
    .line 366
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nBuildLayer(JJ)V

    #@9
    .line 365
    return-void
.end method

.method copyLayerInto(Landroid/view/HardwareLayer;Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "layer"    # Landroid/view/HardwareLayer;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 371
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    .line 372
    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    #@5
    move-result-wide v2

    #@6
    .line 371
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
    .line 360
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v2, v3}, Landroid/view/ThreadedRenderer;->nCreateTextureLayer(J)J

    #@5
    move-result-wide v0

    #@6
    .line 361
    .local v0, "layer":J
    invoke-static {p0, v0, v1}, Landroid/view/HardwareLayer;->adoptTextureLayer(Landroid/view/HardwareRenderer;J)Landroid/view/HardwareLayer;

    #@9
    move-result-object v2

    #@a
    return-object v2
.end method

.method destroy()V
    .locals 2

    #@0
    .prologue
    .line 133
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    #@3
    .line 134
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    #@7
    .line 135
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@9
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDestroy(J)V

    #@c
    .line 132
    return-void
.end method

.method destroyHardwareResources(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 167
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    #@3
    .line 168
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@5
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDestroyHardwareResources(J)V

    #@8
    .line 166
    return-void
.end method

.method detachSurfaceTexture(J)V
    .locals 3
    .param p1, "hardwareLayer"    # J

    #@0
    .prologue
    .line 191
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/view/ThreadedRenderer;->nDetachSurfaceTexture(JJ)V

    #@5
    .line 190
    return-void
.end method

.method draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "callbacks"    # Landroid/view/HardwareRenderer$HardwareDrawCallbacks;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 317
    const/4 v5, 0x1

    #@3
    iput-boolean v5, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    #@5
    .line 319
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@7
    iget-object v0, v5, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@9
    .line 320
    .local v0, "choreographer":Landroid/view/Choreographer;
    iget-object v5, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    #@b
    invoke-virtual {v5}, Landroid/view/FrameInfo;->markDrawStart()V

    #@e
    .line 322
    invoke-direct {p0, p1, p3}, Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V

    #@11
    .line 324
    iput-boolean v8, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    #@13
    .line 328
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@15
    if-eqz v5, :cond_1

    #@17
    .line 329
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@19
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@1c
    move-result v1

    #@1d
    .line 330
    .local v1, "count":I
    const/4 v3, 0x0

    #@1e
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@20
    .line 332
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@22
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v5

    #@26
    check-cast v5, Landroid/view/RenderNode;

    #@28
    .line 331
    invoke-virtual {p0, v5}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    #@2b
    .line 330
    add-int/lit8 v3, v3, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 334
    :cond_0
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@30
    invoke-interface {v5}, Ljava/util/List;->clear()V

    #@33
    .line 337
    iput-object v6, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    #@35
    .line 340
    .end local v1    # "count":I
    .end local v3    # "i":I
    :cond_1
    iget-object v5, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    #@37
    iget-object v2, v5, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@39
    .line 341
    .local v2, "frameInfo":[J
    iget-wide v6, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@3b
    array-length v5, v2

    #@3c
    invoke-static {v6, v7, v2, v5}, Landroid/view/ThreadedRenderer;->nSyncAndDrawFrame(J[JI)I

    #@3f
    move-result v4

    #@40
    .line 342
    .local v4, "syncResult":I
    and-int/lit8 v5, v4, 0x2

    #@42
    if-eqz v5, :cond_2

    #@44
    .line 343
    invoke-virtual {p0, v8}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    #@47
    .line 344
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@49
    iget-object v5, v5, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@4b
    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    #@4e
    .line 347
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@50
    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->invalidate()V

    #@53
    .line 349
    :cond_2
    and-int/lit8 v5, v4, 0x1

    #@55
    if-eqz v5, :cond_3

    #@57
    .line 350
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@59
    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->invalidate()V

    #@5c
    .line 316
    :cond_3
    return-void
.end method

.method dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 252
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    #@3
    .line 253
    const/4 v0, 0x0

    #@4
    .line 254
    .local v0, "flags":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    array-length v2, p3

    #@6
    if-ge v1, v2, :cond_2

    #@8
    .line 255
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
    .line 257
    or-int/lit8 v0, v0, 0x1

    #@15
    .line 254
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 255
    :cond_1
    const-string/jumbo v3, "reset"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 260
    or-int/lit8 v0, v0, 0x2

    #@23
    .line 261
    goto :goto_1

    #@24
    .line 264
    :cond_2
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@26
    invoke-static {v2, v3, p2, v0}, Landroid/view/ThreadedRenderer;->nDumpProfileInfo(JLjava/io/FileDescriptor;I)V

    #@29
    .line 251
    return-void
.end method

.method fence()V
    .locals 2

    #@0
    .prologue
    .line 392
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nFence(J)V

    #@5
    .line 391
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
    .line 413
    :try_start_0
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDeleteProxy(J)V

    #@5
    .line 414
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 416
    invoke-super {p0}, Landroid/view/HardwareRenderer;->finalize()V

    #@c
    .line 411
    return-void

    #@d
    .line 415
    :catchall_0
    move-exception v0

    #@e
    .line 416
    invoke-super {p0}, Landroid/view/HardwareRenderer;->finalize()V

    #@11
    .line 415
    throw v0
.end method

.method getHeight()I
    .locals 1

    #@0
    .prologue
    .line 247
    iget v0, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    #@2
    return v0
.end method

.method getWidth()I
    .locals 1

    #@0
    .prologue
    .line 242
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
    .line 148
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    #@3
    .line 149
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    #@6
    .line 150
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@8
    invoke-static {v2, v3, p1}, Landroid/view/ThreadedRenderer;->nInitialize(JLandroid/view/Surface;)Z

    #@b
    move-result v0

    #@c
    .line 151
    .local v0, "status":Z
    return v0
.end method

.method invalidate(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 186
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V

    #@3
    .line 185
    return-void
.end method

.method invalidateRoot()V
    .locals 1

    #@0
    .prologue
    .line 312
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    #@3
    .line 311
    return-void
.end method

.method loadSystemProperties()Z
    .locals 4

    #@0
    .prologue
    .line 269
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v2, v3}, Landroid/view/ThreadedRenderer;->nLoadSystemProperties(J)Z

    #@5
    move-result v0

    #@6
    .line 270
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    #@8
    .line 271
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    #@b
    .line 273
    :cond_0
    return v0
.end method

.method public notifyFramePending()V
    .locals 2

    #@0
    .prologue
    .line 402
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nNotifyFramePending(J)V

    #@5
    .line 401
    return-void
.end method

.method onLayerDestroyed(Landroid/view/HardwareLayer;)V
    .locals 4
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    #@0
    .prologue
    .line 382
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nCancelLayerUpdate(JJ)V

    #@9
    .line 381
    return-void
.end method

.method pauseSurface(Landroid/view/Surface;)Z
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 162
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
    .line 377
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nPushLayerUpdate(JJ)V

    #@9
    .line 376
    return-void
.end method

.method registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "animator"    # Landroid/view/RenderNode;

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    #@2
    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    #@4
    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRegisterAnimatingRenderNode(JJ)V

    #@9
    .line 406
    return-void
.end method

.method setLightCenter(Landroid/view/View$AttachInfo;)V
    .locals 6
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;

    #@0
    .prologue
    .line 227
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    #@2
    .line 228
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v3, p1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    #@4
    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@7
    .line 229
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
    .line 230
    .local v1, "lightX":F
    iget v3, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    #@14
    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@16
    int-to-float v4, v4

    #@17
    sub-float v2, v3, v4

    #@19
    .line 232
    .local v2, "lightY":F
    iget-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@1b
    iget v3, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    #@1d
    invoke-static {v4, v5, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nSetLightCenter(JFFF)V

    #@20
    .line 225
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 387
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetName(JLjava/lang/String;)V

    #@5
    .line 386
    return-void
.end method

.method setOpaque(Z)V
    .locals 4
    .param p1, "opaque"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 237
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
    .line 236
    return-void

    #@d
    .line 237
    :cond_1
    const/4 v0, 0x1

    #@e
    goto :goto_0
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
    .line 196
    iput p1, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    #@3
    .line 197
    iput p2, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    #@5
    .line 199
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
    .line 201
    :cond_0
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    #@12
    .line 202
    iget v0, p4, Landroid/graphics/Rect;->left:I

    #@14
    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    #@16
    .line 203
    iget v0, p4, Landroid/graphics/Rect;->top:I

    #@18
    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    #@1a
    .line 204
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
    .line 205
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
    .line 208
    invoke-virtual {p0, v2}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    #@2d
    .line 217
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
    .line 218
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@3e
    iget v2, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    #@40
    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    #@42
    iget v4, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    #@44
    .line 219
    iget v5, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    #@46
    iget v6, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    #@48
    .line 218
    invoke-static/range {v0 .. v6}, Landroid/view/ThreadedRenderer;->nSetup(JIIFII)V

    #@4b
    .line 221
    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    #@4e
    .line 195
    return-void

    #@4f
    .line 200
    :cond_1
    iget v0, p4, Landroid/graphics/Rect;->top:I

    #@51
    if-nez v0, :cond_0

    #@53
    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    #@55
    if-nez v0, :cond_0

    #@57
    .line 210
    :cond_2
    iput-boolean v2, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    #@59
    .line 211
    iput v2, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    #@5b
    .line 212
    iput v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    #@5d
    .line 213
    iput p1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    #@5f
    .line 214
    iput p2, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    #@61
    goto :goto_0
.end method

.method stopDrawing()V
    .locals 2

    #@0
    .prologue
    .line 397
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@2
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nStopDrawing(J)V

    #@5
    .line 396
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
    .line 156
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    #@3
    .line 157
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    #@5
    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nUpdateSurface(JLandroid/view/Surface;)V

    #@8
    .line 155
    return-void
.end method
