.class final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayMagnifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;,
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_LAYERS:Z = false

.field private static final DEBUG_RECTANGLE_REQUESTED:Z = false

.field private static final DEBUG_ROTATION:Z = false

.field private static final DEBUG_VIEWPORT_WINDOW:Z = false

.field private static final DEBUG_WINDOW_TRANSITIONS:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DisplayMagnifier"


# instance fields
.field private final mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLongAnimationDuration:J

.field private final mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempRegion2:Landroid/graphics/Region;

.field private final mTempRegion3:Landroid/graphics/Region;

.field private final mTempRegion4:Landroid/graphics/Region;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mLongAnimationDuration:J

    #@2
    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V
    .locals 2
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callbacks"    # Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    #@0
    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 230
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    #@a
    .line 231
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    #@11
    .line 233
    new-instance v0, Landroid/graphics/Region;

    #@13
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    #@18
    .line 234
    new-instance v0, Landroid/graphics/Region;

    #@1a
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    #@1f
    .line 235
    new-instance v0, Landroid/graphics/Region;

    #@21
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    #@26
    .line 236
    new-instance v0, Landroid/graphics/Region;

    #@28
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    #@2d
    .line 249
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@2f
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;

    #@31
    .line 250
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@33
    .line 251
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    #@35
    .line 252
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    #@37
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@39
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@3b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/os/Looper;)V

    #@42
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    #@44
    .line 253
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@46
    invoke-direct {v0, p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)V

    #@49
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@4b
    .line 254
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;

    #@4d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@50
    move-result-object v0

    #@51
    .line 255
    const v1, 0x10e0002

    #@54
    .line 254
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@57
    move-result v0

    #@58
    int-to-long v0, v0

    #@59
    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mLongAnimationDuration:J

    #@5b
    .line 248
    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .locals 1

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->destroyWindow()V

    #@5
    .line 390
    return-void
.end method

.method public drawMagnifiedRegionBorderIfNeededLocked()V
    .locals 1

    #@0
    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->drawWindowIfNeededLocked()V

    #@5
    .line 395
    return-void
.end method

.method public getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .locals 5
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 375
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@3
    invoke-virtual {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnificationSpecLocked()Landroid/view/MagnificationSpec;

    #@6
    move-result-object v1

    #@7
    .line 376
    .local v1, "spec":Landroid/view/MagnificationSpec;
    if-eqz v1, :cond_0

    #@9
    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->isNop()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 387
    :cond_0
    return-object v1

    #@10
    .line 377
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@12
    iget-object v0, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@14
    .line 378
    .local v0, "policy":Landroid/view/WindowManagerPolicy;
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@16
    iget v2, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@18
    .line 379
    .local v2, "windowType":I
    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy;->isTopLevelWindow(I)Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_2

    #@1e
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@20
    if-eqz v3, :cond_2

    #@22
    .line 380
    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_3

    #@28
    .line 383
    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2a
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2c
    invoke-interface {v0, v3}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    #@2f
    move-result v3

    #@30
    if-nez v3, :cond_0

    #@32
    .line 384
    return-object v4

    #@33
    .line 381
    :cond_3
    return-object v4
.end method

.method public onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 3
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    #@0
    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    #@5
    move-result v0

    #@6
    .line 309
    .local v0, "magnifying":Z
    if-eqz v0, :cond_0

    #@8
    .line 310
    packed-switch p2, :pswitch_data_0

    #@b
    .line 302
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@c
    .line 317
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    #@e
    const/4 v2, 0x3

    #@f
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@12
    goto :goto_0

    #@13
    .line 310
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 268
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 269
    return-void

    #@9
    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    #@b
    .line 272
    .local v1, "magnifiedRegionBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@d
    invoke-virtual {v2, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    #@10
    .line 273
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 274
    return-void

    #@17
    .line 276
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@1a
    move-result-object v0

    #@1b
    .line 277
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@1d
    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1f
    .line 278
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@21
    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@23
    .line 279
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@25
    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@27
    .line 280
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@29
    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    #@2b
    .line 281
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    #@2d
    const/4 v3, 0x2

    #@2e
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@35
    .line 264
    return-void
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "rotation"    # I

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->onRotationChangedLocked()V

    #@5
    .line 299
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    #@7
    const/4 v1, 0x4

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@b
    .line 293
    return-void
.end method

.method public onWindowLayersChangedLocked()V
    .locals 1

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    #@5
    .line 290
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@a
    .line 285
    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 9
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    #@0
    .prologue
    .line 329
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2
    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    #@5
    move-result v1

    #@6
    .line 330
    .local v1, "magnifying":Z
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@8
    iget v3, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    #@a
    .line 331
    .local v3, "type":I
    packed-switch p2, :pswitch_data_0

    #@d
    .line 323
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@e
    .line 334
    :pswitch_1
    if-eqz v1, :cond_0

    #@10
    .line 337
    sparse-switch v3, :sswitch_data_0

    #@13
    goto :goto_0

    #@14
    .line 355
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    #@16
    .line 356
    .local v0, "magnifiedRegionBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@18
    invoke-virtual {v4, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    #@1b
    .line 358
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    #@1d
    .line 359
    .local v2, "touchableRegionBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    #@1f
    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    #@22
    .line 360
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    #@24
    invoke-virtual {v4, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@27
    .line 361
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@2a
    move-result v4

    #@2b
    if-nez v4, :cond_0

    #@2d
    .line 362
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    #@2f
    .line 363
    iget v5, v2, Landroid/graphics/Rect;->left:I

    #@31
    .line 364
    iget v6, v2, Landroid/graphics/Rect;->top:I

    #@33
    .line 365
    iget v7, v2, Landroid/graphics/Rect;->right:I

    #@35
    .line 366
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    #@37
    .line 362
    invoke-interface {v4, v5, v6, v7, v8}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V

    #@3a
    goto :goto_0

    #@3b
    .line 331
    nop

    #@3c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    #@46
    .line 337
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ed -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_0
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7da -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 1
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    #@5
    .line 260
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@7
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    #@a
    .line 261
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@f
    .line 258
    return-void
.end method
