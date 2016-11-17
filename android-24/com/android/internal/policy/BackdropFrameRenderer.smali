.class public Lcom/android/internal/policy/BackdropFrameRenderer;
.super Ljava/lang/Thread;
.source "BackdropFrameRenderer.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mDecorView:Lcom/android/internal/policy/DecorView;

.field private mFrameAndBackdropNode:Landroid/view/RenderNode;

.field private mFullscreen:Z

.field private mLastCaptionHeight:I

.field private mLastContentHeight:I

.field private mLastContentWidth:I

.field private mLastXOffset:I

.field private mLastYOffset:I

.field private mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

.field private final mNewTargetRect:Landroid/graphics/Rect;

.field private mOldFullscreen:Z

.field private final mOldStableInsets:Landroid/graphics/Rect;

.field private final mOldSystemInsets:Landroid/graphics/Rect;

.field private final mOldTargetRect:Landroid/graphics/Rect;

.field private mRenderer:Landroid/view/ThreadedRenderer;

.field private mReportNextDraw:Z

.field private final mResizeMode:I

.field private mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

.field private mSystemBarBackgroundNode:Landroid/view/RenderNode;

.field private final mSystemInsets:Landroid/graphics/Rect;

.field private final mTargetRect:Landroid/graphics/Rect;

.field private mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 8
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p2, "renderer"    # Landroid/view/ThreadedRenderer;
    .param p3, "initialBounds"    # Landroid/graphics/Rect;
    .param p4, "resizingBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "captionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p6, "userCaptionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p7, "statusBarColor"    # I
    .param p8, "navigationBarColor"    # I
    .param p9, "fullscreen"    # Z
    .param p10, "systemInsets"    # Landroid/graphics/Rect;
    .param p11, "stableInsets"    # Landroid/graphics/Rect;
    .param p12, "resizeMode"    # I

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    .line 42
    new-instance v1, Landroid/graphics/Rect;

    #@5
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    #@a
    .line 49
    new-instance v1, Landroid/graphics/Rect;

    #@c
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    #@11
    .line 50
    new-instance v1, Landroid/graphics/Rect;

    #@13
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    #@18
    .line 73
    new-instance v1, Landroid/graphics/Rect;

    #@1a
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@1d
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    #@1f
    .line 74
    new-instance v1, Landroid/graphics/Rect;

    #@21
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@24
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    #@26
    .line 75
    new-instance v1, Landroid/graphics/Rect;

    #@28
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@2b
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    #@2d
    .line 76
    new-instance v1, Landroid/graphics/Rect;

    #@2f
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@32
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    #@34
    .line 82
    const-string/jumbo v1, "ResizeFrame"

    #@37
    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@3a
    .line 84
    iput-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@3c
    move-object v1, p0

    #@3d
    move-object v2, p1

    #@3e
    move-object v3, p4

    #@3f
    move-object v4, p5

    #@40
    move-object v5, p6

    #@41
    move v6, p7

    #@42
    move/from16 v7, p8

    #@44
    .line 85
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    #@47
    .line 90
    const-string/jumbo v1, "FrameAndBackdropNode"

    #@4a
    const/4 v2, 0x0

    #@4b
    invoke-static {v1, v2}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    #@4e
    move-result-object v1

    #@4f
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    #@51
    .line 92
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@53
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    #@55
    const/4 v3, 0x1

    #@56
    invoke-virtual {v1, v2, v3}, Landroid/view/ThreadedRenderer;->addRenderNode(Landroid/view/RenderNode;Z)V

    #@59
    .line 95
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    #@5b
    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5e
    .line 96
    move/from16 v0, p9

    #@60
    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    #@62
    .line 97
    move/from16 v0, p9

    #@64
    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    #@66
    .line 98
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    #@68
    move-object/from16 v0, p10

    #@6a
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@6d
    .line 99
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    #@6f
    move-object/from16 v0, p11

    #@71
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@74
    .line 100
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    #@76
    move-object/from16 v0, p10

    #@78
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@7b
    .line 101
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    #@7d
    move-object/from16 v0, p11

    #@7f
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@82
    .line 102
    move/from16 v0, p12

    #@84
    iput v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizeMode:I

    #@86
    .line 105
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    #@89
    .line 81
    return-void
.end method

.method private addSystemBarNodeIfNeeded()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 140
    return-void

    #@6
    .line 142
    :cond_0
    const-string/jumbo v0, "SystemBarBackgroundNode"

    #@9
    invoke-static {v0, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@f
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@11
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@13
    const/4 v2, 0x0

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/view/ThreadedRenderer;->addRenderNode(Landroid/view/RenderNode;Z)V

    #@17
    .line 138
    return-void
.end method

.method private doFrameUncheckedLocked()V
    .locals 4

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    #@2
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@7
    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    #@9
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    #@b
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 245
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    #@13
    iget-boolean v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    #@15
    if-eq v0, v1, :cond_2

    #@17
    .line 249
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    #@19
    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    #@1b
    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    #@1d
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@22
    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    #@24
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    #@26
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@29
    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    #@2b
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    #@2d
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@30
    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    #@32
    iget-boolean v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    #@34
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    #@36
    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    #@38
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/BackdropFrameRenderer;->redrawLocked(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@3b
    .line 242
    :cond_1
    return-void

    #@3c
    .line 246
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    #@3e
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    #@40
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_0

    #@46
    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    #@48
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    #@4a
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v0

    #@4e
    if-eqz v0, :cond_0

    #@50
    .line 248
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    #@52
    .line 244
    if-eqz v0, :cond_1

    #@54
    goto :goto_0
.end method

.method private drawColorViews(IIIIZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "fullscreen"    # Z
    .param p6, "systemInsets"    # Landroid/graphics/Rect;
    .param p7, "stableInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 364
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 365
    return-void

    #@5
    .line 367
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@7
    invoke-virtual {v6, p3, p4}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    #@a
    move-result-object v2

    #@b
    .line 368
    .local v2, "canvas":Landroid/view/DisplayListCanvas;
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@d
    add-int v7, p1, p3

    #@f
    add-int v8, p2, p4

    #@11
    invoke-virtual {v6, p1, p2, v7, v8}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    #@14
    .line 369
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    #@16
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@18
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    #@1a
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@1c
    invoke-static {v6, v7}, Lcom/android/internal/policy/DecorView;->getColorViewTopInset(II)I

    #@1f
    move-result v5

    #@20
    .line 370
    .local v5, "topInset":I
    move-object/from16 v0, p7

    #@22
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    #@24
    .line 371
    move-object/from16 v0, p6

    #@26
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    #@28
    .line 370
    invoke-static {v6, v7}, Lcom/android/internal/policy/DecorView;->getColorViewBottomInset(II)I

    #@2b
    move-result v1

    #@2c
    .line 372
    .local v1, "bottomInset":I
    move-object/from16 v0, p7

    #@2e
    iget v6, v0, Landroid/graphics/Rect;->right:I

    #@30
    .line 373
    move-object/from16 v0, p6

    #@32
    iget v7, v0, Landroid/graphics/Rect;->right:I

    #@34
    .line 372
    invoke-static {v6, v7}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    #@37
    move-result v3

    #@38
    .line 374
    .local v3, "rightInset":I
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@3a
    if-eqz v6, :cond_1

    #@3c
    .line 375
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@3e
    add-int v7, p1, p3

    #@40
    const/4 v8, 0x0

    #@41
    const/4 v9, 0x0

    #@42
    invoke-virtual {v6, v8, v9, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@45
    .line 376
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@47
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    #@4a
    .line 382
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@4c
    if-eqz v6, :cond_2

    #@4e
    if-eqz p5, :cond_2

    #@50
    .line 383
    invoke-static {v1, v3}, Lcom/android/internal/policy/DecorView;->getNavBarSize(II)I

    #@53
    move-result v4

    #@54
    .line 384
    .local v4, "size":I
    invoke-static {v1, v3}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    #@57
    move-result v6

    #@58
    if-eqz v6, :cond_3

    #@5a
    .line 385
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@5c
    sub-int v7, p3, v4

    #@5e
    const/4 v8, 0x0

    #@5f
    invoke-virtual {v6, v7, v8, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@62
    .line 389
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@64
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    #@67
    .line 391
    .end local v4    # "size":I
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@69
    invoke-virtual {v6, v2}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    #@6c
    .line 392
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@6e
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@70
    invoke-virtual {v6, v7}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/view/RenderNode;)V

    #@73
    .line 363
    return-void

    #@74
    .line 387
    .restart local v4    # "size":I
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@76
    sub-int v7, p4, v4

    #@78
    const/4 v8, 0x0

    #@79
    invoke-virtual {v6, v8, v7, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@7c
    goto :goto_0
.end method

.method private pingRenderLocked(Z)V
    .locals 1
    .param p1, "drawImmediate"    # Z

    #@0
    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    #@2
    if-eqz v0, :cond_0

    #@4
    if-eqz p1, :cond_1

    #@6
    .line 416
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V

    #@9
    .line 412
    :goto_0
    return-void

    #@a
    .line 414
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    #@c
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@f
    goto :goto_0
.end method

.method private redrawLocked(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "newBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getCaptionHeight()I

    #@5
    move-result v9

    #@6
    .line 316
    .local v9, "captionHeight":I
    if-eqz v9, :cond_0

    #@8
    .line 318
    iput v9, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    #@a
    .line 323
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    #@c
    if-nez v0, :cond_1

    #@e
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    #@10
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_2

    #@16
    .line 324
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    #@18
    if-nez v0, :cond_3

    #@1a
    .line 325
    :cond_2
    return-void

    #@1b
    .line 324
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 330
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    #@21
    iget v5, p1, Landroid/graphics/Rect;->left:I

    #@23
    add-int v1, v0, v5

    #@25
    .line 331
    .local v1, "left":I
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    #@27
    iget v5, p1, Landroid/graphics/Rect;->top:I

    #@29
    add-int v2, v0, v5

    #@2b
    .line 332
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@2e
    move-result v3

    #@2f
    .line 333
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@32
    move-result v4

    #@33
    .line 335
    .local v4, "height":I
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    #@35
    add-int v5, v1, v3

    #@37
    add-int v6, v2, v4

    #@39
    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    #@3c
    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    #@3e
    invoke-virtual {v0, v3, v4}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    #@41
    move-result-object v8

    #@42
    .line 339
    .local v8, "canvas":Landroid/view/DisplayListCanvas;
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@44
    if-eqz v0, :cond_6

    #@46
    .line 340
    iget-object v10, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@48
    .line 342
    .local v10, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v10, :cond_4

    #@4a
    .line 343
    add-int v0, v1, v3

    #@4c
    iget v5, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    #@4e
    add-int/2addr v5, v2

    #@4f
    const/4 v6, 0x0

    #@50
    const/4 v7, 0x0

    #@51
    invoke-virtual {v10, v6, v7, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@54
    .line 344
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@57
    .line 348
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@59
    if-eqz v0, :cond_5

    #@5b
    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@5d
    iget v5, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    #@5f
    add-int v6, v1, v3

    #@61
    add-int v7, v2, v4

    #@63
    const/4 v11, 0x0

    #@64
    invoke-virtual {v0, v11, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@67
    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@69
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@6c
    .line 352
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    #@6e
    invoke-virtual {v0, v8}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    #@71
    move-object v0, p0

    #@72
    move v5, p2

    #@73
    move-object v6, p3

    #@74
    move-object/from16 v7, p4

    #@76
    .line 354
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/BackdropFrameRenderer;->drawColorViews(IIIIZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@79
    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@7b
    iget-object v5, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    #@7d
    invoke-virtual {v0, v5}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/view/RenderNode;)V

    #@80
    .line 359
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    #@83
    .line 307
    return-void

    #@84
    .line 340
    .end local v10    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v10, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@86
    goto :goto_0
.end method

.method private reportDrawIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    #@6
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 399
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    #@e
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    #@15
    .line 401
    :cond_0
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    #@18
    .line 396
    :cond_1
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1
    .param p1, "frameTimeNanos"    # J

    #@0
    .prologue
    .line 231
    monitor-enter p0

    #@1
    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    #@8
    .line 235
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 236
    return-void

    #@11
    .line 238
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 230
    return-void

    #@16
    .line 231
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public onConfigurationChange()V
    .locals 5

    #@0
    .prologue
    .line 172
    monitor-enter p0

    #@1
    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    #@7
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x0

    #@a
    const/4 v4, 0x0

    #@b
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@e
    .line 176
    const/4 v0, 0x0

    #@f
    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 171
    return-void

    #@14
    .line 172
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public onContentDrawn(IIII)Z
    .locals 9
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "xSize"    # I
    .param p4, "ySize"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 268
    monitor-enter p0

    #@3
    .line 269
    :try_start_0
    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    #@5
    if-nez v3, :cond_1

    #@7
    const/4 v0, 0x1

    #@8
    .line 271
    .local v0, "firstCall":Z
    :goto_0
    iput p3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    #@a
    .line 272
    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    #@c
    sub-int v3, p4, v3

    #@e
    iput v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    #@10
    .line 273
    iput p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    #@12
    .line 274
    iput p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    #@14
    .line 277
    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@16
    .line 278
    iget v4, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    #@18
    .line 279
    iget v5, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    #@1a
    .line 280
    iget v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    #@1c
    iget v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    #@1e
    add-int/2addr v6, v7

    #@1f
    .line 281
    iget v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    #@21
    iget v8, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    #@23
    add-int/2addr v7, v8

    #@24
    iget v8, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    #@26
    add-int/2addr v7, v8

    #@27
    .line 277
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ThreadedRenderer;->setContentDrawBounds(IIII)V

    #@2a
    .line 285
    if-eqz v0, :cond_2

    #@2c
    .line 286
    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    #@2e
    if-nez v3, :cond_0

    #@30
    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    #@32
    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_0

    #@38
    move v1, v2

    #@39
    :cond_0
    :goto_1
    monitor-exit p0

    #@3a
    .line 285
    return v1

    #@3b
    .line 269
    .end local v0    # "firstCall":Z
    :cond_1
    const/4 v0, 0x0

    #@3c
    .restart local v0    # "firstCall":Z
    goto :goto_0

    #@3d
    :cond_2
    move v1, v2

    #@3e
    .line 285
    goto :goto_1

    #@3f
    .line 268
    .end local v0    # "firstCall":Z
    :catchall_0
    move-exception v1

    #@40
    monitor-exit p0

    #@41
    throw v1
.end method

.method public onRequestDraw(Z)V
    .locals 5
    .param p1, "reportNextDraw"    # Z

    #@0
    .prologue
    .line 291
    monitor-enter p0

    #@1
    .line 292
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    #@3
    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    #@5
    const/4 v1, 0x0

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v3, 0x0

    #@8
    const/4 v4, 0x0

    #@9
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@c
    .line 294
    const/4 v0, 0x1

    #@d
    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 290
    return-void

    #@12
    .line 291
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p2, "resizingBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "captionBackgroundDrawableDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "userCaptionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "statusBarColor"    # I
    .param p6, "navigationBarColor"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    #@3
    .line 112
    if-eqz p2, :cond_1

    #@5
    .line 113
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    .line 112
    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 115
    if-eqz p3, :cond_2

    #@11
    .line 116
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v0

    #@19
    .line 115
    :goto_1
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    .line 118
    if-eqz p4, :cond_3

    #@1d
    .line 119
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@24
    move-result-object v0

    #@25
    .line 118
    :goto_2
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@27
    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@29
    if-nez v0, :cond_0

    #@2b
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@2d
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@2f
    .line 124
    :cond_0
    if-eqz p5, :cond_4

    #@31
    .line 125
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@33
    invoke-direct {v0, p5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@36
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@38
    .line 126
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    #@3b
    .line 130
    :goto_3
    if-eqz p6, :cond_5

    #@3d
    .line 131
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@3f
    invoke-direct {v0, p6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@42
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@44
    .line 132
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    #@47
    .line 110
    :goto_4
    return-void

    #@48
    :cond_1
    move-object v0, v1

    #@49
    .line 114
    goto :goto_0

    #@4a
    :cond_2
    move-object v0, v1

    #@4b
    .line 117
    goto :goto_1

    #@4c
    :cond_3
    move-object v0, v1

    #@4d
    .line 120
    goto :goto_2

    #@4e
    .line 128
    :cond_4
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@50
    goto :goto_3

    #@51
    .line 134
    :cond_5
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@53
    goto :goto_4
.end method

.method public releaseRenderer()V
    .locals 5

    #@0
    .prologue
    .line 186
    monitor-enter p0

    #@1
    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@7
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x0

    #@a
    const/4 v4, 0x0

    #@b
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ThreadedRenderer;->setContentDrawBounds(IIII)V

    #@e
    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@10
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    #@12
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/view/RenderNode;)V

    #@15
    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@1b
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@1d
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/view/RenderNode;)V

    #@20
    .line 198
    :cond_0
    const/4 v0, 0x0

    #@21
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@23
    .line 201
    const/4 v0, 0x0

    #@24
    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    :cond_1
    monitor-exit p0

    #@28
    .line 185
    return-void

    #@29
    .line 186
    :catchall_0
    move-exception v0

    #@2a
    monitor-exit p0

    #@2b
    throw v0
.end method

.method public run()V
    .locals 1

    #@0
    .prologue
    .line 209
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    #@3
    .line 210
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4
    .line 211
    :try_start_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    :try_start_2
    monitor-exit p0

    #@b
    .line 213
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@e
    .line 215
    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    #@11
    .line 217
    monitor-enter p0

    #@12
    .line 219
    const/4 v0, 0x0

    #@13
    :try_start_3
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    #@15
    .line 220
    invoke-static {}, Landroid/view/Choreographer;->releaseInstance()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@18
    monitor-exit p0

    #@19
    .line 207
    return-void

    #@1a
    .line 210
    :catchall_0
    move-exception v0

    #@1b
    :try_start_4
    monitor-exit p0

    #@1c
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1d
    .line 214
    :catchall_1
    move-exception v0

    #@1e
    .line 215
    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    #@21
    .line 214
    throw v0

    #@22
    .line 217
    :catchall_2
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0
.end method

.method public setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newTargetBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 158
    monitor-enter p0

    #@1
    .line 159
    :try_start_0
    iput-boolean p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    #@3
    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    #@5
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@8
    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@d
    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    #@f
    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@12
    .line 164
    const/4 v0, 0x0

    #@13
    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 157
    return-void

    #@18
    .line 158
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method

.method setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "userCaptionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 420
    return-void
.end method
