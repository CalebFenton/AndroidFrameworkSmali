.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final KEYGUARD_ANIMATING_OUT:I = 0x2

.field private static final KEYGUARD_ANIM_TIMEOUT_MS:J = 0x3e8L

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimTransactionSequence:I

.field private mAnimating:Z

.field final mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field mAppWindowAnimating:Z

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mForceHiding:I

.field mInitialized:Z

.field mKeyguardGoingAway:Z

.field mKeyguardGoingAwayFlags:I

.field private mLastShowWinWhenLocked:Lcom/android/server/wm/WindowState;

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

.field private mRemoveReplacedWindows:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field private final mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/WindowAnimator;J)V
    .locals 1
    .param p1, "frameTimeNs"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->animateLocked(J)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 68
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    #@5
    .line 67
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 97
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@7
    .line 99
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@9
    .line 102
    new-instance v0, Landroid/util/SparseArray;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@f
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@11
    .line 104
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    #@13
    .line 116
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@15
    .line 120
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    #@17
    .line 122
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    #@19
    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    #@1c
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mTmpExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@1e
    .line 137
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@20
    .line 138
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@22
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    #@24
    .line 139
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@26
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@28
    .line 140
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@2a
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@2c
    .line 142
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    #@2e
    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    #@31
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    #@33
    .line 136
    return-void
.end method

.method private animateLocked(J)V
    .locals 25
    .param p1, "frameTimeNs"    # J

    #@0
    .prologue
    .line 700
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    #@4
    move/from16 v19, v0

    #@6
    if-nez v19, :cond_0

    #@8
    .line 701
    return-void

    #@9
    .line 704
    :cond_0
    const-wide/32 v20, 0xf4240

    #@c
    div-long v20, p1, v20

    #@e
    move-wide/from16 v0, v20

    #@10
    move-object/from16 v2, p0

    #@12
    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@14
    .line 705
    const/16 v19, 0x8

    #@16
    move/from16 v0, v19

    #@18
    move-object/from16 v1, p0

    #@1a
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@1c
    .line 706
    move-object/from16 v0, p0

    #@1e
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@20
    move/from16 v17, v0

    #@22
    .line 707
    .local v17, "wasAnimating":Z
    const/16 v19, 0x0

    #@24
    move-object/from16 v0, p0

    #@26
    move/from16 v1, v19

    #@28
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    #@2b
    .line 708
    const/16 v19, 0x0

    #@2d
    move/from16 v0, v19

    #@2f
    move-object/from16 v1, p0

    #@31
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@33
    .line 715
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@36
    .line 716
    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    #@39
    .line 718
    :try_start_0
    move-object/from16 v0, p0

    #@3b
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@3d
    move-object/from16 v19, v0

    #@3f
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    #@42
    move-result v14

    #@43
    .line 719
    .local v14, "numDisplays":I
    const/4 v12, 0x0

    #@44
    .local v12, "i":I
    :goto_0
    if-ge v12, v14, :cond_6

    #@46
    .line 720
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@4a
    move-object/from16 v19, v0

    #@4c
    move-object/from16 v0, v19

    #@4e
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    #@51
    move-result v7

    #@52
    .line 721
    .local v7, "displayId":I
    move-object/from16 v0, p0

    #@54
    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked(I)V

    #@57
    .line 722
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@5b
    move-object/from16 v19, v0

    #@5d
    move-object/from16 v0, v19

    #@5f
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@62
    move-result-object v5

    #@63
    check-cast v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@65
    .line 724
    .local v5, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@67
    move-object/from16 v16, v0

    #@69
    .line 726
    .local v16, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v16, :cond_1

    #@6b
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    #@6e
    move-result v19

    #@6f
    if-eqz v19, :cond_1

    #@71
    .line 727
    move-object/from16 v0, p0

    #@73
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@75
    move-wide/from16 v20, v0

    #@77
    move-object/from16 v0, v16

    #@79
    move-wide/from16 v1, v20

    #@7b
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    #@7e
    move-result v19

    #@7f
    if-eqz v19, :cond_2

    #@81
    .line 728
    const/16 v19, 0x1

    #@83
    move-object/from16 v0, p0

    #@85
    move/from16 v1, v19

    #@87
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    #@8a
    .line 747
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    #@8c
    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    #@8f
    .line 748
    move-object/from16 v0, p0

    #@91
    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    #@94
    .line 750
    move-object/from16 v0, p0

    #@96
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@98
    move-object/from16 v19, v0

    #@9a
    move-object/from16 v0, v19

    #@9c
    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    #@9f
    move-result-object v18

    #@a0
    .line 751
    .local v18, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowList;->size()I

    #@a3
    move-result v4

    #@a4
    .line 752
    .local v4, "N":I
    const/4 v13, 0x0

    #@a5
    .local v13, "j":I
    :goto_2
    if-ge v13, v4, :cond_5

    #@a7
    .line 753
    move-object/from16 v0, v18

    #@a9
    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@ac
    move-result-object v19

    #@ad
    check-cast v19, Lcom/android/server/wm/WindowState;

    #@af
    move-object/from16 v0, v19

    #@b1
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@b3
    move-object/from16 v19, v0

    #@b5
    const/16 v20, 0x1

    #@b7
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    #@ba
    .line 752
    add-int/lit8 v13, v13, 0x1

    #@bc
    goto :goto_2

    #@bd
    .line 730
    .end local v4    # "N":I
    .end local v13    # "j":I
    .end local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_2
    move-object/from16 v0, p0

    #@bf
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@c1
    move/from16 v19, v0

    #@c3
    or-int/lit8 v19, v19, 0x1

    #@c5
    move/from16 v0, v19

    #@c7
    move-object/from16 v1, p0

    #@c9
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@cb
    .line 731
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    #@ce
    .line 732
    const/16 v19, 0x0

    #@d0
    move-object/from16 v0, v19

    #@d2
    iput-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@d4
    .line 735
    move-object/from16 v0, p0

    #@d6
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d8
    move-object/from16 v19, v0

    #@da
    move-object/from16 v0, v19

    #@dc
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@de
    move-object/from16 v19, v0

    #@e0
    if-eqz v19, :cond_1

    #@e2
    .line 736
    if-nez v7, :cond_1

    #@e4
    .line 739
    move-object/from16 v0, p0

    #@e6
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e8
    move-object/from16 v19, v0

    #@ea
    move-object/from16 v0, v19

    #@ec
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@ee
    move-object/from16 v19, v0

    #@f0
    .line 740
    move-object/from16 v0, p0

    #@f2
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@f4
    move-object/from16 v20, v0

    #@f6
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@f9
    move-result-object v20

    #@fa
    move-object/from16 v0, p0

    #@fc
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@fe
    move-object/from16 v21, v0

    #@100
    move-object/from16 v0, v21

    #@102
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    #@104
    move/from16 v21, v0

    #@106
    .line 739
    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@109
    goto :goto_1

    #@10a
    .line 789
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v12    # "i":I
    .end local v14    # "numDisplays":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_0
    move-exception v10

    #@10b
    .line 790
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v19, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    #@10d
    const-string/jumbo v20, "Unhandled exception in Window Manager"

    #@110
    move-object/from16 v0, v19

    #@112
    move-object/from16 v1, v20

    #@114
    invoke-static {v0, v1, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@117
    .line 792
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@11a
    .line 797
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :goto_3
    const/4 v11, 0x0

    #@11b
    .line 798
    .local v11, "hasPendingLayoutChanges":Z
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@11f
    move-object/from16 v19, v0

    #@121
    move-object/from16 v0, v19

    #@123
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@125
    move-object/from16 v19, v0

    #@127
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    #@12a
    move-result v14

    #@12b
    .line 799
    .restart local v14    # "numDisplays":I
    const/4 v8, 0x0

    #@12c
    .local v8, "displayNdx":I
    :goto_4
    if-ge v8, v14, :cond_d

    #@12e
    .line 800
    move-object/from16 v0, p0

    #@130
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@132
    move-object/from16 v19, v0

    #@134
    move-object/from16 v0, v19

    #@136
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@138
    move-object/from16 v19, v0

    #@13a
    move-object/from16 v0, v19

    #@13c
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@13f
    move-result-object v6

    #@140
    check-cast v6, Lcom/android/server/wm/DisplayContent;

    #@142
    .line 801
    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    #@145
    move-result v19

    #@146
    move-object/from16 v0, p0

    #@148
    move/from16 v1, v19

    #@14a
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    #@14d
    move-result v15

    #@14e
    .line 802
    .local v15, "pendingChanges":I
    and-int/lit8 v19, v15, 0x4

    #@150
    if-eqz v19, :cond_3

    #@152
    .line 803
    move-object/from16 v0, p0

    #@154
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@156
    move/from16 v19, v0

    #@158
    or-int/lit8 v19, v19, 0x20

    #@15a
    move/from16 v0, v19

    #@15c
    move-object/from16 v1, p0

    #@15e
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@160
    .line 805
    :cond_3
    if-eqz v15, :cond_4

    #@162
    .line 806
    const/4 v11, 0x1

    #@163
    .line 799
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@165
    goto :goto_4

    #@166
    .line 719
    .end local v6    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "displayNdx":I
    .end local v11    # "hasPendingLayoutChanges":Z
    .end local v15    # "pendingChanges":I
    .restart local v4    # "N":I
    .restart local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v7    # "displayId":I
    .restart local v12    # "i":I
    .restart local v13    # "j":I
    .restart local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    #@168
    goto/16 :goto_0

    #@16a
    .line 757
    .end local v4    # "N":I
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v13    # "j":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_6
    const/4 v12, 0x0

    #@16b
    :goto_5
    if-ge v12, v14, :cond_9

    #@16d
    .line 758
    :try_start_2
    move-object/from16 v0, p0

    #@16f
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@171
    move-object/from16 v19, v0

    #@173
    move-object/from16 v0, v19

    #@175
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    #@178
    move-result v7

    #@179
    .line 760
    .restart local v7    # "displayId":I
    move-object/from16 v0, p0

    #@17b
    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked(I)V

    #@17e
    .line 763
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@182
    move-object/from16 v19, v0

    #@184
    move-object/from16 v0, v19

    #@186
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@189
    move-result-object v19

    #@18a
    check-cast v19, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@18c
    .line 762
    move-object/from16 v0, v19

    #@18e
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@190
    move-object/from16 v16, v0

    #@192
    .line 764
    .restart local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v16, :cond_7

    #@194
    .line 765
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    #@197
    .line 768
    :cond_7
    move-object/from16 v0, p0

    #@199
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@19b
    move-object/from16 v19, v0

    #@19d
    move-object/from16 v0, v19

    #@19f
    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@1a2
    move-result-object v19

    #@1a3
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->animateDimLayers()Z

    #@1a6
    move-result v19

    #@1a7
    move-object/from16 v0, p0

    #@1a9
    move/from16 v1, v19

    #@1ab
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    #@1ae
    .line 769
    move-object/from16 v0, p0

    #@1b0
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1b2
    move-object/from16 v19, v0

    #@1b4
    move-object/from16 v0, v19

    #@1b6
    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@1b9
    move-result-object v19

    #@1ba
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    #@1bd
    move-result-object v19

    #@1be
    .line 770
    move-object/from16 v0, p0

    #@1c0
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@1c2
    move-wide/from16 v20, v0

    #@1c4
    .line 769
    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wm/DockedStackDividerController;->animate(J)Z

    #@1c7
    move-result v19

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    move/from16 v1, v19

    #@1cc
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    #@1cf
    .line 772
    move-object/from16 v0, p0

    #@1d1
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1d3
    move-object/from16 v19, v0

    #@1d5
    move-object/from16 v0, v19

    #@1d7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@1d9
    move-object/from16 v19, v0

    #@1db
    if-eqz v19, :cond_8

    #@1dd
    .line 773
    if-nez v7, :cond_8

    #@1df
    .line 774
    move-object/from16 v0, p0

    #@1e1
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1e3
    move-object/from16 v19, v0

    #@1e5
    move-object/from16 v0, v19

    #@1e7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@1e9
    move-object/from16 v19, v0

    #@1eb
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeededLocked()V

    #@1ee
    .line 757
    :cond_8
    add-int/lit8 v12, v12, 0x1

    #@1f0
    goto/16 :goto_5

    #@1f2
    .line 778
    .end local v7    # "displayId":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_9
    move-object/from16 v0, p0

    #@1f4
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1f6
    move-object/from16 v19, v0

    #@1f8
    move-object/from16 v0, v19

    #@1fa
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@1fc
    move-object/from16 v19, v0

    #@1fe
    if-eqz v19, :cond_a

    #@200
    .line 779
    move-object/from16 v0, p0

    #@202
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@204
    move/from16 v19, v0

    #@206
    move-object/from16 v0, p0

    #@208
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@20a
    move-object/from16 v20, v0

    #@20c
    move-object/from16 v0, v20

    #@20e
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@210
    move-object/from16 v20, v0

    #@212
    move-object/from16 v0, p0

    #@214
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@216
    move-wide/from16 v22, v0

    #@218
    move-object/from16 v0, v20

    #@21a
    move-wide/from16 v1, v22

    #@21c
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DragState;->stepAnimationLocked(J)Z

    #@21f
    move-result v20

    #@220
    or-int v19, v19, v20

    #@222
    move/from16 v0, v19

    #@224
    move-object/from16 v1, p0

    #@226
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@228
    .line 782
    :cond_a
    move-object/from16 v0, p0

    #@22a
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@22c
    move/from16 v19, v0

    #@22e
    if-eqz v19, :cond_b

    #@230
    .line 783
    move-object/from16 v0, p0

    #@232
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@234
    move-object/from16 v19, v0

    #@236
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@239
    .line 786
    :cond_b
    move-object/from16 v0, p0

    #@23b
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@23d
    move-object/from16 v19, v0

    #@23f
    move-object/from16 v0, v19

    #@241
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    #@243
    move-object/from16 v19, v0

    #@245
    if-eqz v19, :cond_c

    #@247
    .line 787
    move-object/from16 v0, p0

    #@249
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@24b
    move-object/from16 v19, v0

    #@24d
    move-object/from16 v0, v19

    #@24f
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    #@251
    move-object/from16 v19, v0

    #@253
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@256
    .line 792
    :cond_c
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@259
    goto/16 :goto_3

    #@25b
    .line 791
    .end local v12    # "i":I
    .end local v14    # "numDisplays":I
    :catchall_0
    move-exception v19

    #@25c
    .line 792
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@25f
    .line 791
    throw v19

    #@260
    .line 810
    .restart local v8    # "displayNdx":I
    .restart local v11    # "hasPendingLayoutChanges":Z
    .restart local v14    # "numDisplays":I
    :cond_d
    const/4 v9, 0x0

    #@261
    .line 811
    .local v9, "doRequest":Z
    move-object/from16 v0, p0

    #@263
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@265
    move/from16 v19, v0

    #@267
    if-eqz v19, :cond_e

    #@269
    .line 812
    move-object/from16 v0, p0

    #@26b
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@26d
    move-object/from16 v19, v0

    #@26f
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowSurfacePlacer;->copyAnimToLayoutParamsLocked()Z

    #@272
    move-result v9

    #@273
    .line 815
    .end local v9    # "doRequest":Z
    :cond_e
    if-nez v11, :cond_f

    #@275
    if-eqz v9, :cond_10

    #@277
    .line 816
    :cond_f
    move-object/from16 v0, p0

    #@279
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@27b
    move-object/from16 v19, v0

    #@27d
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    #@280
    .line 819
    :cond_10
    move-object/from16 v0, p0

    #@282
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@284
    move/from16 v19, v0

    #@286
    if-eqz v19, :cond_11

    #@288
    if-eqz v17, :cond_14

    #@28a
    .line 823
    :cond_11
    :goto_6
    move-object/from16 v0, p0

    #@28c
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@28e
    move/from16 v19, v0

    #@290
    if-nez v19, :cond_12

    #@292
    if-eqz v17, :cond_12

    #@294
    .line 824
    move-object/from16 v0, p0

    #@296
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@298
    move-object/from16 v19, v0

    #@29a
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    #@29d
    .line 825
    const-wide/16 v20, 0x20

    #@29f
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@2a2
    move-result v19

    #@2a3
    if-eqz v19, :cond_12

    #@2a5
    .line 826
    const-string/jumbo v19, "animating"

    #@2a8
    const-wide/16 v20, 0x20

    #@2aa
    const/16 v22, 0x0

    #@2ac
    move-wide/from16 v0, v20

    #@2ae
    move-object/from16 v2, v19

    #@2b0
    move/from16 v3, v22

    #@2b2
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@2b5
    .line 830
    :cond_12
    move-object/from16 v0, p0

    #@2b7
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    #@2b9
    move/from16 v19, v0

    #@2bb
    if-eqz v19, :cond_13

    #@2bd
    .line 831
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->removeReplacedWindowsLocked()V

    #@2c0
    .line 834
    :cond_13
    move-object/from16 v0, p0

    #@2c2
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2c4
    move-object/from16 v19, v0

    #@2c6
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->stopUsingSavedSurfaceLocked()V

    #@2c9
    .line 835
    move-object/from16 v0, p0

    #@2cb
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2cd
    move-object/from16 v19, v0

    #@2cf
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->destroyPreservedSurfaceLocked()V

    #@2d2
    .line 836
    move-object/from16 v0, p0

    #@2d4
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2d6
    move-object/from16 v19, v0

    #@2d8
    move-object/from16 v0, v19

    #@2da
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@2dc
    move-object/from16 v19, v0

    #@2de
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowSurfacePlacer;->destroyPendingSurfaces()V

    #@2e1
    .line 699
    return-void

    #@2e2
    .line 819
    :cond_14
    const-wide/16 v20, 0x20

    #@2e4
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@2e7
    move-result v19

    #@2e8
    if-eqz v19, :cond_11

    #@2ea
    .line 820
    const-string/jumbo v19, "animating"

    #@2ed
    const-wide/16 v20, 0x20

    #@2ef
    const/16 v22, 0x0

    #@2f1
    move-wide/from16 v0, v20

    #@2f3
    move-object/from16 v2, v19

    #@2f5
    move/from16 v3, v22

    #@2f7
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@2fa
    goto :goto_6
.end method

.method private static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "bulkUpdateParams"    # I

    #@0
    .prologue
    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 868
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 869
    const-string/jumbo v1, " UPDATE_ROTATION"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 871
    :cond_0
    and-int/lit8 v1, p0, 0x2

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 872
    const-string/jumbo v1, " WALLPAPER_MAY_CHANGE"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 874
    :cond_1
    and-int/lit8 v1, p0, 0x4

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 875
    const-string/jumbo v1, " FORCE_HIDING_CHANGED"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 877
    :cond_2
    and-int/lit8 v1, p0, 0x8

    #@27
    if-eqz v1, :cond_3

    #@29
    .line 878
    const-string/jumbo v1, " ORIENTATION_CHANGE_COMPLETE"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 880
    :cond_3
    and-int/lit8 v1, p0, 0x10

    #@31
    if-eqz v1, :cond_4

    #@33
    .line 881
    const-string/jumbo v1, " TURN_ON_SCREEN"

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 883
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    return-object v1
.end method

.method private forceHidingToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "KEYGUARD STATE UNKNOWN "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 129
    :pswitch_0
    const-string/jumbo v0, "KEYGUARD_NOT_SHOWN"

    #@1f
    return-object v0

    #@20
    .line 130
    :pswitch_1
    const-string/jumbo v0, "KEYGUARD_SHOWN"

    #@23
    return-object v0

    #@24
    .line 131
    :pswitch_2
    const-string/jumbo v0, "KEYGUARD_ANIMATING_OUT"

    #@27
    return-object v0

    #@28
    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .locals 3
    .param p1, "displayId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 966
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@9
    .line 967
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_0

    #@b
    .line 968
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@d
    .end local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;)V

    #@10
    .line 969
    .restart local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@15
    .line 971
    :cond_0
    return-object v0
.end method

.method private getWinShowWhenLockedOrAnimating()Lcom/android/server/wm/WindowState;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 232
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@3
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@9
    .line 233
    .local v0, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    #@b
    .line 234
    return-object v0

    #@c
    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLastShowWinWhenLocked:Lcom/android/server/wm/WindowState;

    #@e
    if-eqz v1, :cond_1

    #@10
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLastShowWinWhenLocked:Lcom/android/server/wm/WindowState;

    #@12
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 237
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLastShowWinWhenLocked:Lcom/android/server/wm/WindowState;

    #@1a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    #@1d
    move-result v1

    #@1e
    .line 236
    if-eqz v1, :cond_1

    #@20
    .line 238
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLastShowWinWhenLocked:Lcom/android/server/wm/WindowState;

    #@22
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@24
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@26
    const/high16 v2, 0x80000

    #@28
    and-int/2addr v1, v2

    #@29
    if-eqz v1, :cond_1

    #@2b
    .line 239
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLastShowWinWhenLocked:Lcom/android/server/wm/WindowState;

    #@2d
    return-object v1

    #@2e
    .line 241
    :cond_1
    return-object v3
.end method

.method private removeReplacedWindowsLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 849
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@4
    .line 851
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@b
    move-result v4

    #@c
    add-int/lit8 v1, v4, -0x1

    #@e
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@10
    .line 852
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@12
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/wm/DisplayContent;

    #@1a
    .line 853
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1c
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    #@1f
    move-result v5

    #@20
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    #@23
    move-result-object v3

    #@24
    .line 854
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@27
    move-result v4

    #@28
    add-int/lit8 v2, v4, -0x1

    #@2a
    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    #@2c
    .line 855
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@32
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->maybeRemoveReplacedWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 854
    add-int/lit8 v2, v2, -0x1

    #@37
    goto :goto_1

    #@38
    .line 851
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@3a
    goto :goto_0

    #@3b
    .line 859
    .end local v0    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "j":I
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_1
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@3e
    .line 863
    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    #@40
    .line 846
    return-void

    #@41
    .line 858
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    #@42
    .line 859
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@45
    .line 858
    throw v4
.end method

.method private shouldForceHide(Lcom/android/server/wm/WindowState;)Z
    .locals 12
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/high16 v11, 0x80000

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 245
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget-object v3, v8, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    #@8
    .line 246
    .local v3, "imeTarget":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_7

    #@a
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    #@d
    move-result v8

    #@e
    if-eqz v8, :cond_7

    #@10
    .line 247
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@13
    move-result-object v8

    #@14
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@16
    and-int/2addr v8, v11

    #@17
    if-nez v8, :cond_5

    #@19
    .line 248
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@1b
    iget-object v10, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1d
    invoke-interface {v8, v3, v10}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    #@20
    move-result v8

    #@21
    if-eqz v8, :cond_6

    #@23
    const/4 v5, 0x0

    #@24
    .line 250
    .local v5, "showImeOverKeyguard":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->getWinShowWhenLockedOrAnimating()Lcom/android/server/wm/WindowState;

    #@27
    move-result-object v6

    #@28
    .line 251
    .local v6, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    if-nez v6, :cond_8

    #@2a
    .line 252
    const/4 v1, 0x0

    #@2b
    .line 256
    :goto_1
    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@2d
    if-nez v8, :cond_0

    #@2f
    if-ne v3, p1, :cond_9

    #@31
    :cond_0
    move v0, v5

    #@32
    .line 258
    .local v0, "allowWhenLocked":Z
    :goto_2
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@34
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@36
    and-int/2addr v8, v11

    #@37
    if-eqz v8, :cond_a

    #@39
    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@3b
    :goto_3
    or-int/2addr v0, v8

    #@3c
    .line 260
    if-eqz v1, :cond_2

    #@3e
    .line 261
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@40
    if-eq v1, v8, :cond_1

    #@42
    .line 263
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@44
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@46
    and-int/2addr v8, v11

    #@47
    if-eqz v8, :cond_b

    #@49
    :cond_1
    move v8, v9

    #@4a
    .line 261
    :goto_4
    or-int/2addr v0, v8

    #@4b
    .line 271
    :cond_2
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@4d
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@4f
    const/high16 v10, 0x400000

    #@51
    and-int/2addr v8, v10

    #@52
    if-eqz v8, :cond_3

    #@54
    .line 272
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@56
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy;->canShowDismissingWindowWhileLockedLw()Z

    #@59
    move-result v7

    #@5a
    .line 271
    :cond_3
    or-int/2addr v0, v7

    #@5b
    .line 275
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@5d
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    #@60
    move-result v7

    #@61
    if-eqz v7, :cond_e

    #@63
    .line 276
    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@65
    const/4 v8, 0x2

    #@66
    if-eq v7, v8, :cond_d

    #@68
    const/4 v4, 0x1

    #@69
    .line 277
    .local v4, "keyguardOn":Z
    :goto_5
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@6b
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    #@6d
    const/16 v8, 0x7f2

    #@6f
    if-ne v7, v8, :cond_10

    #@71
    .line 278
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    #@78
    move-result-object v7

    #@79
    if-nez v7, :cond_f

    #@7b
    const/4 v2, 0x1

    #@7c
    .line 279
    .local v2, "hideDockDivider":Z
    :goto_6
    if-eqz v4, :cond_4

    #@7e
    if-eqz v0, :cond_11

    #@80
    :cond_4
    move v9, v2

    #@81
    :goto_7
    return v9

    #@82
    .line 247
    .end local v0    # "allowWhenLocked":Z
    .end local v2    # "hideDockDivider":Z
    .end local v4    # "keyguardOn":Z
    .end local v5    # "showImeOverKeyguard":Z
    .end local v6    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_5
    const/4 v5, 0x1

    #@83
    .restart local v5    # "showImeOverKeyguard":Z
    goto :goto_0

    #@84
    .line 248
    .end local v5    # "showImeOverKeyguard":Z
    :cond_6
    const/4 v5, 0x1

    #@85
    .restart local v5    # "showImeOverKeyguard":Z
    goto :goto_0

    #@86
    .line 246
    .end local v5    # "showImeOverKeyguard":Z
    :cond_7
    const/4 v5, 0x0

    #@87
    .restart local v5    # "showImeOverKeyguard":Z
    goto :goto_0

    #@88
    .line 252
    .restart local v6    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_8
    iget-object v1, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@8a
    .local v1, "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    goto :goto_1

    #@8b
    .end local v1    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :cond_9
    move v0, v7

    #@8c
    .line 256
    goto :goto_2

    #@8d
    .restart local v0    # "allowWhenLocked":Z
    :cond_a
    move v8, v7

    #@8e
    .line 258
    goto :goto_3

    #@8f
    .line 265
    :cond_b
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@91
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@93
    and-int/lit16 v8, v8, 0x100

    #@95
    if-eqz v8, :cond_c

    #@97
    move v8, v9

    #@98
    goto :goto_4

    #@99
    :cond_c
    move v8, v7

    #@9a
    goto :goto_4

    #@9b
    .line 276
    :cond_d
    const/4 v4, 0x0

    #@9c
    .restart local v4    # "keyguardOn":Z
    goto :goto_5

    #@9d
    .line 275
    .end local v4    # "keyguardOn":Z
    :cond_e
    const/4 v4, 0x0

    #@9e
    .restart local v4    # "keyguardOn":Z
    goto :goto_5

    #@9f
    .line 278
    :cond_f
    const/4 v2, 0x0

    #@a0
    .restart local v2    # "hideDockDivider":Z
    goto :goto_6

    #@a1
    .line 277
    .end local v2    # "hideDockDivider":Z
    :cond_10
    const/4 v2, 0x0

    #@a2
    .restart local v2    # "hideDockDivider":Z
    goto :goto_6

    #@a3
    .line 279
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@a6
    move-result v7

    #@a7
    if-nez v7, :cond_4

    #@a9
    goto :goto_7
.end method

.method private testTokenMayBeDrawnLocked(I)V
    .locals 12
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 655
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@5
    move-result-object v9

    #@6
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    #@9
    move-result-object v5

    #@a
    .line 656
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v2

    #@e
    .line 657
    .local v2, "numTasks":I
    const/4 v4, 0x0

    #@f
    .local v4, "taskNdx":I
    :goto_0
    if-ge v4, v2, :cond_3

    #@11
    .line 658
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v9

    #@15
    check-cast v9, Lcom/android/server/wm/Task;

    #@17
    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@19
    .line 659
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    #@1c
    move-result v3

    #@1d
    .line 660
    .local v3, "numTokens":I
    const/4 v6, 0x0

    #@1e
    .local v6, "tokenNdx":I
    :goto_1
    if-ge v6, v3, :cond_2

    #@20
    .line 661
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v8

    #@24
    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    #@26
    .line 662
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@28
    .line 663
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v0, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@2a
    .line 664
    .local v0, "allDrawn":Z
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    #@2c
    if-eq v0, v9, :cond_0

    #@2e
    .line 665
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    #@30
    .line 666
    if-eqz v0, :cond_0

    #@32
    .line 669
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    #@34
    if-eqz v9, :cond_1

    #@36
    .line 670
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    #@39
    .line 671
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3b
    const/4 v10, 0x0

    #@3c
    const/4 v11, 0x1

    #@3d
    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    #@40
    .line 680
    const-string/jumbo v9, "testTokenMayBeDrawnLocked: freezingScreen"

    #@43
    .line 679
    const/4 v10, 0x4

    #@44
    .line 678
    invoke-virtual {p0, v1, v10, v9, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    #@47
    .line 660
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 684
    :cond_1
    const-string/jumbo v9, "testTokenMayBeDrawnLocked"

    #@4d
    .line 683
    const/16 v10, 0x8

    #@4f
    .line 682
    invoke-virtual {p0, v1, v10, v9, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    #@52
    .line 687
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@54
    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@56
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@59
    move-result v9

    #@5a
    if-nez v9, :cond_0

    #@5c
    .line 688
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    #@5f
    move-result v9

    #@60
    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    #@63
    goto :goto_2

    #@64
    .line 657
    .end local v0    # "allDrawn":Z
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@66
    goto :goto_0

    #@67
    .line 652
    .end local v3    # "numTokens":I
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_3
    return-void
.end method

.method private updateAppWindowsLocked(I)V
    .locals 14
    .param p1, "displayId"    # I

    #@0
    .prologue
    const/4 v13, 0x4

    #@1
    const/4 v12, 0x1

    #@2
    .line 173
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    invoke-virtual {v10, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@7
    move-result-object v10

    #@8
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    #@b
    move-result-object v5

    #@c
    .line 174
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v10

    #@10
    add-int/lit8 v4, v10, -0x1

    #@12
    .local v4, "stackNdx":I
    :goto_0
    if-ltz v4, :cond_8

    #@14
    .line 175
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Lcom/android/server/wm/TaskStack;

    #@1a
    .line 176
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@1d
    move-result-object v7

    #@1e
    .line 177
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v10

    #@22
    add-int/lit8 v6, v10, -0x1

    #@24
    .local v6, "taskNdx":I
    :goto_1
    if-ltz v6, :cond_3

    #@26
    .line 178
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v10

    #@2a
    check-cast v10, Lcom/android/server/wm/Task;

    #@2c
    iget-object v9, v10, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@2e
    .line 179
    .local v9, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v9}, Lcom/android/server/wm/AppTokenList;->size()I

    #@31
    move-result v10

    #@32
    add-int/lit8 v8, v10, -0x1

    #@34
    .local v8, "tokenNdx":I
    :goto_2
    if-ltz v8, :cond_2

    #@36
    .line 180
    invoke-virtual {v9, v8}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v10

    #@3a
    check-cast v10, Lcom/android/server/wm/AppWindowToken;

    #@3c
    iget-object v0, v10, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@3e
    .line 181
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v10, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@40
    iput-boolean v10, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    #@42
    .line 182
    iget-wide v10, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@44
    invoke-virtual {v0, v10, v11, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    #@47
    move-result v10

    #@48
    if-eqz v10, :cond_1

    #@4a
    .line 183
    iput-boolean v12, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@4c
    .line 184
    invoke-virtual {p0, v12}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    #@4f
    .line 185
    iput-boolean v12, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@51
    .line 179
    :cond_0
    :goto_3
    add-int/lit8 v8, v8, -0x1

    #@53
    goto :goto_2

    #@54
    .line 186
    :cond_1
    iget-boolean v10, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    #@56
    if-eqz v10, :cond_0

    #@58
    .line 190
    new-instance v10, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v11, "appToken "

    #@60
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v10

    #@64
    iget-object v11, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@66
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v10

    #@6a
    const-string/jumbo v11, " done"

    #@6d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v10

    #@71
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v10

    #@75
    .line 188
    invoke-virtual {p0, v0, v13, v10, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    #@78
    goto :goto_3

    #@79
    .line 177
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_2
    add-int/lit8 v6, v6, -0x1

    #@7b
    goto :goto_1

    #@7c
    .line 197
    .end local v8    # "tokenNdx":I
    .end local v9    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_3
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mTmpExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@7e
    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->clear()V

    #@81
    .line 198
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mTmpExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@83
    iget-object v11, v3, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@85
    invoke-virtual {v10, v11}, Lcom/android/server/wm/AppTokenList;->addAll(Ljava/util/Collection;)Z

    #@88
    .line 200
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mTmpExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@8a
    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    #@8d
    move-result v1

    #@8e
    .line 201
    .local v1, "exitingCount":I
    const/4 v2, 0x0

    #@8f
    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_7

    #@91
    .line 202
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mTmpExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@93
    invoke-virtual {v10, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@96
    move-result-object v10

    #@97
    check-cast v10, Lcom/android/server/wm/AppWindowToken;

    #@99
    iget-object v0, v10, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@9b
    .line 207
    .restart local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-object v10, v3, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@9d
    invoke-virtual {v10, v0}, Lcom/android/server/wm/AppTokenList;->contains(Ljava/lang/Object;)Z

    #@a0
    move-result v10

    #@a1
    if-nez v10, :cond_5

    #@a3
    .line 201
    :cond_4
    :goto_5
    add-int/lit8 v2, v2, 0x1

    #@a5
    goto :goto_4

    #@a6
    .line 210
    :cond_5
    iget-boolean v10, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@a8
    iput-boolean v10, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    #@aa
    .line 211
    iget-wide v10, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@ac
    invoke-virtual {v0, v10, v11, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    #@af
    move-result v10

    #@b0
    if-eqz v10, :cond_6

    #@b2
    .line 212
    invoke-virtual {p0, v12}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    #@b5
    .line 213
    iput-boolean v12, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@b7
    goto :goto_5

    #@b8
    .line 214
    :cond_6
    iget-boolean v10, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    #@ba
    if-eqz v10, :cond_4

    #@bc
    .line 218
    new-instance v10, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v11, "exiting appToken "

    #@c4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v10

    #@c8
    iget-object v11, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@ca
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v10

    #@ce
    const-string/jumbo v11, " done"

    #@d1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v10

    #@d5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v10

    #@d9
    .line 216
    invoke-virtual {p0, v0, v13, v10, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    #@dc
    goto :goto_5

    #@dd
    .line 174
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_7
    add-int/lit8 v4, v4, -0x1

    #@df
    goto/16 :goto_0

    #@e1
    .line 172
    .end local v1    # "exitingCount":I
    .end local v2    # "i":I
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v6    # "taskNdx":I
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_8
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .locals 11
    .param p1, "displayId"    # I

    #@0
    .prologue
    const/high16 v10, 0x100000

    #@2
    .line 586
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@7
    move-result-object v9

    #@8
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    #@b
    .line 588
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d
    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    #@10
    move-result-object v8

    #@11
    .line 589
    .local v8, "windows":Lcom/android/server/wm/WindowList;
    const/4 v2, 0x0

    #@12
    .line 591
    .local v2, "detachedWallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    #@15
    move-result v9

    #@16
    add-int/lit8 v4, v9, -0x1

    #@18
    .end local v2    # "detachedWallpaper":Lcom/android/server/wm/WindowState;
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_5

    #@1a
    .line 592
    invoke-virtual {v8, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v6

    #@1e
    check-cast v6, Lcom/android/server/wm/WindowState;

    #@20
    .line 593
    .local v6, "win":Lcom/android/server/wm/WindowState;
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@22
    .line 594
    .local v7, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@24
    if-eqz v9, :cond_4

    #@26
    invoke-virtual {v7}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    #@29
    move-result v9

    #@2a
    if-eqz v9, :cond_4

    #@2c
    .line 598
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2e
    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@30
    .line 603
    .local v3, "flags":I
    iget-boolean v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@32
    if-eqz v9, :cond_2

    #@34
    .line 604
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@36
    if-eqz v9, :cond_1

    #@38
    .line 605
    and-int v9, v3, v10

    #@3a
    if-eqz v9, :cond_0

    #@3c
    .line 606
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@3e
    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    #@41
    move-result v9

    #@42
    .line 605
    if-eqz v9, :cond_0

    #@44
    .line 607
    move-object v2, v6

    #@45
    .line 609
    :cond_0
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@47
    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    #@4a
    move-result v1

    #@4b
    .line 610
    .local v1, "color":I
    if-eqz v1, :cond_1

    #@4d
    .line 611
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@50
    move-result-object v5

    #@51
    .line 612
    .local v5, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_1

    #@53
    .line 613
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    #@56
    .line 617
    .end local v1    # "color":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    const/4 v9, 0x1

    #@57
    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    #@5a
    .line 623
    :cond_2
    iget-object v0, v7, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@5c
    .line 624
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v0, :cond_4

    #@5e
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@60
    if-eqz v9, :cond_4

    #@62
    .line 625
    iget-boolean v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@64
    .line 624
    if-eqz v9, :cond_4

    #@66
    .line 626
    and-int v9, v3, v10

    #@68
    if-eqz v9, :cond_3

    #@6a
    .line 627
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@6c
    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    #@6f
    move-result v9

    #@70
    .line 626
    if-eqz v9, :cond_3

    #@72
    .line 628
    move-object v2, v6

    #@73
    .line 631
    :cond_3
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@75
    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    #@78
    move-result v1

    #@79
    .line 632
    .restart local v1    # "color":I
    if-eqz v1, :cond_4

    #@7b
    .line 633
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@7e
    move-result-object v5

    #@7f
    .line 634
    .restart local v5    # "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_4

    #@81
    .line 635
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    #@84
    .line 591
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v1    # "color":I
    .end local v3    # "flags":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    #@86
    goto :goto_0

    #@87
    .line 641
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    .end local v7    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@89
    if-eq v9, v2, :cond_6

    #@8b
    .line 645
    iput-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@8d
    .line 646
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@8f
    or-int/lit8 v9, v9, 0x2

    #@91
    iput v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@93
    .line 585
    :cond_6
    return-void
.end method

.method private updateWindowsLocked(I)V
    .locals 34
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 284
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    #@4
    move/from16 v29, v0

    #@6
    add-int/lit8 v29, v29, 0x1

    #@8
    move/from16 v0, v29

    #@a
    move-object/from16 v1, p0

    #@c
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    #@e
    .line 286
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@12
    move-object/from16 v29, v0

    #@14
    move-object/from16 v0, v29

    #@16
    move/from16 v1, p1

    #@18
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    #@1b
    move-result-object v28

    #@1c
    .line 289
    .local v28, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    #@1e
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayFlags:I

    #@20
    move/from16 v29, v0

    #@22
    and-int/lit8 v29, v29, 0x1

    #@24
    if-eqz v29, :cond_0

    #@26
    const/4 v14, 0x1

    #@27
    .line 291
    .local v14, "keyguardGoingAwayToShade":Z
    :goto_0
    move-object/from16 v0, p0

    #@29
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayFlags:I

    #@2b
    move/from16 v29, v0

    #@2d
    and-int/lit8 v29, v29, 0x2

    #@2f
    if-eqz v29, :cond_1

    #@31
    const/4 v13, 0x1

    #@32
    .line 293
    .local v13, "keyguardGoingAwayNoAnimation":Z
    :goto_1
    move-object/from16 v0, p0

    #@34
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayFlags:I

    #@36
    move/from16 v29, v0

    #@38
    and-int/lit8 v29, v29, 0x4

    #@3a
    if-eqz v29, :cond_2

    #@3c
    const/4 v15, 0x1

    #@3d
    .line 295
    .local v15, "keyguardGoingAwayWithWallpaper":Z
    :goto_2
    move-object/from16 v0, p0

    #@3f
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@41
    move/from16 v29, v0

    #@43
    if-eqz v29, :cond_4

    #@45
    .line 296
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowList;->size()I

    #@48
    move-result v29

    #@49
    add-int/lit8 v12, v29, -0x1

    #@4b
    .local v12, "i":I
    :goto_3
    if-ltz v12, :cond_4

    #@4d
    .line 297
    move-object/from16 v0, v28

    #@4f
    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v25

    #@53
    check-cast v25, Lcom/android/server/wm/WindowState;

    #@55
    .line 298
    .local v25, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@59
    move-object/from16 v29, v0

    #@5b
    move-object/from16 v0, v25

    #@5d
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@5f
    move-object/from16 v30, v0

    #@61
    invoke-interface/range {v29 .. v30}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    #@64
    move-result v29

    #@65
    if-nez v29, :cond_3

    #@67
    .line 296
    add-int/lit8 v12, v12, -0x1

    #@69
    goto :goto_3

    #@6a
    .line 289
    .end local v12    # "i":I
    .end local v13    # "keyguardGoingAwayNoAnimation":Z
    .end local v14    # "keyguardGoingAwayToShade":Z
    .end local v15    # "keyguardGoingAwayWithWallpaper":Z
    .end local v25    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v14, 0x0

    #@6b
    .restart local v14    # "keyguardGoingAwayToShade":Z
    goto :goto_0

    #@6c
    .line 291
    :cond_1
    const/4 v13, 0x0

    #@6d
    .restart local v13    # "keyguardGoingAwayNoAnimation":Z
    goto :goto_1

    #@6e
    .line 293
    :cond_2
    const/4 v15, 0x0

    #@6f
    .restart local v15    # "keyguardGoingAwayWithWallpaper":Z
    goto :goto_2

    #@70
    .line 301
    .restart local v12    # "i":I
    .restart local v25    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    move-object/from16 v0, v25

    #@72
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@74
    move-object/from16 v26, v0

    #@76
    .line 302
    .local v26, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v25

    #@78
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@7a
    move-object/from16 v29, v0

    #@7c
    move-object/from16 v0, v29

    #@7e
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@80
    move/from16 v29, v0

    #@82
    move/from16 v0, v29

    #@84
    and-int/lit16 v0, v0, 0x400

    #@86
    move/from16 v29, v0

    #@88
    if-eqz v29, :cond_d

    #@8a
    .line 303
    move-object/from16 v0, v26

    #@8c
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@8e
    move/from16 v29, v0

    #@90
    if-nez v29, :cond_4

    #@92
    .line 308
    new-instance v29, Landroid/view/animation/AlphaAnimation;

    #@94
    const/high16 v30, 0x3f800000    # 1.0f

    #@96
    const/high16 v31, 0x3f800000    # 1.0f

    #@98
    invoke-direct/range {v29 .. v31}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@9b
    move-object/from16 v0, v29

    #@9d
    move-object/from16 v1, v26

    #@9f
    iput-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@a1
    .line 309
    move-object/from16 v0, v26

    #@a3
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@a5
    move-object/from16 v29, v0

    #@a7
    const-wide/16 v30, 0x3e8

    #@a9
    invoke-virtual/range {v29 .. v31}, Landroid/view/animation/Animation;->setDuration(J)V

    #@ac
    .line 310
    const/16 v29, 0x0

    #@ae
    move/from16 v0, v29

    #@b0
    move-object/from16 v1, v26

    #@b2
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@b4
    .line 311
    const-wide/16 v30, -0x1

    #@b6
    move-wide/from16 v0, v30

    #@b8
    move-object/from16 v2, v26

    #@ba
    iput-wide v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    #@bc
    .line 312
    const/16 v29, 0x1

    #@be
    move/from16 v0, v29

    #@c0
    move-object/from16 v1, v26

    #@c2
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@c4
    .line 313
    move-object/from16 v0, v26

    #@c6
    iput-boolean v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    #@c8
    .line 326
    .end local v12    # "i":I
    .end local v25    # "win":Lcom/android/server/wm/WindowState;
    .end local v26    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_4
    :goto_4
    const/16 v29, 0x0

    #@ca
    move/from16 v0, v29

    #@cc
    move-object/from16 v1, p0

    #@ce
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@d0
    .line 328
    const/16 v23, 0x0

    #@d2
    .line 329
    .local v23, "wallpaperInUnForceHiding":Z
    const/16 v18, 0x0

    #@d4
    .line 330
    .local v18, "startingInUnForceHiding":Z
    const/16 v19, 0x0

    #@d6
    .line 331
    .local v19, "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/16 v21, 0x0

    #@d8
    .line 332
    .local v21, "wallpaper":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    #@da
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@dc
    move-object/from16 v29, v0

    #@de
    move-object/from16 v0, v29

    #@e0
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@e2
    move-object/from16 v22, v0

    #@e4
    .line 333
    .local v22, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowList;->size()I

    #@e7
    move-result v29

    #@e8
    add-int/lit8 v12, v29, -0x1

    #@ea
    .end local v19    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .end local v21    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v12    # "i":I
    :goto_5
    if-ltz v12, :cond_21

    #@ec
    .line 334
    move-object/from16 v0, v28

    #@ee
    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f1
    move-result-object v25

    #@f2
    check-cast v25, Lcom/android/server/wm/WindowState;

    #@f4
    .line 335
    .restart local v25    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v25

    #@f6
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@f8
    move-object/from16 v26, v0

    #@fa
    .line 336
    .restart local v26    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v25

    #@fc
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@fe
    move-object/from16 v29, v0

    #@100
    move-object/from16 v0, v29

    #@102
    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@104
    .line 337
    .local v11, "flags":I
    move-object/from16 v0, p0

    #@106
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@108
    move-object/from16 v29, v0

    #@10a
    move-object/from16 v0, v25

    #@10c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@10e
    move-object/from16 v30, v0

    #@110
    move-object/from16 v0, v29

    #@112
    move-object/from16 v1, v25

    #@114
    move-object/from16 v2, v30

    #@116
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    #@119
    move-result v8

    #@11a
    .line 338
    .local v8, "canBeForceHidden":Z
    move-object/from16 v0, p0

    #@11c
    move-object/from16 v1, v25

    #@11e
    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimator;->shouldForceHide(Lcom/android/server/wm/WindowState;)Z

    #@121
    move-result v17

    #@122
    .line 339
    .local v17, "shouldBeForceHidden":Z
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    #@125
    move-result v29

    #@126
    if-eqz v29, :cond_1f

    #@128
    .line 340
    move-object/from16 v0, v26

    #@12a
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    #@12c
    move/from16 v24, v0

    #@12e
    .line 341
    .local v24, "wasAnimating":Z
    move-object/from16 v0, p0

    #@130
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@132
    move-wide/from16 v30, v0

    #@134
    move-object/from16 v0, v26

    #@136
    move-wide/from16 v1, v30

    #@138
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    #@13b
    move-result v16

    #@13c
    .line 342
    .local v16, "nowAnimating":Z
    move/from16 v0, v16

    #@13e
    move-object/from16 v1, v26

    #@140
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    #@142
    .line 343
    move-object/from16 v0, p0

    #@144
    move/from16 v1, v16

    #@146
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    #@149
    .line 350
    if-eqz v24, :cond_5

    #@14b
    move-object/from16 v0, v26

    #@14d
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@14f
    move/from16 v29, v0

    #@151
    if-eqz v29, :cond_e

    #@153
    .line 362
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    #@155
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@157
    move-object/from16 v29, v0

    #@159
    move-object/from16 v0, v25

    #@15b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@15d
    move-object/from16 v30, v0

    #@15f
    invoke-interface/range {v29 .. v30}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    #@162
    move-result v29

    #@163
    if-eqz v29, :cond_12

    #@165
    .line 363
    if-nez v24, :cond_f

    #@167
    if-eqz v16, :cond_f

    #@169
    .line 367
    move-object/from16 v0, p0

    #@16b
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@16d
    move/from16 v29, v0

    #@16f
    or-int/lit8 v29, v29, 0x4

    #@171
    move/from16 v0, v29

    #@173
    move-object/from16 v1, p0

    #@175
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@177
    .line 369
    const/16 v29, 0x4

    #@179
    .line 368
    move-object/from16 v0, p0

    #@17b
    move/from16 v1, p1

    #@17d
    move/from16 v2, v29

    #@17f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@182
    .line 375
    move-object/from16 v0, p0

    #@184
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@186
    move-object/from16 v29, v0

    #@188
    const/16 v30, 0x1

    #@18a
    move/from16 v0, v30

    #@18c
    move-object/from16 v1, v29

    #@18e
    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@190
    .line 382
    :cond_6
    :goto_7
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    #@193
    move-result v29

    #@194
    if-eqz v29, :cond_7

    #@196
    .line 383
    if-eqz v16, :cond_10

    #@198
    move-object/from16 v0, v25

    #@19a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@19c
    move-object/from16 v29, v0

    #@19e
    move-object/from16 v0, v29

    #@1a0
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@1a2
    move/from16 v29, v0

    #@1a4
    if-eqz v29, :cond_10

    #@1a6
    .line 384
    const/16 v29, 0x2

    #@1a8
    move/from16 v0, v29

    #@1aa
    move-object/from16 v1, p0

    #@1ac
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@1ae
    .line 488
    .end local v16    # "nowAnimating":Z
    .end local v24    # "wasAnimating":Z
    :cond_7
    :goto_8
    move-object/from16 v0, v25

    #@1b0
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1b2
    .line 489
    .local v7, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v26

    #@1b4
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@1b6
    move/from16 v29, v0

    #@1b8
    const/16 v30, 0x3

    #@1ba
    move/from16 v0, v29

    #@1bc
    move/from16 v1, v30

    #@1be
    if-ne v0, v1, :cond_9

    #@1c0
    .line 490
    if-eqz v7, :cond_8

    #@1c2
    iget-boolean v0, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@1c4
    move/from16 v29, v0

    #@1c6
    if-eqz v29, :cond_9

    #@1c8
    .line 491
    :cond_8
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    #@1cb
    move-result v29

    #@1cc
    if-eqz v29, :cond_9

    #@1ce
    .line 493
    const/16 v29, 0x8

    #@1d0
    .line 492
    move-object/from16 v0, p0

    #@1d2
    move/from16 v1, p1

    #@1d4
    move/from16 v2, v29

    #@1d6
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@1d9
    .line 502
    :cond_9
    move-object/from16 v0, v26

    #@1db
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@1dd
    .line 503
    .local v5, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v5, :cond_b

    #@1df
    iget-object v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@1e1
    move-object/from16 v29, v0

    #@1e3
    if-eqz v29, :cond_b

    #@1e5
    .line 504
    iget v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    #@1e7
    move/from16 v29, v0

    #@1e9
    move-object/from16 v0, p0

    #@1eb
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    #@1ed
    move/from16 v30, v0

    #@1ef
    move/from16 v0, v29

    #@1f1
    move/from16 v1, v30

    #@1f3
    if-eq v0, v1, :cond_a

    #@1f5
    .line 505
    move-object/from16 v0, p0

    #@1f7
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    #@1f9
    move/from16 v29, v0

    #@1fb
    move/from16 v0, v29

    #@1fd
    iput v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    #@1ff
    .line 506
    const/16 v29, 0x0

    #@201
    move/from16 v0, v29

    #@203
    iput v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@205
    .line 508
    :cond_a
    iget v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@207
    move/from16 v29, v0

    #@209
    move-object/from16 v0, v26

    #@20b
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@20d
    move/from16 v30, v0

    #@20f
    move/from16 v0, v29

    #@211
    move/from16 v1, v30

    #@213
    if-ge v0, v1, :cond_b

    #@215
    .line 509
    move-object/from16 v0, v26

    #@217
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@219
    move/from16 v29, v0

    #@21b
    move/from16 v0, v29

    #@21d
    iput v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@21f
    .line 512
    :cond_b
    move-object/from16 v0, v25

    #@221
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@223
    move/from16 v29, v0

    #@225
    if-eqz v29, :cond_c

    #@227
    .line 513
    move-object/from16 v21, v25

    #@229
    .line 333
    .end local v5    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v7    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_c
    :goto_9
    add-int/lit8 v12, v12, -0x1

    #@22b
    goto/16 :goto_5

    #@22d
    .line 319
    .end local v8    # "canBeForceHidden":Z
    .end local v11    # "flags":I
    .end local v17    # "shouldBeForceHidden":Z
    .end local v18    # "startingInUnForceHiding":Z
    .end local v22    # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    .end local v23    # "wallpaperInUnForceHiding":Z
    :cond_d
    const/16 v29, 0x0

    #@22f
    move/from16 v0, v29

    #@231
    move-object/from16 v1, p0

    #@233
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@235
    .line 320
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    #@238
    goto/16 :goto_4

    #@23a
    .line 351
    .restart local v8    # "canBeForceHidden":Z
    .restart local v11    # "flags":I
    .restart local v16    # "nowAnimating":Z
    .restart local v17    # "shouldBeForceHidden":Z
    .restart local v18    # "startingInUnForceHiding":Z
    .restart local v22    # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    .restart local v23    # "wallpaperInUnForceHiding":Z
    .restart local v24    # "wasAnimating":Z
    :cond_e
    move-object/from16 v0, v22

    #@23c
    move-object/from16 v1, v25

    #@23e
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    #@241
    move-result v29

    #@242
    .line 350
    if-eqz v29, :cond_5

    #@244
    .line 352
    move-object/from16 v0, p0

    #@246
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@248
    move/from16 v29, v0

    #@24a
    or-int/lit8 v29, v29, 0x2

    #@24c
    move/from16 v0, v29

    #@24e
    move-object/from16 v1, p0

    #@250
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@252
    .line 353
    const/16 v29, 0x0

    #@254
    .line 354
    const/16 v30, 0x4

    #@256
    .line 353
    move-object/from16 v0, p0

    #@258
    move/from16 v1, v29

    #@25a
    move/from16 v2, v30

    #@25c
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@25f
    goto/16 :goto_6

    #@261
    .line 376
    :cond_f
    move-object/from16 v0, p0

    #@263
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@265
    move/from16 v29, v0

    #@267
    if-eqz v29, :cond_6

    #@269
    if-nez v16, :cond_6

    #@26b
    .line 378
    sget-object v29, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    #@26d
    const-string/jumbo v30, "Timeout waiting for animation to startup"

    #@270
    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@273
    .line 379
    move-object/from16 v0, p0

    #@275
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@277
    move-object/from16 v29, v0

    #@279
    const-wide/16 v30, 0x0

    #@27b
    const-wide/16 v32, 0x0

    #@27d
    invoke-interface/range {v29 .. v33}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    #@280
    .line 380
    const/16 v29, 0x0

    #@282
    move/from16 v0, v29

    #@284
    move-object/from16 v1, p0

    #@286
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@288
    goto/16 :goto_7

    #@28a
    .line 386
    :cond_10
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@28d
    move-result v29

    #@28e
    if-eqz v29, :cond_11

    #@290
    const/16 v29, 0x1

    #@292
    :goto_a
    move/from16 v0, v29

    #@294
    move-object/from16 v1, p0

    #@296
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@298
    goto/16 :goto_8

    #@29a
    :cond_11
    const/16 v29, 0x0

    #@29c
    goto :goto_a

    #@29d
    .line 398
    :cond_12
    if-eqz v8, :cond_7

    #@29f
    .line 399
    if-eqz v17, :cond_14

    #@2a1
    .line 400
    const/16 v29, 0x0

    #@2a3
    const/16 v30, 0x0

    #@2a5
    move-object/from16 v0, v25

    #@2a7
    move/from16 v1, v29

    #@2a9
    move/from16 v2, v30

    #@2ab
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    #@2ae
    move-result v29

    #@2af
    if-eqz v29, :cond_c

    #@2b1
    .line 465
    :cond_13
    :goto_b
    const/high16 v29, 0x100000

    #@2b3
    and-int v29, v29, v11

    #@2b5
    if-eqz v29, :cond_7

    #@2b7
    .line 466
    move-object/from16 v0, p0

    #@2b9
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@2bb
    move/from16 v29, v0

    #@2bd
    or-int/lit8 v29, v29, 0x2

    #@2bf
    move/from16 v0, v29

    #@2c1
    move-object/from16 v1, p0

    #@2c3
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@2c5
    .line 467
    const/16 v29, 0x0

    #@2c7
    .line 468
    const/16 v30, 0x4

    #@2c9
    .line 467
    move-object/from16 v0, p0

    #@2cb
    move/from16 v1, v29

    #@2cd
    move/from16 v2, v30

    #@2cf
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@2d2
    goto/16 :goto_8

    #@2d4
    .line 407
    :cond_14
    move-object/from16 v0, p0

    #@2d6
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@2d8
    move-object/from16 v29, v0

    #@2da
    if-eqz v29, :cond_15

    #@2dc
    .line 408
    move-object/from16 v0, p0

    #@2de
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@2e0
    move-object/from16 v29, v0

    #@2e2
    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/Animation;->hasEnded()Z

    #@2e5
    move-result v29

    #@2e6
    if-eqz v29, :cond_17

    #@2e8
    .line 407
    :cond_15
    const/4 v6, 0x0

    #@2e9
    .line 417
    .local v6, "applyExistingExitAnimation":Z
    :goto_c
    const/16 v29, 0x0

    #@2eb
    const/16 v30, 0x0

    #@2ed
    move-object/from16 v0, v25

    #@2ef
    move/from16 v1, v29

    #@2f1
    move/from16 v2, v30

    #@2f3
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    #@2f6
    move-result v29

    #@2f7
    if-nez v29, :cond_16

    #@2f9
    if-eqz v6, :cond_c

    #@2fb
    .line 420
    :cond_16
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    #@2fe
    move-result v20

    #@2ff
    .line 421
    .local v20, "visibleNow":Z
    if-nez v20, :cond_19

    #@301
    .line 423
    const/16 v29, 0x0

    #@303
    const/16 v30, 0x0

    #@305
    move-object/from16 v0, v25

    #@307
    move/from16 v1, v29

    #@309
    move/from16 v2, v30

    #@30b
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    #@30e
    goto/16 :goto_9

    #@310
    .line 409
    .end local v6    # "applyExistingExitAnimation":Z
    .end local v20    # "visibleNow":Z
    :cond_17
    move-object/from16 v0, v26

    #@312
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@314
    move/from16 v29, v0

    #@316
    if-nez v29, :cond_15

    #@318
    .line 410
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    #@31b
    move-result v29

    #@31c
    .line 407
    if-eqz v29, :cond_15

    #@31e
    .line 411
    move-object/from16 v0, v25

    #@320
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@322
    move-object/from16 v29, v0

    #@324
    if-nez v29, :cond_15

    #@326
    .line 412
    move-object/from16 v0, v25

    #@328
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@32a
    move/from16 v29, v0

    #@32c
    if-nez v29, :cond_15

    #@32e
    .line 413
    if-nez p1, :cond_18

    #@330
    const/4 v6, 0x1

    #@331
    .restart local v6    # "applyExistingExitAnimation":Z
    goto :goto_c

    #@332
    .end local v6    # "applyExistingExitAnimation":Z
    :cond_18
    const/4 v6, 0x0

    #@333
    .restart local v6    # "applyExistingExitAnimation":Z
    goto :goto_c

    #@334
    .line 428
    .restart local v20    # "visibleNow":Z
    :cond_19
    move-object/from16 v0, p0

    #@336
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@338
    move/from16 v29, v0

    #@33a
    and-int/lit8 v29, v29, 0x4

    #@33c
    if-eqz v29, :cond_1e

    #@33e
    .line 429
    move-object/from16 v0, v25

    #@340
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@342
    move-object/from16 v29, v0

    #@344
    if-nez v29, :cond_1e

    #@346
    .line 430
    if-nez v19, :cond_1a

    #@348
    .line 431
    new-instance v19, Ljava/util/ArrayList;

    #@34a
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@34d
    .line 433
    :cond_1a
    move-object/from16 v0, v19

    #@34f
    move-object/from16 v1, v26

    #@351
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@354
    .line 434
    const/high16 v29, 0x100000

    #@356
    and-int v29, v29, v11

    #@358
    if-eqz v29, :cond_1b

    #@35a
    .line 435
    const/16 v23, 0x1

    #@35c
    .line 437
    :cond_1b
    move-object/from16 v0, v25

    #@35e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@360
    move-object/from16 v29, v0

    #@362
    move-object/from16 v0, v29

    #@364
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@366
    move/from16 v29, v0

    #@368
    const/16 v30, 0x3

    #@36a
    move/from16 v0, v29

    #@36c
    move/from16 v1, v30

    #@36e
    if-ne v0, v1, :cond_1c

    #@370
    .line 438
    const/16 v18, 0x1

    #@372
    .line 455
    :cond_1c
    :goto_d
    move-object/from16 v0, p0

    #@374
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@376
    move-object/from16 v29, v0

    #@378
    move-object/from16 v0, v29

    #@37a
    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    #@37c
    .line 456
    .local v9, "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v9, :cond_1d

    #@37e
    iget v0, v9, Lcom/android/server/wm/WindowState;->mLayer:I

    #@380
    move/from16 v29, v0

    #@382
    move-object/from16 v0, v25

    #@384
    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@386
    move/from16 v30, v0

    #@388
    move/from16 v0, v29

    #@38a
    move/from16 v1, v30

    #@38c
    if-ge v0, v1, :cond_13

    #@38e
    .line 462
    :cond_1d
    move-object/from16 v0, p0

    #@390
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@392
    move-object/from16 v29, v0

    #@394
    const/16 v30, 0x1

    #@396
    move/from16 v0, v30

    #@398
    move-object/from16 v1, v29

    #@39a
    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@39c
    goto/16 :goto_b

    #@39e
    .line 440
    .end local v9    # "currentFocus":Lcom/android/server/wm/WindowState;
    :cond_1e
    if-eqz v6, :cond_1c

    #@3a0
    .line 447
    move-object/from16 v0, p0

    #@3a2
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@3a4
    move-object/from16 v29, v0

    #@3a6
    const/16 v30, 0x0

    #@3a8
    move-object/from16 v0, v29

    #@3aa
    move/from16 v1, v30

    #@3ac
    invoke-interface {v0, v1, v14}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    #@3af
    move-result-object v4

    #@3b0
    .line 449
    .local v4, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@3b2
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@3b4
    move-object/from16 v29, v0

    #@3b6
    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/Animation;->getStartTime()J

    #@3b9
    move-result-wide v30

    #@3ba
    .line 450
    const/16 v29, 0x1

    #@3bc
    .line 449
    move-object/from16 v0, v26

    #@3be
    move-wide/from16 v1, v30

    #@3c0
    move/from16 v3, v29

    #@3c2
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;JI)V

    #@3c5
    .line 451
    const/16 v29, 0x1

    #@3c7
    move/from16 v0, v29

    #@3c9
    move-object/from16 v1, v26

    #@3cb
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@3cd
    .line 452
    move-object/from16 v0, v26

    #@3cf
    iput-boolean v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    #@3d1
    goto :goto_d

    #@3d2
    .line 480
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v6    # "applyExistingExitAnimation":Z
    .end local v16    # "nowAnimating":Z
    .end local v20    # "visibleNow":Z
    .end local v24    # "wasAnimating":Z
    :cond_1f
    if-eqz v8, :cond_7

    #@3d4
    .line 481
    if-eqz v17, :cond_20

    #@3d6
    .line 482
    const/16 v29, 0x0

    #@3d8
    const/16 v30, 0x0

    #@3da
    move-object/from16 v0, v25

    #@3dc
    move/from16 v1, v29

    #@3de
    move/from16 v2, v30

    #@3e0
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    #@3e3
    goto/16 :goto_8

    #@3e5
    .line 484
    :cond_20
    const/16 v29, 0x0

    #@3e7
    const/16 v30, 0x0

    #@3e9
    move-object/from16 v0, v25

    #@3eb
    move/from16 v1, v29

    #@3ed
    move/from16 v2, v30

    #@3ef
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    #@3f2
    goto/16 :goto_8

    #@3f4
    .line 520
    .end local v8    # "canBeForceHidden":Z
    .end local v11    # "flags":I
    .end local v17    # "shouldBeForceHidden":Z
    .end local v25    # "win":Lcom/android/server/wm/WindowState;
    .end local v26    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_21
    if-eqz v19, :cond_27

    #@3f6
    .line 521
    if-nez v13, :cond_25

    #@3f8
    .line 522
    const/4 v10, 0x1

    #@3f9
    .line 523
    .local v10, "first":Z
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    #@3fc
    move-result v29

    #@3fd
    add-int/lit8 v12, v29, -0x1

    #@3ff
    :goto_e
    if-ltz v12, :cond_26

    #@401
    .line 524
    move-object/from16 v0, v19

    #@403
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@406
    move-result-object v26

    #@407
    check-cast v26, Lcom/android/server/wm/WindowStateAnimator;

    #@409
    .line 525
    .restart local v26    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    #@40b
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@40d
    move-object/from16 v30, v0

    #@40f
    .line 526
    if-eqz v23, :cond_22

    #@411
    if-eqz v18, :cond_24

    #@413
    :cond_22
    const/16 v29, 0x0

    #@415
    .line 525
    :goto_f
    move-object/from16 v0, v30

    #@417
    move/from16 v1, v29

    #@419
    invoke-interface {v0, v1, v14}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    #@41c
    move-result-object v4

    #@41d
    .line 528
    .restart local v4    # "a":Landroid/view/animation/Animation;
    if-eqz v4, :cond_23

    #@41f
    .line 531
    const/16 v29, 0x1

    #@421
    move-object/from16 v0, v26

    #@423
    move/from16 v1, v29

    #@425
    invoke-virtual {v0, v4, v1}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;I)V

    #@428
    .line 532
    const/16 v29, 0x1

    #@42a
    move/from16 v0, v29

    #@42c
    move-object/from16 v1, v26

    #@42e
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@430
    .line 533
    move-object/from16 v0, v26

    #@432
    iput-boolean v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    #@434
    .line 535
    if-eqz v10, :cond_23

    #@436
    .line 536
    move-object/from16 v0, p0

    #@438
    iput-object v4, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@43a
    .line 537
    move-object/from16 v0, p0

    #@43c
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@43e
    move-object/from16 v29, v0

    #@440
    move-object/from16 v0, p0

    #@442
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@444
    move-wide/from16 v30, v0

    #@446
    invoke-virtual/range {v29 .. v31}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@449
    .line 538
    const/4 v10, 0x0

    #@44a
    .line 523
    :cond_23
    add-int/lit8 v12, v12, -0x1

    #@44c
    goto :goto_e

    #@44d
    .line 526
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_24
    const/16 v29, 0x1

    #@44f
    goto :goto_f

    #@450
    .line 542
    .end local v10    # "first":Z
    .end local v26    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_25
    move-object/from16 v0, p0

    #@452
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@454
    move/from16 v29, v0

    #@456
    if-eqz v29, :cond_26

    #@458
    .line 543
    move-object/from16 v0, p0

    #@45a
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@45c
    move-object/from16 v29, v0

    #@45e
    move-object/from16 v0, p0

    #@460
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@462
    move-wide/from16 v30, v0

    #@464
    const-wide/16 v32, 0x0

    #@466
    invoke-interface/range {v29 .. v33}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    #@469
    .line 544
    const/16 v29, 0x0

    #@46b
    move/from16 v0, v29

    #@46d
    move-object/from16 v1, p0

    #@46f
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@471
    .line 549
    :cond_26
    if-nez v23, :cond_27

    #@473
    if-eqz v21, :cond_27

    #@475
    if-eqz v13, :cond_2a

    #@477
    .line 559
    :cond_27
    :goto_10
    move-object/from16 v0, p0

    #@479
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@47b
    move-object/from16 v29, v0

    #@47d
    if-eqz v29, :cond_28

    #@47f
    .line 561
    move-object/from16 v0, p0

    #@481
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@483
    move/from16 v29, v0

    #@485
    if-eqz v29, :cond_2b

    #@487
    .line 562
    move-object/from16 v0, p0

    #@489
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@48b
    move-object/from16 v29, v0

    #@48d
    move-object/from16 v0, p0

    #@48f
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@491
    move-wide/from16 v30, v0

    #@493
    .line 563
    move-object/from16 v0, p0

    #@495
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@497
    move-object/from16 v32, v0

    #@499
    invoke-virtual/range {v32 .. v32}, Landroid/view/animation/Animation;->getStartOffset()J

    #@49c
    move-result-wide v32

    #@49d
    .line 562
    add-long v30, v30, v32

    #@49f
    .line 564
    move-object/from16 v0, p0

    #@4a1
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@4a3
    move-object/from16 v32, v0

    #@4a5
    invoke-virtual/range {v32 .. v32}, Landroid/view/animation/Animation;->getDuration()J

    #@4a8
    move-result-wide v32

    #@4a9
    .line 562
    invoke-interface/range {v29 .. v33}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    #@4ac
    .line 565
    const/16 v29, 0x0

    #@4ae
    move/from16 v0, v29

    #@4b0
    move-object/from16 v1, p0

    #@4b2
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@4b4
    .line 579
    :cond_28
    :goto_11
    move-object/from16 v0, p0

    #@4b6
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4b8
    move-object/from16 v29, v0

    #@4ba
    invoke-interface/range {v29 .. v29}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    #@4bd
    move-result-object v27

    #@4be
    check-cast v27, Lcom/android/server/wm/WindowState;

    #@4c0
    .line 580
    .local v27, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    if-eqz v27, :cond_29

    #@4c2
    .line 581
    move-object/from16 v0, v27

    #@4c4
    move-object/from16 v1, p0

    #@4c6
    iput-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mLastShowWinWhenLocked:Lcom/android/server/wm/WindowState;

    #@4c8
    .line 283
    :cond_29
    return-void

    #@4c9
    .line 551
    .end local v27    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_2a
    move-object/from16 v0, p0

    #@4cb
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4cd
    move-object/from16 v29, v0

    #@4cf
    move-object/from16 v0, v29

    #@4d1
    invoke-interface {v0, v14}, Landroid/view/WindowManagerPolicy;->createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;

    #@4d4
    move-result-object v4

    #@4d5
    .line 553
    .restart local v4    # "a":Landroid/view/animation/Animation;
    if-eqz v4, :cond_27

    #@4d7
    .line 554
    move-object/from16 v0, v21

    #@4d9
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4db
    move-object/from16 v29, v0

    #@4dd
    move-object/from16 v0, v29

    #@4df
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    #@4e2
    goto :goto_10

    #@4e3
    .line 570
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_2b
    move-object/from16 v0, p0

    #@4e5
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@4e7
    move-object/from16 v29, v0

    #@4e9
    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/Animation;->hasEnded()Z

    #@4ec
    move-result v29

    #@4ed
    if-nez v29, :cond_2c

    #@4ef
    .line 571
    move-object/from16 v0, p0

    #@4f1
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@4f3
    move-wide/from16 v30, v0

    #@4f5
    move-object/from16 v0, p0

    #@4f7
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@4f9
    move-object/from16 v29, v0

    #@4fb
    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/Animation;->getStartTime()J

    #@4fe
    move-result-wide v32

    #@4ff
    sub-long v30, v30, v32

    #@501
    .line 572
    move-object/from16 v0, p0

    #@503
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@505
    move-object/from16 v29, v0

    #@507
    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/Animation;->getDuration()J

    #@50a
    move-result-wide v32

    #@50b
    .line 571
    cmp-long v29, v30, v32

    #@50d
    if-lez v29, :cond_28

    #@50f
    .line 575
    :cond_2c
    const/16 v29, 0x0

    #@511
    move-object/from16 v0, v29

    #@513
    move-object/from16 v1, p0

    #@515
    iput-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@517
    goto :goto_11
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@3
    .line 155
    if-nez p1, :cond_0

    #@5
    .line 156
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    #@8
    .line 152
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    #@0
    .prologue
    .line 887
    new-instance v8, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v9, "  "

    #@8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v8

    #@c
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v8

    #@10
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .line 888
    .local v4, "subPrefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v9, "  "

    #@1c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v8

    #@20
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v8

    #@24
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    .line 890
    .local v5, "subSubPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    #@29
    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@2b
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@2e
    move-result v8

    #@2f
    if-ge v2, v8, :cond_3

    #@31
    .line 891
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    const-string/jumbo v8, "DisplayContentsAnimator #"

    #@37
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    .line 892
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@3c
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@3f
    move-result v8

    #@40
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    #@43
    .line 893
    const-string/jumbo v8, ":"

    #@46
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 894
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@4b
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@4e
    move-result-object v1

    #@4f
    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@51
    .line 896
    .local v1, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@53
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@55
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@58
    move-result v9

    #@59
    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    #@5c
    move-result-object v7

    #@5d
    .line 897
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    #@60
    move-result v0

    #@61
    .line 898
    .local v0, "N":I
    const/4 v3, 0x0

    #@62
    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    #@64
    .line 899
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@67
    move-result-object v8

    #@68
    check-cast v8, Lcom/android/server/wm/WindowState;

    #@6a
    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@6c
    .line 900
    .local v6, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    const-string/jumbo v8, "Window #"

    #@72
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@75
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@78
    .line 901
    const-string/jumbo v8, ": "

    #@7b
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@81
    .line 898
    add-int/lit8 v3, v3, 0x1

    #@83
    goto :goto_1

    #@84
    .line 903
    .end local v6    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@86
    if-eqz v8, :cond_2

    #@88
    .line 904
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8b
    const-string/jumbo v8, "mScreenRotationAnimation:"

    #@8e
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@91
    .line 905
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@93
    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@96
    .line 909
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@99
    .line 890
    add-int/lit8 v2, v2, 0x1

    #@9b
    goto :goto_0

    #@9c
    .line 906
    :cond_2
    if-eqz p3, :cond_1

    #@9e
    .line 907
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a1
    const-string/jumbo v8, "no ScreenRotationAnimation "

    #@a4
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a7
    goto :goto_2

    #@a8
    .line 912
    .end local v0    # "N":I
    .end local v1    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3    # "j":I
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@ab
    .line 914
    if-eqz p3, :cond_4

    #@ad
    .line 915
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b0
    const-string/jumbo v8, "mAnimTransactionSequence="

    #@b3
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b6
    .line 916
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    #@b8
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    #@bb
    .line 917
    const-string/jumbo v8, " mForceHiding="

    #@be
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c1
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    #@c4
    move-result-object v8

    #@c5
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c8
    .line 918
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cb
    const-string/jumbo v8, "mCurrentTime="

    #@ce
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d1
    .line 919
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@d3
    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@d6
    move-result-object v8

    #@d7
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@da
    .line 921
    :cond_4
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@dc
    if-eqz v8, :cond_5

    #@de
    .line 922
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e1
    const-string/jumbo v8, "mBulkUpdateParams=0x"

    #@e4
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e7
    .line 923
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@e9
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@ec
    move-result-object v8

    #@ed
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f0
    .line 924
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@f2
    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    #@f5
    move-result-object v8

    #@f6
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f9
    .line 926
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@fb
    if-eqz v8, :cond_6

    #@fd
    .line 927
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@100
    const-string/jumbo v8, "mWindowDetachedWallpaper="

    #@103
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@106
    .line 928
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@108
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@10b
    .line 886
    :cond_6
    return-void
.end method

.method getPendingLayoutChanges(I)I
    .locals 3
    .param p1, "displayId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 933
    if-gez p1, :cond_0

    #@3
    .line 934
    return v1

    #@4
    .line 936
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@9
    move-result-object v0

    #@a
    .line 937
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    #@c
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@e
    :cond_1
    return v1
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .locals 1
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 981
    if-gez p1, :cond_0

    #@2
    .line 982
    const/4 v0, 0x0

    #@3
    return-object v0

    #@4
    .line 984
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@7
    move-result-object v0

    #@8
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@a
    return-object v0
.end method

.method isAnimating()Z
    .locals 1

    #@0
    .prologue
    .line 996
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@2
    return v0
.end method

.method orAnimating(Z)V
    .locals 1
    .param p1, "animating"    # Z

    #@0
    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@2
    or-int/2addr v0, p1

    #@3
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@5
    .line 1003
    return-void
.end method

.method removeDisplayLocked(I)V
    .locals 3
    .param p1, "displayId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 161
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@9
    .line 162
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_0

    #@b
    .line 163
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 164
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@11
    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    #@14
    .line 165
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@16
    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    #@1b
    .line 160
    return-void
.end method

.method requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    .line 988
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    #@3
    .line 987
    return-void
.end method

.method setAnimating(Z)V
    .locals 0
    .param p1, "animating"    # Z

    #@0
    .prologue
    .line 1000
    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@2
    .line 999
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V
    .locals 3
    .param p1, "appAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "changes"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    #@0
    .prologue
    .line 952
    iget-object v2, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@4
    .line 953
    .local v1, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    #@7
    move-result v2

    #@8
    add-int/lit8 v0, v2, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@c
    .line 954
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@12
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@15
    move-result v2

    #@16
    if-ne p4, v2, :cond_1

    #@18
    .line 955
    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@1b
    .line 951
    :cond_0
    return-void

    #@1c
    .line 953
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0
.end method

.method setPendingLayoutChanges(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "changes"    # I

    #@0
    .prologue
    .line 941
    if-gez p1, :cond_0

    #@2
    .line 942
    return-void

    #@3
    .line 944
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@8
    move-result-object v0

    #@9
    .line 945
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    #@b
    .line 946
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@d
    or-int/2addr v1, p2

    #@e
    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@10
    .line 940
    :cond_1
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/ScreenRotationAnimation;

    #@0
    .prologue
    .line 975
    if-ltz p1, :cond_0

    #@2
    .line 976
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@5
    move-result-object v0

    #@6
    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@8
    .line 974
    :cond_0
    return-void
.end method
