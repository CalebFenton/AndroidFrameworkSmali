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

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

.field private mRemoveReplacedWindows:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

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
    .line 67
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    #@5
    .line 66
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 96
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@7
    .line 98
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@9
    .line 101
    new-instance v0, Landroid/util/SparseArray;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@f
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@11
    .line 103
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    #@13
    .line 115
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@15
    .line 119
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    #@17
    .line 131
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@19
    .line 132
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@1b
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    #@1d
    .line 133
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@1f
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@21
    .line 134
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@23
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@25
    .line 136
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    #@27
    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    #@2a
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    #@2c
    .line 130
    return-void
.end method

.method private animateLocked(J)V
    .locals 25
    .param p1, "frameTimeNs"    # J

    #@0
    .prologue
    .line 657
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    #@4
    move/from16 v19, v0

    #@6
    if-nez v19, :cond_0

    #@8
    .line 658
    return-void

    #@9
    .line 661
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
    .line 662
    const/16 v19, 0x8

    #@16
    move/from16 v0, v19

    #@18
    move-object/from16 v1, p0

    #@1a
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@1c
    .line 663
    move-object/from16 v0, p0

    #@1e
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@20
    move/from16 v17, v0

    #@22
    .line 664
    .local v17, "wasAnimating":Z
    const/16 v19, 0x0

    #@24
    move-object/from16 v0, p0

    #@26
    move/from16 v1, v19

    #@28
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    #@2b
    .line 665
    const/16 v19, 0x0

    #@2d
    move/from16 v0, v19

    #@2f
    move-object/from16 v1, p0

    #@31
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@33
    .line 672
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@36
    .line 673
    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    #@39
    .line 675
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
    .line 676
    .local v14, "numDisplays":I
    const/4 v12, 0x0

    #@44
    .local v12, "i":I
    :goto_0
    if-ge v12, v14, :cond_6

    #@46
    .line 677
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
    .line 678
    .local v7, "displayId":I
    move-object/from16 v0, p0

    #@54
    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked(I)V

    #@57
    .line 679
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
    .line 681
    .local v5, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@67
    move-object/from16 v16, v0

    #@69
    .line 683
    .local v16, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v16, :cond_1

    #@6b
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    #@6e
    move-result v19

    #@6f
    if-eqz v19, :cond_1

    #@71
    .line 684
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
    .line 685
    const/16 v19, 0x1

    #@83
    move-object/from16 v0, p0

    #@85
    move/from16 v1, v19

    #@87
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    #@8a
    .line 704
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    #@8c
    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    #@8f
    .line 705
    move-object/from16 v0, p0

    #@91
    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    #@94
    .line 707
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
    .line 708
    .local v18, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowList;->size()I

    #@a3
    move-result v4

    #@a4
    .line 709
    .local v4, "N":I
    const/4 v13, 0x0

    #@a5
    .local v13, "j":I
    :goto_2
    if-ge v13, v4, :cond_5

    #@a7
    .line 710
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
    .line 709
    add-int/lit8 v13, v13, 0x1

    #@bc
    goto :goto_2

    #@bd
    .line 687
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
    .line 688
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    #@ce
    .line 689
    const/16 v19, 0x0

    #@d0
    move-object/from16 v0, v19

    #@d2
    iput-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@d4
    .line 692
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
    .line 693
    if-nez v7, :cond_1

    #@e4
    .line 696
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
    .line 697
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
    .line 696
    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@109
    goto :goto_1

    #@10a
    .line 746
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v12    # "i":I
    .end local v14    # "numDisplays":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_0
    move-exception v10

    #@10b
    .line 747
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
    .line 749
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@11a
    .line 754
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :goto_3
    const/4 v11, 0x0

    #@11b
    .line 755
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
    .line 756
    .restart local v14    # "numDisplays":I
    const/4 v8, 0x0

    #@12c
    .local v8, "displayNdx":I
    :goto_4
    if-ge v8, v14, :cond_d

    #@12e
    .line 757
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
    .line 758
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
    .line 759
    .local v15, "pendingChanges":I
    and-int/lit8 v19, v15, 0x4

    #@150
    if-eqz v19, :cond_3

    #@152
    .line 760
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
    .line 762
    :cond_3
    if-eqz v15, :cond_4

    #@162
    .line 763
    const/4 v11, 0x1

    #@163
    .line 756
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@165
    goto :goto_4

    #@166
    .line 676
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
    .line 714
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
    .line 715
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
    .line 717
    .restart local v7    # "displayId":I
    move-object/from16 v0, p0

    #@17b
    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked(I)V

    #@17e
    .line 720
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
    .line 719
    move-object/from16 v0, v19

    #@18e
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@190
    move-object/from16 v16, v0

    #@192
    .line 721
    .restart local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v16, :cond_7

    #@194
    .line 722
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    #@197
    .line 725
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
    .line 726
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
    .line 727
    move-object/from16 v0, p0

    #@1c0
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@1c2
    move-wide/from16 v20, v0

    #@1c4
    .line 726
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
    .line 729
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
    .line 730
    if-nez v7, :cond_8

    #@1df
    .line 731
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
    .line 714
    :cond_8
    add-int/lit8 v12, v12, 0x1

    #@1f0
    goto/16 :goto_5

    #@1f2
    .line 735
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
    .line 736
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
    .line 739
    :cond_a
    move-object/from16 v0, p0

    #@22a
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@22c
    move/from16 v19, v0

    #@22e
    if-eqz v19, :cond_b

    #@230
    .line 740
    move-object/from16 v0, p0

    #@232
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@234
    move-object/from16 v19, v0

    #@236
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@239
    .line 743
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
    .line 744
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
    .line 749
    :cond_c
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@259
    goto/16 :goto_3

    #@25b
    .line 748
    .end local v12    # "i":I
    .end local v14    # "numDisplays":I
    :catchall_0
    move-exception v19

    #@25c
    .line 749
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@25f
    .line 748
    throw v19

    #@260
    .line 767
    .restart local v8    # "displayNdx":I
    .restart local v11    # "hasPendingLayoutChanges":Z
    .restart local v14    # "numDisplays":I
    :cond_d
    const/4 v9, 0x0

    #@261
    .line 768
    .local v9, "doRequest":Z
    move-object/from16 v0, p0

    #@263
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@265
    move/from16 v19, v0

    #@267
    if-eqz v19, :cond_e

    #@269
    .line 769
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
    .line 772
    .end local v9    # "doRequest":Z
    :cond_e
    if-nez v11, :cond_f

    #@275
    if-eqz v9, :cond_10

    #@277
    .line 773
    :cond_f
    move-object/from16 v0, p0

    #@279
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@27b
    move-object/from16 v19, v0

    #@27d
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    #@280
    .line 776
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
    .line 780
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
    .line 781
    move-object/from16 v0, p0

    #@296
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@298
    move-object/from16 v19, v0

    #@29a
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    #@29d
    .line 782
    const-wide/16 v20, 0x20

    #@29f
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@2a2
    move-result v19

    #@2a3
    if-eqz v19, :cond_12

    #@2a5
    .line 783
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
    .line 787
    :cond_12
    move-object/from16 v0, p0

    #@2b7
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    #@2b9
    move/from16 v19, v0

    #@2bb
    if-eqz v19, :cond_13

    #@2bd
    .line 788
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->removeReplacedWindowsLocked()V

    #@2c0
    .line 791
    :cond_13
    move-object/from16 v0, p0

    #@2c2
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2c4
    move-object/from16 v19, v0

    #@2c6
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->stopUsingSavedSurfaceLocked()V

    #@2c9
    .line 792
    move-object/from16 v0, p0

    #@2cb
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2cd
    move-object/from16 v19, v0

    #@2cf
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->destroyPreservedSurfaceLocked()V

    #@2d2
    .line 793
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
    .line 656
    return-void

    #@2e2
    .line 776
    :cond_14
    const-wide/16 v20, 0x20

    #@2e4
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@2e7
    move-result v19

    #@2e8
    if-eqz v19, :cond_11

    #@2ea
    .line 777
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
    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 825
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 826
    const-string/jumbo v1, " UPDATE_ROTATION"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 828
    :cond_0
    and-int/lit8 v1, p0, 0x2

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 829
    const-string/jumbo v1, " WALLPAPER_MAY_CHANGE"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 831
    :cond_1
    and-int/lit8 v1, p0, 0x4

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 832
    const-string/jumbo v1, " FORCE_HIDING_CHANGED"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 834
    :cond_2
    and-int/lit8 v1, p0, 0x8

    #@27
    if-eqz v1, :cond_3

    #@29
    .line 835
    const-string/jumbo v1, " ORIENTATION_CHANGE_COMPLETE"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 837
    :cond_3
    and-int/lit8 v1, p0, 0x10

    #@31
    if-eqz v1, :cond_4

    #@33
    .line 838
    const-string/jumbo v1, " TURN_ON_SCREEN"

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 840
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
    .line 122
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 126
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
    .line 123
    :pswitch_0
    const-string/jumbo v0, "KEYGUARD_NOT_SHOWN"

    #@1f
    return-object v0

    #@20
    .line 124
    :pswitch_1
    const-string/jumbo v0, "KEYGUARD_SHOWN"

    #@23
    return-object v0

    #@24
    .line 125
    :pswitch_2
    const-string/jumbo v0, "KEYGUARD_ANIMATING_OUT"

    #@27
    return-object v0

    #@28
    .line 122
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
    .line 923
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@9
    .line 924
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_0

    #@b
    .line 925
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@d
    .end local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;)V

    #@10
    .line 926
    .restart local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@15
    .line 928
    :cond_0
    return-object v0
.end method

.method private removeReplacedWindowsLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 806
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@4
    .line 808
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
    .line 809
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
    .line 810
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
    .line 811
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
    .line 812
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
    .line 811
    add-int/lit8 v2, v2, -0x1

    #@37
    goto :goto_1

    #@38
    .line 808
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@3a
    goto :goto_0

    #@3b
    .line 816
    .end local v0    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "j":I
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_1
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@3e
    .line 820
    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    #@40
    .line 803
    return-void

    #@41
    .line 815
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    #@42
    .line 816
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@45
    .line 815
    throw v4
.end method

.method private shouldForceHide(Lcom/android/server/wm/WindowState;)Z
    .locals 12
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/high16 v11, 0x80000

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 213
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget-object v3, v9, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    #@8
    .line 214
    .local v3, "imeTarget":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_7

    #@a
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    #@d
    move-result v9

    #@e
    if-eqz v9, :cond_7

    #@10
    .line 215
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@13
    move-result-object v9

    #@14
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@16
    and-int/2addr v9, v11

    #@17
    if-nez v9, :cond_5

    #@19
    .line 216
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@1b
    iget-object v10, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1d
    invoke-interface {v9, v3, v10}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    #@20
    move-result v9

    #@21
    if-eqz v9, :cond_6

    #@23
    const/4 v5, 0x0

    #@24
    .line 218
    .local v5, "showImeOverKeyguard":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@26
    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    #@29
    move-result-object v6

    #@2a
    check-cast v6, Lcom/android/server/wm/WindowState;

    #@2c
    .line 219
    .local v6, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    if-nez v6, :cond_8

    #@2e
    .line 220
    const/4 v1, 0x0

    #@2f
    .line 224
    :goto_1
    iget-boolean v9, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@31
    if-nez v9, :cond_0

    #@33
    if-ne v3, p1, :cond_9

    #@35
    :cond_0
    move v0, v5

    #@36
    .line 226
    .local v0, "allowWhenLocked":Z
    :goto_2
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@38
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3a
    and-int/2addr v9, v11

    #@3b
    if-eqz v9, :cond_a

    #@3d
    iget-boolean v9, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@3f
    :goto_3
    or-int/2addr v0, v9

    #@40
    .line 228
    if-eqz v1, :cond_3

    #@42
    .line 229
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@44
    if-eq v1, v9, :cond_1

    #@46
    .line 231
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@48
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@4a
    and-int/2addr v9, v11

    #@4b
    if-eqz v9, :cond_b

    #@4d
    :cond_1
    move v7, v8

    #@4e
    .line 229
    :cond_2
    :goto_4
    or-int/2addr v0, v7

    #@4f
    .line 237
    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@51
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    #@54
    move-result v7

    #@55
    if-eqz v7, :cond_d

    #@57
    .line 238
    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@59
    const/4 v9, 0x2

    #@5a
    if-eq v7, v9, :cond_c

    #@5c
    const/4 v4, 0x1

    #@5d
    .line 239
    .local v4, "keyguardOn":Z
    :goto_5
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@5f
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    #@61
    const/16 v9, 0x7f2

    #@63
    if-ne v7, v9, :cond_f

    #@65
    .line 240
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@68
    move-result-object v7

    #@69
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    #@6c
    move-result-object v7

    #@6d
    if-nez v7, :cond_e

    #@6f
    const/4 v2, 0x1

    #@70
    .line 241
    .local v2, "hideDockDivider":Z
    :goto_6
    if-eqz v4, :cond_4

    #@72
    if-eqz v0, :cond_10

    #@74
    :cond_4
    move v8, v2

    #@75
    :goto_7
    return v8

    #@76
    .line 215
    .end local v0    # "allowWhenLocked":Z
    .end local v2    # "hideDockDivider":Z
    .end local v4    # "keyguardOn":Z
    .end local v5    # "showImeOverKeyguard":Z
    .end local v6    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_5
    const/4 v5, 0x1

    #@77
    .restart local v5    # "showImeOverKeyguard":Z
    goto :goto_0

    #@78
    .line 216
    .end local v5    # "showImeOverKeyguard":Z
    :cond_6
    const/4 v5, 0x1

    #@79
    .restart local v5    # "showImeOverKeyguard":Z
    goto :goto_0

    #@7a
    .line 214
    .end local v5    # "showImeOverKeyguard":Z
    :cond_7
    const/4 v5, 0x0

    #@7b
    .restart local v5    # "showImeOverKeyguard":Z
    goto :goto_0

    #@7c
    .line 220
    .restart local v6    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_8
    iget-object v1, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@7e
    .local v1, "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    goto :goto_1

    #@7f
    .end local v1    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :cond_9
    move v0, v7

    #@80
    .line 224
    goto :goto_2

    #@81
    .restart local v0    # "allowWhenLocked":Z
    :cond_a
    move v9, v7

    #@82
    .line 226
    goto :goto_3

    #@83
    .line 233
    :cond_b
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@85
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@87
    and-int/lit16 v9, v9, 0x100

    #@89
    if-eqz v9, :cond_2

    #@8b
    move v7, v8

    #@8c
    goto :goto_4

    #@8d
    .line 238
    :cond_c
    const/4 v4, 0x0

    #@8e
    .restart local v4    # "keyguardOn":Z
    goto :goto_5

    #@8f
    .line 237
    .end local v4    # "keyguardOn":Z
    :cond_d
    const/4 v4, 0x0

    #@90
    .restart local v4    # "keyguardOn":Z
    goto :goto_5

    #@91
    .line 240
    :cond_e
    const/4 v2, 0x0

    #@92
    .restart local v2    # "hideDockDivider":Z
    goto :goto_6

    #@93
    .line 239
    .end local v2    # "hideDockDivider":Z
    :cond_f
    const/4 v2, 0x0

    #@94
    .restart local v2    # "hideDockDivider":Z
    goto :goto_6

    #@95
    .line 241
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@98
    move-result v7

    #@99
    if-nez v7, :cond_4

    #@9b
    goto :goto_7
.end method

.method private testTokenMayBeDrawnLocked(I)V
    .locals 12
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 612
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
    .line 613
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v2

    #@e
    .line 614
    .local v2, "numTasks":I
    const/4 v4, 0x0

    #@f
    .local v4, "taskNdx":I
    :goto_0
    if-ge v4, v2, :cond_3

    #@11
    .line 615
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v9

    #@15
    check-cast v9, Lcom/android/server/wm/Task;

    #@17
    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@19
    .line 616
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    #@1c
    move-result v3

    #@1d
    .line 617
    .local v3, "numTokens":I
    const/4 v6, 0x0

    #@1e
    .local v6, "tokenNdx":I
    :goto_1
    if-ge v6, v3, :cond_2

    #@20
    .line 618
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v8

    #@24
    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    #@26
    .line 619
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@28
    .line 620
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v0, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@2a
    .line 621
    .local v0, "allDrawn":Z
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    #@2c
    if-eq v0, v9, :cond_0

    #@2e
    .line 622
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    #@30
    .line 623
    if-eqz v0, :cond_0

    #@32
    .line 626
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    #@34
    if-eqz v9, :cond_1

    #@36
    .line 627
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    #@39
    .line 628
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3b
    const/4 v10, 0x0

    #@3c
    const/4 v11, 0x1

    #@3d
    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    #@40
    .line 637
    const-string/jumbo v9, "testTokenMayBeDrawnLocked: freezingScreen"

    #@43
    .line 636
    const/4 v10, 0x4

    #@44
    .line 635
    invoke-virtual {p0, v1, v10, v9, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    #@47
    .line 617
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 641
    :cond_1
    const-string/jumbo v9, "testTokenMayBeDrawnLocked"

    #@4d
    .line 640
    const/16 v10, 0x8

    #@4f
    .line 639
    invoke-virtual {p0, v1, v10, v9, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    #@52
    .line 644
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
    .line 645
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    #@5f
    move-result v9

    #@60
    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    #@63
    goto :goto_2

    #@64
    .line 614
    .end local v0    # "allDrawn":Z
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@66
    goto :goto_0

    #@67
    .line 609
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
    .line 167
    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v11, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@5
    move-result-object v11

    #@6
    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    #@9
    move-result-object v6

    #@a
    .line 168
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v11

    #@e
    add-int/lit8 v5, v11, -0x1

    #@10
    .local v5, "stackNdx":I
    :goto_0
    if-ltz v5, :cond_7

    #@12
    .line 169
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Lcom/android/server/wm/TaskStack;

    #@18
    .line 170
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@1b
    move-result-object v8

    #@1c
    .line 171
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v11

    #@20
    add-int/lit8 v7, v11, -0x1

    #@22
    .local v7, "taskNdx":I
    :goto_1
    if-ltz v7, :cond_3

    #@24
    .line 172
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v11

    #@28
    check-cast v11, Lcom/android/server/wm/Task;

    #@2a
    iget-object v10, v11, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@2c
    .line 173
    .local v10, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    #@2f
    move-result v11

    #@30
    add-int/lit8 v9, v11, -0x1

    #@32
    .local v9, "tokenNdx":I
    :goto_2
    if-ltz v9, :cond_2

    #@34
    .line 174
    invoke-virtual {v10, v9}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v11

    #@38
    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    #@3a
    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@3c
    .line 175
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@3e
    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    #@40
    .line 176
    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@42
    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    #@45
    move-result v11

    #@46
    if-eqz v11, :cond_1

    #@48
    .line 177
    const/4 v11, 0x1

    #@49
    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@4b
    .line 178
    const/4 v11, 0x1

    #@4c
    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    #@4f
    .line 179
    const/4 v11, 0x1

    #@50
    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@52
    .line 173
    :cond_0
    :goto_3
    add-int/lit8 v9, v9, -0x1

    #@54
    goto :goto_2

    #@55
    .line 180
    :cond_1
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    #@57
    if-eqz v11, :cond_0

    #@59
    .line 184
    new-instance v11, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v12, "appToken "

    #@61
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v11

    #@65
    iget-object v12, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@67
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v11

    #@6b
    const-string/jumbo v12, " done"

    #@6e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v11

    #@72
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v11

    #@76
    .line 183
    const/4 v12, 0x4

    #@77
    .line 182
    invoke-virtual {p0, v0, v12, v11, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    #@7a
    goto :goto_3

    #@7b
    .line 171
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_2
    add-int/lit8 v7, v7, -0x1

    #@7d
    goto :goto_1

    #@7e
    .line 191
    .end local v9    # "tokenNdx":I
    .end local v10    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_3
    iget-object v1, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@80
    .line 192
    .local v1, "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    #@83
    move-result v2

    #@84
    .line 193
    .local v2, "exitingCount":I
    const/4 v3, 0x0

    #@85
    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_6

    #@87
    .line 194
    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@8a
    move-result-object v11

    #@8b
    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    #@8d
    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@8f
    .line 195
    .restart local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@91
    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    #@93
    .line 196
    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@95
    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    #@98
    move-result v11

    #@99
    if-eqz v11, :cond_5

    #@9b
    .line 197
    const/4 v11, 0x1

    #@9c
    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    #@9f
    .line 198
    const/4 v11, 0x1

    #@a0
    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@a2
    .line 193
    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    #@a4
    goto :goto_4

    #@a5
    .line 199
    :cond_5
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    #@a7
    if-eqz v11, :cond_4

    #@a9
    .line 203
    new-instance v11, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v12, "exiting appToken "

    #@b1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v11

    #@b5
    iget-object v12, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@b7
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v11

    #@bb
    const-string/jumbo v12, " done"

    #@be
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v11

    #@c2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v11

    #@c6
    .line 202
    const/4 v12, 0x4

    #@c7
    .line 201
    invoke-virtual {p0, v0, v12, v11, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    #@ca
    goto :goto_5

    #@cb
    .line 168
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    #@cd
    goto/16 :goto_0

    #@cf
    .line 166
    .end local v1    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    .end local v2    # "exitingCount":I
    .end local v3    # "i":I
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_7
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .locals 11
    .param p1, "displayId"    # I

    #@0
    .prologue
    const/high16 v10, 0x100000

    #@2
    .line 543
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@7
    move-result-object v9

    #@8
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    #@b
    .line 545
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d
    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    #@10
    move-result-object v8

    #@11
    .line 546
    .local v8, "windows":Lcom/android/server/wm/WindowList;
    const/4 v2, 0x0

    #@12
    .line 548
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
    .line 549
    invoke-virtual {v8, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v6

    #@1e
    check-cast v6, Lcom/android/server/wm/WindowState;

    #@20
    .line 550
    .local v6, "win":Lcom/android/server/wm/WindowState;
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@22
    .line 551
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
    .line 555
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2e
    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@30
    .line 560
    .local v3, "flags":I
    iget-boolean v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@32
    if-eqz v9, :cond_2

    #@34
    .line 561
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@36
    if-eqz v9, :cond_1

    #@38
    .line 562
    and-int v9, v3, v10

    #@3a
    if-eqz v9, :cond_0

    #@3c
    .line 563
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@3e
    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    #@41
    move-result v9

    #@42
    .line 562
    if-eqz v9, :cond_0

    #@44
    .line 564
    move-object v2, v6

    #@45
    .line 566
    :cond_0
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@47
    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    #@4a
    move-result v1

    #@4b
    .line 567
    .local v1, "color":I
    if-eqz v1, :cond_1

    #@4d
    .line 568
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@50
    move-result-object v5

    #@51
    .line 569
    .local v5, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_1

    #@53
    .line 570
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    #@56
    .line 574
    .end local v1    # "color":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    const/4 v9, 0x1

    #@57
    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    #@5a
    .line 580
    :cond_2
    iget-object v0, v7, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@5c
    .line 581
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v0, :cond_4

    #@5e
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@60
    if-eqz v9, :cond_4

    #@62
    .line 582
    iget-boolean v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@64
    .line 581
    if-eqz v9, :cond_4

    #@66
    .line 583
    and-int v9, v3, v10

    #@68
    if-eqz v9, :cond_3

    #@6a
    .line 584
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@6c
    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    #@6f
    move-result v9

    #@70
    .line 583
    if-eqz v9, :cond_3

    #@72
    .line 585
    move-object v2, v6

    #@73
    .line 588
    :cond_3
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@75
    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    #@78
    move-result v1

    #@79
    .line 589
    .restart local v1    # "color":I
    if-eqz v1, :cond_4

    #@7b
    .line 590
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@7e
    move-result-object v5

    #@7f
    .line 591
    .restart local v5    # "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_4

    #@81
    .line 592
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    #@84
    .line 548
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v1    # "color":I
    .end local v3    # "flags":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    #@86
    goto :goto_0

    #@87
    .line 598
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    .end local v7    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@89
    if-eq v9, v2, :cond_6

    #@8b
    .line 602
    iput-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@8d
    .line 603
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@8f
    or-int/lit8 v9, v9, 0x2

    #@91
    iput v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@93
    .line 542
    :cond_6
    return-void
.end method

.method private updateWindowsLocked(I)V
    .locals 36
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 246
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    #@4
    move/from16 v30, v0

    #@6
    add-int/lit8 v30, v30, 0x1

    #@8
    move/from16 v0, v30

    #@a
    move-object/from16 v1, p0

    #@c
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    #@e
    .line 248
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@12
    move-object/from16 v30, v0

    #@14
    move-object/from16 v0, v30

    #@16
    move/from16 v1, p1

    #@18
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    #@1b
    move-result-object v29

    #@1c
    .line 251
    .local v29, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    #@1e
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayFlags:I

    #@20
    move/from16 v30, v0

    #@22
    and-int/lit8 v30, v30, 0x1

    #@24
    if-eqz v30, :cond_0

    #@26
    const/16 v16, 0x1

    #@28
    .line 253
    .local v16, "keyguardGoingAwayToShade":Z
    :goto_0
    move-object/from16 v0, p0

    #@2a
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayFlags:I

    #@2c
    move/from16 v30, v0

    #@2e
    and-int/lit8 v30, v30, 0x2

    #@30
    if-eqz v30, :cond_1

    #@32
    const/4 v15, 0x1

    #@33
    .line 255
    .local v15, "keyguardGoingAwayNoAnimation":Z
    :goto_1
    move-object/from16 v0, p0

    #@35
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayFlags:I

    #@37
    move/from16 v30, v0

    #@39
    and-int/lit8 v30, v30, 0x4

    #@3b
    if-eqz v30, :cond_2

    #@3d
    const/16 v17, 0x1

    #@3f
    .line 257
    .local v17, "keyguardGoingAwayWithWallpaper":Z
    :goto_2
    move-object/from16 v0, p0

    #@41
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@43
    move/from16 v30, v0

    #@45
    if-eqz v30, :cond_4

    #@47
    .line 258
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowList;->size()I

    #@4a
    move-result v30

    #@4b
    add-int/lit8 v14, v30, -0x1

    #@4d
    .local v14, "i":I
    :goto_3
    if-ltz v14, :cond_4

    #@4f
    .line 259
    move-object/from16 v0, v29

    #@51
    invoke-virtual {v0, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v27

    #@55
    check-cast v27, Lcom/android/server/wm/WindowState;

    #@57
    .line 260
    .local v27, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@5b
    move-object/from16 v30, v0

    #@5d
    move-object/from16 v0, v27

    #@5f
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@61
    move-object/from16 v31, v0

    #@63
    invoke-interface/range {v30 .. v31}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    #@66
    move-result v30

    #@67
    if-nez v30, :cond_3

    #@69
    .line 258
    add-int/lit8 v14, v14, -0x1

    #@6b
    goto :goto_3

    #@6c
    .line 251
    .end local v14    # "i":I
    .end local v15    # "keyguardGoingAwayNoAnimation":Z
    .end local v16    # "keyguardGoingAwayToShade":Z
    .end local v17    # "keyguardGoingAwayWithWallpaper":Z
    .end local v27    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    const/16 v16, 0x0

    #@6e
    .restart local v16    # "keyguardGoingAwayToShade":Z
    goto :goto_0

    #@6f
    .line 253
    :cond_1
    const/4 v15, 0x0

    #@70
    .restart local v15    # "keyguardGoingAwayNoAnimation":Z
    goto :goto_1

    #@71
    .line 255
    :cond_2
    const/16 v17, 0x0

    #@73
    .restart local v17    # "keyguardGoingAwayWithWallpaper":Z
    goto :goto_2

    #@74
    .line 263
    .restart local v14    # "i":I
    .restart local v27    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    move-object/from16 v0, v27

    #@76
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@78
    move-object/from16 v28, v0

    #@7a
    .line 264
    .local v28, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v27

    #@7c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@7e
    move-object/from16 v30, v0

    #@80
    move-object/from16 v0, v30

    #@82
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@84
    move/from16 v30, v0

    #@86
    move/from16 v0, v30

    #@88
    and-int/lit16 v0, v0, 0x400

    #@8a
    move/from16 v30, v0

    #@8c
    if-eqz v30, :cond_d

    #@8e
    .line 265
    move-object/from16 v0, v28

    #@90
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@92
    move/from16 v30, v0

    #@94
    if-nez v30, :cond_4

    #@96
    .line 270
    new-instance v30, Landroid/view/animation/AlphaAnimation;

    #@98
    const/high16 v31, 0x3f800000    # 1.0f

    #@9a
    const/high16 v32, 0x3f800000    # 1.0f

    #@9c
    invoke-direct/range {v30 .. v32}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@9f
    move-object/from16 v0, v30

    #@a1
    move-object/from16 v1, v28

    #@a3
    iput-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@a5
    .line 271
    move-object/from16 v0, v28

    #@a7
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@a9
    move-object/from16 v30, v0

    #@ab
    const-wide/16 v32, 0x3e8

    #@ad
    move-object/from16 v0, v30

    #@af
    move-wide/from16 v1, v32

    #@b1
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    #@b4
    .line 272
    const/16 v30, 0x0

    #@b6
    move/from16 v0, v30

    #@b8
    move-object/from16 v1, v28

    #@ba
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@bc
    .line 273
    const-wide/16 v30, -0x1

    #@be
    move-wide/from16 v0, v30

    #@c0
    move-object/from16 v2, v28

    #@c2
    iput-wide v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    #@c4
    .line 274
    const/16 v30, 0x1

    #@c6
    move/from16 v0, v30

    #@c8
    move-object/from16 v1, v28

    #@ca
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@cc
    .line 275
    move/from16 v0, v17

    #@ce
    move-object/from16 v1, v28

    #@d0
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    #@d2
    .line 288
    .end local v14    # "i":I
    .end local v27    # "win":Lcom/android/server/wm/WindowState;
    .end local v28    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_4
    :goto_4
    const/16 v30, 0x0

    #@d4
    move/from16 v0, v30

    #@d6
    move-object/from16 v1, p0

    #@d8
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@da
    .line 290
    const/16 v25, 0x0

    #@dc
    .line 291
    .local v25, "wallpaperInUnForceHiding":Z
    const/16 v20, 0x0

    #@de
    .line 292
    .local v20, "startingInUnForceHiding":Z
    const/16 v21, 0x0

    #@e0
    .line 293
    .local v21, "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/16 v23, 0x0

    #@e2
    .line 294
    .local v23, "wallpaper":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    #@e4
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e6
    move-object/from16 v30, v0

    #@e8
    move-object/from16 v0, v30

    #@ea
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@ec
    move-object/from16 v24, v0

    #@ee
    .line 295
    .local v24, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowList;->size()I

    #@f1
    move-result v30

    #@f2
    add-int/lit8 v14, v30, -0x1

    #@f4
    .end local v21    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .end local v23    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v14    # "i":I
    :goto_5
    if-ltz v14, :cond_21

    #@f6
    .line 296
    move-object/from16 v0, v29

    #@f8
    invoke-virtual {v0, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@fb
    move-result-object v27

    #@fc
    check-cast v27, Lcom/android/server/wm/WindowState;

    #@fe
    .line 297
    .restart local v27    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v27

    #@100
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@102
    move-object/from16 v28, v0

    #@104
    .line 298
    .restart local v28    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v27

    #@106
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@108
    move-object/from16 v30, v0

    #@10a
    move-object/from16 v0, v30

    #@10c
    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@10e
    .line 299
    .local v13, "flags":I
    move-object/from16 v0, p0

    #@110
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@112
    move-object/from16 v30, v0

    #@114
    move-object/from16 v0, v27

    #@116
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@118
    move-object/from16 v31, v0

    #@11a
    move-object/from16 v0, v30

    #@11c
    move-object/from16 v1, v27

    #@11e
    move-object/from16 v2, v31

    #@120
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    #@123
    move-result v10

    #@124
    .line 300
    .local v10, "canBeForceHidden":Z
    move-object/from16 v0, p0

    #@126
    move-object/from16 v1, v27

    #@128
    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimator;->shouldForceHide(Lcom/android/server/wm/WindowState;)Z

    #@12b
    move-result v19

    #@12c
    .line 301
    .local v19, "shouldBeForceHidden":Z
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    #@12f
    move-result v30

    #@130
    if-eqz v30, :cond_1f

    #@132
    .line 302
    move-object/from16 v0, v28

    #@134
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    #@136
    move/from16 v26, v0

    #@138
    .line 303
    .local v26, "wasAnimating":Z
    move-object/from16 v0, p0

    #@13a
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@13c
    move-wide/from16 v30, v0

    #@13e
    move-object/from16 v0, v28

    #@140
    move-wide/from16 v1, v30

    #@142
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    #@145
    move-result v18

    #@146
    .line 304
    .local v18, "nowAnimating":Z
    move/from16 v0, v18

    #@148
    move-object/from16 v1, v28

    #@14a
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    #@14c
    .line 305
    move-object/from16 v0, p0

    #@14e
    move/from16 v1, v18

    #@150
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    #@153
    .line 312
    if-eqz v26, :cond_5

    #@155
    move-object/from16 v0, v28

    #@157
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@159
    move/from16 v30, v0

    #@15b
    if-eqz v30, :cond_e

    #@15d
    .line 324
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    #@15f
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@161
    move-object/from16 v30, v0

    #@163
    move-object/from16 v0, v27

    #@165
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@167
    move-object/from16 v31, v0

    #@169
    invoke-interface/range {v30 .. v31}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    #@16c
    move-result v30

    #@16d
    if-eqz v30, :cond_12

    #@16f
    .line 325
    if-nez v26, :cond_f

    #@171
    if-eqz v18, :cond_f

    #@173
    .line 329
    move-object/from16 v0, p0

    #@175
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@177
    move/from16 v30, v0

    #@179
    or-int/lit8 v30, v30, 0x4

    #@17b
    move/from16 v0, v30

    #@17d
    move-object/from16 v1, p0

    #@17f
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@181
    .line 331
    const/16 v30, 0x4

    #@183
    .line 330
    move-object/from16 v0, p0

    #@185
    move/from16 v1, p1

    #@187
    move/from16 v2, v30

    #@189
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@18c
    .line 337
    move-object/from16 v0, p0

    #@18e
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@190
    move-object/from16 v30, v0

    #@192
    const/16 v31, 0x1

    #@194
    move/from16 v0, v31

    #@196
    move-object/from16 v1, v30

    #@198
    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@19a
    .line 344
    :cond_6
    :goto_7
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    #@19d
    move-result v30

    #@19e
    if-eqz v30, :cond_7

    #@1a0
    .line 345
    if-eqz v18, :cond_10

    #@1a2
    move-object/from16 v0, v27

    #@1a4
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1a6
    move-object/from16 v30, v0

    #@1a8
    move-object/from16 v0, v30

    #@1aa
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@1ac
    move/from16 v30, v0

    #@1ae
    if-eqz v30, :cond_10

    #@1b0
    .line 346
    const/16 v30, 0x2

    #@1b2
    move/from16 v0, v30

    #@1b4
    move-object/from16 v1, p0

    #@1b6
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@1b8
    .line 450
    .end local v18    # "nowAnimating":Z
    .end local v26    # "wasAnimating":Z
    :cond_7
    :goto_8
    move-object/from16 v0, v27

    #@1ba
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1bc
    .line 451
    .local v9, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v28

    #@1be
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@1c0
    move/from16 v30, v0

    #@1c2
    const/16 v31, 0x3

    #@1c4
    move/from16 v0, v30

    #@1c6
    move/from16 v1, v31

    #@1c8
    if-ne v0, v1, :cond_9

    #@1ca
    .line 452
    if-eqz v9, :cond_8

    #@1cc
    iget-boolean v0, v9, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@1ce
    move/from16 v30, v0

    #@1d0
    if-eqz v30, :cond_9

    #@1d2
    .line 453
    :cond_8
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    #@1d5
    move-result v30

    #@1d6
    if-eqz v30, :cond_9

    #@1d8
    .line 455
    const/16 v30, 0x8

    #@1da
    .line 454
    move-object/from16 v0, p0

    #@1dc
    move/from16 v1, p1

    #@1de
    move/from16 v2, v30

    #@1e0
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@1e3
    .line 464
    :cond_9
    move-object/from16 v0, v28

    #@1e5
    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@1e7
    .line 465
    .local v7, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v7, :cond_b

    #@1e9
    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@1eb
    move-object/from16 v30, v0

    #@1ed
    if-eqz v30, :cond_b

    #@1ef
    .line 466
    iget v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    #@1f1
    move/from16 v30, v0

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    #@1f7
    move/from16 v31, v0

    #@1f9
    move/from16 v0, v30

    #@1fb
    move/from16 v1, v31

    #@1fd
    if-eq v0, v1, :cond_a

    #@1ff
    .line 467
    move-object/from16 v0, p0

    #@201
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    #@203
    move/from16 v30, v0

    #@205
    move/from16 v0, v30

    #@207
    iput v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    #@209
    .line 468
    const/16 v30, 0x0

    #@20b
    move/from16 v0, v30

    #@20d
    iput v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@20f
    .line 470
    :cond_a
    iget v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@211
    move/from16 v30, v0

    #@213
    move-object/from16 v0, v28

    #@215
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@217
    move/from16 v31, v0

    #@219
    move/from16 v0, v30

    #@21b
    move/from16 v1, v31

    #@21d
    if-ge v0, v1, :cond_b

    #@21f
    .line 471
    move-object/from16 v0, v28

    #@221
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@223
    move/from16 v30, v0

    #@225
    move/from16 v0, v30

    #@227
    iput v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@229
    .line 474
    :cond_b
    move-object/from16 v0, v27

    #@22b
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@22d
    move/from16 v30, v0

    #@22f
    if-eqz v30, :cond_c

    #@231
    .line 475
    move-object/from16 v23, v27

    #@233
    .line 295
    .end local v7    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v9    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_c
    :goto_9
    add-int/lit8 v14, v14, -0x1

    #@235
    goto/16 :goto_5

    #@237
    .line 281
    .end local v10    # "canBeForceHidden":Z
    .end local v13    # "flags":I
    .end local v19    # "shouldBeForceHidden":Z
    .end local v20    # "startingInUnForceHiding":Z
    .end local v24    # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    .end local v25    # "wallpaperInUnForceHiding":Z
    :cond_d
    const/16 v30, 0x0

    #@239
    move/from16 v0, v30

    #@23b
    move-object/from16 v1, p0

    #@23d
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@23f
    .line 282
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    #@242
    goto/16 :goto_4

    #@244
    .line 313
    .restart local v10    # "canBeForceHidden":Z
    .restart local v13    # "flags":I
    .restart local v18    # "nowAnimating":Z
    .restart local v19    # "shouldBeForceHidden":Z
    .restart local v20    # "startingInUnForceHiding":Z
    .restart local v24    # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    .restart local v25    # "wallpaperInUnForceHiding":Z
    .restart local v26    # "wasAnimating":Z
    :cond_e
    move-object/from16 v0, v24

    #@246
    move-object/from16 v1, v27

    #@248
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    #@24b
    move-result v30

    #@24c
    .line 312
    if-eqz v30, :cond_5

    #@24e
    .line 314
    move-object/from16 v0, p0

    #@250
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@252
    move/from16 v30, v0

    #@254
    or-int/lit8 v30, v30, 0x2

    #@256
    move/from16 v0, v30

    #@258
    move-object/from16 v1, p0

    #@25a
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@25c
    .line 315
    const/16 v30, 0x0

    #@25e
    .line 316
    const/16 v31, 0x4

    #@260
    .line 315
    move-object/from16 v0, p0

    #@262
    move/from16 v1, v30

    #@264
    move/from16 v2, v31

    #@266
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@269
    goto/16 :goto_6

    #@26b
    .line 338
    :cond_f
    move-object/from16 v0, p0

    #@26d
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@26f
    move/from16 v30, v0

    #@271
    if-eqz v30, :cond_6

    #@273
    if-nez v18, :cond_6

    #@275
    .line 340
    sget-object v30, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    #@277
    const-string/jumbo v31, "Timeout waiting for animation to startup"

    #@27a
    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27d
    .line 341
    move-object/from16 v0, p0

    #@27f
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@281
    move-object/from16 v30, v0

    #@283
    const-wide/16 v32, 0x0

    #@285
    const-wide/16 v34, 0x0

    #@287
    move-object/from16 v0, v30

    #@289
    move-wide/from16 v1, v32

    #@28b
    move-wide/from16 v3, v34

    #@28d
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    #@290
    .line 342
    const/16 v30, 0x0

    #@292
    move/from16 v0, v30

    #@294
    move-object/from16 v1, p0

    #@296
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@298
    goto/16 :goto_7

    #@29a
    .line 348
    :cond_10
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@29d
    move-result v30

    #@29e
    if-eqz v30, :cond_11

    #@2a0
    const/16 v30, 0x1

    #@2a2
    :goto_a
    move/from16 v0, v30

    #@2a4
    move-object/from16 v1, p0

    #@2a6
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@2a8
    goto/16 :goto_8

    #@2aa
    :cond_11
    const/16 v30, 0x0

    #@2ac
    goto :goto_a

    #@2ad
    .line 360
    :cond_12
    if-eqz v10, :cond_7

    #@2af
    .line 361
    if-eqz v19, :cond_14

    #@2b1
    .line 362
    const/16 v30, 0x0

    #@2b3
    const/16 v31, 0x0

    #@2b5
    move-object/from16 v0, v27

    #@2b7
    move/from16 v1, v30

    #@2b9
    move/from16 v2, v31

    #@2bb
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    #@2be
    move-result v30

    #@2bf
    if-eqz v30, :cond_c

    #@2c1
    .line 427
    :cond_13
    :goto_b
    const/high16 v30, 0x100000

    #@2c3
    and-int v30, v30, v13

    #@2c5
    if-eqz v30, :cond_7

    #@2c7
    .line 428
    move-object/from16 v0, p0

    #@2c9
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@2cb
    move/from16 v30, v0

    #@2cd
    or-int/lit8 v30, v30, 0x2

    #@2cf
    move/from16 v0, v30

    #@2d1
    move-object/from16 v1, p0

    #@2d3
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@2d5
    .line 429
    const/16 v30, 0x0

    #@2d7
    .line 430
    const/16 v31, 0x4

    #@2d9
    .line 429
    move-object/from16 v0, p0

    #@2db
    move/from16 v1, v30

    #@2dd
    move/from16 v2, v31

    #@2df
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@2e2
    goto/16 :goto_8

    #@2e4
    .line 369
    :cond_14
    move-object/from16 v0, p0

    #@2e6
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@2e8
    move-object/from16 v30, v0

    #@2ea
    if-eqz v30, :cond_15

    #@2ec
    .line 370
    move-object/from16 v0, p0

    #@2ee
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@2f0
    move-object/from16 v30, v0

    #@2f2
    invoke-virtual/range {v30 .. v30}, Landroid/view/animation/Animation;->hasEnded()Z

    #@2f5
    move-result v30

    #@2f6
    if-eqz v30, :cond_17

    #@2f8
    .line 369
    :cond_15
    const/4 v8, 0x0

    #@2f9
    .line 379
    .local v8, "applyExistingExitAnimation":Z
    :goto_c
    const/16 v30, 0x0

    #@2fb
    const/16 v31, 0x0

    #@2fd
    move-object/from16 v0, v27

    #@2ff
    move/from16 v1, v30

    #@301
    move/from16 v2, v31

    #@303
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    #@306
    move-result v30

    #@307
    if-nez v30, :cond_16

    #@309
    if-eqz v8, :cond_c

    #@30b
    .line 382
    :cond_16
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    #@30e
    move-result v22

    #@30f
    .line 383
    .local v22, "visibleNow":Z
    if-nez v22, :cond_19

    #@311
    .line 385
    const/16 v30, 0x0

    #@313
    const/16 v31, 0x0

    #@315
    move-object/from16 v0, v27

    #@317
    move/from16 v1, v30

    #@319
    move/from16 v2, v31

    #@31b
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    #@31e
    goto/16 :goto_9

    #@320
    .line 371
    .end local v8    # "applyExistingExitAnimation":Z
    .end local v22    # "visibleNow":Z
    :cond_17
    move-object/from16 v0, v28

    #@322
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@324
    move/from16 v30, v0

    #@326
    if-nez v30, :cond_15

    #@328
    .line 372
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    #@32b
    move-result v30

    #@32c
    .line 369
    if-eqz v30, :cond_15

    #@32e
    .line 373
    move-object/from16 v0, v27

    #@330
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@332
    move-object/from16 v30, v0

    #@334
    if-nez v30, :cond_15

    #@336
    .line 374
    move-object/from16 v0, v27

    #@338
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@33a
    move/from16 v30, v0

    #@33c
    if-nez v30, :cond_15

    #@33e
    .line 375
    if-nez p1, :cond_18

    #@340
    const/4 v8, 0x1

    #@341
    .restart local v8    # "applyExistingExitAnimation":Z
    goto :goto_c

    #@342
    .end local v8    # "applyExistingExitAnimation":Z
    :cond_18
    const/4 v8, 0x0

    #@343
    .restart local v8    # "applyExistingExitAnimation":Z
    goto :goto_c

    #@344
    .line 390
    .restart local v22    # "visibleNow":Z
    :cond_19
    move-object/from16 v0, p0

    #@346
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@348
    move/from16 v30, v0

    #@34a
    and-int/lit8 v30, v30, 0x4

    #@34c
    if-eqz v30, :cond_1e

    #@34e
    .line 391
    move-object/from16 v0, v27

    #@350
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@352
    move-object/from16 v30, v0

    #@354
    if-nez v30, :cond_1e

    #@356
    .line 392
    if-nez v21, :cond_1a

    #@358
    .line 393
    new-instance v21, Ljava/util/ArrayList;

    #@35a
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    #@35d
    .line 395
    :cond_1a
    move-object/from16 v0, v21

    #@35f
    move-object/from16 v1, v28

    #@361
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@364
    .line 396
    const/high16 v30, 0x100000

    #@366
    and-int v30, v30, v13

    #@368
    if-eqz v30, :cond_1b

    #@36a
    .line 397
    const/16 v25, 0x1

    #@36c
    .line 399
    :cond_1b
    move-object/from16 v0, v27

    #@36e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@370
    move-object/from16 v30, v0

    #@372
    move-object/from16 v0, v30

    #@374
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@376
    move/from16 v30, v0

    #@378
    const/16 v31, 0x3

    #@37a
    move/from16 v0, v30

    #@37c
    move/from16 v1, v31

    #@37e
    if-ne v0, v1, :cond_1c

    #@380
    .line 400
    const/16 v20, 0x1

    #@382
    .line 417
    :cond_1c
    :goto_d
    move-object/from16 v0, p0

    #@384
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@386
    move-object/from16 v30, v0

    #@388
    move-object/from16 v0, v30

    #@38a
    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    #@38c
    .line 418
    .local v11, "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v11, :cond_1d

    #@38e
    iget v0, v11, Lcom/android/server/wm/WindowState;->mLayer:I

    #@390
    move/from16 v30, v0

    #@392
    move-object/from16 v0, v27

    #@394
    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@396
    move/from16 v31, v0

    #@398
    move/from16 v0, v30

    #@39a
    move/from16 v1, v31

    #@39c
    if-ge v0, v1, :cond_13

    #@39e
    .line 424
    :cond_1d
    move-object/from16 v0, p0

    #@3a0
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3a2
    move-object/from16 v30, v0

    #@3a4
    const/16 v31, 0x1

    #@3a6
    move/from16 v0, v31

    #@3a8
    move-object/from16 v1, v30

    #@3aa
    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@3ac
    goto/16 :goto_b

    #@3ae
    .line 402
    .end local v11    # "currentFocus":Lcom/android/server/wm/WindowState;
    :cond_1e
    if-eqz v8, :cond_1c

    #@3b0
    .line 409
    move-object/from16 v0, p0

    #@3b2
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@3b4
    move-object/from16 v30, v0

    #@3b6
    const/16 v31, 0x0

    #@3b8
    move-object/from16 v0, v30

    #@3ba
    move/from16 v1, v31

    #@3bc
    move/from16 v2, v16

    #@3be
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    #@3c1
    move-result-object v6

    #@3c2
    .line 411
    .local v6, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@3c4
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@3c6
    move-object/from16 v30, v0

    #@3c8
    invoke-virtual/range {v30 .. v30}, Landroid/view/animation/Animation;->getStartTime()J

    #@3cb
    move-result-wide v30

    #@3cc
    .line 412
    const/16 v32, 0x1

    #@3ce
    .line 411
    move-object/from16 v0, v28

    #@3d0
    move-wide/from16 v1, v30

    #@3d2
    move/from16 v3, v32

    #@3d4
    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;JI)V

    #@3d7
    .line 413
    const/16 v30, 0x1

    #@3d9
    move/from16 v0, v30

    #@3db
    move-object/from16 v1, v28

    #@3dd
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@3df
    .line 414
    move/from16 v0, v17

    #@3e1
    move-object/from16 v1, v28

    #@3e3
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    #@3e5
    goto :goto_d

    #@3e6
    .line 442
    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v8    # "applyExistingExitAnimation":Z
    .end local v18    # "nowAnimating":Z
    .end local v22    # "visibleNow":Z
    .end local v26    # "wasAnimating":Z
    :cond_1f
    if-eqz v10, :cond_7

    #@3e8
    .line 443
    if-eqz v19, :cond_20

    #@3ea
    .line 444
    const/16 v30, 0x0

    #@3ec
    const/16 v31, 0x0

    #@3ee
    move-object/from16 v0, v27

    #@3f0
    move/from16 v1, v30

    #@3f2
    move/from16 v2, v31

    #@3f4
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    #@3f7
    goto/16 :goto_8

    #@3f9
    .line 446
    :cond_20
    const/16 v30, 0x0

    #@3fb
    const/16 v31, 0x0

    #@3fd
    move-object/from16 v0, v27

    #@3ff
    move/from16 v1, v30

    #@401
    move/from16 v2, v31

    #@403
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    #@406
    goto/16 :goto_8

    #@408
    .line 482
    .end local v10    # "canBeForceHidden":Z
    .end local v13    # "flags":I
    .end local v19    # "shouldBeForceHidden":Z
    .end local v27    # "win":Lcom/android/server/wm/WindowState;
    .end local v28    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_21
    if-eqz v21, :cond_27

    #@40a
    .line 483
    if-nez v15, :cond_25

    #@40c
    .line 484
    const/4 v12, 0x1

    #@40d
    .line 485
    .local v12, "first":Z
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    #@410
    move-result v30

    #@411
    add-int/lit8 v14, v30, -0x1

    #@413
    :goto_e
    if-ltz v14, :cond_26

    #@415
    .line 486
    move-object/from16 v0, v21

    #@417
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41a
    move-result-object v28

    #@41b
    check-cast v28, Lcom/android/server/wm/WindowStateAnimator;

    #@41d
    .line 487
    .restart local v28    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    #@41f
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@421
    move-object/from16 v31, v0

    #@423
    .line 488
    if-eqz v25, :cond_22

    #@425
    if-eqz v20, :cond_24

    #@427
    :cond_22
    const/16 v30, 0x0

    #@429
    .line 487
    :goto_f
    move-object/from16 v0, v31

    #@42b
    move/from16 v1, v30

    #@42d
    move/from16 v2, v16

    #@42f
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    #@432
    move-result-object v6

    #@433
    .line 490
    .restart local v6    # "a":Landroid/view/animation/Animation;
    if-eqz v6, :cond_23

    #@435
    .line 493
    const/16 v30, 0x1

    #@437
    move-object/from16 v0, v28

    #@439
    move/from16 v1, v30

    #@43b
    invoke-virtual {v0, v6, v1}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;I)V

    #@43e
    .line 494
    const/16 v30, 0x1

    #@440
    move/from16 v0, v30

    #@442
    move-object/from16 v1, v28

    #@444
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@446
    .line 495
    move/from16 v0, v17

    #@448
    move-object/from16 v1, v28

    #@44a
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    #@44c
    .line 497
    if-eqz v12, :cond_23

    #@44e
    .line 498
    move-object/from16 v0, p0

    #@450
    iput-object v6, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@452
    .line 499
    move-object/from16 v0, p0

    #@454
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@456
    move-object/from16 v30, v0

    #@458
    move-object/from16 v0, p0

    #@45a
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@45c
    move-wide/from16 v32, v0

    #@45e
    move-object/from16 v0, v30

    #@460
    move-wide/from16 v1, v32

    #@462
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@465
    .line 500
    const/4 v12, 0x0

    #@466
    .line 485
    :cond_23
    add-int/lit8 v14, v14, -0x1

    #@468
    goto :goto_e

    #@469
    .line 488
    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_24
    const/16 v30, 0x1

    #@46b
    goto :goto_f

    #@46c
    .line 504
    .end local v12    # "first":Z
    .end local v28    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_25
    move-object/from16 v0, p0

    #@46e
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@470
    move/from16 v30, v0

    #@472
    if-eqz v30, :cond_26

    #@474
    .line 505
    move-object/from16 v0, p0

    #@476
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@478
    move-object/from16 v30, v0

    #@47a
    move-object/from16 v0, p0

    #@47c
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@47e
    move-wide/from16 v32, v0

    #@480
    const-wide/16 v34, 0x0

    #@482
    move-object/from16 v0, v30

    #@484
    move-wide/from16 v1, v32

    #@486
    move-wide/from16 v3, v34

    #@488
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    #@48b
    .line 506
    const/16 v30, 0x0

    #@48d
    move/from16 v0, v30

    #@48f
    move-object/from16 v1, p0

    #@491
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@493
    .line 511
    :cond_26
    if-nez v25, :cond_27

    #@495
    if-eqz v23, :cond_27

    #@497
    if-eqz v15, :cond_29

    #@499
    .line 521
    :cond_27
    :goto_10
    move-object/from16 v0, p0

    #@49b
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@49d
    move-object/from16 v30, v0

    #@49f
    if-eqz v30, :cond_28

    #@4a1
    .line 523
    move-object/from16 v0, p0

    #@4a3
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@4a5
    move/from16 v30, v0

    #@4a7
    if-eqz v30, :cond_2a

    #@4a9
    .line 524
    move-object/from16 v0, p0

    #@4ab
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4ad
    move-object/from16 v30, v0

    #@4af
    move-object/from16 v0, p0

    #@4b1
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@4b3
    move-wide/from16 v32, v0

    #@4b5
    .line 525
    move-object/from16 v0, p0

    #@4b7
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@4b9
    move-object/from16 v31, v0

    #@4bb
    invoke-virtual/range {v31 .. v31}, Landroid/view/animation/Animation;->getStartOffset()J

    #@4be
    move-result-wide v34

    #@4bf
    .line 524
    add-long v32, v32, v34

    #@4c1
    .line 526
    move-object/from16 v0, p0

    #@4c3
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@4c5
    move-object/from16 v31, v0

    #@4c7
    invoke-virtual/range {v31 .. v31}, Landroid/view/animation/Animation;->getDuration()J

    #@4ca
    move-result-wide v34

    #@4cb
    .line 524
    move-object/from16 v0, v30

    #@4cd
    move-wide/from16 v1, v32

    #@4cf
    move-wide/from16 v3, v34

    #@4d1
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    #@4d4
    .line 527
    const/16 v30, 0x0

    #@4d6
    move/from16 v0, v30

    #@4d8
    move-object/from16 v1, p0

    #@4da
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@4dc
    .line 245
    :cond_28
    :goto_11
    return-void

    #@4dd
    .line 513
    :cond_29
    move-object/from16 v0, p0

    #@4df
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4e1
    move-object/from16 v30, v0

    #@4e3
    move-object/from16 v0, v30

    #@4e5
    move/from16 v1, v16

    #@4e7
    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;

    #@4ea
    move-result-object v6

    #@4eb
    .line 515
    .restart local v6    # "a":Landroid/view/animation/Animation;
    if-eqz v6, :cond_27

    #@4ed
    .line 516
    move-object/from16 v0, v23

    #@4ef
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4f1
    move-object/from16 v30, v0

    #@4f3
    move-object/from16 v0, v30

    #@4f5
    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    #@4f8
    goto :goto_10

    #@4f9
    .line 532
    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_2a
    move-object/from16 v0, p0

    #@4fb
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@4fd
    move-object/from16 v30, v0

    #@4ff
    invoke-virtual/range {v30 .. v30}, Landroid/view/animation/Animation;->hasEnded()Z

    #@502
    move-result v30

    #@503
    if-nez v30, :cond_2b

    #@505
    .line 533
    move-object/from16 v0, p0

    #@507
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@509
    move-wide/from16 v30, v0

    #@50b
    move-object/from16 v0, p0

    #@50d
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@50f
    move-object/from16 v32, v0

    #@511
    invoke-virtual/range {v32 .. v32}, Landroid/view/animation/Animation;->getStartTime()J

    #@514
    move-result-wide v32

    #@515
    sub-long v30, v30, v32

    #@517
    .line 534
    move-object/from16 v0, p0

    #@519
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@51b
    move-object/from16 v32, v0

    #@51d
    invoke-virtual/range {v32 .. v32}, Landroid/view/animation/Animation;->getDuration()J

    #@520
    move-result-wide v32

    #@521
    .line 533
    cmp-long v30, v30, v32

    #@523
    if-lez v30, :cond_28

    #@525
    .line 537
    :cond_2b
    const/16 v30, 0x0

    #@527
    move-object/from16 v0, v30

    #@529
    move-object/from16 v1, p0

    #@52b
    iput-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@52d
    goto :goto_11
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@3
    .line 149
    if-nez p1, :cond_0

    #@5
    .line 150
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    #@8
    .line 146
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
    .line 844
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
    .line 845
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
    .line 847
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
    .line 848
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    const-string/jumbo v8, "DisplayContentsAnimator #"

    #@37
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    .line 849
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@3c
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@3f
    move-result v8

    #@40
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    #@43
    .line 850
    const-string/jumbo v8, ":"

    #@46
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 851
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@4b
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@4e
    move-result-object v1

    #@4f
    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@51
    .line 853
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
    .line 854
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    #@60
    move-result v0

    #@61
    .line 855
    .local v0, "N":I
    const/4 v3, 0x0

    #@62
    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    #@64
    .line 856
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@67
    move-result-object v8

    #@68
    check-cast v8, Lcom/android/server/wm/WindowState;

    #@6a
    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@6c
    .line 857
    .local v6, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    const-string/jumbo v8, "Window #"

    #@72
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@75
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@78
    .line 858
    const-string/jumbo v8, ": "

    #@7b
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@81
    .line 855
    add-int/lit8 v3, v3, 0x1

    #@83
    goto :goto_1

    #@84
    .line 860
    .end local v6    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@86
    if-eqz v8, :cond_2

    #@88
    .line 861
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8b
    const-string/jumbo v8, "mScreenRotationAnimation:"

    #@8e
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@91
    .line 862
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@93
    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@96
    .line 866
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@99
    .line 847
    add-int/lit8 v2, v2, 0x1

    #@9b
    goto :goto_0

    #@9c
    .line 863
    :cond_2
    if-eqz p3, :cond_1

    #@9e
    .line 864
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a1
    const-string/jumbo v8, "no ScreenRotationAnimation "

    #@a4
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a7
    goto :goto_2

    #@a8
    .line 869
    .end local v0    # "N":I
    .end local v1    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3    # "j":I
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@ab
    .line 871
    if-eqz p3, :cond_4

    #@ad
    .line 872
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b0
    const-string/jumbo v8, "mAnimTransactionSequence="

    #@b3
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b6
    .line 873
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    #@b8
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    #@bb
    .line 874
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
    .line 875
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cb
    const-string/jumbo v8, "mCurrentTime="

    #@ce
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d1
    .line 876
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@d3
    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@d6
    move-result-object v8

    #@d7
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@da
    .line 878
    :cond_4
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@dc
    if-eqz v8, :cond_5

    #@de
    .line 879
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e1
    const-string/jumbo v8, "mBulkUpdateParams=0x"

    #@e4
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e7
    .line 880
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@e9
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@ec
    move-result-object v8

    #@ed
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f0
    .line 881
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@f2
    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    #@f5
    move-result-object v8

    #@f6
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f9
    .line 883
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@fb
    if-eqz v8, :cond_6

    #@fd
    .line 884
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@100
    const-string/jumbo v8, "mWindowDetachedWallpaper="

    #@103
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@106
    .line 885
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@108
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@10b
    .line 843
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
    .line 890
    if-gez p1, :cond_0

    #@3
    .line 891
    return v1

    #@4
    .line 893
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@9
    move-result-object v0

    #@a
    .line 894
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
    .line 938
    if-gez p1, :cond_0

    #@2
    .line 939
    const/4 v0, 0x0

    #@3
    return-object v0

    #@4
    .line 941
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
    .line 953
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@2
    return v0
.end method

.method orAnimating(Z)V
    .locals 1
    .param p1, "animating"    # Z

    #@0
    .prologue
    .line 961
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@2
    or-int/2addr v0, p1

    #@3
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@5
    .line 960
    return-void
.end method

.method removeDisplayLocked(I)V
    .locals 3
    .param p1, "displayId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 155
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@9
    .line 156
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_0

    #@b
    .line 157
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 158
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@11
    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    #@14
    .line 159
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@16
    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    #@1b
    .line 154
    return-void
.end method

.method requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    .line 945
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    #@3
    .line 944
    return-void
.end method

.method setAnimating(Z)V
    .locals 0
    .param p1, "animating"    # Z

    #@0
    .prologue
    .line 957
    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@2
    .line 956
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
    .line 909
    iget-object v2, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@4
    .line 910
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
    .line 911
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
    .line 912
    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@1b
    .line 908
    :cond_0
    return-void

    #@1c
    .line 910
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
    .line 898
    if-gez p1, :cond_0

    #@2
    .line 899
    return-void

    #@3
    .line 901
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@8
    move-result-object v0

    #@9
    .line 902
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    #@b
    .line 903
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@d
    or-int/2addr v1, p2

    #@e
    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@10
    .line 897
    :cond_1
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/ScreenRotationAnimation;

    #@0
    .prologue
    .line 932
    if-ltz p1, :cond_0

    #@2
    .line 933
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@5
    move-result-object v0

    #@6
    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@8
    .line 931
    :cond_0
    return-void
.end method
