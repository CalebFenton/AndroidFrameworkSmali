.class Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WALLPAPER_DRAW_NORMAL:I = 0x0

.field private static final WALLPAPER_DRAW_PENDING:I = 0x1

.field private static final WALLPAPER_DRAW_PENDING_TIMEOUT_DURATION:J = 0x1f4L

.field private static final WALLPAPER_DRAW_TIMEOUT:I = 0x2

.field private static final WALLPAPER_TIMEOUT:J = 0x96L

.field private static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L


# instance fields
.field private mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

.field private final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field private mLastWallpaperDisplayOffsetX:I

.field private mLastWallpaperDisplayOffsetY:I

.field private mLastWallpaperTimeoutTime:J

.field private mLastWallpaperX:F

.field private mLastWallpaperXStep:F

.field private mLastWallpaperY:F

.field private mLastWallpaperYStep:F

.field private mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field private mWallpaperAnimLayerAdjustment:I

.field private mWallpaperDrawState:I

.field private mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 56
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    #@5
    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    const/high16 v3, -0x80000000

    #@2
    const/high16 v2, -0x40800000    # -1.0f

    #@4
    const/4 v1, 0x0

    #@5
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@f
    .line 63
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@11
    .line 66
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@13
    .line 69
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@15
    .line 73
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    #@17
    .line 74
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    #@19
    .line 75
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    #@1b
    .line 76
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    #@1d
    .line 77
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    #@1f
    .line 78
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    #@21
    .line 95
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    #@23
    .line 102
    const/4 v0, 0x0

    #@24
    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    #@26
    .line 104
    new-instance v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    #@28
    invoke-direct {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    #@2b
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    #@2d
    .line 107
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2f
    .line 106
    return-void
.end method

.method private findLowestWindowOnScreen(Lcom/android/server/wm/WindowList;)I
    .locals 4
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    #@0
    .prologue
    .line 791
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    #@3
    move-result v1

    #@4
    .line 792
    .local v1, "size":I
    const/4 v0, 0x0

    #@5
    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 793
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@d
    .line 794
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 795
    return v0

    #@14
    .line 792
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 798
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    const v3, 0x7fffffff

    #@1a
    return v3
.end method

.method private findWallpaperTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .locals 13
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 478
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3
    iget-object v8, v10, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@5
    .line 479
    .local v8, "winAnimator":Lcom/android/server/wm/WindowAnimator;
    invoke-virtual {p2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->reset()V

    #@8
    .line 480
    const/4 v7, 0x0

    #@9
    .line 481
    .local v7, "w":Lcom/android/server/wm/WindowState;
    const/4 v9, -0x1

    #@a
    .line 482
    .local v9, "windowDetachedI":I
    const/4 v5, 0x0

    #@b
    .line 483
    .local v5, "resetTopWallpaper":Z
    const/4 v2, 0x0

    #@c
    .line 484
    .local v2, "inFreeformSpace":Z
    const/4 v4, 0x0

    #@d
    .line 485
    .local v4, "replacing":Z
    const/4 v3, 0x0

    #@e
    .line 487
    .local v3, "keyguardGoingAwayWithWallpaper":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    #@11
    move-result v10

    #@12
    add-int/lit8 v1, v10, -0x1

    #@14
    .end local v3    # "keyguardGoingAwayWithWallpaper":Z
    .end local v4    # "replacing":Z
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    #@16
    .line 488
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v7

    #@1a
    check-cast v7, Lcom/android/server/wm/WindowState;

    #@1c
    .line 489
    .local v7, "w":Lcom/android/server/wm/WindowState;
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1e
    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    #@20
    const/16 v12, 0x7dd

    #@22
    if-ne v10, v12, :cond_2

    #@24
    .line 490
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    #@26
    if-eqz v10, :cond_0

    #@28
    if-eqz v5, :cond_1

    #@2a
    .line 491
    :cond_0
    invoke-virtual {p2, v7, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopWallpaper(Lcom/android/server/wm/WindowState;I)V

    #@2d
    .line 492
    const/4 v5, 0x0

    #@2e
    .line 487
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@30
    goto :goto_0

    #@31
    .line 496
    :cond_2
    const/4 v5, 0x1

    #@32
    .line 497
    iget-object v10, v8, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@34
    if-eq v7, v10, :cond_3

    #@36
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@38
    if-eqz v10, :cond_3

    #@3a
    .line 500
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@3c
    iget-boolean v10, v10, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    #@3e
    if-eqz v10, :cond_3

    #@40
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@42
    iget-object v10, v10, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@44
    iget-object v10, v10, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@46
    if-eqz v10, :cond_1

    #@48
    .line 509
    :cond_3
    if-nez v2, :cond_4

    #@4a
    .line 510
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@4d
    move-result-object v6

    #@4e
    .line 511
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v6, :cond_7

    #@50
    iget v10, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@52
    const/4 v12, 0x2

    #@53
    if-ne v10, v12, :cond_7

    #@55
    const/4 v2, 0x1

    #@56
    .line 514
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_4
    :goto_2
    iget-boolean v10, v7, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@58
    or-int/2addr v4, v10

    #@59
    .line 515
    .local v4, "replacing":Z
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@5b
    if-eqz v10, :cond_8

    #@5d
    .line 516
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@5f
    iget-boolean v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    #@61
    .line 515
    :goto_3
    or-int/2addr v3, v10

    #@62
    .line 518
    .local v3, "keyguardGoingAwayWithWallpaper":Z
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@64
    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@66
    const/high16 v12, 0x100000

    #@68
    and-int/2addr v10, v12

    #@69
    if-eqz v10, :cond_9

    #@6b
    const/4 v0, 0x1

    #@6c
    .line 519
    .local v0, "hasWallpaper":Z
    :goto_4
    if-eqz v0, :cond_a

    #@6e
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    #@71
    move-result v10

    #@72
    if-eqz v10, :cond_a

    #@74
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@76
    if-eq v10, v7, :cond_5

    #@78
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    #@7b
    move-result v10

    #@7c
    if-eqz v10, :cond_a

    #@7e
    .line 521
    :cond_5
    invoke-virtual {p2, v7, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    #@81
    .line 522
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@83
    if-ne v7, v10, :cond_6

    #@85
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@87
    invoke-virtual {v10}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    #@8a
    move-result v10

    #@8b
    if-nez v10, :cond_1

    #@8d
    .line 535
    .end local v0    # "hasWallpaper":Z
    .end local v3    # "keyguardGoingAwayWithWallpaper":Z
    .end local v4    # "replacing":Z
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_6
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    #@8f
    if-eqz v10, :cond_b

    #@91
    .line 536
    return-void

    #@92
    .line 511
    .restart local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_7
    const/4 v2, 0x0

    #@93
    goto :goto_2

    #@94
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v4    # "replacing":Z
    :cond_8
    move v10, v11

    #@95
    .line 515
    goto :goto_3

    #@96
    .restart local v3    # "keyguardGoingAwayWithWallpaper":Z
    :cond_9
    move v0, v11

    #@97
    .line 518
    goto :goto_4

    #@98
    .line 530
    .restart local v0    # "hasWallpaper":Z
    :cond_a
    iget-object v10, v8, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@9a
    if-ne v7, v10, :cond_1

    #@9c
    .line 531
    move v9, v1

    #@9d
    goto :goto_1

    #@9e
    .line 539
    .end local v0    # "hasWallpaper":Z
    .end local v3    # "keyguardGoingAwayWithWallpaper":Z
    .end local v4    # "replacing":Z
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_b
    if-ltz v9, :cond_d

    #@a0
    .line 542
    invoke-virtual {p2, v7, v9}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    #@a3
    .line 477
    :cond_c
    :goto_5
    return-void

    #@a4
    .line 543
    :cond_d
    if-nez v2, :cond_e

    #@a6
    if-eqz v4, :cond_f

    #@a8
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@aa
    if-eqz v10, :cond_f

    #@ac
    .line 548
    :cond_e
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    #@ae
    iget v11, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    #@b0
    invoke-virtual {p2, v10, v11}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    #@b3
    goto :goto_5

    #@b4
    .line 550
    :cond_f
    if-eqz v3, :cond_c

    #@b6
    .line 554
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    #@b8
    iget v11, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    #@ba
    invoke-virtual {p2, v10, v11}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    #@bd
    goto :goto_5
.end method

.method private isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "wallpaperTarget"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 141
    if-eqz p1, :cond_1

    #@3
    .line 142
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 143
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@d
    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@f
    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 141
    :cond_0
    :goto_0
    return v0

    #@14
    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@16
    if-nez v1, :cond_0

    #@18
    .line 145
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@1a
    if-nez v1, :cond_0

    #@1c
    const/4 v0, 0x0

    #@1d
    goto :goto_0
.end method

.method private updateWallpaperWindowsTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z
    .locals 11
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 561
    const/4 v6, 0x0

    #@2
    .line 562
    .local v6, "targetChanged":Z
    iget-object v7, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    #@4
    .line 563
    .local v7, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget v8, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    #@6
    .line 565
    .local v8, "wallpaperTargetIndex":I
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@8
    if-eq v9, v7, :cond_9

    #@a
    .line 566
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@c
    if-eqz v9, :cond_0

    #@e
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@10
    if-eq v9, v7, :cond_9

    #@12
    .line 570
    :cond_0
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@14
    .line 571
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@16
    .line 573
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@18
    .line 574
    .local v5, "oldW":Lcom/android/server/wm/WindowState;
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@1a
    .line 575
    const/4 v6, 0x1

    #@1b
    .line 579
    if-eqz v7, :cond_2

    #@1d
    if-eqz v5, :cond_2

    #@1f
    .line 580
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    #@22
    move-result v2

    #@23
    .line 581
    .local v2, "oldAnim":Z
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    #@26
    move-result v0

    #@27
    .line 584
    .local v0, "foundAnim":Z
    if-eqz v0, :cond_2

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 585
    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    #@2e
    move-result v3

    #@2f
    .line 588
    .local v3, "oldI":I
    if-ltz v3, :cond_2

    #@31
    .line 590
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@33
    if-eqz v9, :cond_3

    #@35
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@37
    iget-boolean v1, v9, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@39
    .line 592
    :goto_0
    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@3b
    if-eqz v9, :cond_4

    #@3d
    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@3f
    iget-boolean v4, v9, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@41
    .line 600
    :goto_1
    if-le v8, v3, :cond_5

    #@43
    .line 604
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@45
    .line 605
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@47
    .line 607
    move-object v7, v5

    #@48
    .line 608
    move v8, v3

    #@49
    .line 616
    :goto_2
    if-eqz v1, :cond_1

    #@4b
    if-eqz v4, :cond_6

    #@4d
    .line 622
    :cond_1
    if-ne v1, v4, :cond_2

    #@4f
    .line 623
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@51
    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@53
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@55
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@58
    move-result v9

    #@59
    if-eqz v9, :cond_7

    #@5b
    .line 647
    .end local v0    # "foundAnim":Z
    .end local v2    # "oldAnim":Z
    .end local v3    # "oldI":I
    .end local v5    # "oldW":Lcom/android/server/wm/WindowState;
    :cond_2
    :goto_3
    invoke-virtual {p2, v7, v8}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    #@5e
    .line 648
    return v6

    #@5f
    .line 590
    .restart local v0    # "foundAnim":Z
    .restart local v2    # "oldAnim":Z
    .restart local v3    # "oldI":I
    .restart local v5    # "oldW":Lcom/android/server/wm/WindowState;
    :cond_3
    const/4 v1, 0x0

    #@60
    .local v1, "newTargetHidden":Z
    goto :goto_0

    #@61
    .line 592
    .end local v1    # "newTargetHidden":Z
    :cond_4
    const/4 v4, 0x0

    #@62
    .local v4, "oldTargetHidden":Z
    goto :goto_1

    #@63
    .line 613
    .end local v4    # "oldTargetHidden":Z
    :cond_5
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@65
    .line 614
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@67
    goto :goto_2

    #@68
    .line 621
    :cond_6
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@6a
    goto :goto_3

    #@6b
    .line 624
    :cond_7
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6d
    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@6f
    iget-object v10, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@71
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@74
    move-result v9

    #@75
    if-nez v9, :cond_8

    #@77
    .line 625
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@79
    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    #@7b
    iget-object v10, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@7d
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@80
    move-result v9

    #@81
    .line 622
    if-eqz v9, :cond_2

    #@83
    .line 630
    :cond_8
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@85
    goto :goto_3

    #@86
    .line 636
    .end local v0    # "foundAnim":Z
    .end local v2    # "oldAnim":Z
    .end local v3    # "oldI":I
    .end local v5    # "oldW":Lcom/android/server/wm/WindowState;
    :cond_9
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@88
    if-eqz v9, :cond_2

    #@8a
    .line 638
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@8c
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    #@8f
    move-result v9

    #@90
    if-eqz v9, :cond_a

    #@92
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@94
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    #@97
    move-result v9

    #@98
    if-nez v9, :cond_2

    #@9a
    .line 640
    :cond_a
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@9c
    .line 641
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@9e
    .line 642
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@a0
    .line 643
    const/4 v6, 0x1

    #@a1
    goto :goto_3
.end method


# virtual methods
.method addWallpaperToken(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    #@0
    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 899
    return-void
.end method

.method adjustWallpaperWindows()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/high16 v8, -0x80000000

    #@3
    const/4 v7, 0x0

    #@4
    .line 802
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@8
    iput-boolean v9, v6, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    #@a
    .line 804
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@c
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    #@f
    move-result-object v5

    #@10
    .line 807
    .local v5, "windows":Lcom/android/server/wm/WindowList;
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    #@12
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WallpaperController;->findWallpaperTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    #@15
    .line 808
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    #@17
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z

    #@1a
    move-result v1

    #@1b
    .line 809
    .local v1, "targetChanged":Z
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    #@1d
    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTargetByLayer(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z

    #@20
    move-result v2

    #@21
    .line 810
    .local v2, "visible":Z
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    #@23
    iget-object v3, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    #@25
    .line 811
    .local v3, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    #@27
    iget v4, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    #@29
    .line 813
    .local v4, "wallpaperTargetIndex":I
    if-nez v3, :cond_5

    #@2b
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    #@2d
    iget-object v6, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    #@2f
    if-eqz v6, :cond_5

    #@31
    .line 816
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    #@33
    iget-object v3, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    #@35
    .line 817
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    #@37
    iget v6, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    #@39
    add-int/lit8 v4, v6, 0x1

    #@3b
    .line 825
    .end local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :goto_0
    if-eqz v2, :cond_3

    #@3d
    .line 826
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@3f
    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@41
    cmpl-float v6, v6, v7

    #@43
    if-ltz v6, :cond_0

    #@45
    .line 827
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@47
    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@49
    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    #@4b
    .line 828
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@4d
    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@4f
    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    #@51
    .line 830
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@53
    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@55
    cmpl-float v6, v6, v7

    #@57
    if-ltz v6, :cond_1

    #@59
    .line 831
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@5b
    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@5d
    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    #@5f
    .line 832
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@61
    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@63
    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    #@65
    .line 834
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@67
    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@69
    if-eq v6, v8, :cond_2

    #@6b
    .line 835
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@6d
    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@6f
    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    #@71
    .line 837
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@73
    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@75
    if-eq v6, v8, :cond_3

    #@77
    .line 838
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@79
    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@7b
    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    #@7d
    .line 842
    :cond_3
    invoke-virtual {p0, v5, v3, v4, v2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsPlacement(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;IZ)Z

    #@80
    move-result v0

    #@81
    .line 845
    .local v0, "changed":Z
    if-eqz v1, :cond_4

    #@83
    .line 849
    :cond_4
    return v0

    #@84
    .line 821
    .end local v0    # "changed":Z
    .restart local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_5
    if-lez v4, :cond_6

    #@86
    .line 822
    add-int/lit8 v6, v4, -0x1

    #@88
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@8b
    move-result-object v3

    #@8c
    .end local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    check-cast v3, Lcom/android/server/wm/WindowState;

    #@8e
    .restart local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto :goto_0

    #@8f
    :cond_6
    const/4 v3, 0x0

    #@90
    .local v3, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto :goto_0
.end method

.method clearLastWallpaperTimeoutTime()V
    .locals 2

    #@0
    .prologue
    .line 436
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    #@4
    .line 435
    return-void
.end method

.method dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V
    .locals 2
    .param p1, "wallpaper"    # Lcom/android/server/wm/WindowState;
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 234
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    #@2
    if-eq v1, p2, :cond_1

    #@4
    .line 235
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 234
    if-eqz p2, :cond_1

    #@a
    .line 236
    :cond_0
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    #@c
    .line 241
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@e
    invoke-interface {v1, p2}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 231
    :cond_1
    :goto_0
    return-void

    #@12
    .line 242
    :catch_0
    move-exception v0

    #@13
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/high16 v1, -0x80000000

    #@2
    .line 908
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5
    const-string/jumbo v0, "mWallpaperTarget="

    #@8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@10
    .line 909
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@12
    if-nez v0, :cond_0

    #@14
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 910
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    const-string/jumbo v0, "mLowerWallpaperTarget="

    #@1e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@26
    .line 911
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    const-string/jumbo v0, "mUpperWallpaperTarget="

    #@2c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@34
    .line 913
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    const-string/jumbo v0, "mLastWallpaperX="

    #@3a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    #@3f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@42
    .line 914
    const-string/jumbo v0, " mLastWallpaperY="

    #@45
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    #@4a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    #@4d
    .line 915
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    #@4f
    if-ne v0, v1, :cond_2

    #@51
    .line 916
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    #@53
    if-eq v0, v1, :cond_3

    #@55
    .line 917
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@58
    .line 918
    const-string/jumbo v0, "mLastWallpaperDisplayOffsetX="

    #@5b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    #@60
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@63
    .line 919
    const-string/jumbo v0, " mLastWallpaperDisplayOffsetY="

    #@66
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    #@6b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@6e
    .line 907
    :cond_3
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    #@0
    .prologue
    .line 924
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_1

    #@8
    .line 925
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@b
    .line 926
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    const-string/jumbo v2, "Wallpaper tokens:"

    #@11
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14
    .line 927
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v2

    #@1a
    add-int/lit8 v0, v2, -0x1

    #@1c
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@1e
    .line 928
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Lcom/android/server/wm/WindowToken;

    #@26
    .line 929
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    const-string/jumbo v2, "Wallpaper #"

    #@2c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@32
    .line 930
    const/16 v2, 0x20

    #@34
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    #@37
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@3a
    .line 931
    if-eqz p3, :cond_0

    #@3c
    .line 932
    const/16 v2, 0x3a

    #@3e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    #@41
    .line 933
    const-string/jumbo v2, "    "

    #@44
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@47
    .line 927
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@49
    goto :goto_0

    #@4a
    .line 935
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@4d
    goto :goto_1

    #@4e
    .line 923
    .end local v0    # "i":I
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    :cond_1
    return-void
.end method

.method getAnimLayerAdjustment()I
    .locals 1

    #@0
    .prologue
    .line 456
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    #@2
    return v0
.end method

.method getLowerWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@2
    return-object v0
.end method

.method getUpperWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@2
    return-object v0
.end method

.method getWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@2
    return-object v0
.end method

.method hideDeferredWallpapersIfNeeded()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 185
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 186
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    #@7
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    #@a
    .line 187
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    #@c
    .line 184
    :cond_0
    return-void
.end method

.method hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .locals 9
    .param p1, "winGoingAway"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 192
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@3
    if-eqz v7, :cond_1

    #@5
    .line 193
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@7
    if-ne v7, p1, :cond_0

    #@9
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@b
    if-eqz v7, :cond_1

    #@d
    .line 194
    :cond_0
    return-void

    #@e
    .line 196
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@10
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@12
    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_2

    #@18
    .line 199
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    #@1a
    .line 200
    return-void

    #@1b
    .line 203
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    #@1d
    if-ne v7, p1, :cond_5

    #@1f
    const/4 v5, 0x1

    #@20
    .line 204
    .local v5, "wasDeferred":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v7

    #@26
    add-int/lit8 v1, v7, -0x1

    #@28
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_7

    #@2a
    .line 205
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Lcom/android/server/wm/WindowToken;

    #@32
    .line 206
    .local v3, "token":Lcom/android/server/wm/WindowToken;
    iget-object v7, v3, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@34
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    #@37
    move-result v7

    #@38
    add-int/lit8 v2, v7, -0x1

    #@3a
    .local v2, "j":I
    :goto_2
    if-ltz v2, :cond_6

    #@3c
    .line 207
    iget-object v7, v3, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@3e
    invoke-virtual {v7, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v4

    #@42
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@44
    .line 208
    .local v4, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@46
    .line 209
    .local v6, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v7, v6, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@48
    if-eqz v7, :cond_3

    #@4a
    if-eqz v5, :cond_4

    #@4c
    .line 210
    :cond_3
    const-string/jumbo v7, "hideWallpapers"

    #@4f
    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    #@52
    .line 211
    invoke-virtual {p0, v4, v8}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    #@55
    .line 212
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@58
    move-result-object v0

    #@59
    .line 213
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_4

    #@5b
    .line 214
    iget v7, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@5d
    or-int/lit8 v7, v7, 0x4

    #@5f
    iput v7, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@61
    .line 206
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    #@63
    goto :goto_2

    #@64
    .line 203
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "token":Lcom/android/server/wm/WindowToken;
    .end local v4    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v5    # "wasDeferred":Z
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    const/4 v5, 0x0

    #@65
    .restart local v5    # "wasDeferred":Z
    goto :goto_0

    #@66
    .line 222
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "token":Lcom/android/server/wm/WindowToken;
    :cond_6
    const/4 v7, 0x1

    #@67
    iput-boolean v7, v3, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@69
    .line 204
    add-int/lit8 v1, v1, -0x1

    #@6b
    goto :goto_1

    #@6c
    .line 191
    .end local v2    # "j":I
    .end local v3    # "token":Lcom/android/server/wm/WindowToken;
    :cond_7
    return-void
.end method

.method isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 127
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@7
    iget v1, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    #@9
    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@b
    if-lt v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method isWallpaperTargetAnimating()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 149
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@7
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@9
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 150
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@11
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@13
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 149
    :cond_0
    :goto_0
    return v0

    #@1a
    .line 150
    :cond_1
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method

.method isWallpaperVisible()Z
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method processWallpaperDrawPendingTimeout()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 853
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 854
    const/4 v0, 0x2

    #@6
    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    #@8
    .line 857
    return v1

    #@9
    .line 859
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method removeWallpaperToken(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    #@0
    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 903
    return-void
.end method

.method sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 13
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 350
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 352
    :cond_0
    move/from16 v8, p7

    #@a
    .line 353
    .local v8, "doWait":Z
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v0

    #@10
    add-int/lit8 v7, v0, -0x1

    #@12
    .end local p7    # "sync":Z
    .local v7, "curTokenNdx":I
    :goto_0
    if-ltz v7, :cond_4

    #@14
    .line 354
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/server/wm/WindowToken;

    #@1c
    iget-object v12, v0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@1e
    .line 355
    .local v12, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->size()I

    #@21
    move-result v0

    #@22
    add-int/lit8 v11, v0, -0x1

    #@24
    .local v11, "wallpaperNdx":I
    :goto_1
    if-ltz v11, :cond_3

    #@26
    .line 356
    invoke-virtual {v12, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v10

    #@2a
    check-cast v10, Lcom/android/server/wm/WindowState;

    #@2c
    .line 358
    .local v10, "wallpaper":Lcom/android/server/wm/WindowState;
    :try_start_0
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@2e
    move-object v1, p2

    #@2f
    move/from16 v2, p3

    #@31
    move/from16 v3, p4

    #@33
    move/from16 v4, p5

    #@35
    move-object/from16 v5, p6

    #@37
    move/from16 v6, p7

    #@39
    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 361
    const/16 p7, 0x0

    #@3e
    .line 355
    :goto_2
    add-int/lit8 v11, v11, -0x1

    #@40
    goto :goto_1

    #@41
    .line 351
    .end local v7    # "curTokenNdx":I
    .end local v8    # "doWait":Z
    .end local v10    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v11    # "wallpaperNdx":I
    .end local v12    # "windows":Lcom/android/server/wm/WindowList;
    .restart local p7    # "sync":Z
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@43
    if-eq p1, v0, :cond_0

    #@45
    .line 372
    .end local p7    # "sync":Z
    :cond_2
    :goto_3
    const/4 v0, 0x0

    #@46
    return-object v0

    #@47
    .line 353
    .restart local v7    # "curTokenNdx":I
    .restart local v8    # "doWait":Z
    .restart local v11    # "wallpaperNdx":I
    .restart local v12    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    add-int/lit8 v7, v7, -0x1

    #@49
    goto :goto_0

    #@4a
    .line 367
    .end local v11    # "wallpaperNdx":I
    .end local v12    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    if-eqz v8, :cond_2

    #@4c
    goto :goto_3

    #@4d
    .line 362
    .restart local v10    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v11    # "wallpaperNdx":I
    .restart local v12    # "windows":Lcom/android/server/wm/WindowList;
    :catch_0
    move-exception v9

    #@4e
    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method setAnimLayerAdjustment(Lcom/android/server/wm/WindowState;I)V
    .locals 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "adj"    # I

    #@0
    .prologue
    .line 460
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@2
    if-ne p1, v4, :cond_0

    #@4
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 461
    :cond_0
    return-void

    #@9
    .line 465
    :cond_1
    iput p2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    #@b
    .line 466
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v4

    #@11
    add-int/lit8 v0, v4, -0x1

    #@13
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    #@15
    .line 467
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Lcom/android/server/wm/WindowToken;

    #@1d
    iget-object v3, v4, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@1f
    .line 468
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@22
    move-result v4

    #@23
    add-int/lit8 v1, v4, -0x1

    #@25
    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_2

    #@27
    .line 469
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@2d
    .line 470
    .local v2, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2f
    iget v5, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    #@31
    add-int/2addr v5, p2

    #@32
    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@34
    .line 468
    add-int/lit8 v1, v1, -0x1

    #@36
    goto :goto_1

    #@37
    .line 466
    .end local v2    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@39
    goto :goto_0

    #@3a
    .line 459
    .end local v1    # "j":I
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    return-void
.end method

.method setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # I
    .param p3, "y"    # I

    #@0
    .prologue
    .line 340
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@2
    if-ne v0, p2, :cond_0

    #@4
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@6
    if-eq v0, p3, :cond_1

    #@8
    .line 341
    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@a
    .line 342
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@c
    .line 343
    const/4 v0, 0x1

    #@d
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    #@10
    .line 339
    :cond_1
    return-void
.end method

.method setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xStep"    # F
    .param p5, "yStep"    # F

    #@0
    .prologue
    .line 330
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@2
    cmpl-float v0, v0, p2

    #@4
    if-nez v0, :cond_0

    #@6
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@8
    cmpl-float v0, v0, p3

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 331
    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@e
    .line 332
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@10
    .line 333
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@12
    .line 334
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@14
    .line 335
    const/4 v0, 0x1

    #@15
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    #@18
    .line 329
    :cond_1
    return-void
.end method

.method updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z
    .locals 24
    .param p1, "wallpaperWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "dw"    # I
    .param p3, "dh"    # I
    .param p4, "sync"    # Z

    #@0
    .prologue
    .line 248
    const/16 v17, 0x0

    #@2
    .line 251
    .local v17, "rawChanged":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_b

    #@8
    const/high16 v13, 0x3f800000    # 1.0f

    #@a
    .line 252
    .local v13, "defaultWallpaperX":F
    :goto_0
    move-object/from16 v0, p0

    #@c
    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    #@e
    const/4 v5, 0x0

    #@f
    cmpl-float v4, v4, v5

    #@11
    if-ltz v4, :cond_c

    #@13
    move-object/from16 v0, p0

    #@15
    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    #@17
    move/from16 v20, v0

    #@19
    .line 253
    .local v20, "wpx":F
    :goto_1
    move-object/from16 v0, p0

    #@1b
    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    #@1d
    const/4 v5, 0x0

    #@1e
    cmpl-float v4, v4, v5

    #@20
    if-ltz v4, :cond_d

    #@22
    move-object/from16 v0, p0

    #@24
    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    #@26
    move/from16 v21, v0

    #@28
    .line 254
    .local v21, "wpxs":F
    :goto_2
    move-object/from16 v0, p1

    #@2a
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2c
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@2e
    move-object/from16 v0, p1

    #@30
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@32
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@34
    sub-int/2addr v4, v5

    #@35
    sub-int v11, v4, p2

    #@37
    .line 255
    .local v11, "availw":I
    if-lez v11, :cond_e

    #@39
    int-to-float v4, v11

    #@3a
    mul-float v4, v4, v20

    #@3c
    const/high16 v5, 0x3f000000    # 0.5f

    #@3e
    add-float/2addr v4, v5

    #@3f
    float-to-int v4, v4

    #@40
    neg-int v0, v4

    #@41
    move/from16 v16, v0

    #@43
    .line 256
    .local v16, "offset":I
    :goto_3
    move-object/from16 v0, p0

    #@45
    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    #@47
    const/high16 v5, -0x80000000

    #@49
    if-eq v4, v5, :cond_0

    #@4b
    .line 257
    move-object/from16 v0, p0

    #@4d
    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    #@4f
    add-int v16, v16, v4

    #@51
    .line 259
    :cond_0
    move-object/from16 v0, p1

    #@53
    iget v4, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@55
    move/from16 v0, v16

    #@57
    if-eq v4, v0, :cond_f

    #@59
    const/4 v12, 0x1

    #@5a
    .line 260
    .local v12, "changed":Z
    :goto_4
    if-eqz v12, :cond_1

    #@5c
    .line 262
    move/from16 v0, v16

    #@5e
    move-object/from16 v1, p1

    #@60
    iput v0, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@62
    .line 264
    :cond_1
    move-object/from16 v0, p1

    #@64
    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@66
    cmpl-float v4, v4, v20

    #@68
    if-nez v4, :cond_2

    #@6a
    move-object/from16 v0, p1

    #@6c
    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@6e
    cmpl-float v4, v4, v21

    #@70
    if-eqz v4, :cond_3

    #@72
    .line 265
    :cond_2
    move/from16 v0, v20

    #@74
    move-object/from16 v1, p1

    #@76
    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@78
    .line 266
    move/from16 v0, v21

    #@7a
    move-object/from16 v1, p1

    #@7c
    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@7e
    .line 267
    const/16 v17, 0x1

    #@80
    .line 270
    :cond_3
    move-object/from16 v0, p0

    #@82
    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    #@84
    const/4 v5, 0x0

    #@85
    cmpl-float v4, v4, v5

    #@87
    if-ltz v4, :cond_10

    #@89
    move-object/from16 v0, p0

    #@8b
    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    #@8d
    move/from16 v22, v0

    #@8f
    .line 271
    .local v22, "wpy":F
    :goto_5
    move-object/from16 v0, p0

    #@91
    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    #@93
    const/4 v5, 0x0

    #@94
    cmpl-float v4, v4, v5

    #@96
    if-ltz v4, :cond_11

    #@98
    move-object/from16 v0, p0

    #@9a
    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    #@9c
    move/from16 v23, v0

    #@9e
    .line 272
    .local v23, "wpys":F
    :goto_6
    move-object/from16 v0, p1

    #@a0
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@a2
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@a4
    move-object/from16 v0, p1

    #@a6
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@a8
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@aa
    sub-int/2addr v4, v5

    #@ab
    sub-int v10, v4, p3

    #@ad
    .line 273
    .local v10, "availh":I
    if-lez v10, :cond_12

    #@af
    int-to-float v4, v10

    #@b0
    mul-float v4, v4, v22

    #@b2
    const/high16 v5, 0x3f000000    # 0.5f

    #@b4
    add-float/2addr v4, v5

    #@b5
    float-to-int v4, v4

    #@b6
    neg-int v0, v4

    #@b7
    move/from16 v16, v0

    #@b9
    .line 274
    :goto_7
    move-object/from16 v0, p0

    #@bb
    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    #@bd
    const/high16 v5, -0x80000000

    #@bf
    if-eq v4, v5, :cond_4

    #@c1
    .line 275
    move-object/from16 v0, p0

    #@c3
    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    #@c5
    add-int v16, v16, v4

    #@c7
    .line 277
    :cond_4
    move-object/from16 v0, p1

    #@c9
    iget v4, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@cb
    move/from16 v0, v16

    #@cd
    if-eq v4, v0, :cond_5

    #@cf
    .line 279
    const/4 v12, 0x1

    #@d0
    .line 280
    .local v12, "changed":Z
    move/from16 v0, v16

    #@d2
    move-object/from16 v1, p1

    #@d4
    iput v0, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@d6
    .line 282
    .end local v12    # "changed":Z
    :cond_5
    move-object/from16 v0, p1

    #@d8
    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@da
    cmpl-float v4, v4, v22

    #@dc
    if-nez v4, :cond_6

    #@de
    move-object/from16 v0, p1

    #@e0
    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@e2
    cmpl-float v4, v4, v23

    #@e4
    if-eqz v4, :cond_7

    #@e6
    .line 283
    :cond_6
    move/from16 v0, v22

    #@e8
    move-object/from16 v1, p1

    #@ea
    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@ec
    .line 284
    move/from16 v0, v23

    #@ee
    move-object/from16 v1, p1

    #@f0
    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@f2
    .line 285
    const/16 v17, 0x1

    #@f4
    .line 288
    :cond_7
    if-eqz v17, :cond_a

    #@f6
    move-object/from16 v0, p1

    #@f8
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@fa
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@fc
    and-int/lit8 v4, v4, 0x4

    #@fe
    if-eqz v4, :cond_a

    #@100
    .line 294
    if-eqz p4, :cond_8

    #@102
    .line 295
    :try_start_0
    move-object/from16 v0, p1

    #@104
    move-object/from16 v1, p0

    #@106
    iput-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    #@108
    .line 297
    :cond_8
    move-object/from16 v0, p1

    #@10a
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@10c
    .line 298
    move-object/from16 v0, p1

    #@10e
    iget v5, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@110
    move-object/from16 v0, p1

    #@112
    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@114
    .line 299
    move-object/from16 v0, p1

    #@116
    iget v7, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@118
    move-object/from16 v0, p1

    #@11a
    iget v8, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@11c
    move/from16 v9, p4

    #@11e
    .line 297
    invoke-interface/range {v4 .. v9}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    #@121
    .line 300
    if-eqz p4, :cond_a

    #@123
    .line 301
    move-object/from16 v0, p0

    #@125
    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    #@127
    if-eqz v4, :cond_a

    #@129
    .line 302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12c
    move-result-wide v18

    #@12d
    .line 303
    .local v18, "start":J
    move-object/from16 v0, p0

    #@12f
    iget-wide v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@131
    const-wide/16 v6, 0x2710

    #@133
    add-long/2addr v4, v6

    #@134
    cmp-long v4, v4, v18

    #@136
    if-gez v4, :cond_9

    #@138
    .line 308
    :try_start_1
    move-object/from16 v0, p0

    #@13a
    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@13c
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@13e
    const-wide/16 v6, 0x96

    #@140
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@143
    .line 312
    :goto_8
    const-wide/16 v4, 0x96

    #@145
    add-long v4, v4, v18

    #@147
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@14a
    move-result-wide v6

    #@14b
    cmp-long v4, v4, v6

    #@14d
    if-gez v4, :cond_9

    #@14f
    .line 313
    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    #@151
    new-instance v5, Ljava/lang/StringBuilder;

    #@153
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@156
    const-string/jumbo v6, "Timeout waiting for wallpaper to offset: "

    #@159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v5

    #@15d
    move-object/from16 v0, p1

    #@15f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v5

    #@163
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@166
    move-result-object v5

    #@167
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@16a
    .line 315
    move-wide/from16 v0, v18

    #@16c
    move-object/from16 v2, p0

    #@16e
    iput-wide v0, v2, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    #@170
    .line 318
    :cond_9
    const/4 v4, 0x0

    #@171
    move-object/from16 v0, p0

    #@173
    iput-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@175
    .line 325
    .end local v18    # "start":J
    :cond_a
    :goto_9
    return v12

    #@176
    .line 251
    .end local v10    # "availh":I
    .end local v11    # "availw":I
    .end local v13    # "defaultWallpaperX":F
    .end local v16    # "offset":I
    .end local v20    # "wpx":F
    .end local v21    # "wpxs":F
    .end local v22    # "wpy":F
    .end local v23    # "wpys":F
    :cond_b
    const/4 v13, 0x0

    #@177
    .restart local v13    # "defaultWallpaperX":F
    goto/16 :goto_0

    #@179
    .line 252
    :cond_c
    move/from16 v20, v13

    #@17b
    .restart local v20    # "wpx":F
    goto/16 :goto_1

    #@17d
    .line 253
    :cond_d
    const/high16 v21, -0x40800000    # -1.0f

    #@17f
    .restart local v21    # "wpxs":F
    goto/16 :goto_2

    #@181
    .line 255
    .restart local v11    # "availw":I
    :cond_e
    const/16 v16, 0x0

    #@183
    .restart local v16    # "offset":I
    goto/16 :goto_3

    #@185
    .line 259
    :cond_f
    const/4 v12, 0x0

    #@186
    goto/16 :goto_4

    #@188
    .line 270
    .local v12, "changed":Z
    :cond_10
    const/high16 v22, 0x3f000000    # 0.5f

    #@18a
    .restart local v22    # "wpy":F
    goto/16 :goto_5

    #@18c
    .line 271
    :cond_11
    const/high16 v23, -0x40800000    # -1.0f

    #@18e
    .restart local v23    # "wpys":F
    goto/16 :goto_6

    #@190
    .line 273
    .restart local v10    # "availh":I
    :cond_12
    const/16 v16, 0x0

    #@192
    goto/16 :goto_7

    #@194
    .line 321
    .end local v12    # "changed":Z
    :catch_0
    move-exception v14

    #@195
    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_9

    #@196
    .line 309
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v18    # "start":J
    :catch_1
    move-exception v15

    #@197
    .local v15, "e":Ljava/lang/InterruptedException;
    goto :goto_8
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 13
    .param p1, "changingTarget"    # Lcom/android/server/wm/WindowState;
    .param p2, "sync"    # Z

    #@0
    .prologue
    const/high16 v12, -0x80000000

    #@2
    const/4 v11, 0x0

    #@3
    .line 376
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@6
    move-result-object v2

    #@7
    .line 377
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_0

    #@9
    .line 378
    return-void

    #@a
    .line 380
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@d
    move-result-object v3

    #@e
    .line 381
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    #@10
    .line 382
    .local v4, "dw":I
    iget v1, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    #@12
    .line 384
    .local v1, "dh":I
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@14
    .line 385
    .local v5, "target":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_6

    #@16
    .line 386
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@18
    cmpl-float v10, v10, v11

    #@1a
    if-ltz v10, :cond_8

    #@1c
    .line 387
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@1e
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    #@20
    .line 391
    :cond_1
    :goto_0
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@22
    cmpl-float v10, v10, v11

    #@24
    if-ltz v10, :cond_9

    #@26
    .line 392
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@28
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    #@2a
    .line 396
    :cond_2
    :goto_1
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@2c
    if-eq v10, v12, :cond_a

    #@2e
    .line 397
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@30
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    #@32
    .line 401
    :cond_3
    :goto_2
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@34
    if-eq v10, v12, :cond_b

    #@36
    .line 402
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@38
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    #@3a
    .line 406
    :cond_4
    :goto_3
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@3c
    cmpl-float v10, v10, v11

    #@3e
    if-ltz v10, :cond_c

    #@40
    .line 407
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@42
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    #@44
    .line 411
    :cond_5
    :goto_4
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@46
    cmpl-float v10, v10, v11

    #@48
    if-ltz v10, :cond_d

    #@4a
    .line 412
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@4c
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    #@4e
    .line 418
    :cond_6
    :goto_5
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@50
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@53
    move-result v10

    #@54
    add-int/lit8 v0, v10, -0x1

    #@56
    .end local p2    # "sync":Z
    .local v0, "curTokenNdx":I
    :goto_6
    if-ltz v0, :cond_f

    #@58
    .line 419
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v10

    #@5e
    check-cast v10, Lcom/android/server/wm/WindowToken;

    #@60
    iget-object v9, v10, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@62
    .line 420
    .local v9, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    #@65
    move-result v10

    #@66
    add-int/lit8 v7, v10, -0x1

    #@68
    .local v7, "wallpaperNdx":I
    :goto_7
    if-ltz v7, :cond_e

    #@6a
    .line 421
    invoke-virtual {v9, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@6d
    move-result-object v6

    #@6e
    check-cast v6, Lcom/android/server/wm/WindowState;

    #@70
    .line 422
    .local v6, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0, v6, v4, v1, p2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    #@73
    move-result v10

    #@74
    if-eqz v10, :cond_7

    #@76
    .line 423
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@78
    .line 424
    .local v8, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    #@7b
    .line 427
    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@7d
    invoke-virtual {v8, v10}, Lcom/android/server/wm/WindowStateAnimator;->setWallpaperOffset(Landroid/graphics/Point;)V

    #@80
    .line 429
    const/4 p2, 0x0

    #@81
    .line 420
    .end local v8    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_7
    add-int/lit8 v7, v7, -0x1

    #@83
    goto :goto_7

    #@84
    .line 388
    .end local v0    # "curTokenNdx":I
    .end local v6    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v7    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    .restart local p2    # "sync":Z
    :cond_8
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@86
    cmpl-float v10, v10, v11

    #@88
    if-ltz v10, :cond_1

    #@8a
    .line 389
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@8c
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    #@8e
    goto :goto_0

    #@8f
    .line 393
    :cond_9
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@91
    cmpl-float v10, v10, v11

    #@93
    if-ltz v10, :cond_2

    #@95
    .line 394
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@97
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    #@99
    goto :goto_1

    #@9a
    .line 398
    :cond_a
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@9c
    if-eq v10, v12, :cond_3

    #@9e
    .line 399
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@a0
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    #@a2
    goto :goto_2

    #@a3
    .line 403
    :cond_b
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@a5
    if-eq v10, v12, :cond_4

    #@a7
    .line 404
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@a9
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    #@ab
    goto :goto_3

    #@ac
    .line 408
    :cond_c
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@ae
    cmpl-float v10, v10, v11

    #@b0
    if-ltz v10, :cond_5

    #@b2
    .line 409
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@b4
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    #@b6
    goto :goto_4

    #@b7
    .line 413
    :cond_d
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@b9
    cmpl-float v10, v10, v11

    #@bb
    if-ltz v10, :cond_6

    #@bd
    .line 414
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@bf
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    #@c1
    goto :goto_5

    #@c2
    .line 418
    .end local p2    # "sync":Z
    .restart local v0    # "curTokenNdx":I
    .restart local v7    # "wallpaperNdx":I
    .restart local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_e
    add-int/lit8 v0, v0, -0x1

    #@c4
    goto :goto_6

    #@c5
    .line 375
    .end local v7    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_f
    return-void
.end method

.method updateWallpaperVisibility()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 154
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@4
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@7
    move-result-object v2

    #@8
    .line 155
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_0

    #@a
    .line 156
    return-void

    #@b
    .line 158
    :cond_0
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@d
    invoke-direct {p0, v10}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    #@10
    move-result v6

    #@11
    .line 159
    .local v6, "visible":Z
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@14
    move-result-object v3

    #@15
    .line 160
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    #@17
    .line 161
    .local v4, "dw":I
    iget v1, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    #@19
    .line 163
    .local v1, "dh":I
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v10

    #@1f
    add-int/lit8 v0, v10, -0x1

    #@21
    .local v0, "curTokenNdx":I
    :goto_0
    if-ltz v0, :cond_5

    #@23
    .line 164
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Lcom/android/server/wm/WindowToken;

    #@2b
    .line 165
    .local v5, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@2d
    if-ne v10, v6, :cond_1

    #@2f
    .line 166
    if-eqz v6, :cond_3

    #@31
    move v10, v11

    #@32
    :goto_1
    iput-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@34
    .line 169
    iput-boolean v12, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@36
    .line 172
    :cond_1
    iget-object v9, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@38
    .line 173
    .local v9, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    #@3b
    move-result v10

    #@3c
    add-int/lit8 v8, v10, -0x1

    #@3e
    .local v8, "wallpaperNdx":I
    :goto_2
    if-ltz v8, :cond_4

    #@40
    .line 174
    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v7

    #@44
    check-cast v7, Lcom/android/server/wm/WindowState;

    #@46
    .line 175
    .local v7, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_2

    #@48
    .line 176
    invoke-virtual {p0, v7, v4, v1, v11}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    #@4b
    .line 179
    :cond_2
    invoke-virtual {p0, v7, v6}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    #@4e
    .line 173
    add-int/lit8 v8, v8, -0x1

    #@50
    goto :goto_2

    #@51
    .end local v7    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v8    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    move v10, v12

    #@52
    .line 166
    goto :goto_1

    #@53
    .line 163
    .restart local v8    # "wallpaperNdx":I
    .restart local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    #@55
    goto :goto_0

    #@56
    .line 153
    .end local v5    # "token":Lcom/android/server/wm/WindowToken;
    .end local v8    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_5
    return-void
.end method

.method updateWallpaperWindowsPlacement(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;IZ)Z
    .locals 18
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "wallpaperTarget"    # Lcom/android/server/wm/WindowState;
    .param p3, "wallpaperTargetIndex"    # I
    .param p4, "visible"    # Z

    #@0
    .prologue
    .line 705
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@7
    move-result-object v15

    #@8
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@b
    move-result-object v5

    #@c
    .line 706
    .local v5, "displayInfo":Landroid/view/DisplayInfo;
    iget v6, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    #@e
    .line 707
    .local v6, "dw":I
    iget v4, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    #@10
    .line 711
    .local v4, "dh":I
    const/4 v2, 0x0

    #@11
    .line 712
    .local v2, "changed":Z
    move-object/from16 v0, p0

    #@13
    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v15

    #@19
    add-int/lit8 v3, v15, -0x1

    #@1b
    .end local p2    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .local v3, "curTokenNdx":I
    :goto_0
    if-ltz v3, :cond_9

    #@1d
    .line 713
    move-object/from16 v0, p0

    #@1f
    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v10

    #@25
    check-cast v10, Lcom/android/server/wm/WindowToken;

    #@27
    .line 714
    .local v10, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v15, v10, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@29
    move/from16 v0, p4

    #@2b
    if-ne v15, v0, :cond_0

    #@2d
    .line 717
    if-eqz p4, :cond_2

    #@2f
    const/4 v15, 0x0

    #@30
    :goto_1
    iput-boolean v15, v10, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@32
    .line 719
    move-object/from16 v0, p0

    #@34
    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@36
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@39
    move-result-object v15

    #@3a
    const/16 v16, 0x1

    #@3c
    move/from16 v0, v16

    #@3e
    iput-boolean v0, v15, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@40
    .line 722
    :cond_0
    iget-object v11, v10, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@42
    .line 723
    .local v11, "tokenWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v11}, Lcom/android/server/wm/WindowList;->size()I

    #@45
    move-result v15

    #@46
    add-int/lit8 v14, v15, -0x1

    #@48
    .local v14, "wallpaperNdx":I
    :goto_2
    if-ltz v14, :cond_8

    #@4a
    .line 724
    invoke-virtual {v11, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v13

    #@4e
    check-cast v13, Lcom/android/server/wm/WindowState;

    #@50
    .line 726
    .local v13, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_1

    #@52
    .line 727
    const/4 v15, 0x0

    #@53
    move-object/from16 v0, p0

    #@55
    invoke-virtual {v0, v13, v6, v4, v15}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    #@58
    .line 731
    :cond_1
    move-object/from16 v0, p0

    #@5a
    move/from16 v1, p4

    #@5c
    invoke-virtual {v0, v13, v1}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    #@5f
    .line 733
    iget-object v15, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@61
    .line 734
    iget v0, v13, Lcom/android/server/wm/WindowState;->mLayer:I

    #@63
    move/from16 v16, v0

    #@65
    move-object/from16 v0, p0

    #@67
    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    #@69
    move/from16 v17, v0

    #@6b
    add-int v16, v16, v17

    #@6d
    .line 733
    move/from16 v0, v16

    #@6f
    iput v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@71
    .line 739
    move-object/from16 v0, p2

    #@73
    if-ne v13, v0, :cond_4

    #@75
    .line 740
    add-int/lit8 p3, p3, -0x1

    #@77
    .line 741
    if-lez p3, :cond_3

    #@79
    .line 742
    add-int/lit8 v15, p3, -0x1

    #@7b
    move-object/from16 v0, p1

    #@7d
    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@80
    move-result-object p2

    #@81
    check-cast p2, Lcom/android/server/wm/WindowState;

    #@83
    .line 723
    :goto_3
    add-int/lit8 v14, v14, -0x1

    #@85
    goto :goto_2

    #@86
    .line 717
    .end local v11    # "tokenWindows":Lcom/android/server/wm/WindowList;
    .end local v13    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v14    # "wallpaperNdx":I
    :cond_2
    const/4 v15, 0x1

    #@87
    goto :goto_1

    #@88
    .line 742
    .restart local v11    # "tokenWindows":Lcom/android/server/wm/WindowList;
    .restart local v13    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v14    # "wallpaperNdx":I
    :cond_3
    const/16 p2, 0x0

    #@8a
    .local p2, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto :goto_3

    #@8b
    .line 748
    .end local p2    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_4
    move-object/from16 v0, p1

    #@8d
    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    #@90
    move-result v8

    #@91
    .line 749
    .local v8, "oldIndex":I
    if-ltz v8, :cond_5

    #@93
    .line 752
    move-object/from16 v0, p1

    #@95
    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    #@98
    .line 753
    move-object/from16 v0, p0

    #@9a
    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@9c
    const/16 v16, 0x1

    #@9e
    move/from16 v0, v16

    #@a0
    iput-boolean v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    #@a2
    .line 754
    move/from16 v0, p3

    #@a4
    if-ge v8, v0, :cond_5

    #@a6
    .line 755
    add-int/lit8 p3, p3, -0x1

    #@a8
    .line 762
    :cond_5
    const/4 v7, 0x0

    #@a9
    .line 763
    .local v7, "insertionIndex":I
    if-eqz p4, :cond_7

    #@ab
    if-eqz p2, :cond_7

    #@ad
    .line 764
    move-object/from16 v0, p2

    #@af
    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@b1
    iget v12, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    #@b3
    .line 765
    .local v12, "type":I
    move-object/from16 v0, p2

    #@b5
    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@b7
    iget v9, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@b9
    .line 766
    .local v9, "privateFlags":I
    and-int/lit16 v15, v9, 0x400

    #@bb
    if-nez v15, :cond_6

    #@bd
    .line 767
    const/16 v15, 0x7ed

    #@bf
    if-ne v12, v15, :cond_7

    #@c1
    .line 768
    :cond_6
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    #@c4
    move-result v15

    #@c5
    .line 769
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WallpaperController;->findLowestWindowOnScreen(Lcom/android/server/wm/WindowList;)I

    #@c8
    move-result v16

    #@c9
    .line 768
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    #@cc
    move-result v7

    #@cd
    .line 777
    .end local v9    # "privateFlags":I
    .end local v12    # "type":I
    :cond_7
    move-object/from16 v0, p1

    #@cf
    invoke-virtual {v0, v7, v13}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    #@d2
    .line 778
    move-object/from16 v0, p0

    #@d4
    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d6
    const/16 v16, 0x1

    #@d8
    move/from16 v0, v16

    #@da
    iput-boolean v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    #@dc
    .line 779
    const/4 v2, 0x1

    #@dd
    goto :goto_3

    #@de
    .line 712
    .end local v7    # "insertionIndex":I
    .end local v8    # "oldIndex":I
    .end local v13    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_8
    add-int/lit8 v3, v3, -0x1

    #@e0
    goto/16 :goto_0

    #@e2
    .line 783
    .end local v10    # "token":Lcom/android/server/wm/WindowToken;
    .end local v11    # "tokenWindows":Lcom/android/server/wm/WindowList;
    .end local v14    # "wallpaperNdx":I
    :cond_9
    return v2
.end method

.method updateWallpaperWindowsTargetByLayer(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z
    .locals 7
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 654
    iget-object v2, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    #@3
    .line 655
    .local v2, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget v3, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    #@5
    .line 656
    .local v3, "wallpaperTargetIndex":I
    if-eqz v2, :cond_3

    #@7
    const/4 v1, 0x1

    #@8
    .line 658
    .local v1, "visible":Z
    :goto_0
    if-eqz v1, :cond_2

    #@a
    .line 661
    invoke-direct {p0, v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    #@d
    move-result v1

    #@e
    .line 667
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@10
    if-nez v6, :cond_0

    #@12
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@14
    if-eqz v6, :cond_0

    #@16
    .line 668
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@18
    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@1a
    iget v5, v5, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@1c
    .line 666
    :cond_0
    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    #@1e
    .line 670
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@20
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@22
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    #@25
    move-result v5

    #@26
    mul-int/lit16 v5, v5, 0x2710

    #@28
    add-int/lit16 v0, v5, 0x3e8

    #@2a
    .line 677
    .local v0, "maxLayer":I
    :goto_1
    if-lez v3, :cond_2

    #@2c
    .line 678
    add-int/lit8 v5, v3, -0x1

    #@2e
    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@34
    .line 679
    .local v4, "wb":Lcom/android/server/wm/WindowState;
    iget v5, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@36
    if-ge v5, v0, :cond_5

    #@38
    .line 680
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@3a
    if-eq v5, v2, :cond_5

    #@3c
    .line 681
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@3e
    if-eqz v5, :cond_1

    #@40
    .line 682
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@42
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@44
    if-eq v5, v6, :cond_5

    #@46
    .line 683
    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@48
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    #@4a
    const/4 v6, 0x3

    #@4b
    if-ne v5, v6, :cond_2

    #@4d
    .line 684
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@4f
    if-nez v5, :cond_4

    #@51
    .line 697
    .end local v0    # "maxLayer":I
    .end local v4    # "wb":Lcom/android/server/wm/WindowState;
    :cond_2
    invoke-virtual {p2, v2, v3}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    #@54
    .line 698
    return v1

    #@55
    .end local v1    # "visible":Z
    :cond_3
    move v1, v5

    #@56
    .line 656
    goto :goto_0

    #@57
    .line 685
    .restart local v0    # "maxLayer":I
    .restart local v1    # "visible":Z
    .restart local v4    # "wb":Lcom/android/server/wm/WindowState;
    :cond_4
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@59
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@5b
    if-ne v5, v6, :cond_2

    #@5d
    .line 690
    :cond_5
    move-object v2, v4

    #@5e
    .line 691
    add-int/lit8 v3, v3, -0x1

    #@60
    goto :goto_1
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "window"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 440
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 441
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    #@7
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@9
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@c
    move-result-object v0

    #@d
    if-ne v0, p1, :cond_0

    #@f
    .line 442
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    #@11
    .line 443
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@13
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@15
    invoke-virtual {v0}, Ljava/util/HashMap;->notifyAll()V

    #@18
    .line 439
    :cond_0
    return-void
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "window"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 448
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 449
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    #@7
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@9
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@c
    move-result-object v0

    #@d
    if-ne v0, p1, :cond_0

    #@f
    .line 450
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    #@11
    .line 451
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@13
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@15
    invoke-virtual {v0}, Ljava/util/HashMap;->notifyAll()V

    #@18
    .line 447
    :cond_0
    return-void
.end method

.method wallpaperTransitionReady()Z
    .locals 12

    #@0
    .prologue
    const/16 v11, 0x27

    #@2
    const/4 v10, 0x0

    #@3
    .line 863
    const/4 v3, 0x1

    #@4
    .line 864
    .local v3, "transitionReady":Z
    const/4 v5, 0x1

    #@5
    .line 865
    .local v5, "wallpaperReady":Z
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v6

    #@b
    add-int/lit8 v0, v6, -0x1

    #@d
    .line 866
    .local v0, "curTokenIndex":I
    :goto_0
    if-ltz v0, :cond_4

    #@f
    .line 865
    if-eqz v5, :cond_4

    #@11
    .line 867
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/server/wm/WindowToken;

    #@19
    .line 868
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    iget-object v6, v2, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@1b
    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    #@1e
    move-result v6

    #@1f
    add-int/lit8 v1, v6, -0x1

    #@21
    .local v1, "curWallpaperIndex":I
    :goto_1
    if-ltz v1, :cond_3

    #@23
    .line 870
    iget-object v6, v2, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@25
    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@2b
    .line 871
    .local v4, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-boolean v6, v4, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    #@2d
    if-eqz v6, :cond_0

    #@2f
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_1

    #@35
    .line 869
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@37
    goto :goto_1

    #@38
    .line 873
    :cond_1
    const/4 v5, 0x0

    #@39
    .line 874
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    #@3b
    const/4 v7, 0x2

    #@3c
    if-eq v6, v7, :cond_2

    #@3e
    .line 876
    const/4 v3, 0x0

    #@3f
    .line 878
    :cond_2
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    #@41
    if-nez v6, :cond_3

    #@43
    .line 879
    const/4 v6, 0x1

    #@44
    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    #@46
    .line 880
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@48
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@4a
    invoke-virtual {v6, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    #@4d
    .line 881
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4f
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@51
    .line 882
    const-wide/16 v8, 0x1f4

    #@53
    .line 881
    invoke-virtual {v6, v11, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    #@56
    .line 866
    .end local v4    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@58
    goto :goto_0

    #@59
    .line 891
    .end local v1    # "curWallpaperIndex":I
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    :cond_4
    if-eqz v5, :cond_5

    #@5b
    .line 892
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    #@5d
    .line 893
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5f
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@61
    invoke-virtual {v6, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    #@64
    .line 896
    :cond_5
    return v3
.end method
