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

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"


# instance fields
.field private mAnimTransactionSequence:I

.field mAnimating:Z

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

.field mKeyguardGoingAwayDisableWindowAnimations:Z

.field mKeyguardGoingAwayToNotificationShade:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;


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

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 82
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@7
    .line 84
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@9
    .line 88
    new-instance v0, Landroid/util/SparseArray;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@f
    .line 87
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@11
    .line 90
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    #@13
    .line 103
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@15
    .line 115
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@17
    .line 116
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@19
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    #@1b
    .line 117
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@1d
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@1f
    .line 119
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    #@21
    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    #@24
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    #@26
    .line 114
    return-void
.end method

.method private animateLocked(J)V
    .locals 23
    .param p1, "frameTimeNs"    # J

    #@0
    .prologue
    .line 631
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    #@4
    move/from16 v19, v0

    #@6
    if-nez v19, :cond_0

    #@8
    .line 632
    return-void

    #@9
    .line 635
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
    .line 636
    const/16 v19, 0x8

    #@16
    move/from16 v0, v19

    #@18
    move-object/from16 v1, p0

    #@1a
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@1c
    .line 637
    move-object/from16 v0, p0

    #@1e
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@20
    move/from16 v17, v0

    #@22
    .line 638
    .local v17, "wasAnimating":Z
    const/16 v19, 0x0

    #@24
    move/from16 v0, v19

    #@26
    move-object/from16 v1, p0

    #@28
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@2a
    .line 639
    const/16 v19, 0x0

    #@2c
    move/from16 v0, v19

    #@2e
    move-object/from16 v1, p0

    #@30
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@32
    .line 646
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@35
    .line 647
    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    #@38
    .line 649
    :try_start_0
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@3c
    move-object/from16 v19, v0

    #@3e
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    #@41
    move-result v14

    #@42
    .line 650
    .local v14, "numDisplays":I
    const/4 v12, 0x0

    #@43
    .local v12, "i":I
    :goto_0
    if-ge v12, v14, :cond_6

    #@45
    .line 651
    move-object/from16 v0, p0

    #@47
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@49
    move-object/from16 v19, v0

    #@4b
    move-object/from16 v0, v19

    #@4d
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    #@50
    move-result v7

    #@51
    .line 652
    .local v7, "displayId":I
    move-object/from16 v0, p0

    #@53
    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked(I)V

    #@56
    .line 653
    move-object/from16 v0, p0

    #@58
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@5a
    move-object/from16 v19, v0

    #@5c
    move-object/from16 v0, v19

    #@5e
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@61
    move-result-object v5

    #@62
    check-cast v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@64
    .line 655
    .local v5, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@66
    move-object/from16 v16, v0

    #@68
    .line 657
    .local v16, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v16, :cond_1

    #@6a
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    #@6d
    move-result v19

    #@6e
    if-eqz v19, :cond_1

    #@70
    .line 658
    move-object/from16 v0, p0

    #@72
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@74
    move-wide/from16 v20, v0

    #@76
    move-object/from16 v0, v16

    #@78
    move-wide/from16 v1, v20

    #@7a
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    #@7d
    move-result v19

    #@7e
    if-eqz v19, :cond_2

    #@80
    .line 659
    const/16 v19, 0x1

    #@82
    move/from16 v0, v19

    #@84
    move-object/from16 v1, p0

    #@86
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@88
    .line 678
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    #@8a
    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    #@8d
    .line 679
    move-object/from16 v0, p0

    #@8f
    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    #@92
    .line 681
    move-object/from16 v0, p0

    #@94
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@96
    move-object/from16 v19, v0

    #@98
    move-object/from16 v0, v19

    #@9a
    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    #@9d
    move-result-object v18

    #@9e
    .line 682
    .local v18, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowList;->size()I

    #@a1
    move-result v4

    #@a2
    .line 683
    .local v4, "N":I
    const/4 v13, 0x0

    #@a3
    .local v13, "j":I
    :goto_2
    if-ge v13, v4, :cond_5

    #@a5
    .line 684
    move-object/from16 v0, v18

    #@a7
    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@aa
    move-result-object v19

    #@ab
    check-cast v19, Lcom/android/server/wm/WindowState;

    #@ad
    move-object/from16 v0, v19

    #@af
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@b1
    move-object/from16 v19, v0

    #@b3
    const/16 v20, 0x1

    #@b5
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    #@b8
    .line 683
    add-int/lit8 v13, v13, 0x1

    #@ba
    goto :goto_2

    #@bb
    .line 661
    .end local v4    # "N":I
    .end local v13    # "j":I
    .end local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_2
    move-object/from16 v0, p0

    #@bd
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@bf
    move/from16 v19, v0

    #@c1
    or-int/lit8 v19, v19, 0x1

    #@c3
    move/from16 v0, v19

    #@c5
    move-object/from16 v1, p0

    #@c7
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@c9
    .line 662
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    #@cc
    .line 663
    const/16 v19, 0x0

    #@ce
    move-object/from16 v0, v19

    #@d0
    iput-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@d2
    .line 666
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d6
    move-object/from16 v19, v0

    #@d8
    move-object/from16 v0, v19

    #@da
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@dc
    move-object/from16 v19, v0

    #@de
    if-eqz v19, :cond_1

    #@e0
    .line 667
    if-nez v7, :cond_1

    #@e2
    .line 670
    move-object/from16 v0, p0

    #@e4
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e6
    move-object/from16 v19, v0

    #@e8
    move-object/from16 v0, v19

    #@ea
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@ec
    move-object/from16 v19, v0

    #@ee
    .line 671
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@f2
    move-object/from16 v20, v0

    #@f4
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@f7
    move-result-object v20

    #@f8
    move-object/from16 v0, p0

    #@fa
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@fc
    move-object/from16 v21, v0

    #@fe
    move-object/from16 v0, v21

    #@100
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    #@102
    move/from16 v21, v0

    #@104
    .line 670
    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@107
    goto :goto_1

    #@108
    .line 717
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v12    # "i":I
    .end local v14    # "numDisplays":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_0
    move-exception v10

    #@109
    .line 718
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v19, "WindowAnimator"

    #@10c
    const-string/jumbo v20, "Unhandled exception in Window Manager"

    #@10f
    move-object/from16 v0, v19

    #@111
    move-object/from16 v1, v20

    #@113
    invoke-static {v0, v1, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@116
    .line 720
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@119
    .line 725
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :goto_3
    const/4 v11, 0x0

    #@11a
    .line 726
    .local v11, "hasPendingLayoutChanges":Z
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@11e
    move-object/from16 v19, v0

    #@120
    move-object/from16 v0, v19

    #@122
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@124
    move-object/from16 v19, v0

    #@126
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    #@129
    move-result v14

    #@12a
    .line 727
    .restart local v14    # "numDisplays":I
    const/4 v8, 0x0

    #@12b
    .local v8, "displayNdx":I
    :goto_4
    if-ge v8, v14, :cond_c

    #@12d
    .line 728
    move-object/from16 v0, p0

    #@12f
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@131
    move-object/from16 v19, v0

    #@133
    move-object/from16 v0, v19

    #@135
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@137
    move-object/from16 v19, v0

    #@139
    move-object/from16 v0, v19

    #@13b
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@13e
    move-result-object v6

    #@13f
    check-cast v6, Lcom/android/server/wm/DisplayContent;

    #@141
    .line 729
    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    #@144
    move-result v19

    #@145
    move-object/from16 v0, p0

    #@147
    move/from16 v1, v19

    #@149
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    #@14c
    move-result v15

    #@14d
    .line 730
    .local v15, "pendingChanges":I
    and-int/lit8 v19, v15, 0x4

    #@14f
    if-eqz v19, :cond_3

    #@151
    .line 731
    move-object/from16 v0, p0

    #@153
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@155
    move/from16 v19, v0

    #@157
    or-int/lit8 v19, v19, 0x20

    #@159
    move/from16 v0, v19

    #@15b
    move-object/from16 v1, p0

    #@15d
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@15f
    .line 733
    :cond_3
    if-eqz v15, :cond_4

    #@161
    .line 734
    const/4 v11, 0x1

    #@162
    .line 727
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@164
    goto :goto_4

    #@165
    .line 650
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

    #@167
    goto/16 :goto_0

    #@169
    .line 688
    .end local v4    # "N":I
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v13    # "j":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_6
    const/4 v12, 0x0

    #@16a
    :goto_5
    if-ge v12, v14, :cond_9

    #@16c
    .line 689
    :try_start_2
    move-object/from16 v0, p0

    #@16e
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@170
    move-object/from16 v19, v0

    #@172
    move-object/from16 v0, v19

    #@174
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    #@177
    move-result v7

    #@178
    .line 691
    .restart local v7    # "displayId":I
    move-object/from16 v0, p0

    #@17a
    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked(I)V

    #@17d
    .line 694
    move-object/from16 v0, p0

    #@17f
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@181
    move-object/from16 v19, v0

    #@183
    move-object/from16 v0, v19

    #@185
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@188
    move-result-object v19

    #@189
    check-cast v19, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@18b
    .line 693
    move-object/from16 v0, v19

    #@18d
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@18f
    move-object/from16 v16, v0

    #@191
    .line 695
    .restart local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v16, :cond_7

    #@193
    .line 696
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    #@196
    .line 699
    :cond_7
    move-object/from16 v0, p0

    #@198
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@19a
    move/from16 v19, v0

    #@19c
    move-object/from16 v0, p0

    #@19e
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1a0
    move-object/from16 v20, v0

    #@1a2
    move-object/from16 v0, v20

    #@1a4
    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@1a7
    move-result-object v20

    #@1a8
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/DisplayContent;->animateDimLayers()Z

    #@1ab
    move-result v20

    #@1ac
    or-int v19, v19, v20

    #@1ae
    move/from16 v0, v19

    #@1b0
    move-object/from16 v1, p0

    #@1b2
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@1b4
    .line 702
    move-object/from16 v0, p0

    #@1b6
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1b8
    move-object/from16 v19, v0

    #@1ba
    move-object/from16 v0, v19

    #@1bc
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@1be
    move-object/from16 v19, v0

    #@1c0
    if-eqz v19, :cond_8

    #@1c2
    .line 703
    if-nez v7, :cond_8

    #@1c4
    .line 704
    move-object/from16 v0, p0

    #@1c6
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1c8
    move-object/from16 v19, v0

    #@1ca
    move-object/from16 v0, v19

    #@1cc
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@1ce
    move-object/from16 v19, v0

    #@1d0
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeededLocked()V

    #@1d3
    .line 688
    :cond_8
    add-int/lit8 v12, v12, 0x1

    #@1d5
    goto :goto_5

    #@1d6
    .line 708
    .end local v7    # "displayId":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_9
    move-object/from16 v0, p0

    #@1d8
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@1da
    move/from16 v19, v0

    #@1dc
    if-eqz v19, :cond_a

    #@1de
    .line 709
    move-object/from16 v0, p0

    #@1e0
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1e2
    move-object/from16 v19, v0

    #@1e4
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@1e7
    .line 712
    :cond_a
    move-object/from16 v0, p0

    #@1e9
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1eb
    move-object/from16 v19, v0

    #@1ed
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackLayer()V

    #@1f0
    .line 714
    move-object/from16 v0, p0

    #@1f2
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1f4
    move-object/from16 v19, v0

    #@1f6
    move-object/from16 v0, v19

    #@1f8
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    #@1fa
    move-object/from16 v19, v0

    #@1fc
    if-eqz v19, :cond_b

    #@1fe
    .line 715
    move-object/from16 v0, p0

    #@200
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@202
    move-object/from16 v19, v0

    #@204
    move-object/from16 v0, v19

    #@206
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    #@208
    move-object/from16 v19, v0

    #@20a
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20d
    .line 720
    :cond_b
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@210
    goto/16 :goto_3

    #@212
    .line 719
    .end local v12    # "i":I
    .end local v14    # "numDisplays":I
    :catchall_0
    move-exception v19

    #@213
    .line 720
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@216
    .line 719
    throw v19

    #@217
    .line 738
    .restart local v8    # "displayNdx":I
    .restart local v11    # "hasPendingLayoutChanges":Z
    .restart local v14    # "numDisplays":I
    :cond_c
    const/4 v9, 0x0

    #@218
    .line 739
    .local v9, "doRequest":Z
    move-object/from16 v0, p0

    #@21a
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@21c
    move/from16 v19, v0

    #@21e
    if-eqz v19, :cond_d

    #@220
    .line 740
    move-object/from16 v0, p0

    #@222
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@224
    move-object/from16 v19, v0

    #@226
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->copyAnimToLayoutParamsLocked()Z

    #@229
    move-result v9

    #@22a
    .line 743
    .end local v9    # "doRequest":Z
    :cond_d
    if-nez v11, :cond_e

    #@22c
    if-eqz v9, :cond_f

    #@22e
    .line 744
    :cond_e
    move-object/from16 v0, p0

    #@230
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@232
    move-object/from16 v19, v0

    #@234
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    #@237
    .line 747
    :cond_f
    move-object/from16 v0, p0

    #@239
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@23b
    move/from16 v19, v0

    #@23d
    if-nez v19, :cond_10

    #@23f
    if-eqz v17, :cond_10

    #@241
    .line 748
    move-object/from16 v0, p0

    #@243
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@245
    move-object/from16 v19, v0

    #@247
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    #@24a
    .line 630
    :cond_10
    return-void
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "bulkUpdateParams"    # I

    #@0
    .prologue
    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 760
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 761
    const-string/jumbo v1, " UPDATE_ROTATION"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 763
    :cond_0
    and-int/lit8 v1, p0, 0x2

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 764
    const-string/jumbo v1, " WALLPAPER_MAY_CHANGE"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 766
    :cond_1
    and-int/lit8 v1, p0, 0x4

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 767
    const-string/jumbo v1, " FORCE_HIDING_CHANGED"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 769
    :cond_2
    and-int/lit8 v1, p0, 0x8

    #@27
    if-eqz v1, :cond_3

    #@29
    .line 770
    const-string/jumbo v1, " ORIENTATION_CHANGE_COMPLETE"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 772
    :cond_3
    and-int/lit8 v1, p0, 0x10

    #@31
    if-eqz v1, :cond_4

    #@33
    .line 773
    const-string/jumbo v1, " TURN_ON_SCREEN"

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 775
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
    .line 106
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 110
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
    .line 107
    :pswitch_0
    const-string/jumbo v0, "KEYGUARD_NOT_SHOWN"

    #@1f
    return-object v0

    #@20
    .line 108
    :pswitch_1
    const-string/jumbo v0, "KEYGUARD_SHOWN"

    #@23
    return-object v0

    #@24
    .line 109
    :pswitch_2
    const-string/jumbo v0, "KEYGUARD_ANIMATING_OUT"

    #@27
    return-object v0

    #@28
    .line 106
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
    .line 857
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@9
    .line 858
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_0

    #@b
    .line 859
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@d
    .end local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;)V

    #@10
    .line 860
    .restart local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@15
    .line 862
    :cond_0
    return-object v0
.end method

.method private shouldForceHide(Lcom/android/server/wm/WindowState;)Z
    .locals 11
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/high16 v10, 0x80000

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 192
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget-object v2, v7, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    #@8
    .line 193
    .local v2, "imeTarget":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_6

    #@a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    #@d
    move-result v7

    #@e
    if-eqz v7, :cond_6

    #@10
    .line 194
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@13
    move-result-object v7

    #@14
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@16
    and-int/2addr v7, v10

    #@17
    if-nez v7, :cond_4

    #@19
    .line 195
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@1b
    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1d
    invoke-interface {v7, v2, v9}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    #@20
    move-result v7

    #@21
    if-eqz v7, :cond_5

    #@23
    const/4 v4, 0x0

    #@24
    .line 197
    .local v4, "showImeOverKeyguard":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@26
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    #@29
    move-result-object v5

    #@2a
    check-cast v5, Lcom/android/server/wm/WindowState;

    #@2c
    .line 198
    .local v5, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    if-nez v5, :cond_7

    #@2e
    .line 199
    const/4 v1, 0x0

    #@2f
    .line 203
    :goto_1
    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@31
    if-nez v7, :cond_0

    #@33
    if-ne v2, p1, :cond_8

    #@35
    :cond_0
    move v0, v4

    #@36
    .line 205
    .local v0, "allowWhenLocked":Z
    :goto_2
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@38
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3a
    and-int/2addr v7, v10

    #@3b
    if-eqz v7, :cond_9

    #@3d
    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@3f
    :goto_3
    or-int/2addr v0, v7

    #@40
    .line 207
    if-eqz v1, :cond_2

    #@42
    .line 208
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@44
    if-eq v1, v7, :cond_a

    #@46
    .line 210
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@48
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@4a
    and-int/2addr v7, v10

    #@4b
    if-eqz v7, :cond_1

    #@4d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    #@50
    move-result v7

    #@51
    .line 208
    if-nez v7, :cond_a

    #@53
    .line 212
    :cond_1
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@55
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@57
    and-int/lit16 v7, v7, 0x100

    #@59
    if-eqz v7, :cond_b

    #@5b
    move v7, v8

    #@5c
    .line 208
    :goto_4
    or-int/2addr v0, v7

    #@5d
    .line 216
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@5f
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    #@62
    move-result v7

    #@63
    if-eqz v7, :cond_d

    #@65
    .line 217
    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@67
    const/4 v9, 0x2

    #@68
    if-eq v7, v9, :cond_c

    #@6a
    const/4 v3, 0x1

    #@6b
    .line 218
    .local v3, "keyguardOn":Z
    :goto_5
    if-eqz v3, :cond_3

    #@6d
    if-eqz v0, :cond_e

    #@6f
    :cond_3
    move v8, v6

    #@70
    :goto_6
    return v8

    #@71
    .line 194
    .end local v0    # "allowWhenLocked":Z
    .end local v3    # "keyguardOn":Z
    .end local v4    # "showImeOverKeyguard":Z
    .end local v5    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_4
    const/4 v4, 0x1

    #@72
    .restart local v4    # "showImeOverKeyguard":Z
    goto :goto_0

    #@73
    .line 195
    .end local v4    # "showImeOverKeyguard":Z
    :cond_5
    const/4 v4, 0x1

    #@74
    .restart local v4    # "showImeOverKeyguard":Z
    goto :goto_0

    #@75
    .line 193
    .end local v4    # "showImeOverKeyguard":Z
    :cond_6
    const/4 v4, 0x0

    #@76
    .restart local v4    # "showImeOverKeyguard":Z
    goto :goto_0

    #@77
    .line 199
    .restart local v5    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_7
    iget-object v1, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@79
    .local v1, "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    goto :goto_1

    #@7a
    .end local v1    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :cond_8
    move v0, v6

    #@7b
    .line 203
    goto :goto_2

    #@7c
    .restart local v0    # "allowWhenLocked":Z
    :cond_9
    move v7, v6

    #@7d
    .line 205
    goto :goto_3

    #@7e
    :cond_a
    move v7, v8

    #@7f
    .line 208
    goto :goto_4

    #@80
    :cond_b
    move v7, v6

    #@81
    .line 212
    goto :goto_4

    #@82
    .line 217
    :cond_c
    const/4 v3, 0x0

    #@83
    .restart local v3    # "keyguardOn":Z
    goto :goto_5

    #@84
    .line 216
    .end local v3    # "keyguardOn":Z
    :cond_d
    const/4 v3, 0x0

    #@85
    .restart local v3    # "keyguardOn":Z
    goto :goto_5

    #@86
    .line 218
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@89
    move-result v7

    #@8a
    if-nez v7, :cond_3

    #@8c
    goto :goto_6
.end method

.method private testTokenMayBeDrawnLocked(I)V
    .locals 12
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 587
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
    .line 588
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v2

    #@e
    .line 589
    .local v2, "numTasks":I
    const/4 v4, 0x0

    #@f
    .local v4, "taskNdx":I
    :goto_0
    if-ge v4, v2, :cond_3

    #@11
    .line 590
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v9

    #@15
    check-cast v9, Lcom/android/server/wm/Task;

    #@17
    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@19
    .line 591
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    #@1c
    move-result v3

    #@1d
    .line 592
    .local v3, "numTokens":I
    const/4 v6, 0x0

    #@1e
    .local v6, "tokenNdx":I
    :goto_1
    if-ge v6, v3, :cond_2

    #@20
    .line 593
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v8

    #@24
    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    #@26
    .line 594
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@28
    .line 595
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v0, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@2a
    .line 596
    .local v0, "allDrawn":Z
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    #@2c
    if-eq v0, v9, :cond_0

    #@2e
    .line 597
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    #@30
    .line 598
    if-eqz v0, :cond_0

    #@32
    .line 601
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    #@34
    if-eqz v9, :cond_1

    #@36
    .line 602
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    #@39
    .line 603
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3b
    const/4 v10, 0x0

    #@3c
    const/4 v11, 0x1

    #@3d
    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    #@40
    .line 611
    const-string/jumbo v9, "testTokenMayBeDrawnLocked: freezingScreen"

    #@43
    .line 610
    const/4 v10, 0x4

    #@44
    .line 609
    invoke-virtual {p0, v1, v10, v9, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    #@47
    .line 592
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 615
    :cond_1
    const-string/jumbo v9, "testTokenMayBeDrawnLocked"

    #@4d
    .line 614
    const/16 v10, 0x8

    #@4f
    .line 613
    invoke-virtual {p0, v1, v10, v9, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    #@52
    .line 618
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
    .line 619
    iget-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@5e
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    #@61
    move-result v10

    #@62
    or-int/2addr v9, v10

    #@63
    iput-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@65
    goto :goto_2

    #@66
    .line 589
    .end local v0    # "allDrawn":Z
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@68
    goto :goto_0

    #@69
    .line 584
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
    .line 150
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
    .line 151
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
    .line 152
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Lcom/android/server/wm/TaskStack;

    #@18
    .line 153
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@1b
    move-result-object v8

    #@1c
    .line 154
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
    .line 155
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v11

    #@28
    check-cast v11, Lcom/android/server/wm/Task;

    #@2a
    iget-object v10, v11, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@2c
    .line 156
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
    .line 157
    invoke-virtual {v10, v9}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v11

    #@38
    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    #@3a
    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@3c
    .line 158
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@3e
    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    #@40
    .line 159
    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@42
    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    #@45
    move-result v11

    #@46
    if-eqz v11, :cond_1

    #@48
    .line 160
    const/4 v11, 0x1

    #@49
    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@4b
    .line 161
    const/4 v11, 0x1

    #@4c
    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@4e
    const/4 v11, 0x1

    #@4f
    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@51
    .line 156
    :cond_0
    :goto_3
    add-int/lit8 v9, v9, -0x1

    #@53
    goto :goto_2

    #@54
    .line 162
    :cond_1
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    #@56
    if-eqz v11, :cond_0

    #@58
    .line 166
    new-instance v11, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v12, "appToken "

    #@60
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v11

    #@64
    iget-object v12, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@66
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v11

    #@6a
    const-string/jumbo v12, " done"

    #@6d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v11

    #@71
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v11

    #@75
    .line 165
    const/4 v12, 0x4

    #@76
    .line 164
    invoke-virtual {p0, v0, v12, v11, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    #@79
    goto :goto_3

    #@7a
    .line 154
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_2
    add-int/lit8 v7, v7, -0x1

    #@7c
    goto :goto_1

    #@7d
    .line 173
    .end local v9    # "tokenNdx":I
    .end local v10    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_3
    iget-object v1, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@7f
    .line 174
    .local v1, "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    #@82
    move-result v2

    #@83
    .line 175
    .local v2, "exitingCount":I
    const/4 v3, 0x0

    #@84
    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_6

    #@86
    .line 176
    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@89
    move-result-object v11

    #@8a
    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    #@8c
    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@8e
    .line 177
    .restart local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@90
    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    #@92
    .line 178
    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@94
    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    #@97
    move-result v11

    #@98
    if-eqz v11, :cond_5

    #@9a
    .line 179
    const/4 v11, 0x1

    #@9b
    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@9d
    const/4 v11, 0x1

    #@9e
    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@a0
    .line 175
    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    #@a2
    goto :goto_4

    #@a3
    .line 180
    :cond_5
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    #@a5
    if-eqz v11, :cond_4

    #@a7
    .line 183
    new-instance v11, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v12, "exiting appToken "

    #@af
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v11

    #@b3
    iget-object v12, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@b5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v11

    #@b9
    const-string/jumbo v12, " done"

    #@bc
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v11

    #@c0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v11

    #@c4
    .line 182
    const/4 v12, 0x4

    #@c5
    invoke-virtual {p0, v0, v12, v11, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    #@c8
    goto :goto_5

    #@c9
    .line 151
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    #@cb
    goto/16 :goto_0

    #@cd
    .line 149
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
    .line 518
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@7
    move-result-object v9

    #@8
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    #@b
    .line 520
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d
    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    #@10
    move-result-object v8

    #@11
    .line 521
    .local v8, "windows":Lcom/android/server/wm/WindowList;
    const/4 v2, 0x0

    #@12
    .line 523
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
    if-ltz v4, :cond_6

    #@1a
    .line 524
    invoke-virtual {v8, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v6

    #@1e
    check-cast v6, Lcom/android/server/wm/WindowState;

    #@20
    .line 525
    .local v6, "win":Lcom/android/server/wm/WindowState;
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@22
    .line 526
    .local v7, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@24
    if-nez v9, :cond_1

    #@26
    .line 523
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    #@28
    goto :goto_0

    #@29
    .line 530
    :cond_1
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2b
    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2d
    .line 535
    .local v3, "flags":I
    iget-boolean v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@2f
    if-eqz v9, :cond_4

    #@31
    .line 536
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@33
    if-eqz v9, :cond_3

    #@35
    .line 537
    and-int v9, v3, v10

    #@37
    if-eqz v9, :cond_2

    #@39
    .line 538
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@3b
    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    #@3e
    move-result v9

    #@3f
    .line 537
    if-eqz v9, :cond_2

    #@41
    .line 539
    move-object v2, v6

    #@42
    .line 541
    :cond_2
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@44
    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    #@47
    move-result v1

    #@48
    .line 542
    .local v1, "color":I
    if-eqz v1, :cond_3

    #@4a
    .line 543
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@4d
    move-result-object v5

    #@4e
    .line 544
    .local v5, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_3

    #@50
    .line 545
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    #@53
    .line 549
    .end local v1    # "color":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3
    const/4 v9, 0x1

    #@54
    iput-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@56
    .line 555
    :cond_4
    iget-object v0, v7, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@58
    .line 556
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v0, :cond_0

    #@5a
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@5c
    if-eqz v9, :cond_0

    #@5e
    .line 557
    iget-boolean v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@60
    .line 556
    if-eqz v9, :cond_0

    #@62
    .line 558
    and-int v9, v3, v10

    #@64
    if-eqz v9, :cond_5

    #@66
    .line 559
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@68
    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    #@6b
    move-result v9

    #@6c
    .line 558
    if-eqz v9, :cond_5

    #@6e
    .line 560
    move-object v2, v6

    #@6f
    .line 563
    :cond_5
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@71
    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    #@74
    move-result v1

    #@75
    .line 564
    .restart local v1    # "color":I
    if-eqz v1, :cond_0

    #@77
    .line 565
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@7a
    move-result-object v5

    #@7b
    .line 566
    .restart local v5    # "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_0

    #@7d
    .line 567
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    #@80
    goto :goto_1

    #@81
    .line 573
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v1    # "color":I
    .end local v3    # "flags":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    .end local v7    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_6
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@83
    if-eq v9, v2, :cond_7

    #@85
    .line 577
    iput-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@87
    .line 578
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@89
    or-int/lit8 v9, v9, 0x2

    #@8b
    iput v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@8d
    .line 517
    :cond_7
    return-void
.end method

.method private updateWindowsLocked(I)V
    .locals 34
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 222
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
    .line 224
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
    .line 226
    .local v28, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    #@1e
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@20
    move/from16 v29, v0

    #@22
    if-eqz v29, :cond_1

    #@24
    .line 227
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowList;->size()I

    #@27
    move-result v29

    #@28
    add-int/lit8 v16, v29, -0x1

    #@2a
    .local v16, "i":I
    :goto_0
    if-ltz v16, :cond_1

    #@2c
    .line 228
    move-object/from16 v0, v28

    #@2e
    move/from16 v1, v16

    #@30
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v26

    #@34
    check-cast v26, Lcom/android/server/wm/WindowState;

    #@36
    .line 229
    .local v26, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@3a
    move-object/from16 v29, v0

    #@3c
    move-object/from16 v0, v26

    #@3e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@40
    move-object/from16 v30, v0

    #@42
    invoke-interface/range {v29 .. v30}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    #@45
    move-result v29

    #@46
    if-nez v29, :cond_0

    #@48
    .line 227
    add-int/lit8 v16, v16, -0x1

    #@4a
    goto :goto_0

    #@4b
    .line 232
    :cond_0
    move-object/from16 v0, v26

    #@4d
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4f
    move-object/from16 v27, v0

    #@51
    .line 233
    .local v27, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v26

    #@53
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@55
    move-object/from16 v29, v0

    #@57
    move-object/from16 v0, v29

    #@59
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@5b
    move/from16 v29, v0

    #@5d
    move/from16 v0, v29

    #@5f
    and-int/lit16 v0, v0, 0x400

    #@61
    move/from16 v29, v0

    #@63
    if-eqz v29, :cond_c

    #@65
    .line 234
    move-object/from16 v0, v27

    #@67
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@69
    move/from16 v29, v0

    #@6b
    if-nez v29, :cond_1

    #@6d
    .line 239
    new-instance v29, Landroid/view/animation/AlphaAnimation;

    #@6f
    const/high16 v30, 0x3f800000    # 1.0f

    #@71
    const/high16 v31, 0x3f800000    # 1.0f

    #@73
    invoke-direct/range {v29 .. v31}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@76
    move-object/from16 v0, v29

    #@78
    move-object/from16 v1, v27

    #@7a
    iput-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@7c
    .line 240
    move-object/from16 v0, v27

    #@7e
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@80
    move-object/from16 v29, v0

    #@82
    const-wide/16 v30, 0x3e8

    #@84
    invoke-virtual/range {v29 .. v31}, Landroid/view/animation/Animation;->setDuration(J)V

    #@87
    .line 241
    const/16 v29, 0x0

    #@89
    move/from16 v0, v29

    #@8b
    move-object/from16 v1, v27

    #@8d
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@8f
    .line 242
    const-wide/16 v30, -0x1

    #@91
    move-wide/from16 v0, v30

    #@93
    move-object/from16 v2, v27

    #@95
    iput-wide v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    #@97
    .line 243
    const/16 v29, 0x1

    #@99
    move/from16 v0, v29

    #@9b
    move-object/from16 v1, v27

    #@9d
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@9f
    .line 255
    .end local v16    # "i":I
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    .end local v27    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1
    :goto_1
    const/16 v29, 0x0

    #@a1
    move/from16 v0, v29

    #@a3
    move-object/from16 v1, p0

    #@a5
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@a7
    .line 257
    const/16 v23, 0x0

    #@a9
    .line 258
    .local v23, "wallpaperInUnForceHiding":Z
    const/16 v19, 0x0

    #@ab
    .line 259
    .local v19, "startingInUnForceHiding":Z
    const/16 v20, 0x0

    #@ad
    .line 260
    .local v20, "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/16 v22, 0x0

    #@af
    .line 261
    .local v22, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowList;->size()I

    #@b2
    move-result v29

    #@b3
    add-int/lit8 v16, v29, -0x1

    #@b5
    .end local v20    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .end local v22    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v16    # "i":I
    :goto_2
    if-ltz v16, :cond_27

    #@b7
    .line 262
    move-object/from16 v0, v28

    #@b9
    move/from16 v1, v16

    #@bb
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@be
    move-result-object v26

    #@bf
    check-cast v26, Lcom/android/server/wm/WindowState;

    #@c1
    .line 263
    .restart local v26    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v26

    #@c3
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@c5
    move-object/from16 v27, v0

    #@c7
    .line 264
    .restart local v27    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v26

    #@c9
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@cb
    move-object/from16 v29, v0

    #@cd
    move-object/from16 v0, v29

    #@cf
    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@d1
    .line 265
    .local v15, "flags":I
    move-object/from16 v0, p0

    #@d3
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@d5
    move-object/from16 v29, v0

    #@d7
    move-object/from16 v0, v26

    #@d9
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@db
    move-object/from16 v30, v0

    #@dd
    move-object/from16 v0, v29

    #@df
    move-object/from16 v1, v26

    #@e1
    move-object/from16 v2, v30

    #@e3
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    #@e6
    move-result v11

    #@e7
    .line 266
    .local v11, "canBeForceHidden":Z
    move-object/from16 v0, p0

    #@e9
    move-object/from16 v1, v26

    #@eb
    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimator;->shouldForceHide(Lcom/android/server/wm/WindowState;)Z

    #@ee
    move-result v18

    #@ef
    .line 267
    .local v18, "shouldBeForceHidden":Z
    move-object/from16 v0, v27

    #@f1
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@f3
    move-object/from16 v29, v0

    #@f5
    if-eqz v29, :cond_25

    #@f7
    .line 268
    move-object/from16 v0, v27

    #@f9
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    #@fb
    move/from16 v24, v0

    #@fd
    .line 269
    .local v24, "wasAnimating":Z
    move-object/from16 v0, p0

    #@ff
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@101
    move-wide/from16 v30, v0

    #@103
    move-object/from16 v0, v27

    #@105
    move-wide/from16 v1, v30

    #@107
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    #@10a
    move-result v17

    #@10b
    .line 270
    .local v17, "nowAnimating":Z
    move/from16 v0, v17

    #@10d
    move-object/from16 v1, v27

    #@10f
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    #@111
    .line 271
    move-object/from16 v0, p0

    #@113
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@115
    move/from16 v29, v0

    #@117
    or-int v29, v29, v17

    #@119
    move/from16 v0, v29

    #@11b
    move-object/from16 v1, p0

    #@11d
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@11f
    .line 273
    move-object/from16 v0, v27

    #@121
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@123
    move-object/from16 v29, v0

    #@125
    if-eqz v29, :cond_d

    #@127
    .line 274
    move-object/from16 v0, v27

    #@129
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@12b
    move-object/from16 v29, v0

    #@12d
    move-object/from16 v0, v29

    #@12f
    iget-boolean v8, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@131
    .line 275
    :goto_3
    move-object/from16 v0, v27

    #@133
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@135
    move-object/from16 v29, v0

    #@137
    if-eqz v29, :cond_e

    #@139
    .line 276
    move-object/from16 v0, v27

    #@13b
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@13d
    move-object/from16 v29, v0

    #@13f
    move-object/from16 v0, v29

    #@141
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    #@143
    move/from16 v25, v0

    #@145
    .line 277
    :goto_4
    if-nez v8, :cond_f

    #@147
    move/from16 v5, v17

    #@149
    .line 278
    :goto_5
    if-nez v25, :cond_10

    #@14b
    move/from16 v6, v24

    #@14d
    .line 281
    :goto_6
    if-eqz v5, :cond_2

    #@14f
    if-eqz v6, :cond_11

    #@151
    .line 285
    :cond_2
    if-nez v5, :cond_3

    #@153
    if-eqz v6, :cond_3

    #@155
    .line 286
    :try_start_0
    move-object/from16 v0, v26

    #@157
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@159
    move-object/from16 v29, v0

    #@15b
    invoke-interface/range {v29 .. v29}, Landroid/view/IWindow;->onAnimationStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15e
    .line 297
    :cond_3
    :goto_7
    if-eqz v24, :cond_4

    #@160
    move-object/from16 v0, v27

    #@162
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@164
    move/from16 v29, v0

    #@166
    if-eqz v29, :cond_14

    #@168
    .line 307
    :cond_4
    :goto_8
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@16c
    move-object/from16 v29, v0

    #@16e
    move-object/from16 v0, v26

    #@170
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@172
    move-object/from16 v30, v0

    #@174
    invoke-interface/range {v29 .. v30}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    #@177
    move-result v29

    #@178
    if-eqz v29, :cond_18

    #@17a
    .line 308
    if-nez v24, :cond_15

    #@17c
    if-eqz v17, :cond_15

    #@17e
    .line 312
    move-object/from16 v0, p0

    #@180
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@182
    move/from16 v29, v0

    #@184
    or-int/lit8 v29, v29, 0x4

    #@186
    move/from16 v0, v29

    #@188
    move-object/from16 v1, p0

    #@18a
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@18c
    .line 314
    const/16 v29, 0x4

    #@18e
    .line 313
    move-object/from16 v0, p0

    #@190
    move/from16 v1, p1

    #@192
    move/from16 v2, v29

    #@194
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@197
    .line 316
    move-object/from16 v0, p0

    #@199
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@19b
    move-object/from16 v29, v0

    #@19d
    const-string/jumbo v30, "updateWindowsAndWallpaperLocked 3"

    #@1a0
    .line 317
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    #@1a3
    move-result v31

    #@1a4
    .line 316
    invoke-virtual/range {v29 .. v31}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    #@1a7
    .line 319
    move-object/from16 v0, p0

    #@1a9
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1ab
    move-object/from16 v29, v0

    #@1ad
    const/16 v30, 0x1

    #@1af
    move/from16 v0, v30

    #@1b1
    move-object/from16 v1, v29

    #@1b3
    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@1b5
    .line 326
    :cond_5
    :goto_9
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    #@1b8
    move-result v29

    #@1b9
    if-eqz v29, :cond_6

    #@1bb
    .line 327
    if-eqz v17, :cond_16

    #@1bd
    move-object/from16 v0, v26

    #@1bf
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1c1
    move-object/from16 v29, v0

    #@1c3
    move-object/from16 v0, v29

    #@1c5
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@1c7
    move/from16 v29, v0

    #@1c9
    if-eqz v29, :cond_16

    #@1cb
    .line 328
    const/16 v29, 0x2

    #@1cd
    move/from16 v0, v29

    #@1cf
    move-object/from16 v1, p0

    #@1d1
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@1d3
    .line 427
    .end local v17    # "nowAnimating":Z
    .end local v24    # "wasAnimating":Z
    :cond_6
    :goto_a
    move-object/from16 v0, v26

    #@1d5
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1d7
    .line 428
    .local v10, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v27

    #@1d9
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@1db
    move/from16 v29, v0

    #@1dd
    const/16 v30, 0x3

    #@1df
    move/from16 v0, v29

    #@1e1
    move/from16 v1, v30

    #@1e3
    if-ne v0, v1, :cond_8

    #@1e5
    .line 429
    if-eqz v10, :cond_7

    #@1e7
    iget-boolean v0, v10, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@1e9
    move/from16 v29, v0

    #@1eb
    if-eqz v29, :cond_8

    #@1ed
    .line 430
    :cond_7
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    #@1f0
    move-result v29

    #@1f1
    if-eqz v29, :cond_8

    #@1f3
    .line 432
    const/16 v29, 0x8

    #@1f5
    .line 431
    move-object/from16 v0, p0

    #@1f7
    move/from16 v1, p1

    #@1f9
    move/from16 v2, v29

    #@1fb
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@1fe
    .line 434
    move-object/from16 v0, p0

    #@200
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@202
    move-object/from16 v29, v0

    #@204
    const-string/jumbo v30, "updateWindowsAndWallpaperLocked 5"

    #@207
    .line 435
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    #@20a
    move-result v31

    #@20b
    .line 434
    invoke-virtual/range {v29 .. v31}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    #@20e
    .line 440
    :cond_8
    move-object/from16 v0, v27

    #@210
    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@212
    .line 441
    .local v7, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v7, :cond_a

    #@214
    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@216
    move-object/from16 v29, v0

    #@218
    if-eqz v29, :cond_a

    #@21a
    .line 442
    iget v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    #@21c
    move/from16 v29, v0

    #@21e
    move-object/from16 v0, p0

    #@220
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    #@222
    move/from16 v30, v0

    #@224
    move/from16 v0, v29

    #@226
    move/from16 v1, v30

    #@228
    if-eq v0, v1, :cond_9

    #@22a
    .line 443
    move-object/from16 v0, p0

    #@22c
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    #@22e
    move/from16 v29, v0

    #@230
    move/from16 v0, v29

    #@232
    iput v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    #@234
    .line 444
    const/16 v29, 0x0

    #@236
    move/from16 v0, v29

    #@238
    iput v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@23a
    .line 446
    :cond_9
    iget v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@23c
    move/from16 v29, v0

    #@23e
    move-object/from16 v0, v27

    #@240
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@242
    move/from16 v30, v0

    #@244
    move/from16 v0, v29

    #@246
    move/from16 v1, v30

    #@248
    if-ge v0, v1, :cond_a

    #@24a
    .line 447
    move-object/from16 v0, v27

    #@24c
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@24e
    move/from16 v29, v0

    #@250
    move/from16 v0, v29

    #@252
    iput v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@254
    .line 450
    :cond_a
    move-object/from16 v0, v26

    #@256
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@258
    move/from16 v29, v0

    #@25a
    if-eqz v29, :cond_b

    #@25c
    .line 451
    move-object/from16 v22, v26

    #@25e
    .line 261
    .end local v7    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v10    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_b
    :goto_b
    add-int/lit8 v16, v16, -0x1

    #@260
    goto/16 :goto_2

    #@262
    .line 248
    .end local v11    # "canBeForceHidden":Z
    .end local v15    # "flags":I
    .end local v18    # "shouldBeForceHidden":Z
    .end local v19    # "startingInUnForceHiding":Z
    .end local v23    # "wallpaperInUnForceHiding":Z
    :cond_c
    const/16 v29, 0x0

    #@264
    move/from16 v0, v29

    #@266
    move-object/from16 v1, p0

    #@268
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@26a
    .line 249
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    #@26d
    goto/16 :goto_1

    #@26f
    .line 273
    .restart local v11    # "canBeForceHidden":Z
    .restart local v15    # "flags":I
    .restart local v17    # "nowAnimating":Z
    .restart local v18    # "shouldBeForceHidden":Z
    .restart local v19    # "startingInUnForceHiding":Z
    .restart local v23    # "wallpaperInUnForceHiding":Z
    .restart local v24    # "wasAnimating":Z
    :cond_d
    const/4 v8, 0x0

    #@270
    .local v8, "appWindowAnimating":Z
    goto/16 :goto_3

    #@272
    .line 275
    .end local v8    # "appWindowAnimating":Z
    :cond_e
    const/16 v25, 0x0

    #@274
    .local v25, "wasAppWindowAnimating":Z
    goto/16 :goto_4

    #@276
    .line 277
    .end local v25    # "wasAppWindowAnimating":Z
    :cond_f
    const/4 v5, 0x1

    #@277
    .local v5, "anyAnimating":Z
    goto/16 :goto_5

    #@279
    .line 278
    .end local v5    # "anyAnimating":Z
    :cond_10
    const/4 v6, 0x1

    #@27a
    .local v6, "anyWasAnimating":Z
    goto/16 :goto_6

    #@27c
    .line 282
    .end local v6    # "anyWasAnimating":Z
    :cond_11
    :try_start_1
    move-object/from16 v0, v26

    #@27e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@280
    move-object/from16 v30, v0

    #@282
    move-object/from16 v0, v27

    #@284
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimatingMove:Z

    #@286
    move/from16 v29, v0

    #@288
    if-eqz v29, :cond_12

    #@28a
    const/16 v29, -0x1

    #@28c
    :goto_c
    move-object/from16 v0, v30

    #@28e
    move/from16 v1, v29

    #@290
    invoke-interface {v0, v1}, Landroid/view/IWindow;->onAnimationStarted(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@293
    goto/16 :goto_7

    #@295
    .line 288
    :catch_0
    move-exception v13

    #@296
    .line 289
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v29, "WindowAnimator"

    #@299
    const-string/jumbo v30, "Failed to dispatch window animation state change."

    #@29c
    move-object/from16 v0, v29

    #@29e
    move-object/from16 v1, v30

    #@2a0
    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a3
    goto/16 :goto_7

    #@2a5
    .line 283
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_12
    :try_start_2
    move-object/from16 v0, v27

    #@2a7
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@2a9
    move/from16 v29, v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@2ab
    if-eqz v29, :cond_13

    #@2ad
    const/16 v29, 0x1

    #@2af
    goto :goto_c

    #@2b0
    .line 284
    :cond_13
    const/16 v29, 0x0

    #@2b2
    goto :goto_c

    #@2b3
    .line 297
    :cond_14
    move-object/from16 v0, p0

    #@2b5
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2b7
    move-object/from16 v29, v0

    #@2b9
    move-object/from16 v0, v29

    #@2bb
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@2bd
    move-object/from16 v29, v0

    #@2bf
    move-object/from16 v0, v29

    #@2c1
    move-object/from16 v1, v26

    #@2c3
    if-ne v0, v1, :cond_4

    #@2c5
    .line 298
    move-object/from16 v0, p0

    #@2c7
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@2c9
    move/from16 v29, v0

    #@2cb
    or-int/lit8 v29, v29, 0x2

    #@2cd
    move/from16 v0, v29

    #@2cf
    move-object/from16 v1, p0

    #@2d1
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@2d3
    .line 299
    const/16 v29, 0x0

    #@2d5
    .line 300
    const/16 v30, 0x4

    #@2d7
    .line 299
    move-object/from16 v0, p0

    #@2d9
    move/from16 v1, v29

    #@2db
    move/from16 v2, v30

    #@2dd
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@2e0
    .line 302
    move-object/from16 v0, p0

    #@2e2
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2e4
    move-object/from16 v29, v0

    #@2e6
    const-string/jumbo v30, "updateWindowsAndWallpaperLocked 2"

    #@2e9
    .line 303
    const/16 v31, 0x0

    #@2eb
    move-object/from16 v0, p0

    #@2ed
    move/from16 v1, v31

    #@2ef
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    #@2f2
    move-result v31

    #@2f3
    .line 302
    invoke-virtual/range {v29 .. v31}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    #@2f6
    goto/16 :goto_8

    #@2f8
    .line 320
    :cond_15
    move-object/from16 v0, p0

    #@2fa
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@2fc
    move/from16 v29, v0

    #@2fe
    if-eqz v29, :cond_5

    #@300
    if-nez v17, :cond_5

    #@302
    .line 322
    const-string/jumbo v29, "WindowAnimator"

    #@305
    const-string/jumbo v30, "Timeout waiting for animation to startup"

    #@308
    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30b
    .line 323
    move-object/from16 v0, p0

    #@30d
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@30f
    move-object/from16 v29, v0

    #@311
    const-wide/16 v30, 0x0

    #@313
    const-wide/16 v32, 0x0

    #@315
    invoke-interface/range {v29 .. v33}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    #@318
    .line 324
    const/16 v29, 0x0

    #@31a
    move/from16 v0, v29

    #@31c
    move-object/from16 v1, p0

    #@31e
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@320
    goto/16 :goto_9

    #@322
    .line 330
    :cond_16
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@325
    move-result v29

    #@326
    if-eqz v29, :cond_17

    #@328
    const/16 v29, 0x1

    #@32a
    :goto_d
    move/from16 v0, v29

    #@32c
    move-object/from16 v1, p0

    #@32e
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    #@330
    goto/16 :goto_a

    #@332
    :cond_17
    const/16 v29, 0x0

    #@334
    goto :goto_d

    #@335
    .line 342
    :cond_18
    if-eqz v11, :cond_6

    #@337
    .line 343
    if-eqz v18, :cond_1a

    #@339
    .line 344
    const/16 v29, 0x0

    #@33b
    const/16 v30, 0x0

    #@33d
    move-object/from16 v0, v26

    #@33f
    move/from16 v1, v29

    #@341
    move/from16 v2, v30

    #@343
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    #@346
    move-result v29

    #@347
    if-eqz v29, :cond_b

    #@349
    .line 405
    :cond_19
    :goto_e
    const/high16 v29, 0x100000

    #@34b
    and-int v29, v29, v15

    #@34d
    if-eqz v29, :cond_6

    #@34f
    .line 406
    move-object/from16 v0, p0

    #@351
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@353
    move/from16 v29, v0

    #@355
    or-int/lit8 v29, v29, 0x2

    #@357
    move/from16 v0, v29

    #@359
    move-object/from16 v1, p0

    #@35b
    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@35d
    .line 407
    const/16 v29, 0x0

    #@35f
    .line 408
    const/16 v30, 0x4

    #@361
    .line 407
    move-object/from16 v0, p0

    #@363
    move/from16 v1, v29

    #@365
    move/from16 v2, v30

    #@367
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@36a
    .line 410
    move-object/from16 v0, p0

    #@36c
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@36e
    move-object/from16 v29, v0

    #@370
    const-string/jumbo v30, "updateWindowsAndWallpaperLocked 4"

    #@373
    .line 411
    const/16 v31, 0x0

    #@375
    move-object/from16 v0, p0

    #@377
    move/from16 v1, v31

    #@379
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    #@37c
    move-result v31

    #@37d
    .line 410
    invoke-virtual/range {v29 .. v31}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    #@380
    goto/16 :goto_a

    #@382
    .line 351
    :cond_1a
    move-object/from16 v0, p0

    #@384
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@386
    move-object/from16 v29, v0

    #@388
    if-eqz v29, :cond_1b

    #@38a
    .line 352
    move-object/from16 v0, p0

    #@38c
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@38e
    move-object/from16 v29, v0

    #@390
    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/Animation;->hasEnded()Z

    #@393
    move-result v29

    #@394
    if-eqz v29, :cond_1d

    #@396
    .line 351
    :cond_1b
    const/4 v9, 0x0

    #@397
    .line 361
    .local v9, "applyExistingExitAnimation":Z
    :goto_f
    const/16 v29, 0x0

    #@399
    const/16 v30, 0x0

    #@39b
    move-object/from16 v0, v26

    #@39d
    move/from16 v1, v29

    #@39f
    move/from16 v2, v30

    #@3a1
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    #@3a4
    move-result v29

    #@3a5
    if-nez v29, :cond_1c

    #@3a7
    if-eqz v9, :cond_b

    #@3a9
    .line 364
    :cond_1c
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    #@3ac
    move-result v21

    #@3ad
    .line 365
    .local v21, "visibleNow":Z
    if-nez v21, :cond_1f

    #@3af
    .line 367
    const/16 v29, 0x0

    #@3b1
    const/16 v30, 0x0

    #@3b3
    move-object/from16 v0, v26

    #@3b5
    move/from16 v1, v29

    #@3b7
    move/from16 v2, v30

    #@3b9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    #@3bc
    goto/16 :goto_b

    #@3be
    .line 353
    .end local v9    # "applyExistingExitAnimation":Z
    .end local v21    # "visibleNow":Z
    :cond_1d
    move-object/from16 v0, v27

    #@3c0
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@3c2
    move/from16 v29, v0

    #@3c4
    if-nez v29, :cond_1b

    #@3c6
    .line 354
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    #@3c9
    move-result v29

    #@3ca
    .line 351
    if-eqz v29, :cond_1b

    #@3cc
    .line 355
    move-object/from16 v0, v26

    #@3ce
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@3d0
    move-object/from16 v29, v0

    #@3d2
    if-nez v29, :cond_1b

    #@3d4
    .line 356
    move-object/from16 v0, v26

    #@3d6
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@3d8
    move/from16 v29, v0

    #@3da
    if-nez v29, :cond_1b

    #@3dc
    .line 357
    if-nez p1, :cond_1e

    #@3de
    const/4 v9, 0x1

    #@3df
    .restart local v9    # "applyExistingExitAnimation":Z
    goto :goto_f

    #@3e0
    .end local v9    # "applyExistingExitAnimation":Z
    :cond_1e
    const/4 v9, 0x0

    #@3e1
    .restart local v9    # "applyExistingExitAnimation":Z
    goto :goto_f

    #@3e2
    .line 372
    .restart local v21    # "visibleNow":Z
    :cond_1f
    move-object/from16 v0, p0

    #@3e4
    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@3e6
    move/from16 v29, v0

    #@3e8
    and-int/lit8 v29, v29, 0x4

    #@3ea
    if-eqz v29, :cond_24

    #@3ec
    .line 373
    move-object/from16 v0, v26

    #@3ee
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@3f0
    move-object/from16 v29, v0

    #@3f2
    if-nez v29, :cond_24

    #@3f4
    .line 374
    if-nez v20, :cond_20

    #@3f6
    .line 375
    new-instance v20, Ljava/util/ArrayList;

    #@3f8
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    #@3fb
    .line 377
    :cond_20
    move-object/from16 v0, v20

    #@3fd
    move-object/from16 v1, v27

    #@3ff
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@402
    .line 378
    const/high16 v29, 0x100000

    #@404
    and-int v29, v29, v15

    #@406
    if-eqz v29, :cond_21

    #@408
    .line 379
    const/16 v23, 0x1

    #@40a
    .line 381
    :cond_21
    move-object/from16 v0, v26

    #@40c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@40e
    move-object/from16 v29, v0

    #@410
    move-object/from16 v0, v29

    #@412
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@414
    move/from16 v29, v0

    #@416
    const/16 v30, 0x3

    #@418
    move/from16 v0, v29

    #@41a
    move/from16 v1, v30

    #@41c
    if-ne v0, v1, :cond_22

    #@41e
    .line 382
    const/16 v19, 0x1

    #@420
    .line 395
    :cond_22
    :goto_10
    move-object/from16 v0, p0

    #@422
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@424
    move-object/from16 v29, v0

    #@426
    move-object/from16 v0, v29

    #@428
    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    #@42a
    .line 396
    .local v12, "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v12, :cond_23

    #@42c
    iget v0, v12, Lcom/android/server/wm/WindowState;->mLayer:I

    #@42e
    move/from16 v29, v0

    #@430
    move-object/from16 v0, v26

    #@432
    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@434
    move/from16 v30, v0

    #@436
    move/from16 v0, v29

    #@438
    move/from16 v1, v30

    #@43a
    if-ge v0, v1, :cond_19

    #@43c
    .line 402
    :cond_23
    move-object/from16 v0, p0

    #@43e
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@440
    move-object/from16 v29, v0

    #@442
    const/16 v30, 0x1

    #@444
    move/from16 v0, v30

    #@446
    move-object/from16 v1, v29

    #@448
    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@44a
    goto/16 :goto_e

    #@44c
    .line 384
    .end local v12    # "currentFocus":Lcom/android/server/wm/WindowState;
    :cond_24
    if-eqz v9, :cond_22

    #@44e
    .line 390
    move-object/from16 v0, p0

    #@450
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@452
    move-object/from16 v29, v0

    #@454
    .line 391
    move-object/from16 v0, p0

    #@456
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    #@458
    move/from16 v30, v0

    #@45a
    const/16 v31, 0x0

    #@45c
    .line 390
    move-object/from16 v0, v29

    #@45e
    move/from16 v1, v31

    #@460
    move/from16 v2, v30

    #@462
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    #@465
    move-result-object v4

    #@466
    .line 392
    .local v4, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@468
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@46a
    move-object/from16 v29, v0

    #@46c
    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/Animation;->getStartTime()J

    #@46f
    move-result-wide v30

    #@470
    move-object/from16 v0, v27

    #@472
    move-wide/from16 v1, v30

    #@474
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;J)V

    #@477
    .line 393
    const/16 v29, 0x1

    #@479
    move/from16 v0, v29

    #@47b
    move-object/from16 v1, v27

    #@47d
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@47f
    goto :goto_10

    #@480
    .line 419
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v9    # "applyExistingExitAnimation":Z
    .end local v17    # "nowAnimating":Z
    .end local v21    # "visibleNow":Z
    .end local v24    # "wasAnimating":Z
    :cond_25
    if-eqz v11, :cond_6

    #@482
    .line 420
    if-eqz v18, :cond_26

    #@484
    .line 421
    const/16 v29, 0x0

    #@486
    const/16 v30, 0x0

    #@488
    move-object/from16 v0, v26

    #@48a
    move/from16 v1, v29

    #@48c
    move/from16 v2, v30

    #@48e
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    #@491
    goto/16 :goto_a

    #@493
    .line 423
    :cond_26
    const/16 v29, 0x0

    #@495
    const/16 v30, 0x0

    #@497
    move-object/from16 v0, v26

    #@499
    move/from16 v1, v29

    #@49b
    move/from16 v2, v30

    #@49d
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    #@4a0
    goto/16 :goto_a

    #@4a2
    .line 458
    .end local v11    # "canBeForceHidden":Z
    .end local v15    # "flags":I
    .end local v18    # "shouldBeForceHidden":Z
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    .end local v27    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_27
    if-eqz v20, :cond_2d

    #@4a4
    .line 459
    move-object/from16 v0, p0

    #@4a6
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    #@4a8
    move/from16 v29, v0

    #@4aa
    if-nez v29, :cond_2b

    #@4ac
    .line 460
    const/4 v14, 0x1

    #@4ad
    .line 461
    .local v14, "first":Z
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    #@4b0
    move-result v29

    #@4b1
    add-int/lit8 v16, v29, -0x1

    #@4b3
    :goto_11
    if-ltz v16, :cond_2c

    #@4b5
    .line 462
    move-object/from16 v0, v20

    #@4b7
    move/from16 v1, v16

    #@4b9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4bc
    move-result-object v27

    #@4bd
    check-cast v27, Lcom/android/server/wm/WindowStateAnimator;

    #@4bf
    .line 463
    .restart local v27    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    #@4c1
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4c3
    move-object/from16 v30, v0

    #@4c5
    .line 464
    if-eqz v23, :cond_28

    #@4c7
    if-eqz v19, :cond_2a

    #@4c9
    :cond_28
    const/16 v29, 0x0

    #@4cb
    .line 465
    :goto_12
    move-object/from16 v0, p0

    #@4cd
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    #@4cf
    move/from16 v31, v0

    #@4d1
    .line 463
    move-object/from16 v0, v30

    #@4d3
    move/from16 v1, v29

    #@4d5
    move/from16 v2, v31

    #@4d7
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    #@4da
    move-result-object v4

    #@4db
    .line 466
    .restart local v4    # "a":Landroid/view/animation/Animation;
    if-eqz v4, :cond_29

    #@4dd
    .line 469
    move-object/from16 v0, v27

    #@4df
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    #@4e2
    .line 470
    const/16 v29, 0x1

    #@4e4
    move/from16 v0, v29

    #@4e6
    move-object/from16 v1, v27

    #@4e8
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@4ea
    .line 471
    if-eqz v14, :cond_29

    #@4ec
    .line 472
    move-object/from16 v0, p0

    #@4ee
    iput-object v4, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@4f0
    .line 473
    move-object/from16 v0, p0

    #@4f2
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@4f4
    move-object/from16 v29, v0

    #@4f6
    move-object/from16 v0, p0

    #@4f8
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@4fa
    move-wide/from16 v30, v0

    #@4fc
    invoke-virtual/range {v29 .. v31}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@4ff
    .line 474
    const/4 v14, 0x0

    #@500
    .line 461
    :cond_29
    add-int/lit8 v16, v16, -0x1

    #@502
    goto :goto_11

    #@503
    .line 464
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_2a
    const/16 v29, 0x1

    #@505
    goto :goto_12

    #@506
    .line 478
    .end local v14    # "first":Z
    .end local v27    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2b
    move-object/from16 v0, p0

    #@508
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@50a
    move/from16 v29, v0

    #@50c
    if-eqz v29, :cond_2c

    #@50e
    .line 479
    move-object/from16 v0, p0

    #@510
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@512
    move-object/from16 v29, v0

    #@514
    move-object/from16 v0, p0

    #@516
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@518
    move-wide/from16 v30, v0

    #@51a
    const-wide/16 v32, 0x0

    #@51c
    invoke-interface/range {v29 .. v33}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    #@51f
    .line 480
    const/16 v29, 0x0

    #@521
    move/from16 v0, v29

    #@523
    move-object/from16 v1, p0

    #@525
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@527
    .line 485
    :cond_2c
    if-nez v23, :cond_2d

    #@529
    if-eqz v22, :cond_2d

    #@52b
    .line 486
    move-object/from16 v0, p0

    #@52d
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    #@52f
    move/from16 v29, v0

    #@531
    if-eqz v29, :cond_2f

    #@533
    .line 496
    :cond_2d
    :goto_13
    move-object/from16 v0, p0

    #@535
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@537
    move-object/from16 v29, v0

    #@539
    if-eqz v29, :cond_2e

    #@53b
    .line 498
    move-object/from16 v0, p0

    #@53d
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@53f
    move/from16 v29, v0

    #@541
    if-eqz v29, :cond_30

    #@543
    .line 499
    move-object/from16 v0, p0

    #@545
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@547
    move-object/from16 v29, v0

    #@549
    move-object/from16 v0, p0

    #@54b
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@54d
    move-wide/from16 v30, v0

    #@54f
    .line 500
    move-object/from16 v0, p0

    #@551
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@553
    move-object/from16 v32, v0

    #@555
    invoke-virtual/range {v32 .. v32}, Landroid/view/animation/Animation;->getStartOffset()J

    #@558
    move-result-wide v32

    #@559
    .line 499
    add-long v30, v30, v32

    #@55b
    .line 501
    move-object/from16 v0, p0

    #@55d
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@55f
    move-object/from16 v32, v0

    #@561
    invoke-virtual/range {v32 .. v32}, Landroid/view/animation/Animation;->getDuration()J

    #@564
    move-result-wide v32

    #@565
    .line 499
    invoke-interface/range {v29 .. v33}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    #@568
    .line 502
    const/16 v29, 0x0

    #@56a
    move/from16 v0, v29

    #@56c
    move-object/from16 v1, p0

    #@56e
    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@570
    .line 221
    :cond_2e
    :goto_14
    return-void

    #@571
    .line 488
    :cond_2f
    move-object/from16 v0, p0

    #@573
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@575
    move-object/from16 v29, v0

    #@577
    .line 489
    move-object/from16 v0, p0

    #@579
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    #@57b
    move/from16 v30, v0

    #@57d
    .line 488
    invoke-interface/range {v29 .. v30}, Landroid/view/WindowManagerPolicy;->createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;

    #@580
    move-result-object v4

    #@581
    .line 490
    .restart local v4    # "a":Landroid/view/animation/Animation;
    if-eqz v4, :cond_2d

    #@583
    .line 491
    move-object/from16 v0, v22

    #@585
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@587
    move-object/from16 v29, v0

    #@589
    move-object/from16 v0, v29

    #@58b
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    #@58e
    goto :goto_13

    #@58f
    .line 507
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_30
    move-object/from16 v0, p0

    #@591
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@593
    move-object/from16 v29, v0

    #@595
    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/Animation;->hasEnded()Z

    #@598
    move-result v29

    #@599
    if-nez v29, :cond_31

    #@59b
    .line 508
    move-object/from16 v0, p0

    #@59d
    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@59f
    move-wide/from16 v30, v0

    #@5a1
    move-object/from16 v0, p0

    #@5a3
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@5a5
    move-object/from16 v29, v0

    #@5a7
    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/Animation;->getStartTime()J

    #@5aa
    move-result-wide v32

    #@5ab
    sub-long v30, v30, v32

    #@5ad
    .line 509
    move-object/from16 v0, p0

    #@5af
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@5b1
    move-object/from16 v29, v0

    #@5b3
    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/Animation;->getDuration()J

    #@5b6
    move-result-wide v32

    #@5b7
    .line 508
    cmp-long v29, v30, v32

    #@5b9
    if-lez v29, :cond_2e

    #@5bb
    .line 512
    :cond_31
    const/16 v29, 0x0

    #@5bd
    move-object/from16 v0, v29

    #@5bf
    move-object/from16 v1, p0

    #@5c1
    iput-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    #@5c3
    goto :goto_14
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@3
    .line 132
    if-nez p1, :cond_0

    #@5
    .line 133
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    #@8
    .line 129
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
    .line 779
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
    .line 780
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
    .line 782
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
    .line 783
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    const-string/jumbo v8, "DisplayContentsAnimator #"

    #@37
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    .line 784
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@3c
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@3f
    move-result v8

    #@40
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    #@43
    .line 785
    const-string/jumbo v8, ":"

    #@46
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 786
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@4b
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@4e
    move-result-object v1

    #@4f
    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@51
    .line 788
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
    .line 789
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    #@60
    move-result v0

    #@61
    .line 790
    .local v0, "N":I
    const/4 v3, 0x0

    #@62
    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    #@64
    .line 791
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@67
    move-result-object v8

    #@68
    check-cast v8, Lcom/android/server/wm/WindowState;

    #@6a
    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@6c
    .line 792
    .local v6, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    const-string/jumbo v8, "Window #"

    #@72
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@75
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@78
    .line 793
    const-string/jumbo v8, ": "

    #@7b
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@81
    .line 790
    add-int/lit8 v3, v3, 0x1

    #@83
    goto :goto_1

    #@84
    .line 795
    .end local v6    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@86
    if-eqz v8, :cond_2

    #@88
    .line 796
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8b
    const-string/jumbo v8, "mScreenRotationAnimation:"

    #@8e
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@91
    .line 797
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@93
    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@96
    .line 801
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@99
    .line 782
    add-int/lit8 v2, v2, 0x1

    #@9b
    goto :goto_0

    #@9c
    .line 798
    :cond_2
    if-eqz p3, :cond_1

    #@9e
    .line 799
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a1
    const-string/jumbo v8, "no ScreenRotationAnimation "

    #@a4
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a7
    goto :goto_2

    #@a8
    .line 804
    .end local v0    # "N":I
    .end local v1    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3    # "j":I
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@ab
    .line 806
    if-eqz p3, :cond_4

    #@ad
    .line 807
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b0
    const-string/jumbo v8, "mAnimTransactionSequence="

    #@b3
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b6
    .line 808
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    #@b8
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    #@bb
    .line 809
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
    .line 810
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cb
    const-string/jumbo v8, "mCurrentTime="

    #@ce
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d1
    .line 811
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    #@d3
    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@d6
    move-result-object v8

    #@d7
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@da
    .line 813
    :cond_4
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@dc
    if-eqz v8, :cond_5

    #@de
    .line 814
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e1
    const-string/jumbo v8, "mBulkUpdateParams=0x"

    #@e4
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e7
    .line 815
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@e9
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@ec
    move-result-object v8

    #@ed
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f0
    .line 816
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@f2
    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    #@f5
    move-result-object v8

    #@f6
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f9
    .line 818
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@fb
    if-eqz v8, :cond_6

    #@fd
    .line 819
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@100
    const-string/jumbo v8, "mWindowDetachedWallpaper="

    #@103
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@106
    .line 820
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@108
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@10b
    .line 778
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
    .line 825
    if-gez p1, :cond_0

    #@3
    .line 826
    return v1

    #@4
    .line 828
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@9
    move-result-object v0

    #@a
    .line 829
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
    .line 872
    if-gez p1, :cond_0

    #@2
    .line 873
    const/4 v0, 0x0

    #@3
    return-object v0

    #@4
    .line 875
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@7
    move-result-object v0

    #@8
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@a
    return-object v0
.end method

.method removeDisplayLocked(I)V
    .locals 3
    .param p1, "displayId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 138
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@9
    .line 139
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_0

    #@b
    .line 140
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 141
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@11
    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    #@14
    .line 142
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@16
    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    #@1b
    .line 137
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V
    .locals 4
    .param p1, "appAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "changes"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    #@0
    .prologue
    .line 844
    iget-object v2, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@4
    .line 845
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
    .line 846
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
    .line 847
    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@1b
    .line 849
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1d
    invoke-virtual {p0, p4}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    #@20
    move-result v3

    #@21
    invoke-virtual {v2, p3, v3}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    #@24
    .line 843
    :cond_0
    return-void

    #@25
    .line 845
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@27
    goto :goto_0
.end method

.method setPendingLayoutChanges(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "changes"    # I

    #@0
    .prologue
    .line 833
    if-gez p1, :cond_0

    #@2
    .line 834
    return-void

    #@3
    .line 836
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@8
    move-result-object v0

    #@9
    .line 837
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    #@b
    .line 838
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@d
    or-int/2addr v1, p2

    #@e
    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@10
    .line 832
    :cond_1
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/ScreenRotationAnimation;

    #@0
    .prologue
    .line 866
    if-ltz p1, :cond_0

    #@2
    .line 867
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    #@5
    move-result-object v0

    #@6
    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    #@8
    .line 865
    :cond_0
    return-void
.end method
