.class public Lcom/android/server/wm/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"


# static fields
.field private static final DEFAULT_DIM_DURATION:I = 0xc8


# instance fields
.field mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

.field private mBounds:Landroid/graphics/Rect;

.field mDeferDetach:Z

.field private mDimLayer:Lcom/android/server/wm/DimLayer;

.field mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mDimmingTag:Z

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field private mForceFullscreen:Z

.field private mFullscreen:Z

.field mOverrideConfig:Landroid/content/res/Configuration;

.field private final mPreForceFullscreenBounds:Landroid/graphics/Rect;

.field mRotation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mStackId:I

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stackId"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@c
    .line 55
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@13
    .line 57
    new-instance v0, Landroid/graphics/Rect;

    #@15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@1a
    .line 60
    new-instance v0, Landroid/graphics/Rect;

    #@1c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@21
    .line 63
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@23
    .line 82
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    #@25
    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    #@28
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@2a
    .line 100
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2c
    .line 101
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@2e
    .line 102
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@30
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@32
    .line 103
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mForceFullscreen:Z

    #@34
    .line 104
    new-instance v0, Landroid/graphics/Rect;

    #@36
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@39
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreForceFullscreenBounds:Landroid/graphics/Rect;

    #@3b
    .line 106
    const/4 v0, 0x5

    #@3c
    new-array v0, v0, [Ljava/lang/Object;

    #@3e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v1

    #@42
    aput-object v1, v0, v2

    #@44
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@46
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b
    move-result-object v1

    #@4c
    aput-object v1, v0, v3

    #@4e
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@50
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55
    move-result-object v1

    #@56
    const/4 v2, 0x2

    #@57
    aput-object v1, v0, v2

    #@59
    .line 107
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@5b
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@5d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@60
    move-result-object v1

    #@61
    const/4 v2, 0x3

    #@62
    aput-object v1, v0, v2

    #@64
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@66
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6b
    move-result-object v1

    #@6c
    const/4 v2, 0x4

    #@6d
    aput-object v1, v0, v2

    #@6f
    .line 106
    const/16 v1, 0x791c

    #@71
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@74
    .line 99
    return-void
.end method

.method private getDimBehindFadeDuration(J)J
    .locals 5
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 396
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 397
    .local v0, "tv":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c
    move-result-object v1

    #@d
    .line 398
    const/high16 v2, 0x1130000

    #@f
    const/4 v3, 0x1

    #@10
    .line 397
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@13
    .line 399
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@15
    const/4 v2, 0x6

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 400
    long-to-float v1, p1

    #@19
    long-to-float v2, p1

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    #@1d
    move-result v1

    #@1e
    float-to-long p1, v1

    #@1f
    .line 404
    :cond_0
    :goto_0
    return-wide p1

    #@20
    .line 401
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@22
    const/16 v2, 0x10

    #@24
    if-lt v1, v2, :cond_0

    #@26
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@28
    const/16 v2, 0x1f

    #@2a
    if-gt v1, v2, :cond_0

    #@2c
    .line 402
    iget v1, v0, Landroid/util/TypedValue;->data:I

    #@2e
    int-to-long p1, v1

    #@2f
    goto :goto_0
.end method

.method private updateOverrideConfiguration()V
    .locals 5

    #@0
    .prologue
    .line 177
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@4
    .line 178
    .local v1, "serviceConfig":Landroid/content/res/Configuration;
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 179
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@a
    iput-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@c
    .line 180
    return-void

    #@d
    .line 183
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@f
    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@11
    if-ne v2, v3, :cond_1

    #@13
    .line 184
    new-instance v2, Landroid/content/res/Configuration;

    #@15
    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    #@18
    iput-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@1a
    .line 188
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    #@1c
    int-to-float v2, v2

    #@1d
    const v3, 0x3bcccccd    # 0.00625f

    #@20
    mul-float v0, v2, v3

    #@22
    .line 189
    .local v0, "density":F
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@24
    .line 190
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@26
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@29
    move-result v3

    #@2a
    int-to-float v3, v3

    #@2b
    div-float/2addr v3, v0

    #@2c
    float-to-int v3, v3

    #@2d
    iget v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@2f
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@32
    move-result v3

    #@33
    .line 189
    iput v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    #@35
    .line 191
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@37
    .line 192
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@39
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@3c
    move-result v3

    #@3d
    int-to-float v3, v3

    #@3e
    div-float/2addr v3, v0

    #@3f
    float-to-int v3, v3

    #@40
    iget v4, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@42
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@45
    move-result v3

    #@46
    .line 191
    iput v3, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    #@48
    .line 193
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@4a
    .line 194
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@4c
    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    #@4e
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@50
    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    #@52
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@55
    move-result v3

    #@56
    .line 193
    iput v3, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@58
    .line 195
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@5a
    .line 196
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@5c
    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    #@5e
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@60
    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    #@62
    if-gt v2, v4, :cond_2

    #@64
    .line 197
    const/4 v2, 0x1

    #@65
    .line 195
    :goto_0
    iput v2, v3, Landroid/content/res/Configuration;->orientation:I

    #@67
    .line 176
    return-void

    #@68
    .line 197
    :cond_2
    const/4 v2, 0x2

    #@69
    goto :goto_0
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;Z)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z

    #@0
    .prologue
    .line 283
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;ZZ)V

    #@7
    .line 282
    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;ZZ)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z
    .param p3, "showForAllUsers"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 294
    if-nez p2, :cond_3

    #@4
    .line 295
    const/4 v0, 0x0

    #@5
    .line 313
    .local v0, "stackNdx":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v4, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@a
    .line 315
    iput-object p0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@c
    .line 316
    if-eqz p2, :cond_1

    #@e
    .line 317
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@10
    invoke-virtual {v4, p0, v3}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    #@13
    .line 319
    :cond_1
    const/4 v4, 0x3

    #@14
    new-array v4, v4, [Ljava/lang/Object;

    #@16
    iget v5, p1, Lcom/android/server/wm/Task;->mTaskId:I

    #@18
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v5

    #@1c
    aput-object v5, v4, v2

    #@1e
    if-eqz p2, :cond_2

    #@20
    move v2, v3

    #@21
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v2

    #@25
    aput-object v2, v4, v3

    #@27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v2

    #@2b
    const/4 v3, 0x2

    #@2c
    aput-object v2, v4, v3

    #@2e
    const/16 v2, 0x791a

    #@30
    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@33
    .line 292
    return-void

    #@34
    .line 297
    .end local v0    # "stackNdx":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@39
    move-result v0

    #@3a
    .line 298
    .restart local v0    # "stackNdx":I
    if-nez p3, :cond_0

    #@3c
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3e
    iget v5, p1, Lcom/android/server/wm/Task;->mUserId:I

    #@40
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    #@43
    move-result v4

    #@44
    if-nez v4, :cond_0

    #@46
    .line 300
    :cond_4
    add-int/lit8 v0, v0, -0x1

    #@48
    if-ltz v0, :cond_5

    #@4a
    .line 301
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v1

    #@50
    check-cast v1, Lcom/android/server/wm/Task;

    #@52
    .line 302
    .local v1, "tmpTask":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    #@55
    move-result v4

    #@56
    if-eqz v4, :cond_5

    #@58
    .line 303
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5a
    iget v5, v1, Lcom/android/server/wm/Task;->mUserId:I

    #@5c
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    #@5f
    move-result v4

    #@60
    if-nez v4, :cond_4

    #@62
    .line 308
    .end local v1    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@64
    goto :goto_0
.end method

.method animateDimLayers()Z
    .locals 8

    #@0
    .prologue
    .line 410
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2
    if-nez v5, :cond_2

    #@4
    .line 411
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@6
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getLayer()I

    #@9
    move-result v1

    #@a
    .line 412
    .local v1, "dimLayer":I
    const/4 v0, 0x0

    #@b
    .line 417
    .local v0, "dimAmount":F
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@d
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getTargetAlpha()F

    #@10
    move-result v4

    #@11
    .line 418
    .local v4, "targetAlpha":F
    cmpl-float v5, v4, v0

    #@13
    if-eqz v5, :cond_6

    #@15
    .line 419
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@17
    if-nez v5, :cond_3

    #@19
    .line 420
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@1b
    const-wide/16 v6, 0xc8

    #@1d
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/DimLayer;->hide(J)V

    #@20
    .line 433
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@22
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_1

    #@28
    .line 434
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2a
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@2d
    move-result v5

    #@2e
    if-nez v5, :cond_7

    #@30
    .line 436
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@32
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->show()V

    #@35
    .line 441
    :cond_1
    const/4 v5, 0x0

    #@36
    return v5

    #@37
    .line 414
    .end local v0    # "dimAmount":F
    .end local v1    # "dimLayer":I
    .end local v4    # "targetAlpha":F
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@39
    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@3b
    add-int/lit8 v1, v5, -0x1

    #@3d
    .line 415
    .restart local v1    # "dimLayer":I
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@3f
    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@41
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@43
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@45
    .restart local v0    # "dimAmount":F
    goto :goto_0

    #@46
    .line 422
    .restart local v4    # "targetAlpha":F
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@48
    iget-boolean v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@4a
    if-eqz v5, :cond_5

    #@4c
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4e
    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@50
    if-eqz v5, :cond_5

    #@52
    .line 423
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@54
    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@56
    invoke-virtual {v5}, Landroid/view/animation/Animation;->computeDurationHint()J

    #@59
    move-result-wide v2

    #@5a
    .line 425
    .local v2, "duration":J
    :goto_2
    cmpl-float v5, v4, v0

    #@5c
    if-lez v5, :cond_4

    #@5e
    .line 426
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/TaskStack;->getDimBehindFadeDuration(J)J

    #@61
    move-result-wide v2

    #@62
    .line 428
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@64
    invoke-virtual {v5, v1, v0, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    #@67
    goto :goto_1

    #@68
    .line 424
    .end local v2    # "duration":J
    :cond_5
    const-wide/16 v2, 0xc8

    #@6a
    .restart local v2    # "duration":J
    goto :goto_2

    #@6b
    .line 430
    .end local v2    # "duration":J
    :cond_6
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@6d
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getLayer()I

    #@70
    move-result v5

    #@71
    if-eq v5, v1, :cond_0

    #@73
    .line 431
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@75
    invoke-virtual {v5, v1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    #@78
    goto :goto_1

    #@79
    .line 438
    :cond_7
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@7b
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->stepAnimation()Z

    #@7e
    move-result v5

    #@7f
    return v5
.end method

.method attachDisplayContent(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "attachDisplayContent: Already attached"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 363
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@f
    .line 364
    new-instance v0, Lcom/android/server/wm/DimLayer;

    #@11
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@13
    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    #@16
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@18
    .line 365
    new-instance v0, Lcom/android/server/wm/DimLayer;

    #@1a
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1c
    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    #@1f
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@21
    .line 366
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo()V

    #@24
    .line 358
    return-void
.end method

.method close()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 511
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 512
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@7
    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    #@a
    .line 513
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@c
    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 516
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@12
    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    #@15
    .line 517
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@17
    .line 519
    :cond_1
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@19
    .line 510
    return-void
.end method

.method detachDisplay()V
    .locals 8

    #@0
    .prologue
    .line 370
    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@2
    const/16 v7, 0x791e

    #@4
    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(II)I

    #@7
    .line 372
    const/4 v3, 0x0

    #@8
    .line 373
    .local v3, "doAnotherLayoutPass":Z
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v6

    #@e
    add-int/lit8 v4, v6, -0x1

    #@10
    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    #@12
    .line 374
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v6

    #@18
    check-cast v6, Lcom/android/server/wm/Task;

    #@1a
    iget-object v1, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@1c
    .line 375
    .local v1, "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    #@1f
    move-result v6

    #@20
    add-int/lit8 v0, v6, -0x1

    #@22
    .local v0, "appNdx":I
    :goto_1
    if-ltz v0, :cond_1

    #@24
    .line 376
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v6

    #@28
    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    #@2a
    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2c
    .line 377
    .local v2, "appWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@2f
    move-result v6

    #@30
    add-int/lit8 v5, v6, -0x1

    #@32
    .local v5, "winNdx":I
    :goto_2
    if-ltz v5, :cond_0

    #@34
    .line 378
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@36
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v6

    #@3a
    check-cast v6, Lcom/android/server/wm/WindowState;

    #@3c
    invoke-virtual {v7, v6}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    #@3f
    .line 379
    const/4 v3, 0x1

    #@40
    .line 377
    add-int/lit8 v5, v5, -0x1

    #@42
    goto :goto_2

    #@43
    .line 375
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@45
    goto :goto_1

    #@46
    .line 373
    .end local v2    # "appWindows":Lcom/android/server/wm/WindowList;
    .end local v5    # "winNdx":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    #@48
    goto :goto_0

    #@49
    .line 383
    .end local v0    # "appNdx":I
    .end local v1    # "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    :cond_2
    if-eqz v3, :cond_3

    #@4b
    .line 384
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4d
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    #@50
    .line 387
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->close()V

    #@53
    .line 369
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 523
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v3, "mStackId="

    #@6
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@b
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    #@e
    .line 524
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    const-string/jumbo v3, "mDeferDetach="

    #@14
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mDeferDetach:Z

    #@19
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    #@1c
    .line 525
    const/4 v1, 0x0

    #@1d
    .local v1, "taskNdx":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@22
    move-result v3

    #@23
    if-ge v1, v3, :cond_0

    #@25
    .line 526
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@31
    .line 525
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 528
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@36
    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_1

    #@3c
    .line 529
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    const-string/jumbo v3, "mWindowAnimationBackgroundSurface:"

    #@42
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45
    .line 530
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@47
    new-instance v4, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    const-string/jumbo v5, "  "

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@5e
    .line 532
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@60
    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    #@63
    move-result v3

    #@64
    if-eqz v3, :cond_2

    #@66
    .line 533
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    const-string/jumbo v3, "mDimLayer:"

    #@6c
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6f
    .line 534
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@71
    new-instance v4, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v4

    #@7a
    const-string/jumbo v5, " "

    #@7d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@88
    .line 535
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8b
    const-string/jumbo v3, "mDimWinAnimator="

    #@8e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@91
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@93
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@96
    .line 537
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@98
    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    #@9b
    move-result v3

    #@9c
    if-nez v3, :cond_3

    #@9e
    .line 538
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@a1
    .line 539
    const-string/jumbo v3, "  Exiting application tokens:"

    #@a4
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a7
    .line 540
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@a9
    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    #@ac
    move-result v3

    #@ad
    add-int/lit8 v0, v3, -0x1

    #@af
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    #@b1
    .line 541
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@b3
    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@b6
    move-result-object v2

    #@b7
    check-cast v2, Lcom/android/server/wm/WindowToken;

    #@b9
    .line 542
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    const-string/jumbo v3, "  Exiting App #"

    #@bc
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bf
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@c2
    .line 543
    const/16 v3, 0x20

    #@c4
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    #@c7
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@ca
    .line 544
    const/16 v3, 0x3a

    #@cc
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    #@cf
    .line 545
    const-string/jumbo v3, "    "

    #@d2
    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@d5
    .line 540
    add-int/lit8 v0, v0, -0x1

    #@d7
    goto :goto_1

    #@d8
    .line 522
    .end local v0    # "i":I
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    :cond_3
    return-void
.end method

.method forceFullscreen(Z)Z
    .locals 2
    .param p1, "forceFullscreen"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 248
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mForceFullscreen:Z

    #@3
    if-ne v0, p1, :cond_0

    #@5
    .line 249
    return v1

    #@6
    .line 251
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mForceFullscreen:Z

    #@8
    .line 252
    if-eqz p1, :cond_2

    #@a
    .line 253
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 254
    return v1

    #@f
    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreForceFullscreenBounds:Landroid/graphics/Rect;

    #@11
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@13
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@16
    .line 257
    const/4 v0, 0x0

    #@17
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    #@1a
    move-result v0

    #@1b
    return v0

    #@1c
    .line 259
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@1e
    if-eqz v0, :cond_3

    #@20
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreForceFullscreenBounds:Landroid/graphics/Rect;

    #@22
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_4

    #@28
    .line 260
    :cond_3
    return v1

    #@29
    .line 262
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreForceFullscreenBounds:Landroid/graphics/Rect;

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    #@2e
    move-result v0

    #@2f
    return v0
.end method

.method getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 172
    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    return-object v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method isAnimating()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 267
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v6

    #@7
    add-int/lit8 v2, v6, -0x1

    #@9
    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_4

    #@b
    .line 268
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v6

    #@11
    check-cast v6, Lcom/android/server/wm/Task;

    #@13
    iget-object v0, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@15
    .line 269
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v6

    #@19
    add-int/lit8 v1, v6, -0x1

    #@1b
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    #@1d
    .line 270
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v6

    #@21
    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    #@23
    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@25
    .line 271
    .local v5, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v6

    #@29
    add-int/lit8 v4, v6, -0x1

    #@2b
    .local v4, "winNdx":I
    :goto_2
    if-ltz v4, :cond_2

    #@2d
    .line 272
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v6

    #@31
    check-cast v6, Lcom/android/server/wm/WindowState;

    #@33
    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@35
    .line 273
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    #@38
    move-result v6

    #@39
    if-nez v6, :cond_0

    #@3b
    iget-object v6, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3d
    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mExiting:Z

    #@3f
    if-eqz v6, :cond_1

    #@41
    .line 274
    :cond_0
    const/4 v6, 0x1

    #@42
    return v6

    #@43
    .line 271
    :cond_1
    add-int/lit8 v4, v4, -0x1

    #@45
    goto :goto_2

    #@46
    .line 269
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@48
    goto :goto_1

    #@49
    .line 267
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_3
    add-int/lit8 v2, v2, -0x1

    #@4b
    goto :goto_0

    #@4c
    .line 279
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    return v7
.end method

.method isDimming()Z
    .locals 1

    #@0
    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 1
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    #@0
    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method isFullscreen()Z
    .locals 1

    #@0
    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@2
    return v0
.end method

.method moveTaskToBottom(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 332
    const/4 v0, 0x0

    #@6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    #@9
    .line 329
    return-void
.end method

.method moveTaskToTop(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 326
    const/4 v0, 0x1

    #@6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    #@9
    .line 322
    return-void
.end method

.method removeTask(Lcom/android/server/wm/Task;)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 342
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@6
    .line 343
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 344
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 345
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@14
    invoke-virtual {v2, p0, v4}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    #@17
    .line 347
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@19
    const/4 v3, 0x1

    #@1a
    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@1c
    .line 349
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@1e
    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    #@21
    move-result v2

    #@22
    add-int/lit8 v0, v2, -0x1

    #@24
    .local v0, "appNdx":I
    :goto_0
    if-ltz v0, :cond_3

    #@26
    .line 350
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@28
    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    #@2e
    .line 351
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@30
    if-ne v2, p1, :cond_2

    #@32
    .line 352
    iput-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    #@34
    .line 353
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@36
    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->remove(I)Ljava/lang/Object;

    #@39
    .line 349
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@3b
    goto :goto_0

    #@3c
    .line 340
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 1

    #@0
    .prologue
    .line 391
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@3
    .line 392
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    #@8
    .line 390
    return-void
.end method

.method resetDimmingTag()V
    .locals 1

    #@0
    .prologue
    .line 445
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    #@3
    .line 444
    return-void
.end method

.method resizeWindows()V
    .locals 8

    #@0
    .prologue
    .line 119
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v2, v7, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    #@4
    .line 120
    .local v2, "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v7

    #@a
    add-int/lit8 v3, v7, -0x1

    #@c
    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_3

    #@e
    .line 121
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v7

    #@14
    check-cast v7, Lcom/android/server/wm/Task;

    #@16
    iget-object v0, v7, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@18
    .line 122
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v7

    #@1c
    add-int/lit8 v1, v7, -0x1

    #@1e
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_2

    #@20
    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v7

    #@24
    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    #@26
    iget-object v6, v7, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@28
    .line 124
    .local v6, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v7

    #@2c
    add-int/lit8 v5, v7, -0x1

    #@2e
    .local v5, "winNdx":I
    :goto_2
    if-ltz v5, :cond_1

    #@30
    .line 125
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@36
    .line 126
    .local v4, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@39
    move-result v7

    #@3a
    if-nez v7, :cond_0

    #@3c
    .line 129
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3f
    .line 124
    :cond_0
    add-int/lit8 v5, v5, -0x1

    #@41
    goto :goto_2

    #@42
    .line 122
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@44
    goto :goto_1

    #@45
    .line 120
    .end local v5    # "winNdx":I
    .end local v6    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_2
    add-int/lit8 v3, v3, -0x1

    #@47
    goto :goto_0

    #@48
    .line 118
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_3
    return-void
.end method

.method setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V
    .locals 6
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "color"    # I

    #@0
    .prologue
    .line 488
    iget v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@2
    .line 489
    .local v0, "animLayer":I
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 490
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@8
    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@a
    if-ge v0, v1, :cond_1

    #@c
    .line 491
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@e
    .line 492
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@10
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->adjustAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I

    #@13
    move-result v0

    #@14
    .line 493
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@16
    add-int/lit8 v2, v0, -0x1

    #@18
    .line 494
    shr-int/lit8 v3, p2, 0x18

    #@1a
    and-int/lit16 v3, v3, 0xff

    #@1c
    int-to-float v3, v3

    #@1d
    const/high16 v4, 0x437f0000    # 255.0f

    #@1f
    div-float/2addr v3, v4

    #@20
    const-wide/16 v4, 0x0

    #@22
    .line 493
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    #@25
    .line 487
    :cond_1
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 138
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@4
    .line 139
    .local v0, "oldFullscreen":Z
    const/4 v1, 0x0

    #@5
    .line 140
    .local v1, "rotation":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 141
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@b
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@d
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@10
    .line 142
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@12
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@15
    move-result-object v2

    #@16
    iget v1, v2, Landroid/view/DisplayInfo;->rotation:I

    #@18
    .line 143
    if-nez p1, :cond_1

    #@1a
    .line 144
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@1c
    .line 145
    iput-boolean v5, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@1e
    .line 156
    :cond_0
    :goto_0
    if-nez p1, :cond_3

    #@20
    .line 158
    return v4

    #@21
    .line 148
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@23
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@26
    move-result v2

    #@27
    if-nez v2, :cond_2

    #@29
    .line 150
    return v4

    #@2a
    .line 152
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@2c
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v2

    #@30
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@32
    goto :goto_0

    #@33
    .line 160
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@35
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_4

    #@3b
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@3d
    if-ne v0, v2, :cond_4

    #@3f
    iget v2, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    #@41
    if-ne v2, v1, :cond_4

    #@43
    .line 161
    return v4

    #@44
    .line 164
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@46
    invoke-virtual {v2, p1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    #@49
    .line 165
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@4b
    invoke-virtual {v2, p1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    #@4e
    .line 166
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@50
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@53
    .line 167
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    #@55
    .line 168
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateOverrideConfiguration()V

    #@58
    .line 169
    return v5
.end method

.method setDimmingTag()V
    .locals 1

    #@0
    .prologue
    .line 449
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    #@3
    .line 448
    return-void
.end method

.method startDimmingIfNeeded(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 2
    .param p1, "newWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    #@0
    .prologue
    .line 467
    iget-boolean v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 468
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@a
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 469
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@10
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@12
    iget v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@14
    if-ge v0, v1, :cond_1

    #@16
    .line 470
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@18
    .line 471
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1a
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1e
    if-nez v0, :cond_1

    #@20
    .line 472
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 464
    :cond_1
    :goto_0
    return-void

    #@25
    .line 472
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 474
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2b
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@2d
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@30
    .line 475
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@32
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@34
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    #@37
    goto :goto_0
.end method

.method stopDimmingIfNeeded()V
    .locals 2

    #@0
    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 482
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@d
    .line 483
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@f
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@11
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    #@14
    .line 480
    :cond_0
    return-void
.end method

.method switchUser()V
    .locals 5

    #@0
    .prologue
    .line 499
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 500
    .local v2, "top":I
    const/4 v1, 0x0

    #@7
    .local v1, "taskNdx":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@9
    .line 501
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/wm/Task;

    #@11
    .line 502
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@13
    iget v4, v0, Lcom/android/server/wm/Task;->mUserId:I

    #@15
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_0

    #@1b
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 503
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@26
    .line 504
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 505
    add-int/lit8 v2, v2, -0x1

    #@2d
    .line 500
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 498
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_2
    return-void
.end method

.method testDimmingTag()Z
    .locals 1

    #@0
    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{stackId="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " tasks="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "}"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method updateDisplayInfo()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 201
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 202
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    #@8
    .line 200
    :cond_0
    :goto_0
    return-void

    #@9
    .line 203
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 204
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@f
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@12
    move-result-object v2

    #@13
    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    #@15
    .line 205
    .local v0, "newRotation":I
    iget v2, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    #@17
    if-ne v2, v0, :cond_2

    #@19
    .line 206
    return-void

    #@1a
    .line 211
    :cond_2
    iget v2, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    #@1c
    invoke-static {v2, v0}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    #@1f
    move-result v1

    #@20
    .line 212
    .local v1, "rotationDelta":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@22
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@27
    .line 213
    packed-switch v1, :pswitch_data_0

    #@2a
    .line 236
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@2c
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    #@2f
    goto :goto_0

    #@30
    .line 215
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@32
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@34
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@37
    goto :goto_1

    #@38
    .line 218
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@3a
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@3c
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@3e
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@40
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@42
    sub-int/2addr v3, v4

    #@43
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@45
    .line 219
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@47
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@49
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@4b
    iput v3, v2, Landroid/graphics/Rect;->left:I

    #@4d
    .line 220
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@4f
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@51
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@53
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@55
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    #@58
    move-result v4

    #@59
    add-int/2addr v3, v4

    #@5a
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@5c
    .line 221
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@5e
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@60
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@62
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@64
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@67
    move-result v4

    #@68
    add-int/2addr v3, v4

    #@69
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@6b
    goto :goto_1

    #@6c
    .line 224
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@6e
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@70
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@72
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@74
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@76
    sub-int/2addr v3, v4

    #@77
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@79
    .line 225
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@7b
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@7d
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@7f
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@81
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@83
    sub-int/2addr v3, v4

    #@84
    iput v3, v2, Landroid/graphics/Rect;->left:I

    #@86
    .line 226
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@88
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@8a
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@8c
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@8e
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@91
    move-result v4

    #@92
    add-int/2addr v3, v4

    #@93
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@95
    .line 227
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@97
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@99
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@9b
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@9d
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    #@a0
    move-result v4

    #@a1
    add-int/2addr v3, v4

    #@a2
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@a4
    goto :goto_1

    #@a5
    .line 230
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@a7
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@a9
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@ab
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@ad
    .line 231
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@af
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@b1
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@b3
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@b5
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@b7
    sub-int/2addr v3, v4

    #@b8
    iput v3, v2, Landroid/graphics/Rect;->left:I

    #@ba
    .line 232
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@bc
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@be
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@c0
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@c2
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    #@c5
    move-result v4

    #@c6
    add-int/2addr v3, v4

    #@c7
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@c9
    .line 233
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@cb
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@cd
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@cf
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@d1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@d4
    move-result v4

    #@d5
    add-int/2addr v3, v4

    #@d6
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@d8
    goto/16 :goto_1

    #@da
    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
