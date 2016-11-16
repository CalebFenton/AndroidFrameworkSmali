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
    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 143
    return-void

    #@6
    .line 145
    :cond_0
    const-string/jumbo v0, "SystemBarBackgroundNode"

    #@9
    invoke-static {v0, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@f
    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@11
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@13
    const/4 v2, 0x0

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/view/ThreadedRenderer;->addRenderNode(Landroid/view/RenderNode;Z)V

    #@17
    .line 141
    return-void
.end method

.method private doFrameUncheckedLocked()V
    .locals 4

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    #@2
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@7
    .line 247
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
    .line 248
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    #@13
    iget-boolean v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    #@15
    if-eq v0, v1, :cond_2

    #@17
    .line 252
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    #@19
    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    #@1b
    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    #@1d
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@22
    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    #@24
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    #@26
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@29
    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    #@2b
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    #@2d
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@30
    .line 256
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
    .line 245
    :cond_1
    return-void

    #@3c
    .line 249
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
    .line 250
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
    .line 251
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    #@52
    .line 247
    if-eqz v0, :cond_1

    #@54
    goto :goto_0
.end method

.method private drawColorViews(IIIIZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "fullscreen"    # Z
    .param p6, "systemInsets"    # Landroid/graphics/Rect;
    .param p7, "stableInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 367
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@2
    if-nez v7, :cond_0

    #@4
    .line 368
    return-void

    #@5
    .line 370
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@7
    invoke-virtual {v7, p3, p4}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    #@a
    move-result-object v2

    #@b
    .line 371
    .local v2, "canvas":Landroid/view/DisplayListCanvas;
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@d
    add-int v8, p1, p3

    #@f
    add-int v9, p2, p4

    #@11
    invoke-virtual {v7, p1, p2, v8, v9}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    #@14
    .line 372
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    #@16
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@18
    iget-object v8, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    #@1a
    iget v8, v8, Landroid/graphics/Rect;->top:I

    #@1c
    invoke-static {v7, v8}, Lcom/android/internal/policy/DecorView;->getColorViewTopInset(II)I

    #@1f
    move-result v6

    #@20
    .line 373
    .local v6, "topInset":I
    move-object/from16 v0, p7

    #@22
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    #@24
    .line 374
    move-object/from16 v0, p6

    #@26
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    #@28
    .line 373
    invoke-static {v7, v8}, Lcom/android/internal/policy/DecorView;->getColorViewBottomInset(II)I

    #@2b
    move-result v1

    #@2c
    .line 375
    .local v1, "bottomInset":I
    move-object/from16 v0, p7

    #@2e
    iget v7, v0, Landroid/graphics/Rect;->right:I

    #@30
    .line 376
    move-object/from16 v0, p6

    #@32
    iget v8, v0, Landroid/graphics/Rect;->right:I

    #@34
    .line 375
    invoke-static {v7, v8}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    #@37
    move-result v4

    #@38
    .line 377
    .local v4, "rightInset":I
    move-object/from16 v0, p7

    #@3a
    iget v7, v0, Landroid/graphics/Rect;->left:I

    #@3c
    .line 378
    move-object/from16 v0, p6

    #@3e
    iget v8, v0, Landroid/graphics/Rect;->left:I

    #@40
    .line 377
    invoke-static {v7, v8}, Lcom/android/internal/policy/DecorView;->getColorViewLeftInset(II)I

    #@43
    move-result v3

    #@44
    .line 379
    .local v3, "leftInset":I
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@46
    if-eqz v7, :cond_1

    #@48
    .line 380
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@4a
    add-int v8, p1, p3

    #@4c
    const/4 v9, 0x0

    #@4d
    const/4 v10, 0x0

    #@4e
    invoke-virtual {v7, v9, v10, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@51
    .line 381
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@53
    invoke-virtual {v7, v2}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    #@56
    .line 387
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@58
    if-eqz v7, :cond_2

    #@5a
    if-eqz p5, :cond_2

    #@5c
    .line 388
    invoke-static {v1, v4, v3}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    #@5f
    move-result v5

    #@60
    .line 389
    .local v5, "size":I
    invoke-static {v1, v4}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    #@63
    move-result v7

    #@64
    if-eqz v7, :cond_3

    #@66
    .line 390
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@68
    sub-int v8, p3, v5

    #@6a
    const/4 v9, 0x0

    #@6b
    invoke-virtual {v7, v8, v9, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@6e
    .line 396
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@70
    invoke-virtual {v7, v2}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    #@73
    .line 398
    .end local v5    # "size":I
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@75
    invoke-virtual {v7, v2}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    #@78
    .line 399
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@7a
    iget-object v8, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@7c
    invoke-virtual {v7, v8}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/view/RenderNode;)V

    #@7f
    .line 366
    return-void

    #@80
    .line 391
    .restart local v5    # "size":I
    :cond_3
    invoke-static {v1, v3}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    #@83
    move-result v7

    #@84
    if-eqz v7, :cond_4

    #@86
    .line 392
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@88
    const/4 v8, 0x0

    #@89
    const/4 v9, 0x0

    #@8a
    invoke-virtual {v7, v8, v9, v5, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@8d
    goto :goto_0

    #@8e
    .line 394
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@90
    sub-int v8, p4, v5

    #@92
    const/4 v9, 0x0

    #@93
    invoke-virtual {v7, v9, v8, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@96
    goto :goto_0
.end method

.method private pingRenderLocked(Z)V
    .locals 1
    .param p1, "drawImmediate"    # Z

    #@0
    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    #@2
    if-eqz v0, :cond_0

    #@4
    if-eqz p1, :cond_1

    #@6
    .line 423
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V

    #@9
    .line 419
    :goto_0
    return-void

    #@a
    .line 421
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
    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getCaptionHeight()I

    #@5
    move-result v9

    #@6
    .line 319
    .local v9, "captionHeight":I
    if-eqz v9, :cond_0

    #@8
    .line 321
    iput v9, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    #@a
    .line 326
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
    .line 327
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    #@18
    if-nez v0, :cond_3

    #@1a
    .line 328
    :cond_2
    return-void

    #@1b
    .line 327
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 333
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    #@21
    iget v5, p1, Landroid/graphics/Rect;->left:I

    #@23
    add-int v1, v0, v5

    #@25
    .line 334
    .local v1, "left":I
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    #@27
    iget v5, p1, Landroid/graphics/Rect;->top:I

    #@29
    add-int v2, v0, v5

    #@2b
    .line 335
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@2e
    move-result v3

    #@2f
    .line 336
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@32
    move-result v4

    #@33
    .line 338
    .local v4, "height":I
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    #@35
    add-int v5, v1, v3

    #@37
    add-int v6, v2, v4

    #@39
    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    #@3c
    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    #@3e
    invoke-virtual {v0, v3, v4}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    #@41
    move-result-object v8

    #@42
    .line 342
    .local v8, "canvas":Landroid/view/DisplayListCanvas;
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@44
    if-eqz v0, :cond_6

    #@46
    .line 343
    iget-object v10, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@48
    .line 345
    .local v10, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v10, :cond_4

    #@4a
    .line 346
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
    .line 347
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@57
    .line 351
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@59
    if-eqz v0, :cond_5

    #@5b
    .line 352
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
    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@69
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@6c
    .line 355
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
    .line 357
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/BackdropFrameRenderer;->drawColorViews(IIIIZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@79
    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@7b
    iget-object v5, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    #@7d
    invoke-virtual {v0, v5}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/view/RenderNode;)V

    #@80
    .line 362
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    #@83
    .line 310
    return-void

    #@84
    .line 343
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
    .line 404
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    #@6
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 406
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    #@e
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    #@15
    .line 408
    :cond_0
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    #@18
    .line 403
    :cond_1
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1
    .param p1, "frameTimeNanos"    # J

    #@0
    .prologue
    .line 234
    monitor-enter p0

    #@1
    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 236
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    #@8
    .line 238
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
    .line 239
    return-void

    #@11
    .line 241
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 233
    return-void

    #@16
    .line 234
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
    .line 175
    monitor-enter p0

    #@1
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 178
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
    .line 179
    const/4 v0, 0x0

    #@f
    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 174
    return-void

    #@14
    .line 175
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
    .line 271
    monitor-enter p0

    #@3
    .line 272
    :try_start_0
    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    #@5
    if-nez v3, :cond_1

    #@7
    const/4 v0, 0x1

    #@8
    .line 274
    .local v0, "firstCall":Z
    :goto_0
    iput p3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    #@a
    .line 275
    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    #@c
    sub-int v3, p4, v3

    #@e
    iput v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    #@10
    .line 276
    iput p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    #@12
    .line 277
    iput p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    #@14
    .line 280
    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@16
    .line 281
    iget v4, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    #@18
    .line 282
    iget v5, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    #@1a
    .line 283
    iget v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    #@1c
    iget v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    #@1e
    add-int/2addr v6, v7

    #@1f
    .line 284
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
    .line 280
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ThreadedRenderer;->setContentDrawBounds(IIII)V

    #@2a
    .line 288
    if-eqz v0, :cond_2

    #@2c
    .line 289
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
    .line 288
    return v1

    #@3b
    .line 272
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
    .line 288
    goto :goto_1

    #@3f
    .line 271
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
    .line 294
    monitor-enter p0

    #@1
    .line 295
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    #@3
    .line 296
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
    .line 297
    const/4 v0, 0x1

    #@d
    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 293
    return-void

    #@12
    .line 294
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
    if-eqz v0, :cond_1

    #@b
    .line 114
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object v0

    #@13
    .line 112
    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    .line 116
    if-eqz p3, :cond_2

    #@17
    .line 117
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@1a
    move-result-object v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 118
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@24
    move-result-object v0

    #@25
    .line 116
    :goto_1
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@27
    .line 120
    if-eqz p4, :cond_3

    #@29
    .line 121
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@2c
    move-result-object v0

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 122
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@36
    move-result-object v0

    #@37
    .line 120
    :goto_2
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@39
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@3b
    if-nez v0, :cond_0

    #@3d
    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@3f
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@41
    .line 127
    :cond_0
    if-eqz p5, :cond_4

    #@43
    .line 128
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@45
    invoke-direct {v0, p5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@48
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@4a
    .line 129
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    #@4d
    .line 133
    :goto_3
    if-eqz p6, :cond_5

    #@4f
    .line 134
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@51
    invoke-direct {v0, p6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@54
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@56
    .line 135
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    #@59
    .line 110
    :goto_4
    return-void

    #@5a
    :cond_1
    move-object v0, v1

    #@5b
    .line 115
    goto :goto_0

    #@5c
    :cond_2
    move-object v0, v1

    #@5d
    .line 119
    goto :goto_1

    #@5e
    :cond_3
    move-object v0, v1

    #@5f
    .line 123
    goto :goto_2

    #@60
    .line 131
    :cond_4
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@62
    goto :goto_3

    #@63
    .line 137
    :cond_5
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    #@65
    goto :goto_4
.end method

.method public releaseRenderer()V
    .locals 5

    #@0
    .prologue
    .line 189
    monitor-enter p0

    #@1
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 192
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
    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@10
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    #@12
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/view/RenderNode;)V

    #@15
    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@1b
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    #@1d
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/view/RenderNode;)V

    #@20
    .line 201
    :cond_0
    const/4 v0, 0x0

    #@21
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@23
    .line 204
    const/4 v0, 0x0

    #@24
    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    :cond_1
    monitor-exit p0

    #@28
    .line 188
    return-void

    #@29
    .line 189
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
    .line 212
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    #@3
    .line 213
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4
    .line 214
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
    .line 216
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@e
    .line 218
    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    #@11
    .line 220
    monitor-enter p0

    #@12
    .line 222
    const/4 v0, 0x0

    #@13
    :try_start_3
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    #@15
    .line 223
    invoke-static {}, Landroid/view/Choreographer;->releaseInstance()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@18
    monitor-exit p0

    #@19
    .line 210
    return-void

    #@1a
    .line 213
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
    .line 217
    :catchall_1
    move-exception v0

    #@1e
    .line 218
    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    #@21
    .line 217
    throw v0

    #@22
    .line 220
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
    .line 161
    monitor-enter p0

    #@1
    .line 162
    :try_start_0
    iput-boolean p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    #@3
    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    #@5
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@8
    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@d
    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    #@f
    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@12
    .line 167
    const/4 v0, 0x0

    #@13
    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 160
    return-void

    #@18
    .line 161
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
    .line 428
    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 427
    return-void
.end method
