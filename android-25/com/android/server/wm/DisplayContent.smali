.class Lcom/android/server/wm/DisplayContent;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# instance fields
.field final isDefaultDisplay:Z

.field layoutNeeded:Z

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field mContentRect:Landroid/graphics/Rect;

.field mDeferredRemoval:Z

.field final mDimLayerController:Lcom/android/server/wm/DimLayerController;

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDisplayScalingDisabled:Z

.field final mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mNonResizeableRegion:Landroid/graphics/Region;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

.field final mTapExcludedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRegion:Landroid/graphics/Region;

.field final mTmpTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTouchExcludeRegion:Landroid/graphics/Region;

.field private final mWindows:Lcom/android/server/wm/WindowList;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 65
    new-instance v1, Lcom/android/server/wm/WindowList;

    #@6
    invoke-direct {v1}, Lcom/android/server/wm/WindowList;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    #@b
    .line 67
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    #@d
    .line 68
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    #@f
    .line 69
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    #@11
    .line 70
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@13
    .line 71
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@15
    .line 72
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    #@17
    .line 74
    new-instance v1, Landroid/view/DisplayInfo;

    #@19
    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    #@1c
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@1e
    .line 76
    new-instance v1, Landroid/util/DisplayMetrics;

    #@20
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    #@23
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@25
    .line 78
    new-instance v1, Landroid/graphics/Rect;

    #@27
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@2a
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    #@2c
    .line 79
    new-instance v1, Landroid/graphics/Rect;

    #@2e
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@31
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    #@33
    .line 87
    new-instance v1, Ljava/util/ArrayList;

    #@35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@38
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    #@3a
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    #@3c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3f
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@41
    .line 95
    const/4 v1, 0x0

    #@42
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    #@44
    .line 101
    new-instance v1, Landroid/graphics/Region;

    #@46
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    #@49
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@4b
    .line 104
    new-instance v1, Landroid/graphics/Region;

    #@4d
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    #@50
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNonResizeableRegion:Landroid/graphics/Region;

    #@52
    .line 107
    new-instance v1, Landroid/graphics/Rect;

    #@54
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@57
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@59
    .line 108
    new-instance v1, Landroid/graphics/Rect;

    #@5b
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@5e
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@60
    .line 109
    new-instance v1, Landroid/graphics/Region;

    #@62
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    #@65
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    #@67
    .line 112
    new-instance v1, Ljava/util/ArrayList;

    #@69
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@6c
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    #@6e
    .line 123
    new-instance v1, Ljava/util/ArrayList;

    #@70
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@73
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    #@75
    .line 130
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    #@77
    .line 131
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    #@7a
    move-result v1

    #@7b
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    #@7d
    .line 132
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@7f
    invoke-virtual {p1, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    #@82
    .line 133
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@84
    invoke-virtual {p1, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@87
    .line 134
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    #@89
    if-nez v1, :cond_0

    #@8b
    const/4 v0, 0x1

    #@8c
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    #@8e
    .line 135
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@90
    .line 136
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    #@93
    .line 137
    new-instance v0, Lcom/android/server/wm/DockedStackDividerController;

    #@95
    invoke-direct {v0, p2, p0}, Lcom/android/server/wm/DockedStackDividerController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    #@98
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    #@9a
    .line 138
    new-instance v0, Lcom/android/server/wm/DimLayerController;

    #@9c
    invoke-direct {v0, p0}, Lcom/android/server/wm/DimLayerController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    #@9f
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@a1
    .line 129
    return-void
.end method

.method static deltaRotation(II)I
    .locals 1
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    #@0
    .prologue
    .line 568
    sub-int v0, p1, p0

    #@2
    .line 569
    .local v0, "delta":I
    if-gez v0, :cond_0

    #@4
    add-int/lit8 v0, v0, 0x4

    #@6
    .line 570
    :cond_0
    return v0
.end method


# virtual methods
.method animateDimLayers()Z
    .locals 1

    #@0
    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->animateDimLayers()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method attachStack(Lcom/android/server/wm/TaskStack;Z)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "onTop"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 251
    iget v0, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@3
    if-nez v0, :cond_1

    #@5
    .line 252
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "attachStack: HOME_STACK_ID (0) not first."

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 255
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    #@14
    .line 257
    :cond_1
    if-eqz p2, :cond_2

    #@16
    .line 258
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 262
    :goto_0
    const/4 v0, 0x1

    #@1c
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@1e
    .line 250
    return-void

    #@1f
    .line 260
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@24
    goto :goto_0
.end method

.method canAddToastWindowForUid(I)Z
    .locals 6
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@3
    move-result-object v3

    #@4
    .line 696
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@7
    move-result v2

    #@8
    .line 697
    .local v2, "windowCount":I
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@b
    .line 698
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@11
    .line 699
    .local v1, "window":Lcom/android/server/wm/WindowState;
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@13
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    #@15
    const/16 v5, 0x7d5

    #@17
    if-ne v4, v5, :cond_0

    #@19
    iget v4, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@1b
    if-ne v4, p1, :cond_0

    #@1d
    .line 700
    iget-boolean v4, v1, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 697
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 700
    :cond_1
    iget-boolean v4, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@26
    if-nez v4, :cond_0

    #@28
    .line 701
    iget-boolean v4, v1, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@2a
    if-nez v4, :cond_0

    #@2c
    .line 702
    const/4 v4, 0x0

    #@2d
    return v4

    #@2e
    .line 705
    .end local v1    # "window":Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v4, 0x1

    #@2f
    return v4
.end method

.method checkForDeferredActions()V
    .locals 11

    #@0
    .prologue
    .line 511
    const/4 v0, 0x0

    #@1
    .line 512
    .local v0, "animating":Z
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v9

    #@7
    add-int/lit8 v2, v9, -0x1

    #@9
    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_5

    #@b
    .line 513
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@13
    .line 514
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    #@16
    move-result v9

    #@17
    if-eqz v9, :cond_1

    #@19
    .line 515
    const/4 v0, 0x1

    #@1a
    .line 512
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 517
    :cond_1
    iget-boolean v9, v1, Lcom/android/server/wm/TaskStack;->mDeferDetach:Z

    #@1f
    if-eqz v9, :cond_2

    #@21
    .line 518
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@23
    invoke-virtual {v9, p0, v1}, Lcom/android/server/wm/WindowManagerService;->detachStackLocked(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)V

    #@26
    .line 520
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@29
    move-result-object v5

    #@2a
    .line 521
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v9

    #@2e
    add-int/lit8 v4, v9, -0x1

    #@30
    .local v4, "taskNdx":I
    :goto_1
    if-ltz v4, :cond_0

    #@32
    .line 522
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, Lcom/android/server/wm/Task;

    #@38
    .line 523
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v7, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@3a
    .line 524
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    #@3d
    move-result v9

    #@3e
    add-int/lit8 v6, v9, -0x1

    #@40
    .local v6, "tokenNdx":I
    :goto_2
    if-ltz v6, :cond_4

    #@42
    .line 525
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v8

    #@46
    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    #@48
    .line 526
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v9, v8, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    #@4a
    if-eqz v9, :cond_3

    #@4c
    .line 527
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->removeAppFromTaskLocked()V

    #@4f
    .line 524
    :cond_3
    add-int/lit8 v6, v6, -0x1

    #@51
    goto :goto_2

    #@52
    .line 521
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    #@54
    goto :goto_1

    #@55
    .line 533
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "taskNdx":I
    .end local v5    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_5
    if-nez v0, :cond_6

    #@57
    iget-boolean v9, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    #@59
    if-eqz v9, :cond_6

    #@5b
    .line 534
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5d
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    #@5f
    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    #@62
    .line 510
    :cond_6
    return-void
.end method

.method close()V
    .locals 2

    #@0
    .prologue
    .line 494
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@2
    invoke-virtual {v1}, Lcom/android/server/wm/DimLayerController;->close()V

    #@5
    .line 495
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    add-int/lit8 v0, v1, -0x1

    #@d
    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    #@f
    .line 496
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@17
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->close()V

    #@1a
    .line 495
    add-int/lit8 v0, v0, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 493
    :cond_0
    return-void
.end method

.method detachStack(Lcom/android/server/wm/TaskStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DimLayerController;->removeDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    #@5
    .line 294
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@a
    .line 292
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 574
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v5, "Display: mDisplayId="

    #@6
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    #@b
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    #@e
    .line 575
    new-instance v5, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v6, "  "

    #@16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 576
    .local v3, "subPrefix":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    const-string/jumbo v5, "init="

    #@28
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    #@2d
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@30
    const-string/jumbo v5, "x"

    #@33
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36
    .line 577
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    #@38
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@3b
    const-string/jumbo v5, " "

    #@3e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    #@43
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@46
    .line 578
    const-string/jumbo v5, "dpi"

    #@49
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    .line 579
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    #@4e
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@50
    if-ne v5, v6, :cond_0

    #@52
    .line 580
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    #@54
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@56
    if-eq v5, v6, :cond_3

    #@58
    .line 582
    :cond_0
    :goto_0
    const-string/jumbo v5, " base="

    #@5b
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    .line 583
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@60
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@63
    const-string/jumbo v5, "x"

    #@66
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@6b
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@6e
    .line 584
    const-string/jumbo v5, " "

    #@71
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    #@76
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@79
    const-string/jumbo v5, "dpi"

    #@7c
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    .line 586
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    #@81
    if-eqz v5, :cond_2

    #@83
    .line 587
    const-string/jumbo v5, " noscale"

    #@86
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@89
    .line 589
    :cond_2
    const-string/jumbo v5, " cur="

    #@8c
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8f
    .line 590
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@91
    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    #@93
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@96
    .line 591
    const-string/jumbo v5, "x"

    #@99
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9c
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@9e
    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    #@a0
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@a3
    .line 592
    const-string/jumbo v5, " app="

    #@a6
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a9
    .line 593
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@ab
    iget v5, v5, Landroid/view/DisplayInfo;->appWidth:I

    #@ad
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@b0
    .line 594
    const-string/jumbo v5, "x"

    #@b3
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b6
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@b8
    iget v5, v5, Landroid/view/DisplayInfo;->appHeight:I

    #@ba
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@bd
    .line 595
    const-string/jumbo v5, " rng="

    #@c0
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c3
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@c5
    iget v5, v5, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@c7
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@ca
    .line 596
    const-string/jumbo v5, "x"

    #@cd
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d0
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@d2
    iget v5, v5, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@d4
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@d7
    .line 597
    const-string/jumbo v5, "-"

    #@da
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dd
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@df
    iget v5, v5, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@e1
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@e4
    .line 598
    const-string/jumbo v5, "x"

    #@e7
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ea
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@ec
    iget v5, v5, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@ee
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    #@f1
    .line 599
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f4
    const-string/jumbo v5, "deferred="

    #@f7
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fa
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    #@fc
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    #@ff
    .line 600
    const-string/jumbo v5, " layoutNeeded="

    #@102
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@105
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@107
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@10a
    .line 602
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@10d
    .line 603
    const-string/jumbo v5, "  Application tokens in top down Z order:"

    #@110
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@113
    .line 604
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@115
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@118
    move-result v5

    #@119
    add-int/lit8 v2, v5, -0x1

    #@11b
    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_4

    #@11d
    .line 605
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@11f
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@122
    move-result-object v1

    #@123
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@125
    .line 606
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    new-instance v5, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v5

    #@12e
    const-string/jumbo v6, "  "

    #@131
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v5

    #@135
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v5

    #@139
    invoke-virtual {v1, v5, p2}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@13c
    .line 604
    add-int/lit8 v2, v2, -0x1

    #@13e
    goto :goto_1

    #@13f
    .line 581
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "stackNdx":I
    :cond_3
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    #@141
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    #@143
    if-eq v5, v6, :cond_1

    #@145
    goto/16 :goto_0

    #@147
    .line 609
    .restart local v2    # "stackNdx":I
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@14a
    .line 610
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    #@14c
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@14f
    move-result v5

    #@150
    if-nez v5, :cond_5

    #@152
    .line 611
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@155
    .line 612
    const-string/jumbo v5, "  Exiting tokens:"

    #@158
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15b
    .line 613
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    #@15d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@160
    move-result v5

    #@161
    add-int/lit8 v0, v5, -0x1

    #@163
    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_5

    #@165
    .line 614
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    #@167
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16a
    move-result-object v4

    #@16b
    check-cast v4, Lcom/android/server/wm/WindowToken;

    #@16d
    .line 615
    .local v4, "token":Lcom/android/server/wm/WindowToken;
    const-string/jumbo v5, "  Exiting #"

    #@170
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@173
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@176
    .line 616
    const/16 v5, 0x20

    #@178
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    #@17b
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@17e
    .line 617
    const/16 v5, 0x3a

    #@180
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(C)V

    #@183
    .line 618
    const-string/jumbo v5, "    "

    #@186
    invoke-virtual {v4, p2, v5}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@189
    .line 613
    add-int/lit8 v0, v0, -0x1

    #@18b
    goto :goto_2

    #@18c
    .line 621
    .end local v0    # "i":I
    .end local v4    # "token":Lcom/android/server/wm/WindowToken;
    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@18f
    .line 622
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@191
    new-instance v6, Ljava/lang/StringBuilder;

    #@193
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@196
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v6

    #@19a
    const-string/jumbo v7, "  "

    #@19d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v6

    #@1a1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a4
    move-result-object v6

    #@1a5
    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/DimLayerController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@1a8
    .line 623
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@1ab
    .line 624
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    #@1ad
    new-instance v6, Ljava/lang/StringBuilder;

    #@1af
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1b2
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v6

    #@1b6
    const-string/jumbo v7, "  "

    #@1b9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v6

    #@1bd
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c0
    move-result-object v6

    #@1c1
    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/DockedStackDividerController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@1c4
    .line 573
    return-void
.end method

.method findTaskForControlPoint(II)Lcom/android/server/wm/Task;
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 338
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@5
    const/16 v7, 0x1e

    #@7
    invoke-static {v7, v6}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    #@a
    move-result v0

    #@b
    .line 339
    .local v0, "delta":I
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v6

    #@11
    add-int/lit8 v2, v6, -0x1

    #@13
    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_0

    #@15
    .line 340
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@1d
    .line 341
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget v6, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@1f
    invoke-static {v6}, Landroid/app/ActivityManager$StackId;->isTaskResizeAllowed(I)Z

    #@22
    move-result v6

    #@23
    if-nez v6, :cond_1

    #@25
    .line 370
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    return-object v9

    #@26
    .line 344
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@29
    move-result-object v5

    #@2a
    .line 345
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v6

    #@2e
    add-int/lit8 v4, v6, -0x1

    #@30
    .local v4, "taskNdx":I
    :goto_1
    if-ltz v4, :cond_5

    #@32
    .line 346
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, Lcom/android/server/wm/Task;

    #@38
    .line 347
    .local v3, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isFullscreen()Z

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_2

    #@3e
    .line 348
    return-object v9

    #@3f
    .line 357
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@41
    invoke-virtual {v3, v6}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    #@44
    .line 358
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@46
    neg-int v7, v0

    #@47
    neg-int v8, v0

    #@48
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    #@4b
    .line 359
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@4d
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    #@50
    move-result v6

    #@51
    if-eqz v6, :cond_4

    #@53
    .line 360
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@55
    invoke-virtual {v6, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    #@58
    .line 361
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@5a
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    #@5d
    move-result v6

    #@5e
    if-nez v6, :cond_3

    #@60
    .line 362
    return-object v3

    #@61
    .line 366
    :cond_3
    return-object v9

    #@62
    .line 345
    :cond_4
    add-int/lit8 v4, v4, -0x1

    #@64
    goto :goto_1

    #@65
    .line 339
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    #@67
    goto :goto_0
.end method

.method getContentRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 245
    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    #@2
    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    #@2
    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@2
    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@2
    return-object v0
.end method

.method getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    #@2
    return-object v0
.end method

.method getDockedStackLocked()Lcom/android/server/wm/TaskStack;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 636
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@5
    const/4 v3, 0x3

    #@6
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/wm/TaskStack;

    #@c
    .line 637
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisibleLocked()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :goto_0
    return-object v0

    #@15
    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    move-object v0, v1

    #@16
    goto :goto_0
.end method

.method getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 645
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@5
    const/4 v3, 0x3

    #@6
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/wm/TaskStack;

    #@c
    .line 646
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    #@e
    const/4 v2, 0x1

    #@f
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->isVisibleLocked(Z)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :goto_0
    return-object v0

    #@16
    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    move-object v0, v1

    #@17
    goto :goto_0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .locals 3

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    #@2
    if-nez v0, :cond_0

    #@4
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    #@6
    if-nez v0, :cond_0

    #@8
    .line 195
    const-string/jumbo v0, "WindowManager"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "getHomeStack: Returning null from this="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    #@24
    return-object v0
.end method

.method getLogicalDisplayRect(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 233
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@3
    iget v2, v8, Landroid/view/DisplayInfo;->rotation:I

    #@5
    .line 234
    .local v2, "orientation":I
    if-eq v2, v5, :cond_0

    #@7
    .line 235
    const/4 v8, 0x3

    #@8
    if-ne v2, v8, :cond_1

    #@a
    .line 236
    .local v5, "rotated":Z
    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    #@c
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@e
    .line 237
    .local v4, "physWidth":I
    :goto_1
    if-eqz v5, :cond_3

    #@10
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@12
    .line 238
    .local v3, "physHeight":I
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@14
    iget v7, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    #@16
    .line 239
    .local v7, "width":I
    sub-int v8, v4, v7

    #@18
    div-int/lit8 v1, v8, 0x2

    #@1a
    .line 240
    .local v1, "left":I
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@1c
    iget v0, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    #@1e
    .line 241
    .local v0, "height":I
    sub-int v8, v3, v0

    #@20
    div-int/lit8 v6, v8, 0x2

    #@22
    .line 242
    .local v6, "top":I
    add-int v8, v1, v7

    #@24
    add-int v9, v6, v0

    #@26
    invoke-virtual {p1, v1, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    #@29
    .line 231
    return-void

    #@2a
    .line 235
    .end local v0    # "height":I
    .end local v1    # "left":I
    .end local v3    # "physHeight":I
    .end local v4    # "physWidth":I
    .end local v5    # "rotated":Z
    .end local v6    # "top":I
    .end local v7    # "width":I
    :cond_1
    const/4 v5, 0x0

    #@2b
    goto :goto_0

    #@2c
    .line 236
    .restart local v5    # "rotated":Z
    :cond_2
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@2e
    .restart local v4    # "physWidth":I
    goto :goto_1

    #@2f
    .line 237
    :cond_3
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@31
    .restart local v3    # "physHeight":I
    goto :goto_2
.end method

.method getStackById(I)Lcom/android/server/wm/TaskStack;
    .locals 3
    .param p1, "stackId"    # I

    #@0
    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 202
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@12
    .line 203
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget v2, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@14
    if-ne v2, p1, :cond_0

    #@16
    .line 204
    return-object v1

    #@17
    .line 201
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 207
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    const/4 v2, 0x0

    #@1b
    return-object v2
.end method

.method getStacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 4
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
    .line 185
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 186
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    .line 187
    .local v0, "numStacks":I
    const/4 v1, 0x0

    #@c
    .local v1, "stackNdx":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@e
    .line 188
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    #@10
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/wm/TaskStack;

    #@18
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@1f
    .line 187
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 190
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    #@24
    return-object v2
.end method

.method getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;
    .locals 8
    .param p1, "xf"    # F
    .param p2, "yf"    # F

    #@0
    .prologue
    .line 653
    const/4 v3, 0x0

    #@1
    .line 654
    .local v3, "touchedWin":Lcom/android/server/wm/WindowState;
    float-to-int v5, p1

    #@2
    .line 655
    .local v5, "x":I
    float-to-int v6, p2

    #@3
    .line 657
    .local v6, "y":I
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    #@5
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    #@8
    move-result v7

    #@9
    add-int/lit8 v1, v7, -0x1

    #@b
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@d
    .line 658
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    #@f
    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@15
    .line 659
    .local v4, "window":Lcom/android/server/wm/WindowState;
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@17
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@19
    .line 660
    .local v0, "flags":I
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    #@1c
    move-result v7

    #@1d
    if-nez v7, :cond_1

    #@1f
    .line 657
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_0

    #@22
    .line 663
    :cond_1
    and-int/lit8 v7, v0, 0x10

    #@24
    if-nez v7, :cond_0

    #@26
    .line 667
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@28
    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    #@2b
    .line 668
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@2d
    invoke-virtual {v7, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    #@30
    move-result v7

    #@31
    if-eqz v7, :cond_0

    #@33
    .line 672
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    #@35
    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    #@38
    .line 674
    and-int/lit8 v2, v0, 0x28

    #@3a
    .line 675
    .local v2, "touchFlags":I
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    #@3c
    invoke-virtual {v7, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    #@3f
    move-result v7

    #@40
    if-nez v7, :cond_2

    #@42
    if-nez v2, :cond_0

    #@44
    .line 676
    :cond_2
    move-object v3, v4

    #@45
    .line 681
    .end local v0    # "flags":I
    .end local v2    # "touchFlags":I
    .end local v3    # "touchedWin":Lcom/android/server/wm/WindowState;
    .end local v4    # "window":Lcom/android/server/wm/WindowState;
    :cond_3
    return-object v3
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    #@2
    return-object v0
.end method

.method public hasAccess(I)Z
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method initializeDisplayBaseInfo()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 221
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@5
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    #@7
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    #@a
    move-result-object v0

    #@b
    .line 222
    .local v0, "newDisplayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_0

    #@d
    .line 223
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@f
    invoke-virtual {v1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    #@12
    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@14
    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    #@16
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    #@18
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@1a
    .line 226
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@1c
    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    #@1e
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    #@20
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@22
    .line 227
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@24
    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@26
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    #@28
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    #@2a
    .line 228
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    #@2c
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@2e
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@30
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@33
    .line 218
    return-void
.end method

.method isAnimating()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 501
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v1, v2, -0x1

    #@9
    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 502
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/wm/TaskStack;

    #@13
    .line 503
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 504
    const/4 v2, 0x1

    #@1a
    return v2

    #@1b
    .line 501
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 507
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    return v3
.end method

.method isDimming()Z
    .locals 1

    #@0
    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->isDimming()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPrivate()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 173
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    #@3
    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    #@6
    move-result v1

    #@7
    and-int/lit8 v1, v1, 0x4

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method moveStack(Lcom/android/server/wm/TaskStack;Z)V
    .locals 6
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    .line 266
    iget v2, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@3
    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isAlwaysOnTop(I)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    if-eqz p2, :cond_2

    #@b
    .line 272
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_1

    #@13
    .line 273
    const-string/jumbo v2, "WindowManager"

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "moving stack that was not added: "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    new-instance v4, Ljava/lang/Throwable;

    #@2c
    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    #@2f
    invoke-static {v2, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@32
    .line 276
    :cond_1
    if-eqz p2, :cond_3

    #@34
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@39
    move-result v0

    #@3a
    .line 278
    .local v0, "addIndex":I
    :goto_0
    if-eqz p2, :cond_4

    #@3c
    .line 279
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3e
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowManagerService;->isStackVisibleLocked(I)Z

    #@41
    move-result v2

    #@42
    .line 278
    if-eqz v2, :cond_4

    #@44
    .line 280
    iget v2, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@46
    if-eq v2, v5, :cond_4

    #@48
    .line 283
    add-int/lit8 v0, v0, -0x1

    #@4a
    .line 284
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v1

    #@50
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@52
    .line 285
    .local v1, "topStack":Lcom/android/server/wm/TaskStack;
    iget v2, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@54
    if-eq v2, v5, :cond_4

    #@56
    .line 286
    new-instance v2, Ljava/lang/IllegalStateException;

    #@58
    new-instance v3, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v4, "Pinned stack isn\'t top stack??? "

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@71
    throw v2

    #@72
    .line 268
    .end local v0    # "addIndex":I
    .end local v1    # "topStack":Lcom/android/server/wm/TaskStack;
    :cond_2
    const-string/jumbo v2, "WindowManager"

    #@75
    new-instance v3, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v4, "Ignoring move of always-on-top stack="

    #@7d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v3

    #@85
    const-string/jumbo v4, " to bottom"

    #@88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v3

    #@90
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@93
    .line 269
    return-void

    #@94
    .line 276
    :cond_3
    const/4 v0, 0x0

    #@95
    .restart local v0    # "addIndex":I
    goto :goto_0

    #@96
    .line 289
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@98
    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@9b
    .line 265
    return-void
.end method

.method overridePlayingAppAnimationsLw(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 688
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 689
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@12
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->overridePlayingAppAnimations(Landroid/view/animation/Animation;)V

    #@15
    .line 688
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 687
    :cond_0
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 2

    #@0
    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 473
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@12
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    #@15
    .line 472
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 471
    :cond_0
    return-void
.end method

.method resetDimming()V
    .locals 1

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->resetDimming()V

    #@5
    .line 481
    return-void
.end method

.method resize(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "contentRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 301
    return-void
.end method

.method rotateBounds(IILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 539
    invoke-static {p1, p2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    #@3
    move-result v0

    #@4
    .line 540
    .local v0, "rotationDelta":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@6
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@9
    .line 541
    packed-switch v0, :pswitch_data_0

    #@c
    .line 564
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@e
    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@11
    .line 538
    return-void

    #@12
    .line 543
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@14
    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@17
    goto :goto_0

    #@18
    .line 546
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@1a
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@1c
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@1e
    iget v3, p3, Landroid/graphics/Rect;->right:I

    #@20
    sub-int/2addr v2, v3

    #@21
    iput v2, v1, Landroid/graphics/Rect;->top:I

    #@23
    .line 547
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@25
    iget v2, p3, Landroid/graphics/Rect;->top:I

    #@27
    iput v2, v1, Landroid/graphics/Rect;->left:I

    #@29
    .line 548
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@2b
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@2d
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@2f
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    #@32
    move-result v3

    #@33
    add-int/2addr v2, v3

    #@34
    iput v2, v1, Landroid/graphics/Rect;->right:I

    #@36
    .line 549
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@38
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@3a
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@3c
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    #@3f
    move-result v3

    #@40
    add-int/2addr v2, v3

    #@41
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    #@43
    goto :goto_0

    #@44
    .line 552
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@46
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@48
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@4a
    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    #@4c
    sub-int/2addr v2, v3

    #@4d
    iput v2, v1, Landroid/graphics/Rect;->top:I

    #@4f
    .line 553
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@51
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@53
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@55
    iget v3, p3, Landroid/graphics/Rect;->right:I

    #@57
    sub-int/2addr v2, v3

    #@58
    iput v2, v1, Landroid/graphics/Rect;->left:I

    #@5a
    .line 554
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@5c
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@5e
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@60
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    #@63
    move-result v3

    #@64
    add-int/2addr v2, v3

    #@65
    iput v2, v1, Landroid/graphics/Rect;->right:I

    #@67
    .line 555
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@69
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@6b
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@6d
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    #@70
    move-result v3

    #@71
    add-int/2addr v2, v3

    #@72
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    #@74
    goto :goto_0

    #@75
    .line 558
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@77
    iget v2, p3, Landroid/graphics/Rect;->left:I

    #@79
    iput v2, v1, Landroid/graphics/Rect;->top:I

    #@7b
    .line 559
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@7d
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@7f
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@81
    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    #@83
    sub-int/2addr v2, v3

    #@84
    iput v2, v1, Landroid/graphics/Rect;->left:I

    #@86
    .line 560
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@88
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@8a
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@8c
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    #@8f
    move-result v3

    #@90
    add-int/2addr v2, v3

    #@91
    iput v2, v1, Landroid/graphics/Rect;->right:I

    #@93
    .line 561
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@95
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@97
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@99
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    #@9c
    move-result v3

    #@9d
    add-int/2addr v2, v3

    #@9e
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    #@a0
    goto/16 :goto_0

    #@a2
    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 11
    .param p1, "oldFocus"    # Lcom/android/server/wm/WindowState;
    .param p2, "newFocus"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/16 v10, 0x34

    #@2
    .line 710
    if-eqz p1, :cond_0

    #@4
    if-eqz p2, :cond_1

    #@6
    iget v5, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@8
    iget v6, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@a
    if-ne v5, v6, :cond_1

    #@c
    .line 711
    :cond_0
    return-void

    #@d
    .line 713
    :cond_1
    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@f
    .line 714
    .local v1, "lostFocusUid":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@12
    move-result-object v4

    #@13
    .line 715
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    #@16
    move-result v3

    #@17
    .line 716
    .local v3, "windowCount":I
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    #@1a
    .line 717
    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@20
    .line 718
    .local v2, "window":Lcom/android/server/wm/WindowState;
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@22
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    #@24
    const/16 v6, 0x7d5

    #@26
    if-ne v5, v6, :cond_2

    #@28
    iget v5, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@2a
    if-ne v5, v1, :cond_2

    #@2c
    .line 719
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2e
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@30
    invoke-virtual {v5, v10, v2}, Lcom/android/server/wm/WindowManagerService$H;->hasMessages(ILjava/lang/Object;)Z

    #@33
    move-result v5

    #@34
    if-nez v5, :cond_2

    #@36
    .line 720
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@38
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@3a
    .line 721
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3c
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@3e
    invoke-virtual {v6, v10, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@41
    move-result-object v6

    #@42
    .line 723
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@44
    iget-wide v8, v7, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@46
    .line 720
    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@49
    .line 716
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 709
    .end local v2    # "window":Lcom/android/server/wm/WindowState;
    :cond_3
    return-void
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/Task;)V
    .locals 16
    .param p1, "focusedTask"    # Lcom/android/server/wm/Task;

    #@0
    .prologue
    .line 374
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@4
    move-object/from16 v0, p0

    #@6
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    #@8
    invoke-virtual {v13, v14}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    #@b
    .line 375
    move-object/from16 v0, p0

    #@d
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@f
    move-object/from16 v0, p0

    #@11
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@13
    const/16 v14, 0x1e

    #@15
    invoke-static {v14, v13}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    #@18
    move-result v2

    #@19
    .line 376
    .local v2, "delta":I
    const/4 v1, 0x0

    #@1a
    .line 377
    .local v1, "addBackFocusedTask":Z
    move-object/from16 v0, p0

    #@1c
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mNonResizeableRegion:Landroid/graphics/Region;

    #@1e
    invoke-virtual {v13}, Landroid/graphics/Region;->setEmpty()V

    #@21
    .line 378
    move-object/from16 v0, p0

    #@23
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v13

    #@29
    add-int/lit8 v7, v13, -0x1

    #@2b
    .local v7, "stackNdx":I
    :goto_0
    if-ltz v7, :cond_6

    #@2d
    .line 379
    move-object/from16 v0, p0

    #@2f
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v6

    #@35
    check-cast v6, Lcom/android/server/wm/TaskStack;

    #@37
    .line 380
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@3a
    move-result-object v10

    #@3b
    .line 381
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v13

    #@3f
    add-int/lit8 v9, v13, -0x1

    #@41
    .local v9, "taskNdx":I
    :goto_1
    if-ltz v9, :cond_4

    #@43
    .line 382
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v8

    #@47
    check-cast v8, Lcom/android/server/wm/Task;

    #@49
    .line 383
    .local v8, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    #@4c
    move-result-object v11

    #@4d
    .line 384
    .local v11, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v11, :cond_5

    #@4f
    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    #@52
    move-result v13

    #@53
    if-eqz v13, :cond_5

    #@55
    .line 397
    move-object/from16 v0, p0

    #@57
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@59
    invoke-virtual {v8, v13}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    #@5c
    .line 399
    move-object/from16 v0, p1

    #@5e
    if-ne v8, v0, :cond_0

    #@60
    .line 400
    const/4 v1, 0x1

    #@61
    .line 401
    move-object/from16 v0, p0

    #@63
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@65
    move-object/from16 v0, p0

    #@67
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@69
    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@6c
    .line 404
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    #@6f
    move-result v5

    #@70
    .line 405
    .local v5, "isFreeformed":Z
    move-object/from16 v0, p1

    #@72
    if-ne v8, v0, :cond_1

    #@74
    if-eqz v5, :cond_3

    #@76
    .line 406
    :cond_1
    if-eqz v5, :cond_2

    #@78
    .line 409
    move-object/from16 v0, p0

    #@7a
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@7c
    neg-int v14, v2

    #@7d
    neg-int v15, v2

    #@7e
    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->inset(II)V

    #@81
    .line 415
    move-object/from16 v0, p0

    #@83
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@85
    move-object/from16 v0, p0

    #@87
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    #@89
    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@8c
    .line 417
    :cond_2
    move-object/from16 v0, p0

    #@8e
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@90
    move-object/from16 v0, p0

    #@92
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@94
    sget-object v15, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@96
    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@99
    .line 419
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isTwoFingerScrollMode()Z

    #@9c
    move-result v13

    #@9d
    if-eqz v13, :cond_5

    #@9f
    .line 420
    move-object/from16 v0, p0

    #@a1
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@a3
    invoke-virtual {v6, v13}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    #@a6
    .line 421
    move-object/from16 v0, p0

    #@a8
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mNonResizeableRegion:Landroid/graphics/Region;

    #@aa
    move-object/from16 v0, p0

    #@ac
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@ae
    sget-object v15, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@b0
    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@b3
    .line 378
    .end local v5    # "isFreeformed":Z
    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v11    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    add-int/lit8 v7, v7, -0x1

    #@b5
    goto/16 :goto_0

    #@b7
    .line 381
    .restart local v8    # "task":Lcom/android/server/wm/Task;
    .restart local v11    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_5
    add-int/lit8 v9, v9, -0x1

    #@b9
    goto :goto_1

    #@ba
    .line 429
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "taskNdx":I
    .end local v10    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v11    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_6
    if-eqz v1, :cond_7

    #@bc
    .line 430
    move-object/from16 v0, p0

    #@be
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    #@c4
    sget-object v15, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@c6
    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@c9
    .line 432
    :cond_7
    move-object/from16 v0, p0

    #@cb
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@cd
    iget-object v4, v13, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    #@cf
    .line 433
    .local v4, "inputMethod":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_8

    #@d1
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    #@d4
    move-result v13

    #@d5
    if-eqz v13, :cond_8

    #@d7
    .line 437
    move-object/from16 v0, p0

    #@d9
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    #@db
    invoke-virtual {v4, v13}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    #@de
    .line 438
    move-object/from16 v0, p0

    #@e0
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@e2
    move-object/from16 v0, p0

    #@e4
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    #@e6
    sget-object v15, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@e8
    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@eb
    .line 440
    :cond_8
    move-object/from16 v0, p0

    #@ed
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    #@ef
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@f2
    move-result v13

    #@f3
    add-int/lit8 v3, v13, -0x1

    #@f5
    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_9

    #@f7
    .line 441
    move-object/from16 v0, p0

    #@f9
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    #@fb
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@fe
    move-result-object v12

    #@ff
    check-cast v12, Lcom/android/server/wm/WindowState;

    #@101
    .line 442
    .local v12, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    #@103
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    #@105
    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    #@108
    .line 443
    move-object/from16 v0, p0

    #@10a
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    #@110
    sget-object v15, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@112
    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@115
    .line 440
    add-int/lit8 v3, v3, -0x1

    #@117
    goto :goto_2

    #@118
    .line 445
    .end local v12    # "win":Lcom/android/server/wm/WindowState;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;

    #@11b
    move-result-object v13

    #@11c
    if-eqz v13, :cond_a

    #@11e
    .line 446
    move-object/from16 v0, p0

    #@120
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    #@122
    move-object/from16 v0, p0

    #@124
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@126
    invoke-virtual {v13, v14}, Lcom/android/server/wm/DockedStackDividerController;->getTouchRegion(Landroid/graphics/Rect;)V

    #@129
    .line 447
    move-object/from16 v0, p0

    #@12b
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    #@12d
    move-object/from16 v0, p0

    #@12f
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@131
    invoke-virtual {v13, v14}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    #@134
    .line 448
    move-object/from16 v0, p0

    #@136
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@138
    move-object/from16 v0, p0

    #@13a
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    #@13c
    sget-object v15, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@13e
    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@141
    .line 450
    :cond_a
    move-object/from16 v0, p0

    #@143
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    #@145
    if-eqz v13, :cond_b

    #@147
    .line 451
    move-object/from16 v0, p0

    #@149
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    #@14b
    move-object/from16 v0, p0

    #@14d
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@14f
    move-object/from16 v0, p0

    #@151
    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mNonResizeableRegion:Landroid/graphics/Region;

    #@153
    invoke-virtual {v13, v14, v15}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V

    #@156
    .line 373
    :cond_b
    return-void
.end method

.method stopDimmingIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->stopDimmingIfNeeded()V

    #@5
    .line 489
    return-void
.end method

.method switchUserStacks()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 456
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@4
    move-result-object v3

    #@5
    .line 457
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@9
    move-result v4

    #@a
    if-ge v0, v4, :cond_1

    #@c
    .line 458
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@12
    .line 459
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 462
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    #@1b
    .line 457
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 466
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v4

    #@24
    add-int/lit8 v1, v4, -0x1

    #@26
    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_2

    #@28
    .line 467
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Lcom/android/server/wm/TaskStack;

    #@30
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->switchUser()V

    #@33
    .line 466
    add-int/lit8 v1, v1, -0x1

    #@35
    goto :goto_1

    #@36
    .line 455
    :cond_2
    return-void
.end method

.method taskIdFromPoint(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 306
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v6

    #@6
    add-int/lit8 v1, v6, -0x1

    #@8
    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_4

    #@a
    .line 307
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wm/TaskStack;

    #@12
    .line 308
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@14
    invoke-virtual {v0, v6}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    #@17
    .line 309
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@19
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_0

    #@1f
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    #@22
    move-result v6

    #@23
    if-eqz v6, :cond_1

    #@25
    .line 306
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@27
    goto :goto_0

    #@28
    .line 312
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@2b
    move-result-object v4

    #@2c
    .line 313
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v6

    #@30
    add-int/lit8 v3, v6, -0x1

    #@32
    .local v3, "taskNdx":I
    :goto_1
    if-ltz v3, :cond_0

    #@34
    .line 314
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Lcom/android/server/wm/Task;

    #@3a
    .line 315
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    #@3d
    move-result-object v5

    #@3e
    .line 316
    .local v5, "win":Lcom/android/server/wm/WindowState;
    if-nez v5, :cond_3

    #@40
    .line 313
    :cond_2
    add-int/lit8 v3, v3, -0x1

    #@42
    goto :goto_1

    #@43
    .line 324
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@45
    invoke-virtual {v2, v6}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    #@48
    .line 325
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@4a
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    #@4d
    move-result v6

    #@4e
    if-eqz v6, :cond_2

    #@50
    .line 326
    iget v6, v2, Lcom/android/server/wm/Task;->mTaskId:I

    #@52
    return v6

    #@53
    .line 330
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "taskNdx":I
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    const/4 v6, -0x1

    #@54
    return v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Display "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " info="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, " stacks="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method updateDisplayInfo()V
    .locals 3

    #@0
    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    #@2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@4
    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    #@7
    .line 212
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    #@9
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@b
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@e
    .line 213
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v1

    #@14
    add-int/lit8 v0, v1, -0x1

    #@16
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@18
    .line 214
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo(Landroid/graphics/Rect;)V

    #@24
    .line 213
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_0

    #@27
    .line 210
    :cond_0
    return-void
.end method
