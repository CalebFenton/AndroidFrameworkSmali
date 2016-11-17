.class Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# static fields
.field static final COMMIT_DRAW_PENDING:I = 0x2

.field static final DRAW_PENDING:I = 0x1

.field static final HAS_DRAWN:I = 0x4

.field static final NO_SURFACE:I = 0x0

.field static final PENDING_TRANSACTION_FINISH_WAIT_TIME:J = 0x64L

.field static final READY_TO_SHOW:I = 0x3

.field static final STACK_CLIP_AFTER_ANIM:I = 0x0

.field static final STACK_CLIP_BEFORE_ANIM:I = 0x1

.field static final STACK_CLIP_NONE:I = 0x2

.field static final TAG:Ljava/lang/String;

.field static final WINDOW_FREEZE_LAYER:I = 0x1e8480


# instance fields
.field mAlpha:F

.field private mAnimDx:I

.field private mAnimDy:I

.field mAnimLayer:I

.field private mAnimateMove:Z

.field mAnimating:Z

.field mAnimation:Landroid/view/animation/Animation;

.field mAnimationIsEntrance:Z

.field private mAnimationStartDelayed:Z

.field mAnimationStartTime:J

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field final mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAttrType:I

.field mClipRect:Landroid/graphics/Rect;

.field final mContext:Landroid/content/Context;

.field mDeferTransactionTime:J

.field mDeferTransactionUntilFrame:J

.field private mDestroyPreservedSurfaceUponRedraw:Z

.field mDrawState:I

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnterAnimationPending:Z

.field mEnteringAnimation:Z

.field mExtraHScale:F

.field mExtraVScale:F

.field mForceScaleUntilResize:Z

.field mHasClipRect:Z

.field mHasLocalTransformation:Z

.field mHasTransformation:Z

.field mHaveMatrix:Z

.field final mIsWallpaper:Z

.field mKeyguardGoingAwayAnimation:Z

.field mKeyguardGoingAwayWithWallpaper:Z

.field mLastAlpha:F

.field mLastAnimationTime:J

.field mLastClipRect:Landroid/graphics/Rect;

.field mLastDsDx:F

.field mLastDsDy:F

.field mLastDtDx:F

.field mLastDtDy:F

.field mLastFinalClipRect:Landroid/graphics/Rect;

.field mLastHidden:Z

.field mLastLayer:I

.field private final mLastSystemDecorRect:Landroid/graphics/Rect;

.field mLocalAnimating:Z

.field private mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mReportSurfaceResized:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field mShownAlpha:F

.field mStackClip:I

.field mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

.field mSurfaceDestroyDeferred:Z

.field mSurfaceFormat:I

.field mSurfaceResized:Z

.field private final mSystemDecorRect:Landroid/graphics/Rect;

.field mTmpClipRect:Landroid/graphics/Rect;

.field mTmpFinalClipRect:Landroid/graphics/Rect;

.field private final mTmpSize:Landroid/graphics/Rect;

.field mTmpStackBounds:Landroid/graphics/Rect;

.field final mTransformation:Landroid/view/animation/Transformation;

.field final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

.field mWasAnimating:Z

.field final mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 78
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    #@5
    .line 77
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 10
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    const/4 v4, 0x0

    #@3
    const/high16 v6, 0x3f800000    # 1.0f

    #@5
    const/4 v5, 0x0

    #@6
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 119
    new-instance v3, Landroid/view/animation/Transformation;

    #@b
    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    #@e
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@10
    .line 125
    const/4 v3, 0x1

    #@11
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    #@13
    .line 147
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@15
    .line 148
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@17
    .line 149
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@19
    .line 152
    new-instance v3, Landroid/graphics/Rect;

    #@1b
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@1e
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@20
    .line 153
    new-instance v3, Landroid/graphics/Rect;

    #@22
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@25
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@27
    .line 154
    new-instance v3, Landroid/graphics/Rect;

    #@29
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@2c
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    #@2e
    .line 155
    new-instance v3, Landroid/graphics/Rect;

    #@30
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@33
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    #@35
    .line 156
    new-instance v3, Landroid/graphics/Rect;

    #@37
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@3a
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    #@3c
    .line 157
    new-instance v3, Landroid/graphics/Rect;

    #@3e
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@41
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    #@43
    .line 163
    new-instance v3, Landroid/graphics/Rect;

    #@45
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@48
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@4a
    .line 164
    new-instance v3, Landroid/graphics/Rect;

    #@4c
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@4f
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastSystemDecorRect:Landroid/graphics/Rect;

    #@51
    .line 171
    const/4 v3, 0x0

    #@52
    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    #@54
    .line 173
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@56
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@58
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@5a
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@5c
    .line 174
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    #@5e
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    #@60
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    #@62
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    #@64
    .line 228
    iput-wide v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mDeferTransactionUntilFrame:J

    #@66
    .line 229
    iput-wide v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mDeferTransactionTime:J

    #@68
    .line 238
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@6a
    .line 239
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@6c
    .line 241
    new-instance v3, Landroid/graphics/Rect;

    #@6e
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@71
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@73
    .line 244
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@75
    .line 246
    .local v2, "service":Lcom/android/server/wm/WindowManagerService;
    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@77
    .line 247
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@79
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@7b
    .line 248
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@7d
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@7f
    .line 249
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@81
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    #@83
    .line 250
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@86
    move-result-object v0

    #@87
    .line 251
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    #@89
    .line 252
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@8c
    move-result-object v1

    #@8d
    .line 253
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    #@8f
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    #@91
    .line 254
    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    #@93
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    #@95
    .line 260
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@97
    .line 261
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@99
    if-nez v3, :cond_1

    #@9b
    move-object v3, v4

    #@9c
    :goto_1
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@9e
    .line 263
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@a0
    if-nez v3, :cond_2

    #@a2
    :goto_2
    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@a4
    .line 264
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@a6
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    #@a8
    .line 265
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@aa
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@ac
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    #@ae
    .line 266
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@b0
    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    #@b2
    .line 267
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b4
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@b6
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@b8
    .line 243
    return-void

    #@b9
    .line 256
    :cond_0
    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    #@bb
    const-string/jumbo v5, "WindowStateAnimator ctor: Display has been removed"

    #@be
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    goto :goto_0

    #@c2
    .line 262
    :cond_1
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@c4
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@c6
    goto :goto_1

    #@c7
    .line 263
    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@c9
    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@cb
    goto :goto_2
.end method

.method private adjustCropToStackBounds(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 15
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "clipRect"    # Landroid/graphics/Rect;
    .param p3, "finalClipRect"    # Landroid/graphics/Rect;
    .param p4, "isFreeformResizing"    # Z

    #@0
    .prologue
    .line 1320
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@3
    move-result-object v1

    #@4
    .line 1321
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    #@6
    iget-boolean v10, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    #@8
    if-eqz v10, :cond_1

    #@a
    .line 1330
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@d
    move-result-object v7

    #@e
    .line 1331
    .local v7, "task":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_2

    #@10
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    #@13
    move-result v10

    #@14
    if-eqz v10, :cond_2

    #@16
    .line 1335
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->resolveStackClip()I

    #@19
    move-result v5

    #@1a
    .line 1338
    .local v5, "stackClip":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    #@1d
    move-result v10

    #@1e
    if-eqz v10, :cond_3

    #@20
    const/4 v10, 0x2

    #@21
    if-ne v5, v10, :cond_3

    #@23
    .line 1339
    return-void

    #@24
    .line 1327
    .end local v5    # "stackClip":I
    .end local v7    # "task":Lcom/android/server/wm/Task;
    :cond_1
    return-void

    #@25
    .line 1332
    .restart local v7    # "task":Lcom/android/server/wm/Task;
    :cond_2
    return-void

    #@26
    .line 1342
    .restart local v5    # "stackClip":I
    :cond_3
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@28
    invoke-interface {v10}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    #@2b
    move-result-object v9

    #@2c
    check-cast v9, Lcom/android/server/wm/WindowState;

    #@2e
    .line 1343
    .local v9, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p1

    #@30
    if-ne v0, v9, :cond_4

    #@32
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@34
    invoke-interface {v10}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    #@37
    move-result v10

    #@38
    if-eqz v10, :cond_4

    #@3a
    .line 1344
    return-void

    #@3b
    .line 1347
    :cond_4
    iget-object v4, v7, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@3d
    .line 1348
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    #@3f
    invoke-virtual {v4, v10}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@42
    .line 1349
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@45
    move-result-object v10

    #@46
    iget-object v6, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@48
    .line 1353
    .local v6, "surfaceInsets":Landroid/graphics/Rect;
    if-eqz p4, :cond_5

    #@4a
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@4c
    invoke-virtual {v10}, Lcom/android/server/wm/WindowSurfaceController;->getX()F

    #@4f
    move-result v10

    #@50
    float-to-int v2, v10

    #@51
    .line 1355
    .local v2, "frameX":I
    :goto_0
    if-eqz p4, :cond_6

    #@53
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@55
    invoke-virtual {v10}, Lcom/android/server/wm/WindowSurfaceController;->getY()F

    #@58
    move-result v10

    #@59
    float-to-int v3, v10

    #@5a
    .line 1360
    .local v3, "frameY":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    #@5d
    move-result v10

    #@5e
    if-eqz v10, :cond_7

    #@60
    if-nez v5, :cond_7

    #@62
    const/4 v8, 0x1

    #@63
    .line 1365
    .local v8, "useFinalClipRect":Z
    :goto_2
    if-eqz v8, :cond_8

    #@65
    .line 1366
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    #@67
    move-object/from16 v0, p3

    #@69
    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@6c
    .line 1318
    :goto_3
    return-void

    #@6d
    .line 1354
    .end local v2    # "frameX":I
    .end local v3    # "frameY":I
    .end local v8    # "useFinalClipRect":Z
    :cond_5
    move-object/from16 v0, p1

    #@6f
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@71
    iget v10, v10, Landroid/graphics/Rect;->left:I

    #@73
    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@75
    iget v11, v11, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@77
    add-int/2addr v10, v11

    #@78
    iget v11, v6, Landroid/graphics/Rect;->left:I

    #@7a
    sub-int v2, v10, v11

    #@7c
    .restart local v2    # "frameX":I
    goto :goto_0

    #@7d
    .line 1356
    :cond_6
    move-object/from16 v0, p1

    #@7f
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@81
    iget v10, v10, Landroid/graphics/Rect;->top:I

    #@83
    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@85
    iget v11, v11, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@87
    add-int/2addr v10, v11

    #@88
    iget v11, v6, Landroid/graphics/Rect;->top:I

    #@8a
    sub-int v3, v10, v11

    #@8c
    .restart local v3    # "frameY":I
    goto :goto_1

    #@8d
    .line 1361
    :cond_7
    iget-boolean v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@8f
    goto :goto_2

    #@90
    .line 1368
    .restart local v8    # "useFinalClipRect":Z
    :cond_8
    iget v10, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@92
    invoke-static {v10}, Landroid/app/ActivityManager$StackId;->hasWindowShadow(I)Z

    #@95
    move-result v10

    #@96
    if-eqz v10, :cond_9

    #@98
    .line 1369
    iget v10, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@9a
    invoke-static {v10}, Landroid/app/ActivityManager$StackId;->isTaskResizeAllowed(I)Z

    #@9d
    move-result v10

    #@9e
    if-eqz v10, :cond_a

    #@a0
    .line 1378
    :cond_9
    :goto_4
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    #@a2
    iget v10, v10, Landroid/graphics/Rect;->left:I

    #@a4
    move-object/from16 v0, p2

    #@a6
    iget v11, v0, Landroid/graphics/Rect;->left:I

    #@a8
    add-int/2addr v11, v2

    #@a9
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    #@ac
    move-result v10

    #@ad
    sub-int/2addr v10, v2

    #@ae
    .line 1377
    const/4 v11, 0x0

    #@af
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    #@b2
    move-result v10

    #@b3
    move-object/from16 v0, p2

    #@b5
    iput v10, v0, Landroid/graphics/Rect;->left:I

    #@b7
    .line 1380
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    #@b9
    iget v10, v10, Landroid/graphics/Rect;->top:I

    #@bb
    move-object/from16 v0, p2

    #@bd
    iget v11, v0, Landroid/graphics/Rect;->top:I

    #@bf
    add-int/2addr v11, v3

    #@c0
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    #@c3
    move-result v10

    #@c4
    sub-int/2addr v10, v3

    #@c5
    .line 1379
    const/4 v11, 0x0

    #@c6
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    #@c9
    move-result v10

    #@ca
    move-object/from16 v0, p2

    #@cc
    iput v10, v0, Landroid/graphics/Rect;->top:I

    #@ce
    .line 1382
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    #@d0
    iget v10, v10, Landroid/graphics/Rect;->right:I

    #@d2
    move-object/from16 v0, p2

    #@d4
    iget v11, v0, Landroid/graphics/Rect;->right:I

    #@d6
    add-int/2addr v11, v2

    #@d7
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@da
    move-result v10

    #@db
    sub-int/2addr v10, v2

    #@dc
    .line 1381
    const/4 v11, 0x0

    #@dd
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    #@e0
    move-result v10

    #@e1
    move-object/from16 v0, p2

    #@e3
    iput v10, v0, Landroid/graphics/Rect;->right:I

    #@e5
    .line 1384
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    #@e7
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    #@e9
    move-object/from16 v0, p2

    #@eb
    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    #@ed
    add-int/2addr v11, v3

    #@ee
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@f1
    move-result v10

    #@f2
    sub-int/2addr v10, v3

    #@f3
    .line 1383
    const/4 v11, 0x0

    #@f4
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    #@f7
    move-result v10

    #@f8
    move-object/from16 v0, p2

    #@fa
    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    #@fc
    goto/16 :goto_3

    #@fe
    .line 1373
    :cond_a
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    #@100
    iget v11, v6, Landroid/graphics/Rect;->left:I

    #@102
    neg-int v11, v11

    #@103
    iget v12, v6, Landroid/graphics/Rect;->top:I

    #@105
    neg-int v12, v12

    #@106
    .line 1374
    iget v13, v6, Landroid/graphics/Rect;->right:I

    #@108
    neg-int v13, v13

    #@109
    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    #@10b
    neg-int v14, v14

    #@10c
    .line 1373
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->inset(IIII)V

    #@10f
    goto :goto_4
.end method

.method private applyFadeoutDuringKeyguardExitAnimation()V
    .locals 14

    #@0
    .prologue
    .line 1911
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@2
    invoke-virtual {v10}, Landroid/view/animation/Animation;->getStartTime()J

    #@5
    move-result-wide v8

    #@6
    .line 1912
    .local v8, "startTime":J
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@8
    invoke-virtual {v10}, Landroid/view/animation/Animation;->getDuration()J

    #@b
    move-result-wide v0

    #@c
    .line 1913
    .local v0, "duration":J
    iget-wide v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimationTime:J

    #@e
    sub-long v2, v10, v8

    #@10
    .line 1914
    .local v2, "elapsed":J
    sub-long v4, v0, v2

    #@12
    .line 1915
    .local v4, "fadeDuration":J
    const-wide/16 v10, 0x0

    #@14
    cmp-long v10, v4, v10

    #@16
    if-gtz v10, :cond_0

    #@18
    .line 1917
    return-void

    #@19
    .line 1919
    :cond_0
    new-instance v7, Landroid/view/animation/AnimationSet;

    #@1b
    const/4 v10, 0x0

    #@1c
    invoke-direct {v7, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@1f
    .line 1920
    .local v7, "newAnimation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    #@22
    .line 1921
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AnimationSet;->setStartTime(J)V

    #@25
    .line 1922
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@27
    invoke-virtual {v7, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@2a
    .line 1924
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    #@2c
    const v11, 0x10a0011

    #@2f
    .line 1923
    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@32
    move-result-object v6

    #@33
    .line 1925
    .local v6, "fadeOut":Landroid/view/animation/Animation;
    invoke-virtual {v6, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    #@36
    .line 1926
    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    #@39
    .line 1927
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@3c
    .line 1928
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3e
    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@40
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    #@43
    move-result v10

    #@44
    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@46
    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@48
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    #@4b
    move-result v11

    #@4c
    iget v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    #@4e
    iget v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    #@50
    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    #@53
    .line 1929
    iput-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@55
    .line 1910
    return-void
.end method

.method private calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 795
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@4
    and-int/lit16 v1, v1, 0x4000

    #@6
    if-eqz v1, :cond_2

    #@8
    .line 797
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@a
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@c
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@e
    iget v3, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@10
    add-int/2addr v2, v3

    #@11
    iput v2, v1, Landroid/graphics/Rect;->right:I

    #@13
    .line 798
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@15
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@17
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@19
    iget v3, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@1b
    add-int/2addr v2, v3

    #@1c
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    #@1e
    .line 820
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@23
    move-result v1

    #@24
    if-ge v1, v4, :cond_0

    #@26
    .line 821
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@28
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@2a
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@2c
    add-int/lit8 v2, v2, 0x1

    #@2e
    iput v2, v1, Landroid/graphics/Rect;->right:I

    #@30
    .line 823
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@32
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@35
    move-result v1

    #@36
    if-ge v1, v4, :cond_1

    #@38
    .line 824
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@3a
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@3c
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@3e
    add-int/lit8 v2, v2, 0x1

    #@40
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    #@42
    .line 828
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@44
    iget v2, v1, Landroid/graphics/Rect;->left:I

    #@46
    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@48
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@4a
    sub-int/2addr v2, v3

    #@4b
    iput v2, v1, Landroid/graphics/Rect;->left:I

    #@4d
    .line 829
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@4f
    iget v2, v1, Landroid/graphics/Rect;->top:I

    #@51
    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@53
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@55
    sub-int/2addr v2, v3

    #@56
    iput v2, v1, Landroid/graphics/Rect;->top:I

    #@58
    .line 830
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@5a
    iget v2, v1, Landroid/graphics/Rect;->right:I

    #@5c
    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@5e
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@60
    add-int/2addr v2, v3

    #@61
    iput v2, v1, Landroid/graphics/Rect;->right:I

    #@63
    .line 831
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@65
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    #@67
    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@69
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@6b
    add-int/2addr v2, v3

    #@6c
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    #@6e
    .line 794
    return-void

    #@6f
    .line 803
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    #@72
    move-result v1

    #@73
    if-eqz v1, :cond_4

    #@75
    .line 804
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    #@78
    move-result v1

    #@79
    if-nez v1, :cond_3

    #@7b
    .line 805
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@7d
    iput v2, v1, Landroid/graphics/Rect;->left:I

    #@7f
    .line 806
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@81
    iput v2, v1, Landroid/graphics/Rect;->top:I

    #@83
    .line 808
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@86
    move-result-object v0

    #@87
    .line 809
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@89
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@8b
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@8d
    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@8f
    add-int/2addr v2, v3

    #@90
    iput v2, v1, Landroid/graphics/Rect;->right:I

    #@92
    .line 810
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@94
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@96
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@98
    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@9a
    add-int/2addr v2, v3

    #@9b
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    #@9d
    goto :goto_0

    #@9e
    .line 812
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@a0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@a2
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@a4
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@a6
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@a9
    move-result v3

    #@aa
    add-int/2addr v2, v3

    #@ab
    iput v2, v1, Landroid/graphics/Rect;->right:I

    #@ad
    .line 813
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@af
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@b1
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@b3
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@b5
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@b8
    move-result v3

    #@b9
    add-int/2addr v2, v3

    #@ba
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    #@bc
    goto/16 :goto_0
.end method

.method private calculateSystemDecorRect()V
    .locals 15

    #@0
    .prologue
    const/high16 v14, 0x3f000000    # 0.5f

    #@2
    const/4 v0, 0x0

    #@3
    .line 1150
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5
    .line 1151
    .local v7, "w":Lcom/android/server/wm/WindowState;
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    #@7
    .line 1152
    .local v1, "decorRect":Landroid/graphics/Rect;
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@9
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    #@c
    move-result v8

    #@d
    .line 1153
    .local v8, "width":I
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@f
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    #@12
    move-result v3

    #@13
    .line 1156
    .local v3, "height":I
    iget v9, v7, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@15
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@17
    iget v10, v10, Landroid/graphics/Rect;->left:I

    #@19
    add-int v4, v9, v10

    #@1b
    .line 1157
    .local v4, "left":I
    iget v9, v7, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@1d
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@1f
    iget v10, v10, Landroid/graphics/Rect;->top:I

    #@21
    add-int v6, v9, v10

    #@23
    .line 1160
    .local v6, "top":I
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    #@26
    move-result v9

    #@27
    if-nez v9, :cond_0

    #@29
    .line 1161
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@2c
    move-result v9

    #@2d
    if-eqz v9, :cond_3

    #@2f
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@31
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    #@34
    move-result v9

    #@35
    .line 1160
    if-eqz v9, :cond_3

    #@37
    .line 1171
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@3e
    move-result-object v2

    #@3f
    .line 1172
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@41
    .line 1173
    iget v10, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@43
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    #@46
    move-result v10

    #@47
    .line 1174
    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@49
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    #@4c
    move-result v11

    #@4d
    .line 1172
    invoke-virtual {v9, v0, v0, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    #@50
    .line 1182
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_0
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    #@53
    move-result v9

    #@54
    if-eqz v9, :cond_4

    #@56
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    #@59
    move-result v9

    #@5a
    if-eqz v9, :cond_4

    #@5c
    .line 1183
    .local v0, "cropToDecor":Z
    :goto_1
    if-eqz v0, :cond_1

    #@5e
    .line 1185
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@60
    iget v10, v1, Landroid/graphics/Rect;->left:I

    #@62
    sub-int/2addr v10, v4

    #@63
    iget v11, v1, Landroid/graphics/Rect;->top:I

    #@65
    sub-int/2addr v11, v6

    #@66
    .line 1186
    iget v12, v1, Landroid/graphics/Rect;->right:I

    #@68
    sub-int/2addr v12, v4

    #@69
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    #@6b
    sub-int/2addr v13, v6

    #@6c
    .line 1185
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@6f
    .line 1195
    :cond_1
    iget-boolean v9, v7, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@71
    if-eqz v9, :cond_2

    #@73
    iget v9, v7, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@75
    const/high16 v10, 0x3f800000    # 1.0f

    #@77
    cmpl-float v9, v9, v10

    #@79
    if-eqz v9, :cond_2

    #@7b
    .line 1196
    iget v5, v7, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@7d
    .line 1197
    .local v5, "scale":F
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@7f
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@81
    iget v10, v10, Landroid/graphics/Rect;->left:I

    #@83
    int-to-float v10, v10

    #@84
    mul-float/2addr v10, v5

    #@85
    sub-float/2addr v10, v14

    #@86
    float-to-int v10, v10

    #@87
    iput v10, v9, Landroid/graphics/Rect;->left:I

    #@89
    .line 1198
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@8b
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@8d
    iget v10, v10, Landroid/graphics/Rect;->top:I

    #@8f
    int-to-float v10, v10

    #@90
    mul-float/2addr v10, v5

    #@91
    sub-float/2addr v10, v14

    #@92
    float-to-int v10, v10

    #@93
    iput v10, v9, Landroid/graphics/Rect;->top:I

    #@95
    .line 1199
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@97
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@99
    iget v10, v10, Landroid/graphics/Rect;->right:I

    #@9b
    add-int/lit8 v10, v10, 0x1

    #@9d
    int-to-float v10, v10

    #@9e
    mul-float/2addr v10, v5

    #@9f
    sub-float/2addr v10, v14

    #@a0
    float-to-int v10, v10

    #@a1
    iput v10, v9, Landroid/graphics/Rect;->right:I

    #@a3
    .line 1200
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@a5
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@a7
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    #@a9
    add-int/lit8 v10, v10, 0x1

    #@ab
    int-to-float v10, v10

    #@ac
    mul-float/2addr v10, v5

    #@ad
    sub-float/2addr v10, v14

    #@ae
    float-to-int v10, v10

    #@af
    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    #@b1
    .line 1149
    .end local v5    # "scale":F
    :cond_2
    return-void

    #@b2
    .line 1176
    .end local v0    # "cropToDecor":Z
    :cond_3
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@b4
    invoke-virtual {v9, v0, v0, v8, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@b7
    goto :goto_0

    #@b8
    .line 1182
    :cond_4
    const/4 v0, 0x1

    #@b9
    goto :goto_1
.end method

.method private getAnimationFrameTime(Landroid/view/animation/Animation;J)J
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "currentTime"    # J

    #@0
    .prologue
    .line 2073
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2074
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@7
    .line 2075
    const-wide/16 v0, 0x1

    #@9
    add-long/2addr v0, p2

    #@a
    return-wide v0

    #@b
    .line 2077
    :cond_0
    return-wide p2
.end method

.method private resolveStackClip()I
    .locals 1

    #@0
    .prologue
    .line 1311
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@6
    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1312
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@c
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->getStackClip()I

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 1314
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    #@13
    return v0
.end method

.method private showSurfaceRobustlyLocked()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1794
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@7
    move-result-object v1

    #@8
    .line 1795
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_0

    #@a
    iget-object v2, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@c
    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@e
    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->windowsAreScaleable(I)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 1796
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@16
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    #@19
    .line 1799
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@1b
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->showRobustlyInTransaction()Z

    #@1e
    move-result v0

    #@1f
    .line 1800
    .local v0, "shown":Z
    if-nez v0, :cond_1

    #@21
    .line 1801
    return v3

    #@22
    .line 1803
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@24
    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 1805
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2a
    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@2c
    .line 1806
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@2e
    iget v3, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@30
    or-int/lit8 v3, v3, 0x10

    #@32
    iput v3, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@34
    .line 1808
    :cond_2
    return v4
.end method

.method private stepAnimation(J)Z
    .locals 3
    .param p1, "currentTime"    # J

    #@0
    .prologue
    .line 356
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@2
    if-eqz v1, :cond_1

    #@4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 359
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@a
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->getAnimationFrameTime(Landroid/view/animation/Animation;J)J

    #@d
    move-result-wide p1

    #@e
    .line 360
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@10
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    #@13
    .line 361
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@15
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@17
    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@1a
    move-result v0

    #@1b
    .line 362
    .local v0, "more":Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    #@1d
    if-eqz v1, :cond_0

    #@1f
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@21
    if-eqz v1, :cond_0

    #@23
    .line 363
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@25
    const/4 v2, 0x0

    #@26
    invoke-virtual {v1, v2}, Landroid/view/animation/Transformation;->setAlpha(F)V

    #@29
    .line 367
    :cond_0
    return v0

    #@2a
    .line 357
    .end local v0    # "more":Z
    :cond_1
    const/4 v1, 0x0

    #@2b
    return v1
.end method


# virtual methods
.method applyAnimationLocked(IZ)Z
    .locals 7
    .param p1, "transit"    # I
    .param p2, "isEntrance"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1843
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@4
    if-eqz v5, :cond_2

    #@6
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@8
    if-ne v5, p2, :cond_2

    #@a
    .line 1850
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@c
    if-eqz v4, :cond_1

    #@e
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 1851
    const/4 v4, 0x5

    #@13
    if-ne p1, v4, :cond_1

    #@15
    .line 1852
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyFadeoutDuringKeyguardExitAnimation()V

    #@18
    .line 1854
    :cond_1
    return v3

    #@19
    .line 1844
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@1b
    .line 1843
    if-nez v5, :cond_0

    #@1d
    .line 1861
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1f
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_8

    #@25
    .line 1862
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@27
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@29
    invoke-interface {v5, v6, p1}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    #@2c
    move-result v1

    #@2d
    .line 1863
    .local v1, "anim":I
    const/4 v2, -0x1

    #@2e
    .line 1864
    .local v2, "attr":I
    const/4 v0, 0x0

    #@2f
    .line 1865
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz v1, :cond_7

    #@31
    .line 1866
    const/4 v5, -0x1

    #@32
    if-eq v1, v5, :cond_6

    #@34
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    #@36
    invoke-static {v5, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@39
    move-result-object v0

    #@3a
    .line 1892
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    #@3c
    .line 1894
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    #@3f
    .line 1895
    iput-boolean p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@41
    .line 1900
    .end local v1    # "anim":I
    .end local v2    # "attr":I
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@43
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@45
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    #@47
    const/16 v6, 0x7db

    #@49
    if-ne v5, v6, :cond_5

    #@4b
    .line 1901
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4d
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4f
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@51
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->adjustForImeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    #@54
    .line 1902
    if-eqz p2, :cond_5

    #@56
    .line 1903
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@58
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    #@5b
    .line 1904
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5d
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@5f
    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    #@62
    .line 1907
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@64
    if-eqz v5, :cond_9

    #@66
    :goto_2
    return v3

    #@67
    .line 1866
    .restart local v0    # "a":Landroid/view/animation/Animation;
    .restart local v1    # "anim":I
    .restart local v2    # "attr":I
    :cond_6
    const/4 v0, 0x0

    #@68
    goto :goto_0

    #@69
    .line 1868
    :cond_7
    packed-switch p1, :pswitch_data_0

    #@6c
    .line 1882
    :goto_3
    if-ltz v2, :cond_3

    #@6e
    .line 1883
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@70
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@72
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@74
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@76
    invoke-virtual {v5, v6, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    #@79
    move-result-object v0

    #@7a
    .local v0, "a":Landroid/view/animation/Animation;
    goto :goto_0

    #@7b
    .line 1870
    .local v0, "a":Landroid/view/animation/Animation;
    :pswitch_0
    const/4 v2, 0x0

    #@7c
    .line 1871
    goto :goto_3

    #@7d
    .line 1873
    :pswitch_1
    const/4 v2, 0x1

    #@7e
    .line 1874
    goto :goto_3

    #@7f
    .line 1876
    :pswitch_2
    const/4 v2, 0x2

    #@80
    .line 1877
    goto :goto_3

    #@81
    .line 1879
    :pswitch_3
    const/4 v2, 0x3

    #@82
    .line 1880
    goto :goto_3

    #@83
    .line 1898
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "anim":I
    .end local v2    # "attr":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    #@86
    goto :goto_1

    #@87
    :cond_9
    move v3, v4

    #@88
    .line 1907
    goto :goto_2

    #@89
    .line 1868
    nop

    #@8a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method applyEnterAnimationLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1815
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3
    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1816
    return-void

    #@8
    .line 1819
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 1820
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    #@e
    .line 1821
    const/4 v0, 0x1

    #@f
    .line 1825
    .local v0, "transit":I
    :goto_0
    const/4 v1, 0x1

    #@10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    #@13
    .line 1827
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@15
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 1828
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_1

    #@21
    .line 1829
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@23
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@25
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@27
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    #@2a
    .line 1811
    :cond_1
    return-void

    #@2b
    .line 1823
    .end local v0    # "transit":I
    :cond_2
    const/4 v0, 0x3

    #@2c
    .restart local v0    # "transit":I
    goto :goto_0
.end method

.method calculateSurfaceWindowCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "finalClipRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1205
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3
    .line 1206
    .local v5, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@6
    move-result-object v1

    #@7
    .line 1207
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_0

    #@9
    .line 1208
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    #@c
    .line 1209
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    #@f
    .line 1210
    return-void

    #@10
    .line 1212
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@13
    move-result-object v2

    #@14
    .line 1217
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    #@17
    move-result v6

    #@18
    if-nez v6, :cond_5

    #@1a
    .line 1220
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@1c
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@1e
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@21
    move-result v7

    #@22
    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    #@27
    move-result v8

    #@28
    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    #@2b
    .line 1221
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@2d
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@2f
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@31
    neg-int v7, v7

    #@32
    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@34
    iget v8, v8, Landroid/graphics/Rect;->top:I

    #@36
    neg-int v8, v8

    #@37
    .line 1222
    iget v9, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@39
    iget-object v10, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@3b
    iget v10, v10, Landroid/graphics/Rect;->left:I

    #@3d
    sub-int/2addr v9, v10

    #@3e
    .line 1223
    iget v10, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@40
    iget-object v11, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@42
    iget v11, v11, Landroid/graphics/Rect;->top:I

    #@44
    sub-int/2addr v10, v11

    #@45
    .line 1221
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@48
    .line 1243
    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowState;->isFrameFullscreen(Landroid/view/DisplayInfo;)Z

    #@4b
    move-result v3

    #@4c
    .line 1245
    .local v3, "fullscreen":Z
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    #@4f
    move-result v6

    #@50
    if-eqz v6, :cond_9

    #@52
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    #@55
    move-result v6

    #@56
    if-nez v6, :cond_9

    #@58
    const/4 v4, 0x1

    #@59
    .line 1249
    .local v4, "isFreeformResizing":Z
    :goto_1
    iget-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@5b
    if-eqz v6, :cond_1

    #@5d
    if-eqz v3, :cond_a

    #@5f
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@61
    :goto_2
    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@64
    .line 1253
    if-eqz v4, :cond_2

    #@66
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@69
    move-result v6

    #@6a
    if-eqz v6, :cond_b

    #@6c
    .line 1260
    :cond_2
    :goto_3
    iget-object v0, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@6e
    .line 1261
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v6, p1, Landroid/graphics/Rect;->left:I

    #@70
    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@72
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@74
    sub-int/2addr v6, v7

    #@75
    iput v6, p1, Landroid/graphics/Rect;->left:I

    #@77
    .line 1262
    iget v6, p1, Landroid/graphics/Rect;->top:I

    #@79
    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@7b
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@7d
    sub-int/2addr v6, v7

    #@7e
    iput v6, p1, Landroid/graphics/Rect;->top:I

    #@80
    .line 1263
    iget v6, p1, Landroid/graphics/Rect;->right:I

    #@82
    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@84
    iget v7, v7, Landroid/graphics/Rect;->right:I

    #@86
    add-int/2addr v6, v7

    #@87
    iput v6, p1, Landroid/graphics/Rect;->right:I

    #@89
    .line 1264
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    #@8b
    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@8d
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@8f
    add-int/2addr v6, v7

    #@90
    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    #@92
    .line 1266
    iget-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@94
    if-eqz v6, :cond_3

    #@96
    if-eqz v3, :cond_3

    #@98
    .line 1270
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@9a
    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@9d
    .line 1274
    :cond_3
    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@9f
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@a1
    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@a3
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@a5
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    #@a8
    .line 1276
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    #@ab
    .line 1277
    invoke-direct {p0, v5, p1, p2, v4}, Lcom/android/server/wm/WindowStateAnimator;->adjustCropToStackBounds(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    #@ae
    .line 1281
    invoke-virtual {v5, p1}, Lcom/android/server/wm/WindowState;->transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V

    #@b1
    .line 1284
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->hasJustMovedInStack()Z

    #@b4
    move-result v6

    #@b5
    if-eqz v6, :cond_4

    #@b7
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    #@b9
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    #@bc
    move-result v6

    #@bd
    if-eqz v6, :cond_4

    #@bf
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    #@c2
    move-result v6

    #@c3
    if-eqz v6, :cond_c

    #@c5
    .line 1204
    :cond_4
    :goto_4
    return-void

    #@c6
    .line 1224
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "fullscreen":Z
    .end local v4    # "isFreeformResizing":Z
    :cond_5
    iget v6, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    #@c8
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@ca
    iget v7, v7, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    #@cc
    if-lt v6, v7, :cond_6

    #@ce
    .line 1226
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@d0
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@d2
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@d5
    move-result v7

    #@d6
    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@d8
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    #@db
    move-result v8

    #@dc
    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    #@df
    goto/16 :goto_0

    #@e1
    .line 1227
    :cond_6
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    #@e3
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    #@e6
    move-result v6

    #@e7
    if-eqz v6, :cond_7

    #@e9
    .line 1229
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@eb
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@ed
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@f0
    move-result v7

    #@f1
    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@f3
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    #@f6
    move-result v8

    #@f7
    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    #@fa
    goto/16 :goto_0

    #@fc
    .line 1230
    :cond_7
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@fe
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    #@100
    const/16 v7, 0x7dd

    #@102
    if-ne v6, v7, :cond_8

    #@104
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@106
    invoke-virtual {v6}, Lcom/android/server/wm/WindowAnimator;->isAnimating()Z

    #@109
    move-result v6

    #@10a
    if-eqz v6, :cond_8

    #@10c
    .line 1233
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@10e
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@110
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@113
    .line 1234
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->calculateSystemDecorRect()V

    #@116
    .line 1235
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@118
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@11a
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    #@11d
    goto/16 :goto_0

    #@11f
    .line 1238
    :cond_8
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->calculateSystemDecorRect()V

    #@122
    goto/16 :goto_0

    #@124
    .line 1245
    .restart local v3    # "fullscreen":Z
    :cond_9
    const/4 v4, 0x0

    #@125
    .restart local v4    # "isFreeformResizing":Z
    goto/16 :goto_1

    #@127
    .line 1249
    :cond_a
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@129
    goto/16 :goto_2

    #@12b
    .line 1256
    :cond_b
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@12d
    iget v6, v6, Landroid/graphics/Point;->x:I

    #@12f
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@131
    iget v7, v7, Landroid/graphics/Point;->y:I

    #@133
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    #@136
    goto/16 :goto_3

    #@138
    .line 1285
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    #@13b
    goto :goto_4
.end method

.method cancelExitAnimationForNextAnimationLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 347
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 348
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@7
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    #@a
    .line 349
    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@c
    .line 350
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@f
    .line 351
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@11
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->destroyOrSaveSurface()V

    #@14
    .line 343
    :cond_0
    return-void
.end method

.method public clearAnimation()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 294
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 295
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@9
    .line 296
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@b
    .line 297
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@d
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    #@10
    .line 298
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@12
    .line 299
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@14
    .line 300
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    #@16
    .line 301
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    #@18
    .line 293
    :cond_0
    return-void
.end method

.method commitFinishDrawingLocked()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 620
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@3
    const/4 v3, 0x2

    #@4
    if-eq v2, v3, :cond_0

    #@6
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@8
    if-eq v2, v4, :cond_0

    #@a
    .line 621
    const/4 v2, 0x0

    #@b
    return v2

    #@c
    .line 626
    :cond_0
    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@e
    .line 627
    const/4 v1, 0x0

    #@f
    .line 628
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@11
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@13
    .line 629
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_1

    #@15
    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@17
    if-nez v2, :cond_1

    #@19
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1b
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1d
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1f
    if-ne v2, v4, :cond_2

    #@21
    .line 630
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    #@24
    move-result v1

    #@25
    .line 632
    .end local v1    # "result":Z
    :cond_2
    return v1
.end method

.method computeShownFrameLocked()V
    .locals 26

    #@0
    .prologue
    .line 927
    move-object/from16 v0, p0

    #@2
    iget-boolean v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@4
    .line 929
    .local v11, "selfTransformation":Z
    move-object/from16 v0, p0

    #@6
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@8
    move-object/from16 v21, v0

    #@a
    if-eqz v21, :cond_d

    #@c
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@10
    move-object/from16 v21, v0

    #@12
    move-object/from16 v0, v21

    #@14
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@16
    move/from16 v21, v0

    #@18
    if-eqz v21, :cond_d

    #@1a
    .line 930
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1e
    move-object/from16 v21, v0

    #@20
    move-object/from16 v0, v21

    #@22
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@24
    .line 931
    :goto_0
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@28
    move-object/from16 v21, v0

    #@2a
    if-eqz v21, :cond_e

    #@2c
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@30
    move-object/from16 v21, v0

    #@32
    move-object/from16 v0, v21

    #@34
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@36
    move/from16 v21, v0

    #@38
    if-eqz v21, :cond_e

    #@3a
    .line 932
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@3e
    move-object/from16 v21, v0

    #@40
    move-object/from16 v0, v21

    #@42
    iget-object v4, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@44
    .line 936
    :goto_1
    move-object/from16 v0, p0

    #@46
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@48
    move-object/from16 v21, v0

    #@4a
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    #@4d
    move-result-object v17

    #@4e
    .line 937
    .local v17, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    #@50
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    #@52
    move/from16 v21, v0

    #@54
    if-eqz v21, :cond_1

    #@56
    if-eqz v17, :cond_1

    #@58
    move-object/from16 v0, p0

    #@5a
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5c
    move-object/from16 v21, v0

    #@5e
    move-object/from16 v0, v21

    #@60
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    #@62
    move/from16 v21, v0

    #@64
    if-eqz v21, :cond_1

    #@66
    .line 938
    move-object/from16 v0, v17

    #@68
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@6a
    move-object/from16 v16, v0

    #@6c
    .line 939
    .local v16, "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v16

    #@6e
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@70
    move/from16 v21, v0

    #@72
    if-eqz v21, :cond_0

    #@74
    .line 940
    move-object/from16 v0, v16

    #@76
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@78
    move-object/from16 v21, v0

    #@7a
    if-eqz v21, :cond_0

    #@7c
    .line 941
    move-object/from16 v0, v16

    #@7e
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@80
    move-object/from16 v21, v0

    #@82
    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    #@85
    move-result v21

    #@86
    if-eqz v21, :cond_f

    #@88
    .line 947
    :cond_0
    :goto_2
    move-object/from16 v0, v17

    #@8a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@8c
    move-object/from16 v21, v0

    #@8e
    if-nez v21, :cond_10

    #@90
    .line 948
    const/16 v18, 0x0

    #@92
    .line 949
    .local v18, "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :goto_3
    if-eqz v18, :cond_1

    #@94
    move-object/from16 v0, v18

    #@96
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@98
    move/from16 v21, v0

    #@9a
    if-eqz v21, :cond_1

    #@9c
    .line 950
    move-object/from16 v0, v18

    #@9e
    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@a0
    move-object/from16 v21, v0

    #@a2
    if-eqz v21, :cond_1

    #@a4
    .line 951
    move-object/from16 v0, v18

    #@a6
    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@a8
    move-object/from16 v21, v0

    #@aa
    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    #@ad
    move-result v21

    #@ae
    if-eqz v21, :cond_11

    #@b0
    .line 959
    .end local v16    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v18    # "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    #@b2
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@b4
    move-object/from16 v21, v0

    #@b6
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@b9
    move-result v6

    #@ba
    .line 961
    .local v6, "displayId":I
    move-object/from16 v0, p0

    #@bc
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@be
    move-object/from16 v21, v0

    #@c0
    move-object/from16 v0, v21

    #@c2
    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    #@c5
    move-result-object v10

    #@c6
    .line 963
    .local v10, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v10, :cond_12

    #@c8
    invoke-virtual {v10}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    #@cb
    move-result v9

    #@cc
    .line 965
    :goto_5
    const/16 v21, 0x0

    #@ce
    move/from16 v0, v21

    #@d0
    move-object/from16 v1, p0

    #@d2
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@d4
    .line 966
    if-nez v11, :cond_2

    #@d6
    if-eqz v5, :cond_13

    #@d8
    .line 969
    :cond_2
    move-object/from16 v0, p0

    #@da
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@dc
    move-object/from16 v21, v0

    #@de
    move-object/from16 v0, v21

    #@e0
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@e2
    .line 970
    .local v7, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@e4
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e6
    move-object/from16 v21, v0

    #@e8
    move-object/from16 v0, v21

    #@ea
    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    #@ec
    .line 971
    .local v13, "tmpFloats":[F
    move-object/from16 v0, p0

    #@ee
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@f0
    move-object/from16 v21, v0

    #@f2
    move-object/from16 v0, v21

    #@f4
    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    #@f6
    .line 974
    .local v14, "tmpMatrix":Landroid/graphics/Matrix;
    if-eqz v9, :cond_15

    #@f8
    invoke-virtual {v10}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    #@fb
    move-result v21

    #@fc
    if-eqz v21, :cond_15

    #@fe
    .line 982
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@101
    move-result v21

    #@102
    move/from16 v0, v21

    #@104
    int-to-float v15, v0

    #@105
    .line 983
    .local v15, "w":F
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    #@108
    move-result v21

    #@109
    move/from16 v0, v21

    #@10b
    int-to-float v8, v0

    #@10c
    .line 984
    .local v8, "h":F
    const/high16 v21, 0x3f800000    # 1.0f

    #@10e
    cmpl-float v21, v15, v21

    #@110
    if-ltz v21, :cond_14

    #@112
    const/high16 v21, 0x3f800000    # 1.0f

    #@114
    cmpl-float v21, v8, v21

    #@116
    if-ltz v21, :cond_14

    #@118
    .line 985
    const/high16 v21, 0x40000000    # 2.0f

    #@11a
    div-float v21, v21, v15

    #@11c
    const/high16 v22, 0x3f800000    # 1.0f

    #@11e
    add-float v21, v21, v22

    #@120
    const/high16 v22, 0x40000000    # 2.0f

    #@122
    div-float v22, v22, v8

    #@124
    const/high16 v23, 0x3f800000    # 1.0f

    #@126
    add-float v22, v22, v23

    #@128
    const/high16 v23, 0x40000000    # 2.0f

    #@12a
    div-float v23, v15, v23

    #@12c
    const/high16 v24, 0x40000000    # 2.0f

    #@12e
    div-float v24, v8, v24

    #@130
    move/from16 v0, v21

    #@132
    move/from16 v1, v22

    #@134
    move/from16 v2, v23

    #@136
    move/from16 v3, v24

    #@138
    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    #@13b
    .line 992
    .end local v8    # "h":F
    .end local v15    # "w":F
    :goto_6
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@13f
    move-object/from16 v21, v0

    #@141
    move-object/from16 v0, v21

    #@143
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@145
    move/from16 v21, v0

    #@147
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@14b
    move-object/from16 v22, v0

    #@14d
    move-object/from16 v0, v22

    #@14f
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@151
    move/from16 v22, v0

    #@153
    move/from16 v0, v21

    #@155
    move/from16 v1, v22

    #@157
    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@15a
    .line 993
    if-eqz v11, :cond_3

    #@15c
    .line 994
    move-object/from16 v0, p0

    #@15e
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@160
    move-object/from16 v21, v0

    #@162
    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@165
    move-result-object v21

    #@166
    move-object/from16 v0, v21

    #@168
    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@16b
    .line 996
    :cond_3
    if-eqz v5, :cond_4

    #@16d
    .line 997
    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@170
    move-result-object v21

    #@171
    move-object/from16 v0, v21

    #@173
    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@176
    .line 999
    :cond_4
    if-eqz v4, :cond_5

    #@178
    .line 1000
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@17b
    move-result-object v21

    #@17c
    move-object/from16 v0, v21

    #@17e
    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@181
    .line 1007
    :cond_5
    iget v0, v7, Landroid/graphics/Rect;->left:I

    #@183
    move/from16 v21, v0

    #@185
    move-object/from16 v0, p0

    #@187
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@189
    move-object/from16 v22, v0

    #@18b
    move-object/from16 v0, v22

    #@18d
    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@18f
    move/from16 v22, v0

    #@191
    add-int v21, v21, v22

    #@193
    move/from16 v0, v21

    #@195
    int-to-float v0, v0

    #@196
    move/from16 v21, v0

    #@198
    iget v0, v7, Landroid/graphics/Rect;->top:I

    #@19a
    move/from16 v22, v0

    #@19c
    move-object/from16 v0, p0

    #@19e
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1a0
    move-object/from16 v23, v0

    #@1a2
    move-object/from16 v0, v23

    #@1a4
    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@1a6
    move/from16 v23, v0

    #@1a8
    add-int v22, v22, v23

    #@1aa
    move/from16 v0, v22

    #@1ac
    int-to-float v0, v0

    #@1ad
    move/from16 v22, v0

    #@1af
    move/from16 v0, v21

    #@1b1
    move/from16 v1, v22

    #@1b3
    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@1b6
    .line 1008
    if-eqz v9, :cond_6

    #@1b8
    .line 1009
    invoke-virtual {v10}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    #@1bb
    move-result-object v21

    #@1bc
    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@1bf
    move-result-object v21

    #@1c0
    move-object/from16 v0, v21

    #@1c2
    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@1c5
    .line 1013
    :cond_6
    move-object/from16 v0, p0

    #@1c7
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1c9
    move-object/from16 v21, v0

    #@1cb
    move-object/from16 v0, v21

    #@1cd
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@1cf
    move-object/from16 v21, v0

    #@1d1
    if-eqz v21, :cond_7

    #@1d3
    if-nez v6, :cond_7

    #@1d5
    .line 1014
    move-object/from16 v0, p0

    #@1d7
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1d9
    move-object/from16 v21, v0

    #@1db
    move-object/from16 v0, v21

    #@1dd
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@1df
    move-object/from16 v21, v0

    #@1e1
    .line 1015
    move-object/from16 v0, p0

    #@1e3
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1e5
    move-object/from16 v22, v0

    #@1e7
    .line 1014
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    #@1ea
    move-result-object v12

    #@1eb
    .line 1016
    .local v12, "spec":Landroid/view/MagnificationSpec;
    if-eqz v12, :cond_7

    #@1ed
    invoke-virtual {v12}, Landroid/view/MagnificationSpec;->isNop()Z

    #@1f0
    move-result v21

    #@1f1
    if-eqz v21, :cond_16

    #@1f3
    .line 1028
    .end local v12    # "spec":Landroid/view/MagnificationSpec;
    :cond_7
    :goto_7
    const/16 v21, 0x1

    #@1f5
    move/from16 v0, v21

    #@1f7
    move-object/from16 v1, p0

    #@1f9
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    #@1fb
    .line 1029
    invoke-virtual {v14, v13}, Landroid/graphics/Matrix;->getValues([F)V

    #@1fe
    .line 1030
    const/16 v21, 0x0

    #@200
    aget v21, v13, v21

    #@202
    move/from16 v0, v21

    #@204
    move-object/from16 v1, p0

    #@206
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@208
    .line 1031
    const/16 v21, 0x3

    #@20a
    aget v21, v13, v21

    #@20c
    move/from16 v0, v21

    #@20e
    move-object/from16 v1, p0

    #@210
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@212
    .line 1032
    const/16 v21, 0x1

    #@214
    aget v21, v13, v21

    #@216
    move/from16 v0, v21

    #@218
    move-object/from16 v1, p0

    #@21a
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@21c
    .line 1033
    const/16 v21, 0x4

    #@21e
    aget v21, v13, v21

    #@220
    move/from16 v0, v21

    #@222
    move-object/from16 v1, p0

    #@224
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@226
    .line 1034
    const/16 v21, 0x2

    #@228
    aget v19, v13, v21

    #@22a
    .line 1035
    .local v19, "x":F
    const/16 v21, 0x5

    #@22c
    aget v20, v13, v21

    #@22e
    .line 1036
    .local v20, "y":F
    move-object/from16 v0, p0

    #@230
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@232
    move-object/from16 v21, v0

    #@234
    move-object/from16 v0, v21

    #@236
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@238
    move-object/from16 v21, v0

    #@23a
    move/from16 v0, v19

    #@23c
    float-to-int v0, v0

    #@23d
    move/from16 v22, v0

    #@23f
    move/from16 v0, v20

    #@241
    float-to-int v0, v0

    #@242
    move/from16 v23, v0

    #@244
    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Point;->set(II)V

    #@247
    .line 1043
    move-object/from16 v0, p0

    #@249
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@24b
    move/from16 v21, v0

    #@24d
    move/from16 v0, v21

    #@24f
    move-object/from16 v1, p0

    #@251
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@253
    .line 1044
    move-object/from16 v0, p0

    #@255
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@257
    move-object/from16 v21, v0

    #@259
    move-object/from16 v0, v21

    #@25b
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    #@25d
    move/from16 v21, v0

    #@25f
    if-eqz v21, :cond_8

    #@261
    .line 1045
    move-object/from16 v0, p0

    #@263
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@265
    move-object/from16 v21, v0

    #@267
    move-object/from16 v0, v21

    #@269
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@26b
    move-object/from16 v21, v0

    #@26d
    move-object/from16 v0, v21

    #@26f
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@271
    move/from16 v21, v0

    #@273
    invoke-static/range {v21 .. v21}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    #@276
    move-result v21

    #@277
    if-eqz v21, :cond_8

    #@279
    .line 1046
    move-object/from16 v0, p0

    #@27b
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@27d
    move-object/from16 v21, v0

    #@27f
    move-object/from16 v0, p0

    #@281
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@283
    move/from16 v22, v0

    #@285
    move-object/from16 v0, p0

    #@287
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@289
    move/from16 v23, v0

    #@28b
    move-object/from16 v0, p0

    #@28d
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@28f
    move/from16 v24, v0

    #@291
    move-object/from16 v0, p0

    #@293
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@295
    move/from16 v25, v0

    #@297
    invoke-virtual/range {v21 .. v25}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    #@29a
    move-result v21

    #@29b
    if-eqz v21, :cond_c

    #@29d
    .line 1047
    iget v0, v7, Landroid/graphics/Rect;->left:I

    #@29f
    move/from16 v21, v0

    #@2a1
    move/from16 v0, v21

    #@2a3
    int-to-float v0, v0

    #@2a4
    move/from16 v21, v0

    #@2a6
    cmpl-float v21, v19, v21

    #@2a8
    if-nez v21, :cond_c

    #@2aa
    iget v0, v7, Landroid/graphics/Rect;->top:I

    #@2ac
    move/from16 v21, v0

    #@2ae
    move/from16 v0, v21

    #@2b0
    int-to-float v0, v0

    #@2b1
    move/from16 v21, v0

    #@2b3
    cmpl-float v21, v20, v21

    #@2b5
    if-nez v21, :cond_c

    #@2b7
    .line 1049
    :cond_8
    if-eqz v11, :cond_9

    #@2b9
    .line 1050
    move-object/from16 v0, p0

    #@2bb
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@2bd
    move/from16 v21, v0

    #@2bf
    move-object/from16 v0, p0

    #@2c1
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@2c3
    move-object/from16 v22, v0

    #@2c5
    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/Transformation;->getAlpha()F

    #@2c8
    move-result v22

    #@2c9
    mul-float v21, v21, v22

    #@2cb
    move/from16 v0, v21

    #@2cd
    move-object/from16 v1, p0

    #@2cf
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@2d1
    .line 1052
    :cond_9
    if-eqz v5, :cond_a

    #@2d3
    .line 1053
    move-object/from16 v0, p0

    #@2d5
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@2d7
    move/from16 v21, v0

    #@2d9
    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    #@2dc
    move-result v22

    #@2dd
    mul-float v21, v21, v22

    #@2df
    move/from16 v0, v21

    #@2e1
    move-object/from16 v1, p0

    #@2e3
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@2e5
    .line 1055
    :cond_a
    if-eqz v4, :cond_b

    #@2e7
    .line 1056
    move-object/from16 v0, p0

    #@2e9
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@2eb
    move/from16 v21, v0

    #@2ed
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    #@2f0
    move-result v22

    #@2f1
    mul-float v21, v21, v22

    #@2f3
    move/from16 v0, v21

    #@2f5
    move-object/from16 v1, p0

    #@2f7
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@2f9
    .line 1057
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->hasClipRect()Z

    #@2fc
    move-result v21

    #@2fd
    if-eqz v21, :cond_b

    #@2ff
    .line 1058
    move-object/from16 v0, p0

    #@301
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@303
    move-object/from16 v21, v0

    #@305
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    #@308
    move-result-object v22

    #@309
    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@30c
    .line 1059
    const/16 v21, 0x1

    #@30e
    move/from16 v0, v21

    #@310
    move-object/from16 v1, p0

    #@312
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@314
    .line 1067
    move-object/from16 v0, p0

    #@316
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@318
    move-object/from16 v21, v0

    #@31a
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    #@31d
    move-result v21

    #@31e
    if-eqz v21, :cond_b

    #@320
    .line 1068
    move-object/from16 v0, p0

    #@322
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@324
    move-object/from16 v21, v0

    #@326
    move-object/from16 v0, p0

    #@328
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@32a
    move-object/from16 v22, v0

    #@32c
    move-object/from16 v0, v22

    #@32e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@330
    move-object/from16 v22, v0

    #@332
    move-object/from16 v0, v22

    #@334
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@336
    move/from16 v22, v0

    #@338
    move-object/from16 v0, p0

    #@33a
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@33c
    move-object/from16 v23, v0

    #@33e
    move-object/from16 v0, v23

    #@340
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@342
    move-object/from16 v23, v0

    #@344
    move-object/from16 v0, v23

    #@346
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@348
    move/from16 v23, v0

    #@34a
    sub-int v22, v22, v23

    #@34c
    .line 1069
    move-object/from16 v0, p0

    #@34e
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@350
    move-object/from16 v23, v0

    #@352
    move-object/from16 v0, v23

    #@354
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@356
    move-object/from16 v23, v0

    #@358
    move-object/from16 v0, v23

    #@35a
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@35c
    move/from16 v23, v0

    #@35e
    move-object/from16 v0, p0

    #@360
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@362
    move-object/from16 v24, v0

    #@364
    move-object/from16 v0, v24

    #@366
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@368
    move-object/from16 v24, v0

    #@36a
    move-object/from16 v0, v24

    #@36c
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@36e
    move/from16 v24, v0

    #@370
    sub-int v23, v23, v24

    #@372
    .line 1068
    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Rect;->offset(II)V

    #@375
    .line 1073
    :cond_b
    if-eqz v9, :cond_c

    #@377
    .line 1074
    move-object/from16 v0, p0

    #@379
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@37b
    move/from16 v21, v0

    #@37d
    invoke-virtual {v10}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    #@380
    move-result-object v22

    #@381
    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/Transformation;->getAlpha()F

    #@384
    move-result v22

    #@385
    mul-float v21, v21, v22

    #@387
    move/from16 v0, v21

    #@389
    move-object/from16 v1, p0

    #@38b
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@38d
    .line 1089
    :cond_c
    return-void

    #@38e
    .line 930
    .end local v6    # "displayId":I
    .end local v7    # "frame":Landroid/graphics/Rect;
    .end local v10    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v13    # "tmpFloats":[F
    .end local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v17    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v19    # "x":F
    .end local v20    # "y":F
    :cond_d
    const/4 v5, 0x0

    #@38f
    .local v5, "attachedTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_0

    #@391
    .line 932
    .end local v5    # "attachedTransformation":Landroid/view/animation/Transformation;
    :cond_e
    const/4 v4, 0x0

    #@392
    .local v4, "appTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_1

    #@394
    .line 942
    .end local v4    # "appTransformation":Landroid/view/animation/Transformation;
    .restart local v16    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v17    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_f
    move-object/from16 v0, v16

    #@396
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@398
    .local v5, "attachedTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_2

    #@39a
    .line 948
    .end local v5    # "attachedTransformation":Landroid/view/animation/Transformation;
    :cond_10
    move-object/from16 v0, v17

    #@39c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@39e
    move-object/from16 v21, v0

    #@3a0
    move-object/from16 v0, v21

    #@3a2
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@3a4
    move-object/from16 v18, v0

    #@3a6
    goto/16 :goto_3

    #@3a8
    .line 952
    .restart local v18    # "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_11
    move-object/from16 v0, v18

    #@3aa
    iget-object v4, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@3ac
    .local v4, "appTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_4

    #@3ae
    .line 963
    .end local v4    # "appTransformation":Landroid/view/animation/Transformation;
    .end local v16    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v18    # "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .restart local v6    # "displayId":I
    .restart local v10    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_12
    const/4 v9, 0x0

    #@3af
    .local v9, "screenAnimation":Z
    goto/16 :goto_5

    #@3b1
    .line 967
    .end local v9    # "screenAnimation":Z
    :cond_13
    if-nez v4, :cond_2

    #@3b3
    .line 966
    if-nez v9, :cond_2

    #@3b5
    .line 1090
    move-object/from16 v0, p0

    #@3b7
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    #@3b9
    move/from16 v21, v0

    #@3bb
    if-eqz v21, :cond_17

    #@3bd
    move-object/from16 v0, p0

    #@3bf
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3c1
    move-object/from16 v21, v0

    #@3c3
    move-object/from16 v0, v21

    #@3c5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@3c7
    move-object/from16 v21, v0

    #@3c9
    move-object/from16 v0, v21

    #@3cb
    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperActionPending:Z

    #@3cd
    move/from16 v21, v0

    #@3cf
    if-eqz v21, :cond_17

    #@3d1
    .line 1091
    return-void

    #@3d2
    .line 987
    .restart local v7    # "frame":Landroid/graphics/Rect;
    .restart local v8    # "h":F
    .restart local v13    # "tmpFloats":[F
    .restart local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    .restart local v15    # "w":F
    :cond_14
    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    #@3d5
    goto/16 :goto_6

    #@3d7
    .line 990
    .end local v8    # "h":F
    .end local v15    # "w":F
    :cond_15
    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    #@3da
    goto/16 :goto_6

    #@3dc
    .line 1017
    .restart local v12    # "spec":Landroid/view/MagnificationSpec;
    :cond_16
    iget v0, v12, Landroid/view/MagnificationSpec;->scale:F

    #@3de
    move/from16 v21, v0

    #@3e0
    iget v0, v12, Landroid/view/MagnificationSpec;->scale:F

    #@3e2
    move/from16 v22, v0

    #@3e4
    move/from16 v0, v21

    #@3e6
    move/from16 v1, v22

    #@3e8
    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@3eb
    .line 1018
    iget v0, v12, Landroid/view/MagnificationSpec;->offsetX:F

    #@3ed
    move/from16 v21, v0

    #@3ef
    iget v0, v12, Landroid/view/MagnificationSpec;->offsetY:F

    #@3f1
    move/from16 v22, v0

    #@3f3
    move/from16 v0, v21

    #@3f5
    move/from16 v1, v22

    #@3f7
    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@3fa
    goto/16 :goto_7

    #@3fc
    .line 1092
    .end local v7    # "frame":Landroid/graphics/Rect;
    .end local v12    # "spec":Landroid/view/MagnificationSpec;
    .end local v13    # "tmpFloats":[F
    .end local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_17
    move-object/from16 v0, p0

    #@3fe
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@400
    move-object/from16 v21, v0

    #@402
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    #@405
    move-result v21

    #@406
    if-eqz v21, :cond_18

    #@408
    .line 1098
    return-void

    #@409
    .line 1105
    :cond_18
    const/4 v12, 0x0

    #@40a
    .line 1107
    .local v12, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v0, p0

    #@40c
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@40e
    move-object/from16 v21, v0

    #@410
    move-object/from16 v0, v21

    #@412
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@414
    move-object/from16 v21, v0

    #@416
    if-eqz v21, :cond_19

    #@418
    if-nez v6, :cond_19

    #@41a
    .line 1108
    move-object/from16 v0, p0

    #@41c
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@41e
    move-object/from16 v21, v0

    #@420
    move-object/from16 v0, v21

    #@422
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@424
    move-object/from16 v21, v0

    #@426
    move-object/from16 v0, p0

    #@428
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@42a
    move-object/from16 v22, v0

    #@42c
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    #@42f
    move-result-object v12

    #@430
    .line 1110
    .end local v12    # "spec":Landroid/view/MagnificationSpec;
    :cond_19
    if-eqz v12, :cond_1c

    #@432
    .line 1111
    move-object/from16 v0, p0

    #@434
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@436
    move-object/from16 v21, v0

    #@438
    move-object/from16 v0, v21

    #@43a
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@43c
    .line 1112
    .restart local v7    # "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@43e
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@440
    move-object/from16 v21, v0

    #@442
    move-object/from16 v0, v21

    #@444
    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    #@446
    .line 1113
    .restart local v13    # "tmpFloats":[F
    move-object/from16 v0, p0

    #@448
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@44a
    move-object/from16 v21, v0

    #@44c
    move-object/from16 v0, v21

    #@44e
    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    #@450
    .line 1115
    .restart local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    #@452
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@454
    move-object/from16 v21, v0

    #@456
    move-object/from16 v0, v21

    #@458
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@45a
    move/from16 v21, v0

    #@45c
    move-object/from16 v0, p0

    #@45e
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@460
    move-object/from16 v22, v0

    #@462
    move-object/from16 v0, v22

    #@464
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@466
    move/from16 v22, v0

    #@468
    move/from16 v0, v21

    #@46a
    move/from16 v1, v22

    #@46c
    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    #@46f
    .line 1116
    iget v0, v7, Landroid/graphics/Rect;->left:I

    #@471
    move/from16 v21, v0

    #@473
    move-object/from16 v0, p0

    #@475
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@477
    move-object/from16 v22, v0

    #@479
    move-object/from16 v0, v22

    #@47b
    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@47d
    move/from16 v22, v0

    #@47f
    add-int v21, v21, v22

    #@481
    move/from16 v0, v21

    #@483
    int-to-float v0, v0

    #@484
    move/from16 v21, v0

    #@486
    iget v0, v7, Landroid/graphics/Rect;->top:I

    #@488
    move/from16 v22, v0

    #@48a
    move-object/from16 v0, p0

    #@48c
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@48e
    move-object/from16 v23, v0

    #@490
    move-object/from16 v0, v23

    #@492
    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@494
    move/from16 v23, v0

    #@496
    add-int v22, v22, v23

    #@498
    move/from16 v0, v22

    #@49a
    int-to-float v0, v0

    #@49b
    move/from16 v22, v0

    #@49d
    move/from16 v0, v21

    #@49f
    move/from16 v1, v22

    #@4a1
    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@4a4
    .line 1118
    if-eqz v12, :cond_1a

    #@4a6
    invoke-virtual {v12}, Landroid/view/MagnificationSpec;->isNop()Z

    #@4a9
    move-result v21

    #@4aa
    if-eqz v21, :cond_1b

    #@4ac
    .line 1123
    :cond_1a
    :goto_8
    invoke-virtual {v14, v13}, Landroid/graphics/Matrix;->getValues([F)V

    #@4af
    .line 1125
    const/16 v21, 0x1

    #@4b1
    move/from16 v0, v21

    #@4b3
    move-object/from16 v1, p0

    #@4b5
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    #@4b7
    .line 1126
    const/16 v21, 0x0

    #@4b9
    aget v21, v13, v21

    #@4bb
    move/from16 v0, v21

    #@4bd
    move-object/from16 v1, p0

    #@4bf
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@4c1
    .line 1127
    const/16 v21, 0x3

    #@4c3
    aget v21, v13, v21

    #@4c5
    move/from16 v0, v21

    #@4c7
    move-object/from16 v1, p0

    #@4c9
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@4cb
    .line 1128
    const/16 v21, 0x1

    #@4cd
    aget v21, v13, v21

    #@4cf
    move/from16 v0, v21

    #@4d1
    move-object/from16 v1, p0

    #@4d3
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@4d5
    .line 1129
    const/16 v21, 0x4

    #@4d7
    aget v21, v13, v21

    #@4d9
    move/from16 v0, v21

    #@4db
    move-object/from16 v1, p0

    #@4dd
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@4df
    .line 1130
    const/16 v21, 0x2

    #@4e1
    aget v19, v13, v21

    #@4e3
    .line 1131
    .restart local v19    # "x":F
    const/16 v21, 0x5

    #@4e5
    aget v20, v13, v21

    #@4e7
    .line 1132
    .restart local v20    # "y":F
    move-object/from16 v0, p0

    #@4e9
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4eb
    move-object/from16 v21, v0

    #@4ed
    move-object/from16 v0, v21

    #@4ef
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@4f1
    move-object/from16 v21, v0

    #@4f3
    move/from16 v0, v19

    #@4f5
    float-to-int v0, v0

    #@4f6
    move/from16 v22, v0

    #@4f8
    move/from16 v0, v20

    #@4fa
    float-to-int v0, v0

    #@4fb
    move/from16 v23, v0

    #@4fd
    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Point;->set(II)V

    #@500
    .line 1134
    move-object/from16 v0, p0

    #@502
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@504
    move/from16 v21, v0

    #@506
    move/from16 v0, v21

    #@508
    move-object/from16 v1, p0

    #@50a
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@50c
    .line 926
    .end local v7    # "frame":Landroid/graphics/Rect;
    .end local v13    # "tmpFloats":[F
    .end local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v19    # "x":F
    .end local v20    # "y":F
    :goto_9
    return-void

    #@50d
    .line 1119
    .restart local v7    # "frame":Landroid/graphics/Rect;
    .restart local v13    # "tmpFloats":[F
    .restart local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_1b
    iget v0, v12, Landroid/view/MagnificationSpec;->scale:F

    #@50f
    move/from16 v21, v0

    #@511
    iget v0, v12, Landroid/view/MagnificationSpec;->scale:F

    #@513
    move/from16 v22, v0

    #@515
    move/from16 v0, v21

    #@517
    move/from16 v1, v22

    #@519
    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@51c
    .line 1120
    iget v0, v12, Landroid/view/MagnificationSpec;->offsetX:F

    #@51e
    move/from16 v21, v0

    #@520
    iget v0, v12, Landroid/view/MagnificationSpec;->offsetY:F

    #@522
    move/from16 v22, v0

    #@524
    move/from16 v0, v21

    #@526
    move/from16 v1, v22

    #@528
    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@52b
    goto :goto_8

    #@52c
    .line 1136
    .end local v7    # "frame":Landroid/graphics/Rect;
    .end local v13    # "tmpFloats":[F
    .end local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_1c
    move-object/from16 v0, p0

    #@52e
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@530
    move-object/from16 v21, v0

    #@532
    move-object/from16 v0, v21

    #@534
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@536
    move-object/from16 v21, v0

    #@538
    move-object/from16 v0, p0

    #@53a
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@53c
    move-object/from16 v22, v0

    #@53e
    move-object/from16 v0, v22

    #@540
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@542
    move-object/from16 v22, v0

    #@544
    move-object/from16 v0, v22

    #@546
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@548
    move/from16 v22, v0

    #@54a
    move-object/from16 v0, p0

    #@54c
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@54e
    move-object/from16 v23, v0

    #@550
    move-object/from16 v0, v23

    #@552
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@554
    move-object/from16 v23, v0

    #@556
    move-object/from16 v0, v23

    #@558
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@55a
    move/from16 v23, v0

    #@55c
    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Point;->set(II)V

    #@55f
    .line 1137
    move-object/from16 v0, p0

    #@561
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@563
    move-object/from16 v21, v0

    #@565
    move-object/from16 v0, v21

    #@567
    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@569
    move/from16 v21, v0

    #@56b
    if-nez v21, :cond_1d

    #@56d
    move-object/from16 v0, p0

    #@56f
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@571
    move-object/from16 v21, v0

    #@573
    move-object/from16 v0, v21

    #@575
    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@577
    move/from16 v21, v0

    #@579
    if-eqz v21, :cond_1e

    #@57b
    .line 1138
    :cond_1d
    move-object/from16 v0, p0

    #@57d
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@57f
    move-object/from16 v21, v0

    #@581
    move-object/from16 v0, v21

    #@583
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@585
    move-object/from16 v21, v0

    #@587
    move-object/from16 v0, p0

    #@589
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@58b
    move-object/from16 v22, v0

    #@58d
    move-object/from16 v0, v22

    #@58f
    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@591
    move/from16 v22, v0

    #@593
    move-object/from16 v0, p0

    #@595
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@597
    move-object/from16 v23, v0

    #@599
    move-object/from16 v0, v23

    #@59b
    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@59d
    move/from16 v23, v0

    #@59f
    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Point;->offset(II)V

    #@5a2
    .line 1140
    :cond_1e
    move-object/from16 v0, p0

    #@5a4
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@5a6
    move/from16 v21, v0

    #@5a8
    move/from16 v0, v21

    #@5aa
    move-object/from16 v1, p0

    #@5ac
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@5ae
    .line 1141
    const/16 v21, 0x0

    #@5b0
    move/from16 v0, v21

    #@5b2
    move-object/from16 v1, p0

    #@5b4
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    #@5b6
    .line 1142
    move-object/from16 v0, p0

    #@5b8
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5ba
    move-object/from16 v21, v0

    #@5bc
    move-object/from16 v0, v21

    #@5be
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@5c0
    move/from16 v21, v0

    #@5c2
    move/from16 v0, v21

    #@5c4
    move-object/from16 v1, p0

    #@5c6
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@5c8
    .line 1143
    const/16 v21, 0x0

    #@5ca
    move/from16 v0, v21

    #@5cc
    move-object/from16 v1, p0

    #@5ce
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@5d0
    .line 1144
    const/16 v21, 0x0

    #@5d2
    move/from16 v0, v21

    #@5d4
    move-object/from16 v1, p0

    #@5d6
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@5d8
    .line 1145
    move-object/from16 v0, p0

    #@5da
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5dc
    move-object/from16 v21, v0

    #@5de
    move-object/from16 v0, v21

    #@5e0
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@5e2
    move/from16 v21, v0

    #@5e4
    move/from16 v0, v21

    #@5e6
    move-object/from16 v1, p0

    #@5e8
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@5ea
    goto/16 :goto_9
.end method

.method createSurfaceLocked()Lcom/android/server/wm/WindowSurfaceController;
    .locals 15

    #@0
    .prologue
    .line 674
    iget-object v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2
    .line 675
    .local v13, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->hasSavedSurface()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 678
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->restoreSavedSurface()V

    #@b
    .line 679
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@d
    return-object v0

    #@e
    .line 682
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 683
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@14
    return-object v0

    #@15
    .line 686
    :cond_1
    const/4 v0, 0x0

    #@16
    invoke-virtual {v13, v0}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    #@19
    .line 691
    const/4 v0, 0x1

    #@1a
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@1c
    .line 692
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 693
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@22
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@24
    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@26
    if-nez v0, :cond_5

    #@28
    .line 694
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2a
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    #@2d
    .line 702
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2f
    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    #@32
    .line 704
    const/4 v6, 0x4

    #@33
    .line 705
    .local v6, "flags":I
    iget-object v8, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@35
    .line 707
    .local v8, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@37
    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_3

    #@3d
    .line 708
    const/16 v6, 0x84

    #@3f
    .line 711
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@41
    iget-object v1, v13, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@43
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@45
    iget v2, v13, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@47
    add-int/2addr v1, v2

    #@48
    iget-object v2, v13, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@4a
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@4c
    iget v7, v13, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@4e
    add-int/2addr v2, v7

    #@4f
    const/4 v7, 0x0

    #@50
    const/4 v14, 0x0

    #@51
    invoke-virtual {v0, v1, v2, v7, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@54
    .line 712
    invoke-direct {p0, v13, v8}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    #@57
    .line 713
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@59
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@5c
    move-result v3

    #@5d
    .line 714
    .local v3, "width":I
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@5f
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@62
    move-result v4

    #@63
    .line 725
    .local v4, "height":I
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastSystemDecorRect:Landroid/graphics/Rect;

    #@65
    const/4 v1, 0x0

    #@66
    const/4 v2, 0x0

    #@67
    const/4 v7, 0x0

    #@68
    const/4 v14, 0x0

    #@69
    invoke-virtual {v0, v1, v2, v7, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@6c
    .line 726
    const/4 v0, 0x0

    #@6d
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@6f
    .line 727
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@71
    const/4 v1, 0x0

    #@72
    const/4 v2, 0x0

    #@73
    const/4 v7, 0x0

    #@74
    const/4 v14, 0x0

    #@75
    invoke-virtual {v0, v1, v2, v7, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@78
    .line 728
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    #@7a
    const/4 v1, 0x0

    #@7b
    const/4 v2, 0x0

    #@7c
    const/4 v7, 0x0

    #@7d
    const/4 v14, 0x0

    #@7e
    invoke-virtual {v0, v1, v2, v7, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@81
    .line 733
    :try_start_0
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@83
    const/high16 v1, 0x1000000

    #@85
    and-int/2addr v0, v1

    #@86
    if-eqz v0, :cond_6

    #@88
    const/4 v11, 0x1

    #@89
    .line 734
    .local v11, "isHwAccelerated":Z
    :goto_1
    if-eqz v11, :cond_7

    #@8b
    const/4 v5, -0x3

    #@8c
    .line 735
    .local v5, "format":I
    :goto_2
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    #@8e
    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    #@91
    move-result v0

    #@92
    if-nez v0, :cond_4

    #@94
    .line 738
    iget-object v0, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@96
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@98
    if-nez v0, :cond_4

    #@9a
    .line 739
    iget-object v0, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@9c
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@9e
    if-nez v0, :cond_4

    #@a0
    .line 740
    iget-object v0, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@a2
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@a4
    if-nez v0, :cond_4

    #@a6
    .line 741
    iget-object v0, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@a8
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@aa
    if-nez v0, :cond_4

    #@ac
    .line 744
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    #@af
    move-result v0

    #@b0
    if-eqz v0, :cond_8

    #@b2
    .line 748
    :cond_4
    :goto_3
    new-instance v0, Lcom/android/server/wm/WindowSurfaceController;

    #@b4
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    #@b6
    iget-object v1, v1, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@b8
    .line 749
    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@bb
    move-result-object v2

    #@bc
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@bf
    move-result-object v2

    #@c0
    move-object v7, p0

    #@c1
    .line 748
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowSurfaceController;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;)V

    #@c4
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@c6
    .line 752
    const/4 v0, 0x1

    #@c7
    invoke-virtual {v13, v0}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@ca
    .line 786
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@cd
    move-result-object v0

    #@ce
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    #@d1
    move-result-object v0

    #@d2
    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    #@d5
    move-result v12

    #@d6
    .line 787
    .local v12, "layerStack":I
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@d8
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@da
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@dc
    int-to-float v1, v1

    #@dd
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@df
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@e1
    int-to-float v2, v2

    #@e2
    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@e4
    invoke-virtual {v0, v1, v2, v12, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionAndLayer(FFII)V

    #@e7
    .line 788
    const/4 v0, 0x1

    #@e8
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@ea
    .line 791
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@ec
    return-object v0

    #@ed
    .line 698
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "format":I
    .end local v6    # "flags":I
    .end local v8    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "isHwAccelerated":Z
    .end local v12    # "layerStack":I
    :cond_5
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@ef
    const/4 v1, 0x1

    #@f0
    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    #@f2
    goto/16 :goto_0

    #@f4
    .line 733
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v6    # "flags":I
    .restart local v8    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    const/4 v11, 0x0

    #@f5
    goto :goto_1

    #@f6
    .line 734
    .restart local v11    # "isHwAccelerated":Z
    :cond_7
    :try_start_1
    iget v5, v8, Landroid/view/WindowManager$LayoutParams;->format:I
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@f8
    .restart local v5    # "format":I
    goto :goto_2

    #@f9
    .line 745
    :cond_8
    or-int/lit16 v6, v6, 0x400

    #@fb
    goto :goto_3

    #@fc
    .line 768
    .end local v5    # "format":I
    .end local v11    # "isHwAccelerated":Z
    :catch_0
    move-exception v10

    #@fd
    .line 769
    .local v10, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    #@ff
    const-string/jumbo v1, "Exception creating surface"

    #@102
    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@105
    .line 770
    const/4 v0, 0x0

    #@106
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@108
    .line 771
    const/4 v0, 0x0

    #@109
    return-object v0

    #@10a
    .line 763
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    #@10b
    .line 764
    .local v9, "e":Landroid/view/Surface$OutOfResourcesException;
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    #@10d
    const-string/jumbo v1, "OutOfResourcesException creating surface"

    #@110
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@113
    .line 765
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@115
    const-string/jumbo v1, "create"

    #@118
    const/4 v2, 0x1

    #@119
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    #@11c
    .line 766
    const/4 v0, 0x0

    #@11d
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@11f
    .line 767
    const/4 v0, 0x0

    #@120
    return-object v0
.end method

.method deferToPendingTransaction()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, -0x1

    #@2
    .line 2053
    iget-wide v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDeferTransactionUntilFrame:J

    #@4
    const-wide/16 v4, 0x0

    #@6
    cmp-long v2, v2, v4

    #@8
    if-gez v2, :cond_0

    #@a
    .line 2054
    return-void

    #@b
    .line 2056
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e
    move-result-wide v0

    #@f
    .line 2057
    .local v0, "time":J
    iget-wide v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDeferTransactionTime:J

    #@11
    const-wide/16 v4, 0x64

    #@13
    add-long/2addr v2, v4

    #@14
    cmp-long v2, v0, v2

    #@16
    if-lez v2, :cond_1

    #@18
    .line 2058
    iput-wide v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDeferTransactionTime:J

    #@1a
    .line 2059
    iput-wide v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDeferTransactionUntilFrame:J

    #@1c
    .line 2052
    :goto_0
    return-void

    #@1d
    .line 2061
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@1f
    .line 2062
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@21
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@23
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@25
    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@27
    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    #@2a
    move-result-object v3

    #@2b
    .line 2063
    iget-wide v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDeferTransactionUntilFrame:J

    #@2d
    .line 2061
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/os/IBinder;J)V

    #@30
    goto :goto_0
.end method

.method deferTransactionUntilParentFrame(J)V
    .locals 3
    .param p1, "frameNumber"    # J

    #@0
    .prologue
    .line 2036
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 2037
    return-void

    #@9
    .line 2039
    :cond_0
    iput-wide p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDeferTransactionUntilFrame:J

    #@b
    .line 2040
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e
    move-result-wide v0

    #@f
    iput-wide v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDeferTransactionTime:J

    #@11
    .line 2041
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@13
    .line 2042
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@15
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@17
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@19
    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@1b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    #@1e
    move-result-object v1

    #@1f
    .line 2041
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/os/IBinder;J)V

    #@22
    .line 2035
    return-void
.end method

.method destroyDeferredSurfaceLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 906
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 910
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@7
    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->destroyInTransaction()V

    #@a
    .line 913
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@c
    if-nez v1, :cond_0

    #@e
    .line 914
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@10
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@12
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 922
    :cond_0
    :goto_0
    const/4 v1, 0x0

    #@16
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@18
    .line 923
    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@1a
    .line 904
    return-void

    #@1b
    .line 917
    :catch_0
    move-exception v0

    #@1c
    .line 918
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Exception thrown when destroying Window "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 919
    const-string/jumbo v3, " surface "

    #@31
    .line 918
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 919
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@37
    .line 918
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 920
    const-string/jumbo v3, " session "

    #@3e
    .line 918
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 920
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    #@44
    .line 918
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 920
    const-string/jumbo v3, ": "

    #@4b
    .line 918
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 920
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    .line 918
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    goto :goto_0
.end method

.method destroyPreservedSurfaceLocked()V
    .locals 1

    #@0
    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 660
    return-void

    #@5
    .line 662
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    #@8
    .line 663
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@b
    .line 658
    return-void
.end method

.method destroySurface()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 2013
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 2014
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@8
    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->destroyInTransaction()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 2020
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@d
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    #@10
    .line 2021
    iput-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@12
    .line 2022
    :goto_0
    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@14
    .line 2011
    return-void

    #@15
    .line 2016
    :catch_0
    move-exception v0

    #@16
    .line 2017
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v1, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Exception thrown when destroying surface "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 2018
    const-string/jumbo v3, " surface "

    #@2b
    .line 2017
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 2018
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@31
    .line 2017
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 2018
    const-string/jumbo v3, " session "

    #@38
    .line 2017
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 2018
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    #@3e
    .line 2017
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 2018
    const-string/jumbo v3, ": "

    #@45
    .line 2017
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    .line 2020
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@56
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    #@59
    .line 2021
    iput-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@5b
    goto :goto_0

    #@5c
    .line 2019
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    #@5d
    .line 2020
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5f
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    #@62
    .line 2021
    iput-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@64
    .line 2022
    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@66
    .line 2019
    throw v1
.end method

.method destroySurfaceLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 840
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    .line 841
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_0

    #@8
    .line 842
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@a
    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@c
    if-ne v4, v5, :cond_0

    #@e
    .line 843
    iput-boolean v8, v3, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    #@10
    .line 847
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@12
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->clearHasSavedSurface()V

    #@15
    .line 849
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@17
    if-nez v4, :cond_1

    #@19
    .line 850
    return-void

    #@1a
    .line 853
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1c
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@1e
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    #@21
    move-result v2

    #@22
    .line 858
    .local v2, "i":I
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@24
    if-nez v4, :cond_2

    #@26
    if-lez v2, :cond_2

    #@28
    .line 859
    add-int/lit8 v2, v2, -0x1

    #@2a
    .line 860
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2c
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@2e
    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@34
    .line 861
    .local v0, "c":Lcom/android/server/wm/WindowState;
    const/4 v4, 0x1

    #@35
    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@37
    goto :goto_0

    #@38
    .line 867
    .end local v0    # "c":Lcom/android/server/wm/WindowState;
    :cond_2
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@3a
    if-eqz v4, :cond_7

    #@3c
    .line 868
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@3e
    if-eqz v4, :cond_4

    #@40
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@42
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@44
    if-eq v4, v5, :cond_4

    #@46
    .line 869
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@48
    if-eqz v4, :cond_3

    #@4a
    .line 873
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@4c
    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->destroyInTransaction()V

    #@4f
    .line 875
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@51
    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@53
    .line 885
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@55
    if-nez v4, :cond_5

    #@57
    .line 886
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@59
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5b
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    .line 896
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@60
    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    #@63
    .line 897
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@65
    if-eqz v4, :cond_6

    #@67
    .line 898
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@69
    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    #@6c
    .line 900
    :cond_6
    iput-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@6e
    .line 901
    iput v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@70
    .line 839
    return-void

    #@71
    .line 881
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@74
    goto :goto_1

    #@75
    .line 888
    :catch_0
    move-exception v1

    #@76
    .line 889
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    #@78
    new-instance v5, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v6, "Exception thrown when destroying Window "

    #@80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    .line 890
    const-string/jumbo v6, " surface "

    #@8b
    .line 889
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    .line 890
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@91
    .line 889
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    .line 890
    const-string/jumbo v6, " session "

    #@98
    .line 889
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    .line 890
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    #@9e
    .line 889
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v5

    #@a2
    .line 890
    const-string/jumbo v6, ": "

    #@a5
    .line 889
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v5

    #@a9
    .line 890
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@ac
    move-result-object v6

    #@ad
    .line 889
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v5

    #@b1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v5

    #@b5
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    goto :goto_2
.end method

.method drawStateToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 211
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 217
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@7
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 212
    :pswitch_0
    const-string/jumbo v0, "NO_SURFACE"

    #@f
    return-object v0

    #@10
    .line 213
    :pswitch_1
    const-string/jumbo v0, "DRAW_PENDING"

    #@13
    return-object v0

    #@14
    .line 214
    :pswitch_2
    const-string/jumbo v0, "COMMIT_DRAW_PENDING"

    #@17
    return-object v0

    #@18
    .line 215
    :pswitch_3
    const-string/jumbo v0, "READY_TO_SHOW"

    #@1b
    return-object v0

    #@1c
    .line 216
    :pswitch_4
    const-string/jumbo v0, "HAS_DRAWN"

    #@1f
    return-object v0

    #@20
    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    #@0
    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    .line 1933
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@4
    if-nez v0, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@8
    if-nez v0, :cond_0

    #@a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1934
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1935
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    const-string/jumbo v0, "mAnimating="

    #@18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@1d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@20
    .line 1936
    const-string/jumbo v0, " mLocalAnimating="

    #@23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@2b
    .line 1937
    const-string/jumbo v0, " mAnimationIsEntrance="

    #@2e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@36
    .line 1938
    const-string/jumbo v0, " mAnimation="

    #@39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@3e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@41
    .line 1939
    const-string/jumbo v0, " mStackClip="

    #@44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    #@49
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@4c
    .line 1941
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@4e
    if-nez v0, :cond_2

    #@50
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@52
    if-eqz v0, :cond_3

    #@54
    .line 1942
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    const-string/jumbo v0, "XForm: has="

    #@5a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d
    .line 1943
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@5f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@62
    .line 1944
    const-string/jumbo v0, " hasLocal="

    #@65
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@6a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@6d
    .line 1945
    const-string/jumbo v0, " "

    #@70
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@73
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@75
    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@78
    .line 1946
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@7b
    .line 1948
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@7d
    if-eqz v0, :cond_4

    #@7f
    .line 1949
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@81
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    #@84
    .line 1951
    :cond_4
    if-eqz p3, :cond_6

    #@86
    .line 1952
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@89
    const-string/jumbo v0, "mDrawState="

    #@8c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    #@92
    move-result-object v0

    #@93
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@96
    .line 1953
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@99
    const-string/jumbo v0, " mLastHidden="

    #@9c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@a1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@a4
    .line 1954
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a7
    const-string/jumbo v0, "mSystemDecorRect="

    #@aa
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ad
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@af
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@b2
    .line 1955
    const-string/jumbo v0, " last="

    #@b5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b8
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastSystemDecorRect:Landroid/graphics/Rect;

    #@ba
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@bd
    .line 1956
    const-string/jumbo v0, " mHasClipRect="

    #@c0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@c5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@c8
    .line 1957
    const-string/jumbo v0, " mLastClipRect="

    #@cb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ce
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    #@d0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@d3
    .line 1959
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    #@d5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    #@d8
    move-result v0

    #@d9
    if-nez v0, :cond_5

    #@db
    .line 1960
    const-string/jumbo v0, " mLastFinalClipRect="

    #@de
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    #@e3
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@e6
    .line 1962
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@e9
    .line 1965
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@eb
    if-eqz v0, :cond_7

    #@ed
    .line 1966
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f0
    const-string/jumbo v0, "mPendingDestroySurface="

    #@f3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    .line 1967
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@f8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@fb
    .line 1969
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    #@fd
    if-nez v0, :cond_8

    #@ff
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@101
    if-eqz v0, :cond_9

    #@103
    .line 1970
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@106
    const-string/jumbo v0, "mSurfaceResized="

    #@109
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10c
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    #@10e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@111
    .line 1971
    const-string/jumbo v0, " mSurfaceDestroyDeferred="

    #@114
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@117
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@119
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@11c
    .line 1973
    :cond_9
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@11e
    cmpl-float v0, v0, v1

    #@120
    if-nez v0, :cond_a

    #@122
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@124
    cmpl-float v0, v0, v1

    #@126
    if-eqz v0, :cond_f

    #@128
    .line 1974
    :cond_a
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12b
    const-string/jumbo v0, "mShownAlpha="

    #@12e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@131
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@133
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@136
    .line 1975
    const-string/jumbo v0, " mAlpha="

    #@139
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13c
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@13e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@141
    .line 1976
    const-string/jumbo v0, " mLastAlpha="

    #@144
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@147
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@149
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    #@14c
    .line 1978
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    #@14e
    if-nez v0, :cond_c

    #@150
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@152
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@154
    cmpl-float v0, v0, v1

    #@156
    if-eqz v0, :cond_d

    #@158
    .line 1979
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    const-string/jumbo v0, "mGlobalScale="

    #@15e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@161
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@163
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@165
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@168
    .line 1980
    const-string/jumbo v0, " mDsDx="

    #@16b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16e
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@170
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@173
    .line 1981
    const-string/jumbo v0, " mDtDx="

    #@176
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@179
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@17b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@17e
    .line 1982
    const-string/jumbo v0, " mDsDy="

    #@181
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@186
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@189
    .line 1983
    const-string/jumbo v0, " mDtDy="

    #@18c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18f
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@191
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    #@194
    .line 1985
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    #@196
    if-eqz v0, :cond_e

    #@198
    .line 1986
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19b
    const-string/jumbo v0, "mAnimationStartDelayed="

    #@19e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    #@1a3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@1a6
    .line 1932
    :cond_e
    return-void

    #@1a7
    .line 1973
    :cond_f
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@1a9
    cmpl-float v0, v0, v1

    #@1ab
    if-eqz v0, :cond_b

    #@1ad
    goto/16 :goto_0
.end method

.method endDelayingAnimationStart()V
    .locals 1

    #@0
    .prologue
    .line 2085
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    #@3
    .line 2084
    return-void
.end method

.method finishDrawingLocked()Z
    .locals 3

    #@0
    .prologue
    .line 591
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@4
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@6
    const/4 v2, 0x3

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 597
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearAnimatingWithSavedSurface()Z

    #@e
    move-result v0

    #@f
    .line 599
    .local v0, "layoutNeeded":Z
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@11
    const/4 v2, 0x1

    #@12
    if-ne v1, v2, :cond_1

    #@14
    .line 606
    const/4 v1, 0x2

    #@15
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@17
    .line 607
    const/4 v0, 0x1

    #@18
    .line 610
    .end local v0    # "layoutNeeded":Z
    :cond_1
    return v0
.end method

.method finishExit()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 512
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@5
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    #@8
    move-result v4

    #@9
    if-nez v4, :cond_0

    #@b
    .line 514
    new-instance v0, Lcom/android/server/wm/WindowList;

    #@d
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@f
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@11
    invoke-direct {v0, v4}, Lcom/android/server/wm/WindowList;-><init>(Lcom/android/server/wm/WindowList;)V

    #@14
    .line 515
    .local v0, "childWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    #@17
    move-result v4

    #@18
    add-int/lit8 v3, v4, -0x1

    #@1a
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    #@1c
    .line 516
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@22
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@24
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    #@27
    .line 515
    add-int/lit8 v3, v3, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 520
    .end local v0    # "childWindows":Lcom/android/server/wm/WindowList;
    .end local v3    # "i":I
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    #@2c
    if-eqz v4, :cond_1

    #@2e
    .line 521
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    #@30
    .line 522
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@32
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    #@35
    .line 525
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@37
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@39
    if-nez v4, :cond_1

    #@3b
    .line 527
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3d
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@3f
    invoke-interface {v4}, Landroid/view/IWindow;->dispatchWindowShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 533
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimationSet()Z

    #@45
    move-result v4

    #@46
    if-nez v4, :cond_2

    #@48
    .line 535
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4a
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@4c
    if-eqz v4, :cond_2

    #@4e
    .line 536
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@50
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@53
    move-result v4

    #@54
    if-nez v4, :cond_2

    #@56
    .line 537
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@58
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@5a
    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    #@5d
    .line 541
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5f
    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@61
    if-nez v4, :cond_3

    #@63
    .line 542
    return-void

    #@64
    .line 545
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimationSet()Z

    #@67
    move-result v4

    #@68
    if-eqz v4, :cond_4

    #@6a
    .line 546
    return-void

    #@6b
    .line 553
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@6d
    const/4 v5, 0x1

    #@6e
    iput-boolean v5, v4, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@70
    .line 555
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    #@73
    move-result v2

    #@74
    .line 556
    .local v2, "hasSurface":Z
    if-eqz v2, :cond_5

    #@76
    .line 557
    const-string/jumbo v4, "finishExit"

    #@79
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    #@7c
    .line 564
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@7e
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@80
    if-eqz v4, :cond_7

    #@82
    .line 565
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@84
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@86
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    #@89
    .line 575
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@8b
    iput-boolean v6, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@8d
    .line 576
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@8f
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@91
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    #@94
    .line 505
    return-void

    #@95
    .line 567
    :cond_7
    if-eqz v2, :cond_8

    #@97
    .line 568
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@99
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    #@9b
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@9d
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a0
    .line 570
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@a2
    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@a4
    if-eqz v4, :cond_6

    #@a6
    .line 571
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a8
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    #@aa
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@ac
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@af
    .line 572
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@b1
    iput-boolean v6, v4, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@b3
    goto :goto_2

    #@b4
    .line 528
    .end local v2    # "hasSurface":Z
    :catch_0
    move-exception v1

    #@b5
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method getShown()Z
    .locals 1

    #@0
    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2006
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 2008
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method hasSurface()Z
    .locals 1

    #@0
    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasSavedSurface()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 836
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->hasSurface()Z

    #@11
    move-result v0

    #@12
    .line 835
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method hide(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 582
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@7
    .line 583
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 584
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->hideInTransaction(Ljava/lang/String;)V

    #@10
    .line 579
    :cond_0
    return-void
.end method

.method isAnimationSet()Z
    .locals 1

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 310
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@6
    if-eqz v0, :cond_1

    #@8
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@a
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 309
    :cond_0
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    .line 311
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@12
    if-eqz v0, :cond_2

    #@14
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@16
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    #@19
    move-result v0

    #@1a
    goto :goto_0

    #@1b
    :cond_2
    const/4 v0, 0x0

    #@1c
    goto :goto_0
.end method

.method isAnimationStarting()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 319
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@9
    if-eqz v1, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method isDummyAnimation()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 324
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 325
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@7
    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@9
    sget-object v2, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    #@b
    if-ne v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 324
    :cond_0
    return v0
.end method

.method isWaitingForOpening()Z
    .locals 2

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@4
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 340
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@12
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@14
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@16
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@18
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    .line 339
    :goto_0
    return v0

    #@1d
    :cond_0
    const/4 v0, 0x0

    #@1e
    goto :goto_0
.end method

.method isWindowAnimationSet()Z
    .locals 1

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@2
    if-eqz v0, :cond_0

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

.method markPreservedSurfaceForDestroy()V
    .locals 2

    #@0
    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 668
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    #@8
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 666
    :cond_0
    :goto_0
    return-void

    #@11
    .line 669
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@13
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    #@15
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    goto :goto_0
.end method

.method performShowLocked()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 1703
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 1705
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@d
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    #@10
    .line 1706
    return v4

    #@11
    .line 1725
    :cond_0
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@13
    if-ne v3, v6, :cond_5

    #@15
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@17
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isReadyForDisplayIgnoringKeyguard()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_5

    #@1d
    .line 1740
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1f
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    #@22
    .line 1742
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    #@25
    .line 1745
    const/high16 v3, -0x40800000    # -1.0f

    #@27
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@29
    .line 1748
    const/4 v3, 0x4

    #@2a
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@2c
    .line 1749
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2e
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@31
    .line 1751
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@33
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@35
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@38
    move-result v2

    #@39
    .line 1752
    .local v2, "i":I
    :cond_1
    :goto_0
    if-lez v2, :cond_2

    #@3b
    .line 1753
    add-int/lit8 v2, v2, -0x1

    #@3d
    .line 1754
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3f
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@41
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@47
    .line 1755
    .local v0, "c":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@49
    if-eqz v3, :cond_1

    #@4b
    .line 1756
    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@4d
    .line 1757
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4f
    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@51
    if-eqz v3, :cond_1

    #@53
    .line 1758
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@55
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    #@58
    .line 1764
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@5b
    move-result-object v1

    #@5c
    .line 1765
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1

    #@5e
    .line 1766
    iput-boolean v5, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@60
    goto :goto_0

    #@61
    .line 1772
    .end local v0    # "c":Lcom/android/server/wm/WindowState;
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@63
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@65
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@67
    if-eq v3, v6, :cond_3

    #@69
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@6b
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6d
    if-eqz v3, :cond_3

    #@6f
    .line 1773
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@71
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@73
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@75
    invoke-virtual {v3, v4, p0}, Lcom/android/server/wm/AppWindowToken;->onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V

    #@78
    .line 1776
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@7a
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@7c
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7e
    const/16 v4, 0x7db

    #@80
    if-ne v3, v4, :cond_4

    #@82
    .line 1777
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@84
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@86
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    #@88
    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->resetImeHideRequested()V

    #@8b
    .line 1780
    :cond_4
    return v5

    #@8c
    .line 1782
    .end local v2    # "i":I
    :cond_5
    return v4
.end method

.method prepareSurfaceLocked(Z)V
    .locals 13
    .param p1, "recoveringMemory"    # Z

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 1513
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4
    .line 1514
    .local v10, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 1515
    iget-boolean v0, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1519
    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@10
    .line 1521
    :cond_0
    return-void

    #@11
    .line 1531
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWaitingForOpening()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 1532
    return-void

    #@18
    .line 1535
    :cond_2
    const/4 v8, 0x0

    #@19
    .line 1537
    .local v8, "displayed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    #@1c
    .line 1539
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    #@1f
    .line 1541
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    #@21
    if-eqz v0, :cond_3

    #@23
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@25
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    #@27
    if-eqz v0, :cond_a

    #@29
    .line 1544
    :cond_3
    iget-boolean v0, v10, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@2b
    if-nez v0, :cond_b

    #@2d
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_b

    #@33
    .line 1559
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    #@35
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@37
    if-ne v0, v1, :cond_4

    #@39
    .line 1560
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@3b
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@3d
    cmpl-float v0, v0, v1

    #@3f
    if-eqz v0, :cond_c

    #@41
    .line 1568
    :cond_4
    const/4 v8, 0x1

    #@42
    .line 1569
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@44
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@46
    .line 1570
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@48
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    #@4a
    .line 1571
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@4c
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    #@4e
    .line 1572
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@50
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    #@52
    .line 1573
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@54
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    #@56
    .line 1574
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@58
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    #@5a
    .line 1575
    iget v0, v10, Lcom/android/server/wm/WindowState;->mHScale:F

    #@5c
    iput v0, v10, Lcom/android/server/wm/WindowState;->mLastHScale:F

    #@5e
    .line 1576
    iget v0, v10, Lcom/android/server/wm/WindowState;->mVScale:F

    #@60
    iput v0, v10, Lcom/android/server/wm/WindowState;->mLastVScale:F

    #@62
    .line 1586
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@64
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@66
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@68
    .line 1587
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@6a
    iget v4, v10, Lcom/android/server/wm/WindowState;->mHScale:F

    #@6c
    mul-float/2addr v3, v4

    #@6d
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@6f
    mul-float/2addr v3, v4

    #@70
    .line 1588
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@72
    iget v5, v10, Lcom/android/server/wm/WindowState;->mVScale:F

    #@74
    mul-float/2addr v4, v5

    #@75
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@77
    mul-float/2addr v4, v5

    #@78
    .line 1589
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@7a
    iget v6, v10, Lcom/android/server/wm/WindowState;->mHScale:F

    #@7c
    mul-float/2addr v5, v6

    #@7d
    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@7f
    mul-float/2addr v5, v6

    #@80
    .line 1590
    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@82
    iget v7, v10, Lcom/android/server/wm/WindowState;->mVScale:F

    #@84
    mul-float/2addr v6, v7

    #@85
    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@87
    mul-float/2addr v6, v7

    #@88
    move v7, p1

    #@89
    .line 1586
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowSurfaceController;->prepareToShowInTransaction(FIFFFFZ)Z

    #@8c
    move-result v9

    #@8d
    .line 1593
    .local v9, "prepared":Z
    if-eqz v9, :cond_6

    #@8f
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@91
    if-eqz v0, :cond_6

    #@93
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@95
    const/4 v1, 0x4

    #@96
    if-ne v0, v1, :cond_6

    #@98
    .line 1594
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked()Z

    #@9b
    move-result v0

    #@9c
    if-eqz v0, :cond_d

    #@9e
    .line 1595
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    #@a1
    .line 1596
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@a3
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowAnimator;->requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V

    #@a6
    .line 1597
    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@a8
    .line 1598
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    #@aa
    if-eqz v0, :cond_5

    #@ac
    .line 1599
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@ae
    invoke-virtual {v0, v10, v12}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    #@b1
    .line 1604
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@b3
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@b6
    move-result v1

    #@b7
    .line 1605
    const/16 v2, 0x8

    #@b9
    .line 1604
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@bc
    .line 1610
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    #@bf
    move-result v0

    #@c0
    if-eqz v0, :cond_7

    #@c2
    .line 1611
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@c4
    iput-boolean v12, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    #@c6
    .line 1620
    .end local v9    # "prepared":Z
    :cond_7
    :goto_1
    if-eqz v8, :cond_9

    #@c8
    .line 1621
    iget-boolean v0, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@ca
    if-eqz v0, :cond_8

    #@cc
    .line 1622
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@cf
    move-result v0

    #@d0
    if-nez v0, :cond_e

    #@d2
    .line 1623
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@d4
    iget v1, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@d6
    and-int/lit8 v1, v1, -0x9

    #@d8
    iput v1, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@da
    .line 1624
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@dc
    iput-object v10, v0, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    #@de
    .line 1632
    :cond_8
    :goto_2
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@e0
    iput-boolean v12, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    #@e2
    .line 1512
    :cond_9
    return-void

    #@e3
    .line 1543
    :cond_a
    const-string/jumbo v0, "prepareSurfaceLocked"

    #@e6
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    #@e9
    goto :goto_1

    #@ea
    .line 1545
    :cond_b
    const-string/jumbo v0, "prepareSurfaceLocked"

    #@ed
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    #@f0
    .line 1546
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@f2
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    #@f5
    .line 1554
    iget-boolean v0, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@f7
    if-eqz v0, :cond_7

    #@f9
    .line 1555
    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@fb
    goto :goto_1

    #@fc
    .line 1561
    :cond_c
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    #@fe
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@100
    cmpl-float v0, v0, v1

    #@102
    if-nez v0, :cond_4

    #@104
    .line 1562
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    #@106
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@108
    cmpl-float v0, v0, v1

    #@10a
    if-nez v0, :cond_4

    #@10c
    .line 1563
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    #@10e
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@110
    cmpl-float v0, v0, v1

    #@112
    if-nez v0, :cond_4

    #@114
    .line 1564
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    #@116
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@118
    cmpl-float v0, v0, v1

    #@11a
    if-nez v0, :cond_4

    #@11c
    .line 1565
    iget v0, v10, Lcom/android/server/wm/WindowState;->mLastHScale:F

    #@11e
    iget v1, v10, Lcom/android/server/wm/WindowState;->mHScale:F

    #@120
    cmpl-float v0, v0, v1

    #@122
    if-nez v0, :cond_4

    #@124
    .line 1566
    iget v0, v10, Lcom/android/server/wm/WindowState;->mLastVScale:F

    #@126
    iget v1, v10, Lcom/android/server/wm/WindowState;->mVScale:F

    #@128
    cmpl-float v0, v0, v1

    #@12a
    if-nez v0, :cond_4

    #@12c
    .line 1567
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@12e
    .line 1559
    if-nez v0, :cond_4

    #@130
    .line 1617
    const/4 v8, 0x1

    #@131
    goto :goto_1

    #@132
    .line 1607
    .restart local v9    # "prepared":Z
    :cond_d
    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@134
    goto :goto_0

    #@135
    .line 1628
    .end local v9    # "prepared":Z
    :cond_e
    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@137
    goto :goto_2
.end method

.method preserveSurfaceLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 636
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 644
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@8
    .line 645
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    #@b
    .line 646
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@d
    .line 647
    return-void

    #@e
    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 651
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@14
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setLayer(I)V

    #@1b
    .line 653
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@1d
    .line 654
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@1f
    .line 655
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    #@22
    .line 635
    return-void
.end method

.method reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "secure"    # Z

    #@0
    .prologue
    .line 2001
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    #@5
    .line 2000
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "anim"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 290
    const-wide/16 v0, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;JI)V

    #@6
    .line 289
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;I)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .param p2, "stackClip"    # I

    #@0
    .prologue
    .line 286
    const-wide/16 v0, -0x1

    #@2
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;JI)V

    #@5
    .line 285
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;JI)V
    .locals 6
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .param p2, "startTime"    # J
    .param p4, "stackClip"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 272
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@4
    .line 273
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@6
    .line 274
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@8
    .line 275
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@a
    const-wide/16 v4, 0x2710

    #@c
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->restrictDuration(J)V

    #@f
    .line 276
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@11
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@13
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    #@16
    move-result v3

    #@17
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    #@1a
    .line 278
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@1c
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    #@1f
    .line 279
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@21
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@23
    if-eqz v3, :cond_0

    #@25
    :goto_0
    int-to-float v0, v0

    #@26
    invoke-virtual {v2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    #@29
    .line 280
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@2b
    .line 281
    iput-wide p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    #@2d
    .line 282
    iput p4, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    #@2f
    .line 270
    return-void

    #@30
    :cond_0
    move v0, v1

    #@31
    .line 279
    goto :goto_0
.end method

.method setMoveAnimation(II)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I

    #@0
    .prologue
    .line 2027
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    #@2
    .line 2028
    const v2, 0x10a00ae

    #@5
    .line 2027
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@8
    move-result-object v0

    #@9
    .line 2029
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    #@c
    .line 2030
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@e
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@10
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@12
    sub-int/2addr v1, p1

    #@13
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    #@15
    .line 2031
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@17
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@19
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@1b
    sub-int/2addr v1, p2

    #@1c
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    #@1e
    .line 2032
    const/4 v1, 0x1

    #@1f
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    #@21
    .line 2026
    return-void
.end method

.method setOpaqueLocked(Z)V
    .locals 1
    .param p1, "isOpaque"    # Z

    #@0
    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1689
    return-void

    #@5
    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setOpaque(Z)V

    #@a
    .line 1687
    return-void
.end method

.method setSecureLocked(Z)V
    .locals 1
    .param p1, "isSecure"    # Z

    #@0
    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1696
    return-void

    #@5
    .line 1698
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V

    #@a
    .line 1694
    return-void
.end method

.method setSurfaceBoundariesLocked(Z)V
    .locals 18
    .param p1, "recoveringMemory"    # Z

    #@0
    .prologue
    .line 1389
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4
    move-object/from16 v16, v0

    #@6
    .line 1390
    .local v16, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@9
    move-result-object v14

    #@a
    .line 1393
    .local v14, "task":Lcom/android/server/wm/Task;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isResizedWhileNotDragResizing()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_9

    #@16
    .line 1397
    :cond_0
    move-object/from16 v0, p0

    #@18
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@1a
    move-object/from16 v0, v16

    #@1c
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@1e
    iget v3, v3, Landroid/graphics/Point;->x:I

    #@20
    move-object/from16 v0, v16

    #@22
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@24
    iget v4, v4, Landroid/graphics/Point;->y:I

    #@26
    const/4 v5, 0x0

    #@27
    const/4 v6, 0x0

    #@28
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    #@2b
    .line 1398
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@2e
    move-result-object v2

    #@2f
    move-object/from16 v0, p0

    #@31
    move-object/from16 v1, v16

    #@33
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    #@36
    .line 1400
    const/high16 v2, 0x3f800000    # 1.0f

    #@38
    move-object/from16 v0, p0

    #@3a
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@3c
    .line 1401
    const/high16 v2, 0x3f800000    # 1.0f

    #@3e
    move-object/from16 v0, p0

    #@40
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@42
    .line 1416
    move-object/from16 v0, p0

    #@44
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    #@46
    move/from16 v17, v0

    #@48
    .line 1418
    .local v17, "wasForceScaled":Z
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->inPinnedWorkspace()Z

    #@4b
    move-result v2

    #@4c
    if-eqz v2, :cond_1

    #@4e
    move-object/from16 v0, v16

    #@50
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    #@52
    if-eqz v2, :cond_1

    #@54
    move-object/from16 v0, v16

    #@56
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    #@58
    if-eqz v2, :cond_a

    #@5a
    .line 1419
    :cond_1
    move-object/from16 v0, p0

    #@5c
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@5e
    .line 1420
    move-object/from16 v0, p0

    #@60
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@62
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@65
    move-result v3

    #@66
    move-object/from16 v0, p0

    #@68
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@6a
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    #@6d
    move-result v4

    #@6e
    .line 1419
    move/from16 v0, p1

    #@70
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wm/WindowSurfaceController;->setSizeInTransaction(IIZ)Z

    #@73
    move-result v2

    #@74
    move-object/from16 v0, p0

    #@76
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    #@78
    .line 1424
    :goto_0
    move-object/from16 v0, p0

    #@7a
    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    #@7c
    if-eqz v2, :cond_2

    #@7e
    move-object/from16 v0, p0

    #@80
    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    #@82
    if-eqz v2, :cond_b

    #@84
    :cond_2
    const/4 v2, 0x0

    #@85
    :goto_1
    move-object/from16 v0, p0

    #@87
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    #@89
    .line 1426
    move-object/from16 v0, p0

    #@8b
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    #@91
    move-object/from16 v0, p0

    #@93
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceWindowCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@96
    .line 1428
    move-object/from16 v0, p0

    #@98
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@9a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getWidth()F

    #@9d
    move-result v13

    #@9e
    .line 1429
    .local v13, "surfaceWidth":F
    move-object/from16 v0, p0

    #@a0
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@a2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getHeight()F

    #@a5
    move-result v12

    #@a6
    .line 1431
    .local v12, "surfaceHeight":F
    if-eqz v14, :cond_3

    #@a8
    iget-object v2, v14, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@aa
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getForceScaleToCrop()Z

    #@ad
    move-result v2

    #@ae
    if-nez v2, :cond_4

    #@b0
    :cond_3
    move-object/from16 v0, p0

    #@b2
    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    #@b4
    if-eqz v2, :cond_c

    #@b6
    .line 1432
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@b9
    move-result-object v2

    #@ba
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@bc
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@be
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@c1
    move-result-object v3

    #@c2
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@c4
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@c6
    add-int v9, v2, v3

    #@c8
    .line 1433
    .local v9, "hInsets":I
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@cb
    move-result-object v2

    #@cc
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@ce
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@d0
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@d3
    move-result-object v3

    #@d4
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@d6
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@d8
    add-int v15, v2, v3

    #@da
    .line 1434
    .local v15, "vInsets":I
    move-object/from16 v0, p0

    #@dc
    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    #@de
    if-nez v2, :cond_5

    #@e0
    .line 1435
    move-object/from16 v0, p0

    #@e2
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@e4
    const/4 v3, 0x1

    #@e5
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    #@e8
    .line 1439
    :cond_5
    move-object/from16 v0, p0

    #@ea
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@ec
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@ef
    move-result v2

    #@f0
    sub-int/2addr v2, v9

    #@f1
    int-to-float v2, v2

    #@f2
    int-to-float v3, v9

    #@f3
    sub-float v3, v13, v3

    #@f5
    div-float/2addr v2, v3

    #@f6
    move-object/from16 v0, p0

    #@f8
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@fa
    .line 1440
    move-object/from16 v0, p0

    #@fc
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@fe
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@101
    move-result v2

    #@102
    sub-int/2addr v2, v15

    #@103
    int-to-float v2, v2

    #@104
    int-to-float v3, v15

    #@105
    sub-float v3, v12, v3

    #@107
    div-float/2addr v2, v3

    #@108
    move-object/from16 v0, p0

    #@10a
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@10c
    .line 1445
    move-object/from16 v0, p0

    #@10e
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@110
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@112
    int-to-float v2, v2

    #@113
    move-object/from16 v0, v16

    #@115
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@117
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    #@119
    int-to-float v3, v3

    #@11a
    move-object/from16 v0, p0

    #@11c
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@11e
    const/high16 v5, 0x3f800000    # 1.0f

    #@120
    sub-float v4, v5, v4

    #@122
    mul-float/2addr v3, v4

    #@123
    sub-float/2addr v2, v3

    #@124
    float-to-int v10, v2

    #@125
    .line 1446
    .local v10, "posX":I
    move-object/from16 v0, p0

    #@127
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@129
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@12b
    int-to-float v2, v2

    #@12c
    move-object/from16 v0, v16

    #@12e
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@130
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    #@132
    int-to-float v3, v3

    #@133
    move-object/from16 v0, p0

    #@135
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@137
    const/high16 v5, 0x3f800000    # 1.0f

    #@139
    sub-float v4, v5, v4

    #@13b
    mul-float/2addr v3, v4

    #@13c
    sub-float/2addr v2, v3

    #@13d
    float-to-int v11, v2

    #@13e
    .line 1454
    .local v11, "posY":I
    int-to-float v2, v10

    #@13f
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@142
    move-result-object v3

    #@143
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@145
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@147
    int-to-float v3, v3

    #@148
    move-object/from16 v0, p0

    #@14a
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@14c
    const/high16 v5, 0x3f800000    # 1.0f

    #@14e
    sub-float v4, v5, v4

    #@150
    mul-float/2addr v3, v4

    #@151
    add-float/2addr v2, v3

    #@152
    float-to-int v10, v2

    #@153
    .line 1455
    int-to-float v2, v11

    #@154
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@157
    move-result-object v3

    #@158
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@15a
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@15c
    int-to-float v3, v3

    #@15d
    move-object/from16 v0, p0

    #@15f
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@161
    const/high16 v5, 0x3f800000    # 1.0f

    #@163
    sub-float v4, v5, v4

    #@165
    mul-float/2addr v3, v4

    #@166
    add-float/2addr v2, v3

    #@167
    float-to-int v11, v2

    #@168
    .line 1457
    move-object/from16 v0, p0

    #@16a
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@16c
    int-to-double v4, v10

    #@16d
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    #@170
    move-result-wide v4

    #@171
    double-to-float v3, v4

    #@172
    .line 1458
    int-to-double v4, v11

    #@173
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    #@176
    move-result-wide v4

    #@177
    double-to-float v4, v4

    #@178
    .line 1457
    move/from16 v0, p1

    #@17a
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    #@17d
    .line 1463
    move-object/from16 v0, p0

    #@17f
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@181
    float-to-int v3, v13

    #@182
    float-to-int v4, v12

    #@183
    const/4 v5, 0x0

    #@184
    const/4 v6, 0x0

    #@185
    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@188
    .line 1464
    move-object/from16 v0, p0

    #@18a
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    #@18c
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    #@18f
    .line 1472
    const/4 v2, 0x1

    #@190
    move-object/from16 v0, p0

    #@192
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    #@194
    .line 1483
    .end local v9    # "hInsets":I
    .end local v10    # "posX":I
    .end local v11    # "posY":I
    .end local v15    # "vInsets":I
    :goto_2
    if-eqz v17, :cond_6

    #@196
    move-object/from16 v0, p0

    #@198
    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    #@19a
    if-eqz v2, :cond_d

    #@19c
    .line 1488
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    #@19e
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@1a0
    .line 1489
    .local v8, "clipRect":Landroid/graphics/Rect;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->inPinnedWorkspace()Z

    #@1a3
    move-result v2

    #@1a4
    if-eqz v2, :cond_7

    #@1a6
    .line 1490
    const/4 v8, 0x0

    #@1a7
    .line 1491
    .local v8, "clipRect":Landroid/graphics/Rect;
    iget-object v2, v14, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    #@1ad
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@1b0
    .line 1492
    move-object/from16 v0, p0

    #@1b2
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    #@1b4
    move-object/from16 v0, v16

    #@1b6
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1b8
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1ba
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@1bc
    neg-int v3, v3

    #@1bd
    move-object/from16 v0, v16

    #@1bf
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1c1
    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1c3
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@1c5
    neg-int v4, v4

    #@1c6
    .line 1493
    move-object/from16 v0, v16

    #@1c8
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1ca
    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1cc
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@1ce
    neg-int v5, v5

    #@1cf
    move-object/from16 v0, v16

    #@1d1
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1d3
    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1d5
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@1d7
    neg-int v6, v6

    #@1d8
    .line 1492
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->inset(IIII)V

    #@1db
    .line 1496
    .end local v8    # "clipRect":Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v0, p0

    #@1dd
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    #@1df
    move-object/from16 v0, p0

    #@1e1
    move/from16 v1, p1

    #@1e3
    invoke-virtual {v0, v8, v2, v1}, Lcom/android/server/wm/WindowStateAnimator;->updateSurfaceWindowCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    #@1e6
    .line 1498
    move-object/from16 v0, p0

    #@1e8
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@1ea
    move-object/from16 v0, p0

    #@1ec
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@1ee
    move-object/from16 v0, v16

    #@1f0
    iget v4, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@1f2
    mul-float/2addr v3, v4

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@1f7
    mul-float/2addr v3, v4

    #@1f8
    .line 1499
    move-object/from16 v0, p0

    #@1fa
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@1fc
    move-object/from16 v0, v16

    #@1fe
    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@200
    mul-float/2addr v4, v5

    #@201
    move-object/from16 v0, p0

    #@203
    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@205
    mul-float/2addr v4, v5

    #@206
    .line 1500
    move-object/from16 v0, p0

    #@208
    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@20a
    move-object/from16 v0, v16

    #@20c
    iget v6, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@20e
    mul-float/2addr v5, v6

    #@20f
    move-object/from16 v0, p0

    #@211
    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@213
    mul-float/2addr v5, v6

    #@214
    .line 1501
    move-object/from16 v0, p0

    #@216
    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@218
    move-object/from16 v0, v16

    #@21a
    iget v7, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@21c
    mul-float/2addr v6, v7

    #@21d
    move-object/from16 v0, p0

    #@21f
    iget v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@221
    mul-float/2addr v6, v7

    #@222
    move/from16 v7, p1

    #@224
    .line 1498
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixInTransaction(FFFFZ)V

    #@227
    .line 1503
    move-object/from16 v0, p0

    #@229
    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    #@22b
    if-eqz v2, :cond_8

    #@22d
    .line 1504
    const/4 v2, 0x1

    #@22e
    move-object/from16 v0, p0

    #@230
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    #@232
    .line 1505
    move-object/from16 v0, p0

    #@234
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@236
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@239
    move-result v3

    #@23a
    .line 1506
    const/4 v4, 0x4

    #@23b
    .line 1505
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@23e
    .line 1507
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->applyDimLayerIfNeeded()V

    #@241
    .line 1388
    :cond_8
    return-void

    #@242
    .line 1394
    .end local v12    # "surfaceHeight":F
    .end local v13    # "surfaceWidth":F
    .end local v17    # "wasForceScaled":Z
    :cond_9
    return-void

    #@243
    .line 1422
    .restart local v17    # "wasForceScaled":Z
    :cond_a
    const/4 v2, 0x0

    #@244
    move-object/from16 v0, p0

    #@246
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    #@248
    goto/16 :goto_0

    #@24a
    .line 1424
    :cond_b
    const/4 v2, 0x1

    #@24b
    goto/16 :goto_1

    #@24d
    .line 1474
    .restart local v12    # "surfaceHeight":F
    .restart local v13    # "surfaceWidth":F
    :cond_c
    move-object/from16 v0, p0

    #@24f
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@251
    move-object/from16 v0, p0

    #@253
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@255
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@257
    int-to-float v3, v3

    #@258
    move-object/from16 v0, p0

    #@25a
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@25c
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@25e
    int-to-float v4, v4

    #@25f
    move/from16 v0, p1

    #@261
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    #@264
    goto/16 :goto_2

    #@266
    .line 1484
    :cond_d
    move-object/from16 v0, p0

    #@268
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@26a
    const/4 v3, 0x1

    #@26b
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->setPositionAppliesWithResizeInTransaction(Z)V

    #@26e
    .line 1485
    move-object/from16 v0, p0

    #@270
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@272
    const/4 v3, 0x0

    #@273
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    #@276
    goto/16 :goto_3
.end method

.method setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 1637
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1638
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    #@9
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 1639
    return-void

    #@d
    .line 1641
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setTransparentRegionHint(Landroid/graphics/Region;)V

    #@12
    .line 1636
    return-void
.end method

.method setWallpaperOffset(Landroid/graphics/Point;)V
    .locals 8
    .param p1, "shownPosition"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 1645
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@5
    move-result-object v0

    #@6
    .line 1646
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v4, p1, Landroid/graphics/Point;->x:I

    #@8
    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@a
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@c
    sub-int v2, v4, v5

    #@e
    .line 1647
    .local v2, "left":I
    iget v4, p1, Landroid/graphics/Point;->y:I

    #@10
    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@12
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@14
    sub-int v3, v4, v5

    #@16
    .line 1651
    .local v3, "top":I
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@19
    .line 1652
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@1b
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1d
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@1f
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@21
    add-int/2addr v5, v2

    #@22
    int-to-float v5, v5

    #@23
    .line 1653
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@25
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@27
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@29
    add-int/2addr v6, v3

    #@2a
    int-to-float v6, v6

    #@2b
    const/4 v7, 0x0

    #@2c
    .line 1652
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    #@2f
    .line 1654
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@31
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    #@33
    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceWindowCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@36
    .line 1655
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@38
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    #@3a
    const/4 v6, 0x0

    #@3b
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/wm/WindowStateAnimator;->updateSurfaceWindowCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 1660
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@41
    .line 1644
    :goto_0
    return-void

    #@42
    .line 1656
    :catch_0
    move-exception v1

    #@43
    .line 1657
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    #@45
    new-instance v5, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v6, "Error positioning surface of "

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    .line 1658
    const-string/jumbo v6, " pos=("

    #@5a
    .line 1657
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    .line 1658
    const-string/jumbo v6, ","

    #@65
    .line 1657
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    .line 1658
    const-string/jumbo v6, ")"

    #@70
    .line 1657
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7b
    .line 1660
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@7e
    goto :goto_0

    #@7f
    .line 1659
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    #@80
    .line 1660
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@83
    .line 1659
    throw v4
.end method

.method startDelayingAnimationStart()V
    .locals 1

    #@0
    .prologue
    .line 2081
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    #@3
    .line 2080
    return-void
.end method

.method stepAnimationLocked(J)Z
    .locals 11
    .param p1, "currentTime"    # J

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 375
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@5
    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    #@7
    .line 376
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@9
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@c
    move-result-object v0

    #@d
    .line 377
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_d

    #@f
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@11
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_d

    #@17
    .line 380
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@19
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_3

    #@1f
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@21
    if-eqz v3, :cond_3

    #@23
    .line 381
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@25
    .line 382
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@27
    .line 383
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@29
    if-nez v3, :cond_0

    #@2b
    .line 390
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@2e
    move-result-object v2

    #@2f
    .line 391
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    #@31
    if-eqz v3, :cond_1

    #@33
    .line 392
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    #@35
    .line 393
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@37
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@39
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@3b
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@3e
    move-result v4

    #@3f
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@41
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@43
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@46
    move-result v5

    #@47
    .line 394
    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    #@49
    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    #@4b
    .line 393
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@4e
    .line 399
    :goto_0
    iget v3, v2, Landroid/view/DisplayInfo;->appWidth:I

    #@50
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    #@52
    .line 400
    iget v3, v2, Landroid/view/DisplayInfo;->appHeight:I

    #@54
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    #@56
    .line 401
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@58
    iget-wide v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    #@5a
    const-wide/16 v6, -0x1

    #@5c
    cmp-long v4, v4, v6

    #@5e
    if-eqz v4, :cond_2

    #@60
    .line 402
    iget-wide v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    #@62
    .line 401
    :goto_1
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@65
    .line 404
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@67
    .line 405
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@69
    .line 407
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@6b
    if-eqz v3, :cond_3

    #@6d
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@6f
    if-eqz v3, :cond_3

    #@71
    .line 408
    iput-wide p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimationTime:J

    #@73
    .line 409
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimation(J)Z

    #@76
    move-result v3

    #@77
    if-eqz v3, :cond_3

    #@79
    .line 410
    return v9

    #@7a
    .line 396
    .restart local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@7c
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@7e
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@80
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@83
    move-result v4

    #@84
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@86
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@88
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@8b
    move-result v5

    #@8c
    .line 397
    iget v6, v2, Landroid/view/DisplayInfo;->appWidth:I

    #@8e
    iget v7, v2, Landroid/view/DisplayInfo;->appHeight:I

    #@90
    .line 396
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@93
    goto :goto_0

    #@94
    :cond_2
    move-wide v4, p1

    #@95
    .line 403
    goto :goto_1

    #@96
    .line 418
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_3
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@98
    .line 419
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@9a
    if-eqz v3, :cond_4

    #@9c
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@9e
    if-eqz v3, :cond_5

    #@a0
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@a2
    if-eqz v3, :cond_5

    #@a4
    .line 420
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@a6
    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@a8
    if-eqz v3, :cond_5

    #@aa
    .line 428
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@ac
    .line 429
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@ae
    .line 430
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@b0
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    #@b3
    .line 431
    return v10

    #@b4
    .line 432
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@b6
    if-eqz v3, :cond_c

    #@b8
    .line 435
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@ba
    .line 445
    :cond_6
    :goto_2
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@bc
    if-nez v3, :cond_7

    #@be
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@c0
    if-eqz v3, :cond_e

    #@c2
    .line 455
    :cond_7
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@c4
    .line 456
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@c6
    .line 457
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    #@c8
    .line 458
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@ca
    .line 459
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@cc
    if-eqz v3, :cond_8

    #@ce
    .line 460
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@d0
    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    #@d3
    .line 461
    iput-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@d5
    .line 463
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@d7
    iget-object v3, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@d9
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@db
    if-ne v3, v4, :cond_9

    #@dd
    .line 464
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@df
    iput-object v8, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@e1
    .line 466
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@e3
    iget v3, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    #@e5
    .line 467
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e7
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    #@e9
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@eb
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowLayersController;->getSpecialWindowAnimLayerAdjustment(Lcom/android/server/wm/WindowState;)I

    #@ee
    move-result v4

    #@ef
    .line 466
    add-int/2addr v3, v4

    #@f0
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@f2
    .line 469
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@f4
    .line 470
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@f6
    .line 471
    iput v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    #@f8
    .line 472
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@fa
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->checkPolicyVisibilityChange()V

    #@fd
    .line 473
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@ff
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    #@102
    .line 474
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@104
    const/4 v4, 0x4

    #@105
    if-ne v3, v4, :cond_f

    #@107
    .line 475
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@109
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@10b
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@10d
    const/4 v4, 0x3

    #@10e
    if-ne v3, v4, :cond_f

    #@110
    .line 476
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@112
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@114
    if-eqz v3, :cond_f

    #@116
    .line 477
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@118
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@11a
    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    #@11c
    .line 474
    if-eqz v3, :cond_f

    #@11e
    .line 478
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@120
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@122
    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@124
    if-eqz v3, :cond_f

    #@126
    .line 481
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@128
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    #@12a
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@12c
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@12e
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@131
    .line 482
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@133
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@135
    const/4 v4, 0x7

    #@136
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    #@139
    .line 491
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    #@13c
    .line 492
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@13e
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@141
    move-result v1

    #@142
    .line 493
    .local v1, "displayId":I
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@144
    const/16 v4, 0x8

    #@146
    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@149
    .line 498
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@14b
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@14d
    if-eqz v3, :cond_b

    #@14f
    .line 499
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@151
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@153
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    #@156
    .line 502
    :cond_b
    return v10

    #@157
    .line 436
    .end local v1    # "displayId":I
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    #@15a
    move-result v3

    #@15b
    if-eqz v3, :cond_6

    #@15d
    .line 437
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@15f
    goto/16 :goto_2

    #@161
    .line 439
    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@163
    if-eqz v3, :cond_6

    #@165
    .line 442
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@167
    goto/16 :goto_2

    #@169
    .line 446
    :cond_e
    return v10

    #@16a
    .line 483
    :cond_f
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    #@16c
    const/16 v4, 0x7d0

    #@16e
    if-ne v3, v4, :cond_a

    #@170
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@172
    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@174
    if-eqz v3, :cond_a

    #@176
    .line 486
    if-eqz v0, :cond_a

    #@178
    .line 487
    iput-boolean v9, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@17a
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1992
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v1, "WindowStateAnimator{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    .line 1993
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@b
    move-result v1

    #@c
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13
    .line 1994
    const/16 v1, 0x20

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@18
    .line 1995
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1a
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1c
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    #@23
    .line 1996
    const/16 v1, 0x7d

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@28
    .line 1997
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    return-object v1
.end method

.method tryChangeFormatInPlaceLocked()Z
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1674
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@4
    if-nez v5, :cond_0

    #@6
    .line 1675
    return v3

    #@7
    .line 1677
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@9
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@c
    move-result-object v0

    #@d
    .line 1678
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@f
    const/high16 v6, 0x1000000

    #@11
    and-int/2addr v5, v6

    #@12
    if-eqz v5, :cond_1

    #@14
    move v2, v4

    #@15
    .line 1679
    .local v2, "isHwAccelerated":Z
    :goto_0
    if-eqz v2, :cond_2

    #@17
    const/4 v1, -0x3

    #@18
    .line 1680
    .local v1, "format":I
    :goto_1
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    #@1a
    if-ne v1, v5, :cond_4

    #@1c
    .line 1681
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@1e
    invoke-static {v5}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_3

    #@24
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    #@27
    .line 1682
    return v4

    #@28
    .end local v1    # "format":I
    .end local v2    # "isHwAccelerated":Z
    :cond_1
    move v2, v3

    #@29
    .line 1678
    goto :goto_0

    #@2a
    .line 1679
    .restart local v2    # "isHwAccelerated":Z
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@2c
    .restart local v1    # "format":I
    goto :goto_1

    #@2d
    :cond_3
    move v3, v4

    #@2e
    .line 1681
    goto :goto_2

    #@2f
    .line 1684
    :cond_4
    return v3
.end method

.method updateSurfaceWindowCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 1
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "finalClipRect"    # Landroid/graphics/Rect;
    .param p3, "recoveringMemory"    # Z

    #@0
    .prologue
    .line 1292
    if-eqz p1, :cond_2

    #@2
    .line 1293
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    #@4
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1294
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    #@c
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@f
    .line 1295
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@11
    invoke-virtual {v0, p1, p3}, Lcom/android/server/wm/WindowSurfaceController;->setCropInTransaction(Landroid/graphics/Rect;Z)V

    #@14
    .line 1300
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    #@16
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 1301
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    #@1e
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@21
    .line 1302
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@23
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowSurfaceController;->setFinalCropInTransaction(Landroid/graphics/Rect;)V

    #@26
    .line 1303
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@28
    if-eqz v0, :cond_1

    #@2a
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 1304
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@30
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowSurfaceController;->setFinalCropInTransaction(Landroid/graphics/Rect;)V

    #@33
    .line 1289
    :cond_1
    return-void

    #@34
    .line 1298
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@36
    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowSurfaceController;->clearCropInTransaction(Z)V

    #@39
    goto :goto_0
.end method
