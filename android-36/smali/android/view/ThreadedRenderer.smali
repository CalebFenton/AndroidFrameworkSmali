.class public final Landroid/view/ThreadedRenderer;
.super Landroid/graphics/HardwareRenderer;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ThreadedRenderer$WebViewOverlayProvider;,
        Landroid/view/ThreadedRenderer$DrawCallbacks;,
        Landroid/view/ThreadedRenderer$SimpleRenderer;
    }
.end annotation


# static fields
.field public static final greylist-max-o DEBUG_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.show_dirty_regions"

.field public static final blacklist DEBUG_FORCE_DARK:Ljava/lang/String; = "debug.hwui.force_dark"

.field public static final greylist-max-o DEBUG_FPS_DIVISOR:Ljava/lang/String; = "debug.hwui.fps_divisor"

.field public static final greylist-max-o DEBUG_OVERDRAW_PROPERTY:Ljava/lang/String; = "debug.hwui.overdraw"

.field public static final greylist-max-o DEBUG_SHOW_LAYERS_UPDATES_PROPERTY:Ljava/lang/String; = "debug.hwui.show_layers_updates"

.field public static final greylist-max-o DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY:Ljava/lang/String; = "debug.hwui.show_non_rect_clip"

.field public static greylist-max-o EGL_CONTEXT_PRIORITY_HIGH_IMG:I = 0x0

.field public static greylist-max-o EGL_CONTEXT_PRIORITY_LOW_IMG:I = 0x0

.field public static greylist-max-o EGL_CONTEXT_PRIORITY_MEDIUM_IMG:I = 0x0

.field public static blacklist EGL_CONTEXT_PRIORITY_REALTIME_NV:I = 0x0

.field public static final greylist-max-o OVERDRAW_PROPERTY_SHOW:Ljava/lang/String; = "show"

.field static final greylist-max-o PRINT_CONFIG_PROPERTY:Ljava/lang/String; = "debug.hwui.print_config"

.field static final greylist-max-o PROFILE_MAXFRAMES_PROPERTY:Ljava/lang/String; = "debug.hwui.profile.maxframes"

.field public static final greylist-max-o PROFILE_PROPERTY:Ljava/lang/String; = "debug.hwui.profile"

.field public static final greylist-max-o PROFILE_PROPERTY_VISUALIZE_BARS:Ljava/lang/String; = "visual_bars"

.field private static final greylist-max-o VISUALIZERS:[Ljava/lang/String;

.field public static blacklist sRendererEnabled:Z


# instance fields
.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mHeight:I

.field private greylist-max-o mInitialized:Z

.field private greylist-max-o mInsetLeft:I

.field private greylist-max-o mInsetTop:I

.field private final greylist-max-o mLightRadius:F

.field private final greylist-max-o mLightY:F

.field private final greylist-max-o mLightZ:F

.field private blacklist mNextRtFrameCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/HardwareRenderer$FrameDrawingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRequested:Z

.field private greylist-max-o mRootNodeNeedsUpdate:Z

.field private greylist-max-o mSurfaceHeight:I

.field private greylist-max-o mSurfaceWidth:I

.field private final blacklist mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

.field private blacklist mWebViewOverlaysEnabled:Z

.field private greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 187
    const/16 v0, 0x3357

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_REALTIME_NV:I

    .line 188
    const/16 v0, 0x3101

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_HIGH_IMG:I

    .line 189
    const/16 v0, 0x3102

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_MEDIUM_IMG:I

    .line 190
    const/16 v0, 0x3103

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_LOW_IMG:I

    .line 197
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererEnabled:Z

    .line 235
    const-string/jumbo v0, "visual_bars"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z
    .param p3, "name"    # Ljava/lang/String;

    .line 334
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer;-><init>()V

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 258
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    .line 327
    new-instance v2, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;-><init>(Landroid/view/ThreadedRenderer-IA;)V

    iput-object v2, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    .line 328
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlaysEnabled:Z

    .line 335
    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer;->setName(Ljava/lang/String;)V

    .line 336
    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    .line 338
    sget-object v2, Lcom/android/internal/R$styleable;->Lighting:[I

    invoke-virtual {p1, v3, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 339
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    .line 340
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    .line 341
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    .line 342
    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 343
    .local v0, "ambientShadowAlpha":F
    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 344
    .local v1, "spotShadowAlpha":F
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 345
    invoke-virtual {p0, v0, v1}, Landroid/view/ThreadedRenderer;->setLightSourceAlpha(FF)V

    .line 346
    return-void
.end method

.method static synthetic blacklist access$000()Z
    .registers 1

    .line 63
    invoke-static {}, Landroid/view/ThreadedRenderer;->isWebViewOverlaysEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "translucent"    # Z
    .param p2, "name"    # Ljava/lang/String;

    .line 232
    new-instance v0, Landroid/view/ThreadedRenderer;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/ThreadedRenderer;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    return-object v0
.end method

.method private static greylist-max-o destroyResources(Landroid/view/View;)V
    .registers 1
    .param p0, "view"    # Landroid/view/View;

    .line 504
    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 505
    return-void
.end method

.method private static blacklist dumpArgsToFlags([Ljava/lang/String;)I
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 642
    const/4 v0, 0x1

    if-eqz p0, :cond_46

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_46

    .line 645
    :cond_7
    const/4 v1, 0x0

    .line 646
    .local v1, "flags":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_45

    .line 647
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_48

    :cond_15
    goto :goto_35

    :sswitch_16
    const-string/jumbo v4, "reset"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v3, v0

    goto :goto_36

    :sswitch_21
    const-string v4, "-a"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x2

    goto :goto_36

    :sswitch_2b
    const-string v4, "framestats"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x0

    goto :goto_36

    :goto_35
    const/4 v3, -0x1

    :goto_36
    packed-switch v3, :pswitch_data_56

    goto :goto_42

    .line 655
    :pswitch_3a
    const/4 v1, 0x1

    goto :goto_42

    .line 652
    :pswitch_3c
    or-int/lit8 v1, v1, 0x2

    .line 653
    goto :goto_42

    .line 649
    :pswitch_3f
    or-int/lit8 v1, v1, 0x1

    .line 650
    nop

    .line 646
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 659
    .end local v2    # "i":I
    :cond_45
    return v1

    .line 643
    .end local v1    # "flags":I
    :cond_46
    :goto_46
    return v0

    nop

    :sswitch_data_48
    .sparse-switch
        -0xf0608ae -> :sswitch_2b
        0x5d4 -> :sswitch_21
        0x6761d4f -> :sswitch_16
    .end sparse-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3c
        :pswitch_3a
    .end packed-switch
.end method

.method public static greylist-max-o enableForegroundTrimming()V
    .registers 0

    .line 207
    return-void
.end method

.method public static blacklist handleDumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "args"    # [Ljava/lang/String;

    .line 664
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->dumpArgsToFlags([Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/view/ThreadedRenderer;->dumpGlobalProfileInfo(Ljava/io/FileDescriptor;I)V

    .line 665
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public static blacklist initForSystemProcess()V
    .registers 1

    .line 218
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-nez v0, :cond_9

    .line 219
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererEnabled:Z

    .line 221
    :cond_9
    invoke-static {}, Landroid/view/ThreadedRenderer;->setIsSystemOrPersistent()V

    .line 222
    return-void
.end method

.method private greylist-max-o updateEnabledState(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 392
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_f

    .line 395
    :cond_9
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    goto :goto_13

    .line 393
    :cond_f
    :goto_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    .line 397
    :goto_13
    return-void
.end method

.method private greylist-max-o updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callbacks"    # Landroid/view/ThreadedRenderer$DrawCallbacks;

    .line 699
    const-string v0, "Record View#draw()"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 700
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateViewTreeDisplayList(Landroid/view/View;)V

    .line 705
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 706
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    .line 707
    .local v0, "frameCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/HardwareRenderer$FrameDrawingCallback;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    .line 708
    new-instance v3, Landroid/view/ThreadedRenderer$1;

    invoke-direct {v3, p0, v0}, Landroid/view/ThreadedRenderer$1;-><init>(Landroid/view/ThreadedRenderer;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Landroid/view/ThreadedRenderer;->setFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 737
    .end local v0    # "frameCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/HardwareRenderer$FrameDrawingCallback;>;"
    :cond_1b
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 738
    :cond_27
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 740
    .local v0, "canvas":Landroid/graphics/RecordingCanvas;
    :try_start_31
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->save()I

    move-result v3

    .line 741
    .local v3, "saveCount":I
    iget v4, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 742
    invoke-interface {p2, v0}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPreDraw(Landroid/graphics/RecordingCanvas;)V

    .line 744
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->enableZ()V

    .line 745
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 746
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->disableZ()V

    .line 748
    invoke-interface {p2, v0}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPostDraw(Landroid/graphics/RecordingCanvas;)V

    .line 749
    invoke-virtual {v0, v3}, Landroid/graphics/RecordingCanvas;->restoreToCount(I)V

    .line 750
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z
    :try_end_57
    .catchall {:try_start_31 .. :try_end_57} :catchall_61

    .line 752
    .end local v3    # "saveCount":I
    iget-object v3, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    .line 753
    nop

    .line 755
    .end local v0    # "canvas":Landroid/graphics/RecordingCanvas;
    :cond_5d
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 756
    return-void

    .line 752
    .restart local v0    # "canvas":Landroid/graphics/RecordingCanvas;
    :catchall_61
    move-exception v1

    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    .line 753
    throw v1
.end method

.method private greylist-max-o updateViewTreeDisplayList(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 690
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 691
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 693
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 694
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    .line 695
    iput-boolean v2, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 696
    return-void
.end method

.method private blacklist updateWebViewOverlayCallbacks()V
    .registers 3

    .line 561
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->shouldEnableOverlaySupport()Z

    move-result v0

    .line 562
    .local v0, "shouldEnable":Z
    iget-boolean v1, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlaysEnabled:Z

    if-eq v0, v1, :cond_20

    .line 563
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlaysEnabled:Z

    .line 564
    if-eqz v0, :cond_19

    .line 565
    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {p0, v1}, Landroid/view/ThreadedRenderer;->setASurfaceTransactionCallback(Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V

    .line 566
    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {p0, v1}, Landroid/view/ThreadedRenderer;->setPrepareSurfaceControlForWebviewCallback(Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V

    goto :goto_20

    .line 568
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ThreadedRenderer;->setASurfaceTransactionCallback(Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V

    .line 569
    invoke-virtual {p0, v1}, Landroid/view/ThreadedRenderer;->setPrepareSurfaceControlForWebviewCallback(Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V

    .line 572
    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method blacklist captureRenderingCommands()Landroid/graphics/Picture;
    .registers 2

    .line 677
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist destroy()V
    .registers 2

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 352
    invoke-super {p0}, Landroid/graphics/HardwareRenderer;->destroy()V

    .line 353
    return-void
.end method

.method greylist-max-o destroyHardwareResources(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 499
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    .line 500
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->clearContent()V

    .line 501
    return-void
.end method

.method blacklist draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "callbacks"    # Landroid/view/ThreadedRenderer$DrawCallbacks;

    .line 796
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;

    invoke-virtual {v0}, Landroid/view/ViewFrameInfo;->markDrawStart()V

    .line 798
    invoke-direct {p0, p1, p3}, Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V

    .line 802
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v0, :cond_2d

    .line 803
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 804
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-ge v1, v0, :cond_25

    .line 805
    iget-object v2, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 806
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RenderNode;

    .line 805
    invoke-virtual {p0, v2}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 808
    .end local v1    # "i":I
    :cond_25
    iget-object v1, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 811
    const/4 v1, 0x0

    iput-object v1, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 814
    .end local v0    # "count":I
    :cond_2d
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getUpdatedFrameInfo()Landroid/graphics/FrameInfo;

    move-result-object v0

    .line 816
    .local v0, "frameInfo":Landroid/graphics/FrameInfo;
    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->syncAndDrawFrame(Landroid/graphics/FrameInfo;)I

    move-result v1

    .line 817
    .local v1, "syncResult":I
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_4c

    .line 818
    const-string v2, "HWUI"

    const-string v3, "Surface lost, forcing relayout"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v2, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 822
    iget-object v2, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 824
    :cond_4c
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_55

    .line 825
    iget-object v2, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 827
    :cond_55
    return-void
.end method

.method greylist-max-o dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "args"    # [Ljava/lang/String;

    .line 672
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 673
    invoke-static {p3}, Landroid/view/ThreadedRenderer;->dumpArgsToFlags([Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ThreadedRenderer;->dumpProfileInfo(Ljava/io/FileDescriptor;I)V

    .line 674
    return-void
.end method

.method greylist-max-o getHeight()I
    .registers 2

    .line 635
    iget v0, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    return v0
.end method

.method public blacklist getRootNode()Landroid/graphics/RenderNode;
    .registers 2

    .line 831
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    return-object v0
.end method

.method greylist-max-o getWidth()I
    .registers 2

    .line 625
    iget v0, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    return v0
.end method

.method greylist-max-o initialize(Landroid/view/Surface;)Z
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 407
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 408
    .local v0, "status":Z
    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 409
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 410
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->setSurface(Landroid/view/Surface;)V

    .line 411
    return v0
.end method

.method greylist-max-o initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    .registers 7
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

    .line 432
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 434
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 435
    invoke-virtual {p0, p4}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 436
    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 437
    const/4 v0, 0x1

    return v0

    .line 441
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o invalidateRoot()V
    .registers 2

    .line 786
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    .line 787
    return-void
.end method

.method greylist-max-o isEnabled()Z
    .registers 2

    .line 361
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    return v0
.end method

.method greylist-max-o isRequested()Z
    .registers 2

    .line 380
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    return v0
.end method

.method public greylist-max-o loadSystemProperties()Z
    .registers 2

    .line 682
    invoke-super {p0}, Landroid/graphics/HardwareRenderer;->loadSystemProperties()Z

    move-result v0

    .line 683
    .local v0, "changed":Z
    if-eqz v0, :cond_9

    .line 684
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 686
    :cond_9
    return v0
.end method

.method public blacklist notifyCallbackPending()V
    .registers 2

    .line 585
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 586
    invoke-super {p0}, Landroid/graphics/HardwareRenderer;->notifyCallbackPending()V

    .line 588
    :cond_9
    return-void
.end method

.method public blacklist notifyExpensiveFrame()V
    .registers 2

    .line 592
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 593
    invoke-super {p0}, Landroid/graphics/HardwareRenderer;->notifyExpensiveFrame()V

    .line 595
    :cond_9
    return-void
.end method

.method blacklist registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    .line 473
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    .line 476
    :cond_b
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    return-void
.end method

.method public blacklist rendererOwnsSurfaceControlOpacity()Z
    .registers 2

    .line 545
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-static {v0}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->-$$Nest$fgetmSurfaceControl(Landroid/view/ThreadedRenderer$WebViewOverlayProvider;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method greylist-max-o setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 370
    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    .line 371
    return-void
.end method

.method greylist-max-o setLightCenter(Landroid/view/View$AttachInfo;)V
    .registers 9
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;

    .line 604
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 605
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 606
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 607
    .local v1, "lightX":F
    iget v3, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 610
    .local v3, "lightY":F
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x43e10000    # 450.0f

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v5

    div-float/2addr v4, v6

    .line 612
    .local v4, "zRatio":F
    add-float/2addr v2, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v2, v5

    .line 613
    .local v2, "zWeightedAdjustment":F
    iget v5, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    mul-float/2addr v5, v2

    .line 615
    .local v5, "lightZ":F
    iget v6, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    invoke-virtual {p0, v1, v3, v5, v6}, Landroid/view/ThreadedRenderer;->setLightSourceGeometry(FFFF)V

    .line 616
    return-void
.end method

.method greylist-max-o setRequested(Z)V
    .registers 2
    .param p1, "requested"    # Z

    .line 388
    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    .line 389
    return-void
.end method

.method public whitelist setSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 458
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 459
    invoke-super {p0, p1}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;)V

    goto :goto_10

    .line 461
    :cond_c
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;)V

    .line 463
    :goto_10
    return-void
.end method

.method public blacklist setSurfaceControl(Landroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;)V
    .registers 4
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "blastBufferQueue"    # Landroid/graphics/BLASTBufferQueue;

    .line 577
    invoke-super {p0, p1, p2}, Landroid/graphics/HardwareRenderer;->setSurfaceControl(Landroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;)V

    .line 578
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 579
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {v0, p2}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V

    .line 580
    invoke-direct {p0}, Landroid/view/ThreadedRenderer;->updateWebViewOverlayCallbacks()V

    .line 581
    return-void
.end method

.method public blacklist setSurfaceControlOpaque(Z)Z
    .registers 3
    .param p1, "opaque"    # Z

    .line 557
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->setSurfaceControlOpaque(Z)Z

    move-result v0

    return v0
.end method

.method greylist-max-o setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p4, "surfaceInsets"    # Landroid/graphics/Rect;

    .line 516
    iput p1, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    .line 517
    iput p2, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    .line 519
    const/4 v0, 0x0

    if-eqz p4, :cond_33

    iget v1, p4, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_17

    iget v1, p4, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_17

    iget v1, p4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_17

    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_33

    .line 521
    :cond_17
    iget v1, p4, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 522
    iget v1, p4, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 523
    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    add-int/2addr v1, p1

    iget v2, p4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 524
    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    add-int/2addr v1, p2

    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 527
    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    goto :goto_3b

    .line 529
    :cond_33
    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 530
    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 531
    iput p1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 532
    iput p2, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 535
    :goto_3b
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    neg-int v1, v1

    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    neg-int v2, v2

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 537
    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    .line 538
    return-void
.end method

.method blacklist unregisterRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    .line 486
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 487
    return-void

    .line 489
    :cond_5
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 490
    return-void
.end method

.method greylist-max-o updateSurface(Landroid/view/Surface;)V
    .registers 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 450
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 451
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->setSurface(Landroid/view/Surface;)V

    .line 452
    return-void
.end method
