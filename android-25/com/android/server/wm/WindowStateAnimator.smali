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
    .line 81
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    #@5
    .line 80
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/high16 v6, 0x3f800000    # 1.0f

    #@3
    const/4 v5, 0x0

    #@4
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 122
    new-instance v3, Landroid/view/animation/Transformation;

    #@9
    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    #@c
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@e
    .line 128
    const/4 v3, 0x1

    #@f
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    #@11
    .line 150
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@13
    .line 151
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@15
    .line 152
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@17
    .line 155
    new-instance v3, Landroid/graphics/Rect;

    #@19
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@1c
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@1e
    .line 156
    new-instance v3, Landroid/graphics/Rect;

    #@20
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@23
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@25
    .line 157
    new-instance v3, Landroid/graphics/Rect;

    #@27
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@2a
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    #@2c
    .line 158
    new-instance v3, Landroid/graphics/Rect;

    #@2e
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@31
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    #@33
    .line 159
    new-instance v3, Landroid/graphics/Rect;

    #@35
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@38
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    #@3a
    .line 160
    new-instance v3, Landroid/graphics/Rect;

    #@3c
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@3f
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    #@41
    .line 166
    new-instance v3, Landroid/graphics/Rect;

    #@43
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@46
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@48
    .line 167
    new-instance v3, Landroid/graphics/Rect;

    #@4a
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@4d
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastSystemDecorRect:Landroid/graphics/Rect;

    #@4f
    .line 174
    const/4 v3, 0x0

    #@50
    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    #@52
    .line 176
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@54
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@56
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@58
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@5a
    .line 177
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    #@5c
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    #@5e
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    #@60
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    #@62
    .line 239
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@64
    .line 240
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@66
    .line 242
    new-instance v3, Landroid/graphics/Rect;

    #@68
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@6b
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@6d
    .line 245
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6f
    .line 247
    .local v2, "service":Lcom/android/server/wm/WindowManagerService;
    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@71
    .line 248
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@73
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@75
    .line 249
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@77
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@79
    .line 250
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@7b
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    #@7d
    .line 251
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@80
    move-result-object v0

    #@81
    .line 252
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    #@83
    .line 253
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@86
    move-result-object v1

    #@87
    .line 254
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    #@89
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    #@8b
    .line 255
    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    #@8d
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    #@8f
    .line 261
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@91
    .line 262
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@93
    if-nez v3, :cond_1

    #@95
    move-object v3, v4

    #@96
    :goto_1
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@98
    .line 264
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@9a
    if-nez v3, :cond_2

    #@9c
    :goto_2
    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@9e
    .line 265
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@a0
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    #@a2
    .line 266
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@a4
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@a6
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    #@a8
    .line 267
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@aa
    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    #@ac
    .line 268
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@ae
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@b0
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@b2
    .line 244
    return-void

    #@b3
    .line 257
    :cond_0
    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    #@b5
    const-string/jumbo v5, "WindowStateAnimator ctor: Display has been removed"

    #@b8
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    goto :goto_0

    #@bc
    .line 263
    :cond_1
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@be
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@c0
    goto :goto_1

    #@c1
    .line 264
    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@c3
    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@c5
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
    .line 1331
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@3
    move-result-object v1

    #@4
    .line 1332
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    #@6
    iget-boolean v10, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    #@8
    if-eqz v10, :cond_1

    #@a
    .line 1341
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@d
    move-result-object v7

    #@e
    .line 1342
    .local v7, "task":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_2

    #@10
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    #@13
    move-result v10

    #@14
    if-eqz v10, :cond_2

    #@16
    .line 1346
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->resolveStackClip()I

    #@19
    move-result v5

    #@1a
    .line 1349
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
    .line 1350
    return-void

    #@24
    .line 1338
    .end local v5    # "stackClip":I
    .end local v7    # "task":Lcom/android/server/wm/Task;
    :cond_1
    return-void

    #@25
    .line 1343
    .restart local v7    # "task":Lcom/android/server/wm/Task;
    :cond_2
    return-void

    #@26
    .line 1353
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
    .line 1354
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
    .line 1355
    return-void

    #@3b
    .line 1358
    :cond_4
    iget-object v4, v7, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@3d
    .line 1359
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    #@3f
    invoke-virtual {v4, v10}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@42
    .line 1360
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@45
    move-result-object v10

    #@46
    iget-object v6, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@48
    .line 1364
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
    .line 1366
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
    .line 1371
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
    .line 1376
    .local v8, "useFinalClipRect":Z
    :goto_2
    if-eqz v8, :cond_8

    #@65
    .line 1377
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    #@67
    move-object/from16 v0, p3

    #@69
    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@6c
    .line 1329
    :goto_3
    return-void

    #@6d
    .line 1365
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
    .line 1367
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
    .line 1372
    :cond_7
    iget-boolean v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@8f
    goto :goto_2

    #@90
    .line 1379
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
    .line 1380
    iget v10, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@9a
    invoke-static {v10}, Landroid/app/ActivityManager$StackId;->isTaskResizeAllowed(I)Z

    #@9d
    move-result v10

    #@9e
    if-eqz v10, :cond_a

    #@a0
    .line 1389
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
    .line 1388
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
    .line 1391
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
    .line 1390
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
    .line 1393
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
    .line 1392
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
    .line 1395
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
    .line 1394
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
    .line 1384
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
    .line 1385
    iget v13, v6, Landroid/graphics/Rect;->right:I

    #@108
    neg-int v13, v13

    #@109
    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    #@10b
    neg-int v14, v14

    #@10c
    .line 1384
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->inset(IIII)V

    #@10f
    goto :goto_4
.end method

.method private applyFadeoutDuringKeyguardExitAnimation()V
    .locals 14

    #@0
    .prologue
    .line 1928
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@2
    invoke-virtual {v10}, Landroid/view/animation/Animation;->getStartTime()J

    #@5
    move-result-wide v8

    #@6
    .line 1929
    .local v8, "startTime":J
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@8
    invoke-virtual {v10}, Landroid/view/animation/Animation;->getDuration()J

    #@b
    move-result-wide v0

    #@c
    .line 1930
    .local v0, "duration":J
    iget-wide v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimationTime:J

    #@e
    sub-long v2, v10, v8

    #@10
    .line 1931
    .local v2, "elapsed":J
    sub-long v4, v0, v2

    #@12
    .line 1932
    .local v4, "fadeDuration":J
    const-wide/16 v10, 0x0

    #@14
    cmp-long v10, v4, v10

    #@16
    if-gtz v10, :cond_0

    #@18
    .line 1934
    return-void

    #@19
    .line 1936
    :cond_0
    new-instance v7, Landroid/view/animation/AnimationSet;

    #@1b
    const/4 v10, 0x0

    #@1c
    invoke-direct {v7, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@1f
    .line 1937
    .local v7, "newAnimation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    #@22
    .line 1938
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AnimationSet;->setStartTime(J)V

    #@25
    .line 1939
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@27
    invoke-virtual {v7, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@2a
    .line 1941
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    #@2c
    const v11, 0x10a0011

    #@2f
    .line 1940
    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@32
    move-result-object v6

    #@33
    .line 1942
    .local v6, "fadeOut":Landroid/view/animation/Animation;
    invoke-virtual {v6, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    #@36
    .line 1943
    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    #@39
    .line 1944
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@3c
    .line 1945
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
    .line 1946
    iput-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@55
    .line 1927
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
    .line 796
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@4
    and-int/lit16 v1, v1, 0x4000

    #@6
    if-eqz v1, :cond_2

    #@8
    .line 798
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
    .line 799
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
    .line 821
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@23
    move-result v1

    #@24
    if-ge v1, v4, :cond_0

    #@26
    .line 822
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
    .line 824
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@32
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@35
    move-result v1

    #@36
    if-ge v1, v4, :cond_1

    #@38
    .line 825
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
    .line 829
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
    .line 830
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
    .line 831
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
    .line 832
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
    .line 795
    return-void

    #@6f
    .line 804
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    #@72
    move-result v1

    #@73
    if-eqz v1, :cond_4

    #@75
    .line 805
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    #@78
    move-result v1

    #@79
    if-nez v1, :cond_3

    #@7b
    .line 806
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@7d
    iput v2, v1, Landroid/graphics/Rect;->left:I

    #@7f
    .line 807
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@81
    iput v2, v1, Landroid/graphics/Rect;->top:I

    #@83
    .line 809
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@86
    move-result-object v0

    #@87
    .line 810
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
    .line 811
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
    .line 813
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
    .line 814
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
    .line 1161
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5
    .line 1162
    .local v7, "w":Lcom/android/server/wm/WindowState;
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    #@7
    .line 1163
    .local v1, "decorRect":Landroid/graphics/Rect;
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@9
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    #@c
    move-result v8

    #@d
    .line 1164
    .local v8, "width":I
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@f
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    #@12
    move-result v3

    #@13
    .line 1167
    .local v3, "height":I
    iget v9, v7, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@15
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@17
    iget v10, v10, Landroid/graphics/Rect;->left:I

    #@19
    add-int v4, v9, v10

    #@1b
    .line 1168
    .local v4, "left":I
    iget v9, v7, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@1d
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@1f
    iget v10, v10, Landroid/graphics/Rect;->top:I

    #@21
    add-int v6, v9, v10

    #@23
    .line 1171
    .local v6, "top":I
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    #@26
    move-result v9

    #@27
    if-nez v9, :cond_0

    #@29
    .line 1172
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
    .line 1171
    if-eqz v9, :cond_3

    #@37
    .line 1182
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@3e
    move-result-object v2

    #@3f
    .line 1183
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@41
    .line 1184
    iget v10, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@43
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    #@46
    move-result v10

    #@47
    .line 1185
    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@49
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    #@4c
    move-result v11

    #@4d
    .line 1183
    invoke-virtual {v9, v0, v0, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    #@50
    .line 1193
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
    .line 1194
    .local v0, "cropToDecor":Z
    :goto_1
    if-eqz v0, :cond_1

    #@5e
    .line 1196
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
    .line 1197
    iget v12, v1, Landroid/graphics/Rect;->right:I

    #@68
    sub-int/2addr v12, v4

    #@69
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    #@6b
    sub-int/2addr v13, v6

    #@6c
    .line 1196
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@6f
    .line 1206
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
    .line 1207
    iget v5, v7, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@7d
    .line 1208
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
    .line 1209
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
    .line 1210
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
    .line 1211
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
    .line 1160
    .end local v5    # "scale":F
    :cond_2
    return-void

    #@b2
    .line 1187
    .end local v0    # "cropToDecor":Z
    :cond_3
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@b4
    invoke-virtual {v9, v0, v0, v8, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@b7
    goto :goto_0

    #@b8
    .line 1193
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
    .line 2067
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2068
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@7
    .line 2069
    const-wide/16 v0, 0x1

    #@9
    add-long/2addr v0, p2

    #@a
    return-wide v0

    #@b
    .line 2071
    :cond_0
    return-wide p2
.end method

.method private resolveStackClip()I
    .locals 1

    #@0
    .prologue
    .line 1322
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
    .line 1323
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@c
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->getStackClip()I

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 1325
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
    .line 1808
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@7
    move-result-object v1

    #@8
    .line 1809
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
    .line 1810
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@16
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    #@19
    .line 1813
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@1b
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->showRobustlyInTransaction()Z

    #@1e
    move-result v0

    #@1f
    .line 1814
    .local v0, "shown":Z
    if-nez v0, :cond_1

    #@21
    .line 1815
    return v3

    #@22
    .line 1817
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@24
    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 1819
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2a
    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@2c
    .line 1820
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@2e
    iget v3, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@30
    or-int/lit8 v3, v3, 0x10

    #@32
    iput v3, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@34
    .line 1822
    :cond_2
    return v4
.end method

.method private stepAnimation(J)Z
    .locals 3
    .param p1, "currentTime"    # J

    #@0
    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@2
    if-eqz v1, :cond_1

    #@4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 360
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@a
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->getAnimationFrameTime(Landroid/view/animation/Animation;J)J

    #@d
    move-result-wide p1

    #@e
    .line 361
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@10
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    #@13
    .line 362
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@15
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@17
    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@1a
    move-result v0

    #@1b
    .line 363
    .local v0, "more":Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    #@1d
    if-eqz v1, :cond_0

    #@1f
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@21
    if-eqz v1, :cond_0

    #@23
    .line 364
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@25
    const/4 v2, 0x0

    #@26
    invoke-virtual {v1, v2}, Landroid/view/animation/Transformation;->setAlpha(F)V

    #@29
    .line 368
    :cond_0
    return v0

    #@2a
    .line 358
    .end local v0    # "more":Z
    :cond_1
    const/4 v1, 0x0

    #@2b
    return v1
.end method


# virtual methods
.method applyAnimationLocked(IZ)Z
    .locals 10
    .param p1, "transit"    # I
    .param p2, "isEntrance"    # Z

    #@0
    .prologue
    const-wide/16 v8, 0x20

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 1857
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@6
    if-eqz v5, :cond_2

    #@8
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@a
    if-ne v5, p2, :cond_2

    #@c
    .line 1864
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@e
    if-eqz v4, :cond_1

    #@10
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@12
    if-eqz v4, :cond_1

    #@14
    .line 1865
    const/4 v4, 0x5

    #@15
    if-ne p1, v4, :cond_1

    #@17
    .line 1866
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyFadeoutDuringKeyguardExitAnimation()V

    #@1a
    .line 1868
    :cond_1
    return v3

    #@1b
    .line 1858
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@1d
    .line 1857
    if-nez v5, :cond_0

    #@1f
    .line 1875
    const-string/jumbo v5, "WSA#applyAnimationLocked"

    #@22
    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@25
    .line 1876
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@27
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_8

    #@2d
    .line 1877
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@2f
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@31
    invoke-interface {v5, v6, p1}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    #@34
    move-result v1

    #@35
    .line 1878
    .local v1, "anim":I
    const/4 v2, -0x1

    #@36
    .line 1879
    .local v2, "attr":I
    const/4 v0, 0x0

    #@37
    .line 1880
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz v1, :cond_7

    #@39
    .line 1881
    const/4 v5, -0x1

    #@3a
    if-eq v1, v5, :cond_6

    #@3c
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    #@3e
    invoke-static {v5, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@41
    move-result-object v0

    #@42
    .line 1907
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    #@44
    .line 1909
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    #@47
    .line 1910
    iput-boolean p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@49
    .line 1915
    .end local v1    # "anim":I
    .end local v2    # "attr":I
    :cond_4
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@4c
    .line 1917
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4e
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@50
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    #@52
    const/16 v6, 0x7db

    #@54
    if-ne v5, v6, :cond_5

    #@56
    .line 1918
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@58
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5a
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@5c
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->adjustForImeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    #@5f
    .line 1919
    if-eqz p2, :cond_5

    #@61
    .line 1920
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@63
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    #@66
    .line 1921
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@68
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@6a
    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    #@6d
    .line 1924
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@6f
    if-eqz v5, :cond_9

    #@71
    :goto_2
    return v3

    #@72
    .line 1881
    .restart local v0    # "a":Landroid/view/animation/Animation;
    .restart local v1    # "anim":I
    .restart local v2    # "attr":I
    :cond_6
    const/4 v0, 0x0

    #@73
    goto :goto_0

    #@74
    .line 1883
    :cond_7
    packed-switch p1, :pswitch_data_0

    #@77
    .line 1897
    :goto_3
    if-ltz v2, :cond_3

    #@79
    .line 1898
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7b
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@7d
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@7f
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@81
    invoke-virtual {v5, v6, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    #@84
    move-result-object v0

    #@85
    .local v0, "a":Landroid/view/animation/Animation;
    goto :goto_0

    #@86
    .line 1885
    .local v0, "a":Landroid/view/animation/Animation;
    :pswitch_0
    const/4 v2, 0x0

    #@87
    .line 1886
    goto :goto_3

    #@88
    .line 1888
    :pswitch_1
    const/4 v2, 0x1

    #@89
    .line 1889
    goto :goto_3

    #@8a
    .line 1891
    :pswitch_2
    const/4 v2, 0x2

    #@8b
    .line 1892
    goto :goto_3

    #@8c
    .line 1894
    :pswitch_3
    const/4 v2, 0x3

    #@8d
    .line 1895
    goto :goto_3

    #@8e
    .line 1913
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "anim":I
    .end local v2    # "attr":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    #@91
    goto :goto_1

    #@92
    :cond_9
    move v3, v4

    #@93
    .line 1924
    goto :goto_2

    #@94
    .line 1883
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
    .line 1829
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3
    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1830
    return-void

    #@8
    .line 1833
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 1834
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    #@e
    .line 1835
    const/4 v0, 0x1

    #@f
    .line 1839
    .local v0, "transit":I
    :goto_0
    const/4 v1, 0x1

    #@10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    #@13
    .line 1841
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@15
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 1842
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_1

    #@21
    .line 1843
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@23
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@25
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@27
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    #@2a
    .line 1825
    :cond_1
    return-void

    #@2b
    .line 1837
    .end local v0    # "transit":I
    :cond_2
    const/4 v0, 0x3

    #@2c
    .restart local v0    # "transit":I
    goto :goto_0
.end method

.method applyMagnificationSpec(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "transform"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 928
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@4
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@6
    iget v1, v3, Landroid/graphics/Rect;->left:I

    #@8
    .line 929
    .local v1, "surfaceInsetLeft":I
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@a
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@c
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@e
    iget v2, v3, Landroid/graphics/Rect;->top:I

    #@10
    .line 931
    .local v2, "surfaceInsetTop":I
    if-eqz p1, :cond_0

    #@12
    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->isNop()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 927
    :cond_0
    :goto_0
    return-void

    #@19
    .line 932
    :cond_1
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    #@1b
    .line 933
    .local v0, "scale":F
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@1e
    .line 934
    iget v3, p1, Landroid/view/MagnificationSpec;->offsetX:F

    #@20
    iget v4, p1, Landroid/view/MagnificationSpec;->offsetY:F

    #@22
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@25
    .line 938
    int-to-float v3, v1

    #@26
    mul-float/2addr v3, v0

    #@27
    int-to-float v4, v1

    #@28
    sub-float/2addr v3, v4

    #@29
    neg-float v3, v3

    #@2a
    .line 939
    int-to-float v4, v2

    #@2b
    mul-float/2addr v4, v0

    #@2c
    int-to-float v5, v2

    #@2d
    sub-float/2addr v4, v5

    #@2e
    neg-float v4, v4

    #@2f
    .line 938
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@32
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
    .line 1216
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3
    .line 1217
    .local v5, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@6
    move-result-object v1

    #@7
    .line 1218
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_0

    #@9
    .line 1219
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    #@c
    .line 1220
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    #@f
    .line 1221
    return-void

    #@10
    .line 1223
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@13
    move-result-object v2

    #@14
    .line 1228
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    #@17
    move-result v6

    #@18
    if-nez v6, :cond_5

    #@1a
    .line 1231
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
    .line 1232
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
    .line 1233
    iget v9, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@39
    iget-object v10, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@3b
    iget v10, v10, Landroid/graphics/Rect;->left:I

    #@3d
    sub-int/2addr v9, v10

    #@3e
    .line 1234
    iget v10, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@40
    iget-object v11, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@42
    iget v11, v11, Landroid/graphics/Rect;->top:I

    #@44
    sub-int/2addr v10, v11

    #@45
    .line 1232
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@48
    .line 1254
    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowState;->isFrameFullscreen(Landroid/view/DisplayInfo;)Z

    #@4b
    move-result v3

    #@4c
    .line 1256
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
    .line 1260
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
    .line 1264
    if-eqz v4, :cond_2

    #@66
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@69
    move-result v6

    #@6a
    if-eqz v6, :cond_b

    #@6c
    .line 1271
    :cond_2
    :goto_3
    iget-object v0, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@6e
    .line 1272
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
    .line 1273
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
    .line 1274
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
    .line 1275
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
    .line 1277
    iget-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@94
    if-eqz v6, :cond_3

    #@96
    if-eqz v3, :cond_3

    #@98
    .line 1281
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@9a
    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@9d
    .line 1285
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
    .line 1287
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    #@ab
    .line 1288
    invoke-direct {p0, v5, p1, p2, v4}, Lcom/android/server/wm/WindowStateAnimator;->adjustCropToStackBounds(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    #@ae
    .line 1292
    invoke-virtual {v5, p1}, Lcom/android/server/wm/WindowState;->transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V

    #@b1
    .line 1295
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
    .line 1215
    :cond_4
    :goto_4
    return-void

    #@c6
    .line 1235
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
    .line 1237
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
    .line 1238
    :cond_6
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    #@e3
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    #@e6
    move-result v6

    #@e7
    if-eqz v6, :cond_7

    #@e9
    .line 1240
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
    .line 1241
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
    .line 1244
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@10e
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@110
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@113
    .line 1245
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->calculateSystemDecorRect()V

    #@116
    .line 1246
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    #@118
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@11a
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    #@11d
    goto/16 :goto_0

    #@11f
    .line 1249
    :cond_8
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->calculateSystemDecorRect()V

    #@122
    goto/16 :goto_0

    #@124
    .line 1256
    .restart local v3    # "fullscreen":Z
    :cond_9
    const/4 v4, 0x0

    #@125
    .restart local v4    # "isFreeformResizing":Z
    goto/16 :goto_1

    #@127
    .line 1260
    :cond_a
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@129
    goto/16 :goto_2

    #@12b
    .line 1267
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
    .line 1296
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
    .line 348
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 349
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@7
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    #@a
    .line 350
    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@c
    .line 351
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@f
    .line 352
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@11
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->destroyOrSaveSurface()V

    #@14
    .line 344
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
    .line 295
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 296
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@9
    .line 297
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@b
    .line 298
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@d
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    #@10
    .line 299
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@12
    .line 300
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@14
    .line 301
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    #@16
    .line 302
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    #@18
    .line 294
    :cond_0
    return-void
.end method

.method commitFinishDrawingLocked()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 621
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
    .line 622
    const/4 v2, 0x0

    #@b
    return v2

    #@c
    .line 627
    :cond_0
    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@e
    .line 628
    const/4 v1, 0x0

    #@f
    .line 629
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@11
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@13
    .line 630
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
    .line 631
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    #@24
    move-result v1

    #@25
    .line 633
    .end local v1    # "result":Z
    :cond_2
    return v1
.end method

.method computeShownFrameLocked()V
    .locals 26

    #@0
    .prologue
    .line 944
    move-object/from16 v0, p0

    #@2
    iget-boolean v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@4
    .line 946
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
    .line 947
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
    .line 948
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
    .line 949
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
    .line 953
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
    .line 954
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
    .line 955
    move-object/from16 v0, v17

    #@68
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@6a
    move-object/from16 v16, v0

    #@6c
    .line 956
    .local v16, "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v16

    #@6e
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@70
    move/from16 v21, v0

    #@72
    if-eqz v21, :cond_0

    #@74
    .line 957
    move-object/from16 v0, v16

    #@76
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@78
    move-object/from16 v21, v0

    #@7a
    if-eqz v21, :cond_0

    #@7c
    .line 958
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
    .line 964
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
    .line 965
    const/16 v18, 0x0

    #@92
    .line 966
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
    .line 967
    move-object/from16 v0, v18

    #@9e
    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@a0
    move-object/from16 v21, v0

    #@a2
    if-eqz v21, :cond_1

    #@a4
    .line 968
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
    .line 976
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
    .line 978
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
    .line 980
    .local v10, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v10, :cond_12

    #@c8
    invoke-virtual {v10}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    #@cb
    move-result v9

    #@cc
    .line 982
    :goto_5
    const/16 v21, 0x0

    #@ce
    move/from16 v0, v21

    #@d0
    move-object/from16 v1, p0

    #@d2
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@d4
    .line 983
    if-nez v11, :cond_2

    #@d6
    if-eqz v5, :cond_13

    #@d8
    .line 986
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
    .line 987
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
    .line 988
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
    .line 991
    .local v14, "tmpMatrix":Landroid/graphics/Matrix;
    if-eqz v9, :cond_15

    #@f8
    invoke-virtual {v10}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    #@fb
    move-result v21

    #@fc
    if-eqz v21, :cond_15

    #@fe
    .line 999
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@101
    move-result v21

    #@102
    move/from16 v0, v21

    #@104
    int-to-float v15, v0

    #@105
    .line 1000
    .local v15, "w":F
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    #@108
    move-result v21

    #@109
    move/from16 v0, v21

    #@10b
    int-to-float v8, v0

    #@10c
    .line 1001
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
    .line 1002
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
    .line 1009
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
    .line 1010
    if-eqz v11, :cond_3

    #@15c
    .line 1011
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
    .line 1013
    :cond_3
    if-eqz v5, :cond_4

    #@16d
    .line 1014
    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@170
    move-result-object v21

    #@171
    move-object/from16 v0, v21

    #@173
    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@176
    .line 1016
    :cond_4
    if-eqz v4, :cond_5

    #@178
    .line 1017
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@17b
    move-result-object v21

    #@17c
    move-object/from16 v0, v21

    #@17e
    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@181
    .line 1024
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
    .line 1025
    if-eqz v9, :cond_6

    #@1b8
    .line 1026
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
    .line 1030
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
    .line 1031
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
    .line 1032
    move-object/from16 v0, p0

    #@1e3
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1e5
    move-object/from16 v22, v0

    #@1e7
    .line 1031
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    #@1ea
    move-result-object v12

    #@1eb
    .line 1033
    .local v12, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v0, p0

    #@1ed
    invoke-virtual {v0, v12, v14}, Lcom/android/server/wm/WindowStateAnimator;->applyMagnificationSpec(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    #@1f0
    .line 1042
    .end local v12    # "spec":Landroid/view/MagnificationSpec;
    :cond_7
    const/16 v21, 0x1

    #@1f2
    move/from16 v0, v21

    #@1f4
    move-object/from16 v1, p0

    #@1f6
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    #@1f8
    .line 1043
    invoke-virtual {v14, v13}, Landroid/graphics/Matrix;->getValues([F)V

    #@1fb
    .line 1044
    const/16 v21, 0x0

    #@1fd
    aget v21, v13, v21

    #@1ff
    move/from16 v0, v21

    #@201
    move-object/from16 v1, p0

    #@203
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@205
    .line 1045
    const/16 v21, 0x3

    #@207
    aget v21, v13, v21

    #@209
    move/from16 v0, v21

    #@20b
    move-object/from16 v1, p0

    #@20d
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@20f
    .line 1046
    const/16 v21, 0x1

    #@211
    aget v21, v13, v21

    #@213
    move/from16 v0, v21

    #@215
    move-object/from16 v1, p0

    #@217
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@219
    .line 1047
    const/16 v21, 0x4

    #@21b
    aget v21, v13, v21

    #@21d
    move/from16 v0, v21

    #@21f
    move-object/from16 v1, p0

    #@221
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@223
    .line 1048
    const/16 v21, 0x2

    #@225
    aget v19, v13, v21

    #@227
    .line 1049
    .local v19, "x":F
    const/16 v21, 0x5

    #@229
    aget v20, v13, v21

    #@22b
    .line 1050
    .local v20, "y":F
    move-object/from16 v0, p0

    #@22d
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@22f
    move-object/from16 v21, v0

    #@231
    move-object/from16 v0, v21

    #@233
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@235
    move-object/from16 v21, v0

    #@237
    move/from16 v0, v19

    #@239
    float-to-int v0, v0

    #@23a
    move/from16 v22, v0

    #@23c
    move/from16 v0, v20

    #@23e
    float-to-int v0, v0

    #@23f
    move/from16 v23, v0

    #@241
    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Point;->set(II)V

    #@244
    .line 1057
    move-object/from16 v0, p0

    #@246
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@248
    move/from16 v21, v0

    #@24a
    move/from16 v0, v21

    #@24c
    move-object/from16 v1, p0

    #@24e
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@250
    .line 1058
    move-object/from16 v0, p0

    #@252
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@254
    move-object/from16 v21, v0

    #@256
    move-object/from16 v0, v21

    #@258
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    #@25a
    move/from16 v21, v0

    #@25c
    if-eqz v21, :cond_8

    #@25e
    .line 1059
    move-object/from16 v0, p0

    #@260
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@262
    move-object/from16 v21, v0

    #@264
    move-object/from16 v0, v21

    #@266
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@268
    move-object/from16 v21, v0

    #@26a
    move-object/from16 v0, v21

    #@26c
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@26e
    move/from16 v21, v0

    #@270
    invoke-static/range {v21 .. v21}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    #@273
    move-result v21

    #@274
    if-eqz v21, :cond_8

    #@276
    .line 1060
    move-object/from16 v0, p0

    #@278
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@27a
    move-object/from16 v21, v0

    #@27c
    move-object/from16 v0, p0

    #@27e
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@280
    move/from16 v22, v0

    #@282
    move-object/from16 v0, p0

    #@284
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@286
    move/from16 v23, v0

    #@288
    move-object/from16 v0, p0

    #@28a
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@28c
    move/from16 v24, v0

    #@28e
    move-object/from16 v0, p0

    #@290
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@292
    move/from16 v25, v0

    #@294
    invoke-virtual/range {v21 .. v25}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    #@297
    move-result v21

    #@298
    if-eqz v21, :cond_c

    #@29a
    .line 1061
    iget v0, v7, Landroid/graphics/Rect;->left:I

    #@29c
    move/from16 v21, v0

    #@29e
    move/from16 v0, v21

    #@2a0
    int-to-float v0, v0

    #@2a1
    move/from16 v21, v0

    #@2a3
    cmpl-float v21, v19, v21

    #@2a5
    if-nez v21, :cond_c

    #@2a7
    iget v0, v7, Landroid/graphics/Rect;->top:I

    #@2a9
    move/from16 v21, v0

    #@2ab
    move/from16 v0, v21

    #@2ad
    int-to-float v0, v0

    #@2ae
    move/from16 v21, v0

    #@2b0
    cmpl-float v21, v20, v21

    #@2b2
    if-nez v21, :cond_c

    #@2b4
    .line 1063
    :cond_8
    if-eqz v11, :cond_9

    #@2b6
    .line 1064
    move-object/from16 v0, p0

    #@2b8
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@2ba
    move/from16 v21, v0

    #@2bc
    move-object/from16 v0, p0

    #@2be
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@2c0
    move-object/from16 v22, v0

    #@2c2
    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/Transformation;->getAlpha()F

    #@2c5
    move-result v22

    #@2c6
    mul-float v21, v21, v22

    #@2c8
    move/from16 v0, v21

    #@2ca
    move-object/from16 v1, p0

    #@2cc
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@2ce
    .line 1066
    :cond_9
    if-eqz v5, :cond_a

    #@2d0
    .line 1067
    move-object/from16 v0, p0

    #@2d2
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@2d4
    move/from16 v21, v0

    #@2d6
    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    #@2d9
    move-result v22

    #@2da
    mul-float v21, v21, v22

    #@2dc
    move/from16 v0, v21

    #@2de
    move-object/from16 v1, p0

    #@2e0
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@2e2
    .line 1069
    :cond_a
    if-eqz v4, :cond_b

    #@2e4
    .line 1070
    move-object/from16 v0, p0

    #@2e6
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@2e8
    move/from16 v21, v0

    #@2ea
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    #@2ed
    move-result v22

    #@2ee
    mul-float v21, v21, v22

    #@2f0
    move/from16 v0, v21

    #@2f2
    move-object/from16 v1, p0

    #@2f4
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@2f6
    .line 1071
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->hasClipRect()Z

    #@2f9
    move-result v21

    #@2fa
    if-eqz v21, :cond_b

    #@2fc
    .line 1072
    move-object/from16 v0, p0

    #@2fe
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@300
    move-object/from16 v21, v0

    #@302
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    #@305
    move-result-object v22

    #@306
    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@309
    .line 1073
    const/16 v21, 0x1

    #@30b
    move/from16 v0, v21

    #@30d
    move-object/from16 v1, p0

    #@30f
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@311
    .line 1081
    move-object/from16 v0, p0

    #@313
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@315
    move-object/from16 v21, v0

    #@317
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    #@31a
    move-result v21

    #@31b
    if-eqz v21, :cond_b

    #@31d
    .line 1082
    move-object/from16 v0, p0

    #@31f
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@321
    move-object/from16 v21, v0

    #@323
    move-object/from16 v0, p0

    #@325
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@327
    move-object/from16 v22, v0

    #@329
    move-object/from16 v0, v22

    #@32b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@32d
    move-object/from16 v22, v0

    #@32f
    move-object/from16 v0, v22

    #@331
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@333
    move/from16 v22, v0

    #@335
    move-object/from16 v0, p0

    #@337
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@339
    move-object/from16 v23, v0

    #@33b
    move-object/from16 v0, v23

    #@33d
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@33f
    move-object/from16 v23, v0

    #@341
    move-object/from16 v0, v23

    #@343
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@345
    move/from16 v23, v0

    #@347
    sub-int v22, v22, v23

    #@349
    .line 1083
    move-object/from16 v0, p0

    #@34b
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@34d
    move-object/from16 v23, v0

    #@34f
    move-object/from16 v0, v23

    #@351
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@353
    move-object/from16 v23, v0

    #@355
    move-object/from16 v0, v23

    #@357
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@359
    move/from16 v23, v0

    #@35b
    move-object/from16 v0, p0

    #@35d
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@35f
    move-object/from16 v24, v0

    #@361
    move-object/from16 v0, v24

    #@363
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@365
    move-object/from16 v24, v0

    #@367
    move-object/from16 v0, v24

    #@369
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@36b
    move/from16 v24, v0

    #@36d
    sub-int v23, v23, v24

    #@36f
    .line 1082
    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Rect;->offset(II)V

    #@372
    .line 1087
    :cond_b
    if-eqz v9, :cond_c

    #@374
    .line 1088
    move-object/from16 v0, p0

    #@376
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@378
    move/from16 v21, v0

    #@37a
    invoke-virtual {v10}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    #@37d
    move-result-object v22

    #@37e
    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/Transformation;->getAlpha()F

    #@381
    move-result v22

    #@382
    mul-float v21, v21, v22

    #@384
    move/from16 v0, v21

    #@386
    move-object/from16 v1, p0

    #@388
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@38a
    .line 1103
    :cond_c
    return-void

    #@38b
    .line 947
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

    #@38c
    .local v5, "attachedTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_0

    #@38e
    .line 949
    .end local v5    # "attachedTransformation":Landroid/view/animation/Transformation;
    :cond_e
    const/4 v4, 0x0

    #@38f
    .local v4, "appTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_1

    #@391
    .line 959
    .end local v4    # "appTransformation":Landroid/view/animation/Transformation;
    .restart local v16    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v17    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_f
    move-object/from16 v0, v16

    #@393
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@395
    .local v5, "attachedTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_2

    #@397
    .line 965
    .end local v5    # "attachedTransformation":Landroid/view/animation/Transformation;
    :cond_10
    move-object/from16 v0, v17

    #@399
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@39b
    move-object/from16 v21, v0

    #@39d
    move-object/from16 v0, v21

    #@39f
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@3a1
    move-object/from16 v18, v0

    #@3a3
    goto/16 :goto_3

    #@3a5
    .line 969
    .restart local v18    # "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_11
    move-object/from16 v0, v18

    #@3a7
    iget-object v4, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@3a9
    .local v4, "appTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_4

    #@3ab
    .line 980
    .end local v4    # "appTransformation":Landroid/view/animation/Transformation;
    .end local v16    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v18    # "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .restart local v6    # "displayId":I
    .restart local v10    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_12
    const/4 v9, 0x0

    #@3ac
    .local v9, "screenAnimation":Z
    goto/16 :goto_5

    #@3ae
    .line 984
    .end local v9    # "screenAnimation":Z
    :cond_13
    if-nez v4, :cond_2

    #@3b0
    .line 983
    if-nez v9, :cond_2

    #@3b2
    .line 1104
    move-object/from16 v0, p0

    #@3b4
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    #@3b6
    move/from16 v21, v0

    #@3b8
    if-eqz v21, :cond_16

    #@3ba
    move-object/from16 v0, p0

    #@3bc
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3be
    move-object/from16 v21, v0

    #@3c0
    move-object/from16 v0, v21

    #@3c2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@3c4
    move-object/from16 v21, v0

    #@3c6
    move-object/from16 v0, v21

    #@3c8
    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperActionPending:Z

    #@3ca
    move/from16 v21, v0

    #@3cc
    if-eqz v21, :cond_16

    #@3ce
    .line 1105
    return-void

    #@3cf
    .line 1004
    .restart local v7    # "frame":Landroid/graphics/Rect;
    .restart local v8    # "h":F
    .restart local v13    # "tmpFloats":[F
    .restart local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    .restart local v15    # "w":F
    :cond_14
    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    #@3d2
    goto/16 :goto_6

    #@3d4
    .line 1007
    .end local v8    # "h":F
    .end local v15    # "w":F
    :cond_15
    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    #@3d7
    goto/16 :goto_6

    #@3d9
    .line 1106
    .end local v7    # "frame":Landroid/graphics/Rect;
    .end local v13    # "tmpFloats":[F
    .end local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_16
    move-object/from16 v0, p0

    #@3db
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3dd
    move-object/from16 v21, v0

    #@3df
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    #@3e2
    move-result v21

    #@3e3
    if-eqz v21, :cond_17

    #@3e5
    .line 1112
    return-void

    #@3e6
    .line 1119
    :cond_17
    const/4 v12, 0x0

    #@3e7
    .line 1121
    .local v12, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v0, p0

    #@3e9
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3eb
    move-object/from16 v21, v0

    #@3ed
    move-object/from16 v0, v21

    #@3ef
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@3f1
    move-object/from16 v21, v0

    #@3f3
    if-eqz v21, :cond_18

    #@3f5
    if-nez v6, :cond_18

    #@3f7
    .line 1122
    move-object/from16 v0, p0

    #@3f9
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3fb
    move-object/from16 v21, v0

    #@3fd
    move-object/from16 v0, v21

    #@3ff
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@401
    move-object/from16 v21, v0

    #@403
    move-object/from16 v0, p0

    #@405
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@407
    move-object/from16 v22, v0

    #@409
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    #@40c
    move-result-object v12

    #@40d
    .line 1124
    .end local v12    # "spec":Landroid/view/MagnificationSpec;
    :cond_18
    if-eqz v12, :cond_19

    #@40f
    .line 1125
    move-object/from16 v0, p0

    #@411
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@413
    move-object/from16 v21, v0

    #@415
    move-object/from16 v0, v21

    #@417
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@419
    .line 1126
    .restart local v7    # "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@41b
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@41d
    move-object/from16 v21, v0

    #@41f
    move-object/from16 v0, v21

    #@421
    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    #@423
    .line 1127
    .restart local v13    # "tmpFloats":[F
    move-object/from16 v0, p0

    #@425
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@427
    move-object/from16 v21, v0

    #@429
    move-object/from16 v0, v21

    #@42b
    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    #@42d
    .line 1129
    .restart local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    #@42f
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@431
    move-object/from16 v21, v0

    #@433
    move-object/from16 v0, v21

    #@435
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@437
    move/from16 v21, v0

    #@439
    move-object/from16 v0, p0

    #@43b
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@43d
    move-object/from16 v22, v0

    #@43f
    move-object/from16 v0, v22

    #@441
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@443
    move/from16 v22, v0

    #@445
    move/from16 v0, v21

    #@447
    move/from16 v1, v22

    #@449
    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    #@44c
    .line 1130
    iget v0, v7, Landroid/graphics/Rect;->left:I

    #@44e
    move/from16 v21, v0

    #@450
    move-object/from16 v0, p0

    #@452
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@454
    move-object/from16 v22, v0

    #@456
    move-object/from16 v0, v22

    #@458
    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@45a
    move/from16 v22, v0

    #@45c
    add-int v21, v21, v22

    #@45e
    move/from16 v0, v21

    #@460
    int-to-float v0, v0

    #@461
    move/from16 v21, v0

    #@463
    iget v0, v7, Landroid/graphics/Rect;->top:I

    #@465
    move/from16 v22, v0

    #@467
    move-object/from16 v0, p0

    #@469
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@46b
    move-object/from16 v23, v0

    #@46d
    move-object/from16 v0, v23

    #@46f
    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@471
    move/from16 v23, v0

    #@473
    add-int v22, v22, v23

    #@475
    move/from16 v0, v22

    #@477
    int-to-float v0, v0

    #@478
    move/from16 v22, v0

    #@47a
    move/from16 v0, v21

    #@47c
    move/from16 v1, v22

    #@47e
    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@481
    .line 1132
    move-object/from16 v0, p0

    #@483
    invoke-virtual {v0, v12, v14}, Lcom/android/server/wm/WindowStateAnimator;->applyMagnificationSpec(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    #@486
    .line 1134
    invoke-virtual {v14, v13}, Landroid/graphics/Matrix;->getValues([F)V

    #@489
    .line 1136
    const/16 v21, 0x1

    #@48b
    move/from16 v0, v21

    #@48d
    move-object/from16 v1, p0

    #@48f
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    #@491
    .line 1137
    const/16 v21, 0x0

    #@493
    aget v21, v13, v21

    #@495
    move/from16 v0, v21

    #@497
    move-object/from16 v1, p0

    #@499
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@49b
    .line 1138
    const/16 v21, 0x3

    #@49d
    aget v21, v13, v21

    #@49f
    move/from16 v0, v21

    #@4a1
    move-object/from16 v1, p0

    #@4a3
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@4a5
    .line 1139
    const/16 v21, 0x1

    #@4a7
    aget v21, v13, v21

    #@4a9
    move/from16 v0, v21

    #@4ab
    move-object/from16 v1, p0

    #@4ad
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@4af
    .line 1140
    const/16 v21, 0x4

    #@4b1
    aget v21, v13, v21

    #@4b3
    move/from16 v0, v21

    #@4b5
    move-object/from16 v1, p0

    #@4b7
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@4b9
    .line 1141
    const/16 v21, 0x2

    #@4bb
    aget v19, v13, v21

    #@4bd
    .line 1142
    .restart local v19    # "x":F
    const/16 v21, 0x5

    #@4bf
    aget v20, v13, v21

    #@4c1
    .line 1143
    .restart local v20    # "y":F
    move-object/from16 v0, p0

    #@4c3
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4c5
    move-object/from16 v21, v0

    #@4c7
    move-object/from16 v0, v21

    #@4c9
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@4cb
    move-object/from16 v21, v0

    #@4cd
    move/from16 v0, v19

    #@4cf
    float-to-int v0, v0

    #@4d0
    move/from16 v22, v0

    #@4d2
    move/from16 v0, v20

    #@4d4
    float-to-int v0, v0

    #@4d5
    move/from16 v23, v0

    #@4d7
    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Point;->set(II)V

    #@4da
    .line 1145
    move-object/from16 v0, p0

    #@4dc
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@4de
    move/from16 v21, v0

    #@4e0
    move/from16 v0, v21

    #@4e2
    move-object/from16 v1, p0

    #@4e4
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@4e6
    .line 943
    .end local v7    # "frame":Landroid/graphics/Rect;
    .end local v13    # "tmpFloats":[F
    .end local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v19    # "x":F
    .end local v20    # "y":F
    :goto_7
    return-void

    #@4e7
    .line 1147
    :cond_19
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
    move-object/from16 v0, p0

    #@4f5
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4f7
    move-object/from16 v22, v0

    #@4f9
    move-object/from16 v0, v22

    #@4fb
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@4fd
    move-object/from16 v22, v0

    #@4ff
    move-object/from16 v0, v22

    #@501
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@503
    move/from16 v22, v0

    #@505
    move-object/from16 v0, p0

    #@507
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@509
    move-object/from16 v23, v0

    #@50b
    move-object/from16 v0, v23

    #@50d
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@50f
    move-object/from16 v23, v0

    #@511
    move-object/from16 v0, v23

    #@513
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@515
    move/from16 v23, v0

    #@517
    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Point;->set(II)V

    #@51a
    .line 1148
    move-object/from16 v0, p0

    #@51c
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@51e
    move-object/from16 v21, v0

    #@520
    move-object/from16 v0, v21

    #@522
    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@524
    move/from16 v21, v0

    #@526
    if-nez v21, :cond_1a

    #@528
    move-object/from16 v0, p0

    #@52a
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@52c
    move-object/from16 v21, v0

    #@52e
    move-object/from16 v0, v21

    #@530
    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@532
    move/from16 v21, v0

    #@534
    if-eqz v21, :cond_1b

    #@536
    .line 1149
    :cond_1a
    move-object/from16 v0, p0

    #@538
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@53a
    move-object/from16 v21, v0

    #@53c
    move-object/from16 v0, v21

    #@53e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@540
    move-object/from16 v21, v0

    #@542
    move-object/from16 v0, p0

    #@544
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@546
    move-object/from16 v22, v0

    #@548
    move-object/from16 v0, v22

    #@54a
    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@54c
    move/from16 v22, v0

    #@54e
    move-object/from16 v0, p0

    #@550
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@552
    move-object/from16 v23, v0

    #@554
    move-object/from16 v0, v23

    #@556
    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@558
    move/from16 v23, v0

    #@55a
    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Point;->offset(II)V

    #@55d
    .line 1151
    :cond_1b
    move-object/from16 v0, p0

    #@55f
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@561
    move/from16 v21, v0

    #@563
    move/from16 v0, v21

    #@565
    move-object/from16 v1, p0

    #@567
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@569
    .line 1152
    const/16 v21, 0x0

    #@56b
    move/from16 v0, v21

    #@56d
    move-object/from16 v1, p0

    #@56f
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    #@571
    .line 1153
    move-object/from16 v0, p0

    #@573
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@575
    move-object/from16 v21, v0

    #@577
    move-object/from16 v0, v21

    #@579
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@57b
    move/from16 v21, v0

    #@57d
    move/from16 v0, v21

    #@57f
    move-object/from16 v1, p0

    #@581
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@583
    .line 1154
    const/16 v21, 0x0

    #@585
    move/from16 v0, v21

    #@587
    move-object/from16 v1, p0

    #@589
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@58b
    .line 1155
    const/16 v21, 0x0

    #@58d
    move/from16 v0, v21

    #@58f
    move-object/from16 v1, p0

    #@591
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@593
    .line 1156
    move-object/from16 v0, p0

    #@595
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@597
    move-object/from16 v21, v0

    #@599
    move-object/from16 v0, v21

    #@59b
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@59d
    move/from16 v21, v0

    #@59f
    move/from16 v0, v21

    #@5a1
    move-object/from16 v1, p0

    #@5a3
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@5a5
    goto/16 :goto_7
.end method

.method createSurfaceLocked()Lcom/android/server/wm/WindowSurfaceController;
    .locals 15

    #@0
    .prologue
    .line 675
    iget-object v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2
    .line 676
    .local v13, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->hasSavedSurface()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 679
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->restoreSavedSurface()V

    #@b
    .line 680
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@d
    return-object v0

    #@e
    .line 683
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 684
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@14
    return-object v0

    #@15
    .line 687
    :cond_1
    const/4 v0, 0x0

    #@16
    invoke-virtual {v13, v0}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    #@19
    .line 692
    const/4 v0, 0x1

    #@1a
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@1c
    .line 693
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 694
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@22
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@24
    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@26
    if-nez v0, :cond_5

    #@28
    .line 695
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2a
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    #@2d
    .line 703
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2f
    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    #@32
    .line 705
    const/4 v6, 0x4

    #@33
    .line 706
    .local v6, "flags":I
    iget-object v8, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@35
    .line 708
    .local v8, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@37
    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_3

    #@3d
    .line 709
    const/16 v6, 0x84

    #@3f
    .line 712
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
    .line 713
    invoke-direct {p0, v13, v8}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    #@57
    .line 714
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@59
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@5c
    move-result v3

    #@5d
    .line 715
    .local v3, "width":I
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@5f
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@62
    move-result v4

    #@63
    .line 726
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
    .line 727
    const/4 v0, 0x0

    #@6d
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@6f
    .line 728
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
    .line 729
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
    .line 734
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
    .line 735
    .local v11, "isHwAccelerated":Z
    :goto_1
    if-eqz v11, :cond_7

    #@8b
    const/4 v5, -0x3

    #@8c
    .line 736
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
    .line 739
    iget-object v0, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@96
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@98
    if-nez v0, :cond_4

    #@9a
    .line 740
    iget-object v0, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@9c
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@9e
    if-nez v0, :cond_4

    #@a0
    .line 741
    iget-object v0, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@a2
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@a4
    if-nez v0, :cond_4

    #@a6
    .line 742
    iget-object v0, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@a8
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@aa
    if-nez v0, :cond_4

    #@ac
    .line 745
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    #@af
    move-result v0

    #@b0
    if-eqz v0, :cond_8

    #@b2
    .line 749
    :cond_4
    :goto_3
    new-instance v0, Lcom/android/server/wm/WindowSurfaceController;

    #@b4
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    #@b6
    iget-object v1, v1, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@b8
    .line 750
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
    .line 749
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowSurfaceController;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;)V

    #@c4
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@c6
    .line 753
    const/4 v0, 0x1

    #@c7
    invoke-virtual {v13, v0}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@ca
    .line 787
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
    .line 788
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
    .line 789
    const/4 v0, 0x1

    #@e8
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@ea
    .line 792
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@ec
    return-object v0

    #@ed
    .line 699
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
    .line 734
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v6    # "flags":I
    .restart local v8    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    const/4 v11, 0x0

    #@f5
    goto :goto_1

    #@f6
    .line 735
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
    .line 746
    :cond_8
    or-int/lit16 v6, v6, 0x400

    #@fb
    goto :goto_3

    #@fc
    .line 769
    .end local v5    # "format":I
    .end local v11    # "isHwAccelerated":Z
    :catch_0
    move-exception v10

    #@fd
    .line 770
    .local v10, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    #@ff
    const-string/jumbo v1, "Exception creating surface"

    #@102
    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@105
    .line 771
    const/4 v0, 0x0

    #@106
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@108
    .line 772
    const/4 v0, 0x0

    #@109
    return-object v0

    #@10a
    .line 764
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    #@10b
    .line 765
    .local v9, "e":Landroid/view/Surface$OutOfResourcesException;
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    #@10d
    const-string/jumbo v1, "OutOfResourcesException creating surface"

    #@110
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@113
    .line 766
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@115
    const-string/jumbo v1, "create"

    #@118
    const/4 v2, 0x1

    #@119
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    #@11c
    .line 767
    const/4 v0, 0x0

    #@11d
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@11f
    .line 768
    const/4 v0, 0x0

    #@120
    return-object v0
.end method

.method deferTransactionUntilParentFrame(J)V
    .locals 3
    .param p1, "frameNumber"    # J

    #@0
    .prologue
    .line 2053
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 2054
    return-void

    #@9
    .line 2056
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@b
    .line 2057
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@d
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@f
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@11
    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@13
    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    #@16
    move-result-object v1

    #@17
    .line 2056
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/os/IBinder;J)V

    #@1a
    .line 2052
    return-void
.end method

.method destroyDeferredSurfaceLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 907
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 911
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@7
    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->destroyInTransaction()V

    #@a
    .line 914
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@c
    if-nez v1, :cond_0

    #@e
    .line 915
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@10
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@12
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 923
    :cond_0
    :goto_0
    const/4 v1, 0x0

    #@16
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@18
    .line 924
    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@1a
    .line 905
    return-void

    #@1b
    .line 918
    :catch_0
    move-exception v0

    #@1c
    .line 919
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
    .line 920
    const-string/jumbo v3, " surface "

    #@31
    .line 919
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 920
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@37
    .line 919
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 921
    const-string/jumbo v3, " session "

    #@3e
    .line 919
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 921
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    #@44
    .line 919
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 921
    const-string/jumbo v3, ": "

    #@4b
    .line 919
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 921
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    .line 919
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
    .line 660
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 661
    return-void

    #@5
    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    #@8
    .line 664
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@b
    .line 659
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
    .line 2030
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 2031
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@8
    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->destroyInTransaction()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 2037
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@d
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    #@10
    .line 2038
    iput-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@12
    .line 2039
    :goto_0
    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@14
    .line 2028
    return-void

    #@15
    .line 2033
    :catch_0
    move-exception v0

    #@16
    .line 2034
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
    .line 2035
    const-string/jumbo v3, " surface "

    #@2b
    .line 2034
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 2035
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@31
    .line 2034
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 2035
    const-string/jumbo v3, " session "

    #@38
    .line 2034
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 2035
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    #@3e
    .line 2034
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 2035
    const-string/jumbo v3, ": "

    #@45
    .line 2034
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
    .line 2037
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@56
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    #@59
    .line 2038
    iput-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@5b
    goto :goto_0

    #@5c
    .line 2036
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    #@5d
    .line 2037
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5f
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    #@62
    .line 2038
    iput-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@64
    .line 2039
    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@66
    .line 2036
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
    .line 841
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    .line 842
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_0

    #@8
    .line 843
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@a
    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@c
    if-ne v4, v5, :cond_0

    #@e
    .line 844
    iput-boolean v8, v3, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    #@10
    .line 848
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@12
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->clearHasSavedSurface()V

    #@15
    .line 850
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@17
    if-nez v4, :cond_1

    #@19
    .line 851
    return-void

    #@1a
    .line 854
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1c
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@1e
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    #@21
    move-result v2

    #@22
    .line 859
    .local v2, "i":I
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@24
    if-nez v4, :cond_2

    #@26
    if-lez v2, :cond_2

    #@28
    .line 860
    add-int/lit8 v2, v2, -0x1

    #@2a
    .line 861
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
    .line 862
    .local v0, "c":Lcom/android/server/wm/WindowState;
    const/4 v4, 0x1

    #@35
    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@37
    goto :goto_0

    #@38
    .line 868
    .end local v0    # "c":Lcom/android/server/wm/WindowState;
    :cond_2
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@3a
    if-eqz v4, :cond_7

    #@3c
    .line 869
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
    .line 870
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@48
    if-eqz v4, :cond_3

    #@4a
    .line 874
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@4c
    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->destroyInTransaction()V

    #@4f
    .line 876
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@51
    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@53
    .line 886
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@55
    if-nez v4, :cond_5

    #@57
    .line 887
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@59
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5b
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    .line 897
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@60
    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    #@63
    .line 898
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@65
    if-eqz v4, :cond_6

    #@67
    .line 899
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@69
    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    #@6c
    .line 901
    :cond_6
    iput-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@6e
    .line 902
    iput v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@70
    .line 840
    return-void

    #@71
    .line 882
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@74
    goto :goto_1

    #@75
    .line 889
    :catch_0
    move-exception v1

    #@76
    .line 890
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
    .line 891
    const-string/jumbo v6, " surface "

    #@8b
    .line 890
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    .line 891
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@91
    .line 890
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    .line 891
    const-string/jumbo v6, " session "

    #@98
    .line 890
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    .line 891
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    #@9e
    .line 890
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v5

    #@a2
    .line 891
    const-string/jumbo v6, ": "

    #@a5
    .line 890
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v5

    #@a9
    .line 891
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@ac
    move-result-object v6

    #@ad
    .line 890
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
    .line 214
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 220
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@7
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 215
    :pswitch_0
    const-string/jumbo v0, "NO_SURFACE"

    #@f
    return-object v0

    #@10
    .line 216
    :pswitch_1
    const-string/jumbo v0, "DRAW_PENDING"

    #@13
    return-object v0

    #@14
    .line 217
    :pswitch_2
    const-string/jumbo v0, "COMMIT_DRAW_PENDING"

    #@17
    return-object v0

    #@18
    .line 218
    :pswitch_3
    const-string/jumbo v0, "READY_TO_SHOW"

    #@1b
    return-object v0

    #@1c
    .line 219
    :pswitch_4
    const-string/jumbo v0, "HAS_DRAWN"

    #@1f
    return-object v0

    #@20
    .line 214
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
    .line 1950
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
    .line 1951
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1952
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
    .line 1953
    const-string/jumbo v0, " mLocalAnimating="

    #@23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@2b
    .line 1954
    const-string/jumbo v0, " mAnimationIsEntrance="

    #@2e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@36
    .line 1955
    const-string/jumbo v0, " mAnimation="

    #@39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@3e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@41
    .line 1956
    const-string/jumbo v0, " mStackClip="

    #@44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    #@49
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@4c
    .line 1958
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@4e
    if-nez v0, :cond_2

    #@50
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@52
    if-eqz v0, :cond_3

    #@54
    .line 1959
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    const-string/jumbo v0, "XForm: has="

    #@5a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d
    .line 1960
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@5f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@62
    .line 1961
    const-string/jumbo v0, " hasLocal="

    #@65
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@6a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@6d
    .line 1962
    const-string/jumbo v0, " "

    #@70
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@73
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@75
    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@78
    .line 1963
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@7b
    .line 1965
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@7d
    if-eqz v0, :cond_4

    #@7f
    .line 1966
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@81
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    #@84
    .line 1968
    :cond_4
    if-eqz p3, :cond_6

    #@86
    .line 1969
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
    .line 1970
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
    .line 1971
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
    .line 1972
    const-string/jumbo v0, " last="

    #@b5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b8
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastSystemDecorRect:Landroid/graphics/Rect;

    #@ba
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@bd
    .line 1973
    const-string/jumbo v0, " mHasClipRect="

    #@c0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@c5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@c8
    .line 1974
    const-string/jumbo v0, " mLastClipRect="

    #@cb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ce
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    #@d0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@d3
    .line 1976
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    #@d5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    #@d8
    move-result v0

    #@d9
    if-nez v0, :cond_5

    #@db
    .line 1977
    const-string/jumbo v0, " mLastFinalClipRect="

    #@de
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    #@e3
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@e6
    .line 1979
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@e9
    .line 1982
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@eb
    if-eqz v0, :cond_7

    #@ed
    .line 1983
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f0
    const-string/jumbo v0, "mPendingDestroySurface="

    #@f3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    .line 1984
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@f8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@fb
    .line 1986
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    #@fd
    if-nez v0, :cond_8

    #@ff
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@101
    if-eqz v0, :cond_9

    #@103
    .line 1987
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
    .line 1988
    const-string/jumbo v0, " mSurfaceDestroyDeferred="

    #@114
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@117
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@119
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@11c
    .line 1990
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
    .line 1991
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
    .line 1992
    const-string/jumbo v0, " mAlpha="

    #@139
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13c
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@13e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@141
    .line 1993
    const-string/jumbo v0, " mLastAlpha="

    #@144
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@147
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@149
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    #@14c
    .line 1995
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
    .line 1996
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
    .line 1997
    const-string/jumbo v0, " mDsDx="

    #@16b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16e
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@170
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@173
    .line 1998
    const-string/jumbo v0, " mDtDx="

    #@176
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@179
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@17b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@17e
    .line 1999
    const-string/jumbo v0, " mDsDy="

    #@181
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@186
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@189
    .line 2000
    const-string/jumbo v0, " mDtDy="

    #@18c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18f
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@191
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    #@194
    .line 2002
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    #@196
    if-eqz v0, :cond_e

    #@198
    .line 2003
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
    .line 1949
    :cond_e
    return-void

    #@1a7
    .line 1990
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
    .line 2079
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    #@3
    .line 2078
    return-void
.end method

.method finishDrawingLocked()Z
    .locals 3

    #@0
    .prologue
    .line 592
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
    .line 598
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearAnimatingWithSavedSurface()Z

    #@e
    move-result v0

    #@f
    .line 600
    .local v0, "layoutNeeded":Z
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@11
    const/4 v2, 0x1

    #@12
    if-ne v1, v2, :cond_1

    #@14
    .line 607
    const/4 v1, 0x2

    #@15
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@17
    .line 608
    const/4 v0, 0x1

    #@18
    .line 611
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
    .line 513
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
    .line 515
    new-instance v0, Lcom/android/server/wm/WindowList;

    #@d
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@f
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@11
    invoke-direct {v0, v4}, Lcom/android/server/wm/WindowList;-><init>(Lcom/android/server/wm/WindowList;)V

    #@14
    .line 516
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
    .line 517
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
    .line 516
    add-int/lit8 v3, v3, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 521
    .end local v0    # "childWindows":Lcom/android/server/wm/WindowList;
    .end local v3    # "i":I
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    #@2c
    if-eqz v4, :cond_1

    #@2e
    .line 522
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    #@30
    .line 523
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@32
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    #@35
    .line 526
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@37
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@39
    if-nez v4, :cond_1

    #@3b
    .line 528
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3d
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@3f
    invoke-interface {v4}, Landroid/view/IWindow;->dispatchWindowShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 534
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimationSet()Z

    #@45
    move-result v4

    #@46
    if-nez v4, :cond_2

    #@48
    .line 536
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4a
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@4c
    if-eqz v4, :cond_2

    #@4e
    .line 537
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@50
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@53
    move-result v4

    #@54
    if-nez v4, :cond_2

    #@56
    .line 538
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@58
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@5a
    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    #@5d
    .line 542
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5f
    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@61
    if-nez v4, :cond_3

    #@63
    .line 543
    return-void

    #@64
    .line 546
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimationSet()Z

    #@67
    move-result v4

    #@68
    if-eqz v4, :cond_4

    #@6a
    .line 547
    return-void

    #@6b
    .line 554
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@6d
    const/4 v5, 0x1

    #@6e
    iput-boolean v5, v4, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@70
    .line 556
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    #@73
    move-result v2

    #@74
    .line 557
    .local v2, "hasSurface":Z
    if-eqz v2, :cond_5

    #@76
    .line 558
    const-string/jumbo v4, "finishExit"

    #@79
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    #@7c
    .line 565
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@7e
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@80
    if-eqz v4, :cond_7

    #@82
    .line 566
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@84
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@86
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    #@89
    .line 576
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@8b
    iput-boolean v6, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@8d
    .line 577
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@8f
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@91
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    #@94
    .line 506
    return-void

    #@95
    .line 568
    :cond_7
    if-eqz v2, :cond_8

    #@97
    .line 569
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@99
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    #@9b
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@9d
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a0
    .line 571
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@a2
    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@a4
    if-eqz v4, :cond_6

    #@a6
    .line 572
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a8
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    #@aa
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@ac
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@af
    .line 573
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@b1
    iput-boolean v6, v4, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@b3
    goto :goto_2

    #@b4
    .line 529
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
    .line 2022
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2023
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 2025
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method hasSurface()Z
    .locals 1

    #@0
    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasSavedSurface()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 837
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
    .line 836
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
    .line 581
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 583
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@7
    .line 584
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 585
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->hideInTransaction(Ljava/lang/String;)V

    #@10
    .line 580
    :cond_0
    return-void
.end method

.method isAnimationSet()Z
    .locals 1

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 311
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
    .line 310
    :cond_0
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    .line 312
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
    .line 320
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
    .line 325
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 326
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
    .line 325
    :cond_0
    return v0
.end method

.method isWaitingForOpening()Z
    .locals 2

    #@0
    .prologue
    .line 340
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
    .line 341
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
    .line 340
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
    .line 333
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
    .line 668
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 669
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
    .line 667
    :cond_0
    :goto_0
    return-void

    #@11
    .line 670
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
    .line 1717
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 1719
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@d
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    #@10
    .line 1720
    return v4

    #@11
    .line 1739
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
    .line 1754
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1f
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    #@22
    .line 1756
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    #@25
    .line 1759
    const/high16 v3, -0x40800000    # -1.0f

    #@27
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@29
    .line 1762
    const/4 v3, 0x4

    #@2a
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@2c
    .line 1763
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2e
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@31
    .line 1765
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@33
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@35
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@38
    move-result v2

    #@39
    .line 1766
    .local v2, "i":I
    :cond_1
    :goto_0
    if-lez v2, :cond_2

    #@3b
    .line 1767
    add-int/lit8 v2, v2, -0x1

    #@3d
    .line 1768
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
    .line 1769
    .local v0, "c":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@49
    if-eqz v3, :cond_1

    #@4b
    .line 1770
    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@4d
    .line 1771
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4f
    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@51
    if-eqz v3, :cond_1

    #@53
    .line 1772
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@55
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    #@58
    .line 1778
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@5b
    move-result-object v1

    #@5c
    .line 1779
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1

    #@5e
    .line 1780
    iput-boolean v5, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@60
    goto :goto_0

    #@61
    .line 1786
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
    .line 1787
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@71
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@73
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@75
    invoke-virtual {v3, v4, p0}, Lcom/android/server/wm/AppWindowToken;->onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V

    #@78
    .line 1790
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
    .line 1791
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@84
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@86
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    #@88
    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->resetImeHideRequested()V

    #@8b
    .line 1794
    :cond_4
    return v5

    #@8c
    .line 1796
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
    .line 1527
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4
    .line 1528
    .local v10, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 1529
    iget-boolean v0, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1533
    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@10
    .line 1535
    :cond_0
    return-void

    #@11
    .line 1545
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWaitingForOpening()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 1546
    return-void

    #@18
    .line 1549
    :cond_2
    const/4 v8, 0x0

    #@19
    .line 1551
    .local v8, "displayed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    #@1c
    .line 1553
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    #@1f
    .line 1555
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
    .line 1558
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
    .line 1573
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    #@35
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@37
    if-ne v0, v1, :cond_4

    #@39
    .line 1574
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@3b
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@3d
    cmpl-float v0, v0, v1

    #@3f
    if-eqz v0, :cond_c

    #@41
    .line 1582
    :cond_4
    const/4 v8, 0x1

    #@42
    .line 1583
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@44
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@46
    .line 1584
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@48
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    #@4a
    .line 1585
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@4c
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    #@4e
    .line 1586
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@50
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    #@52
    .line 1587
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@54
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    #@56
    .line 1588
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@58
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    #@5a
    .line 1589
    iget v0, v10, Lcom/android/server/wm/WindowState;->mHScale:F

    #@5c
    iput v0, v10, Lcom/android/server/wm/WindowState;->mLastHScale:F

    #@5e
    .line 1590
    iget v0, v10, Lcom/android/server/wm/WindowState;->mVScale:F

    #@60
    iput v0, v10, Lcom/android/server/wm/WindowState;->mLastVScale:F

    #@62
    .line 1600
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@64
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@66
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@68
    .line 1601
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
    .line 1602
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
    .line 1603
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
    .line 1604
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
    .line 1600
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowSurfaceController;->prepareToShowInTransaction(FIFFFFZ)Z

    #@8c
    move-result v9

    #@8d
    .line 1607
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
    .line 1608
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked()Z

    #@9b
    move-result v0

    #@9c
    if-eqz v0, :cond_d

    #@9e
    .line 1609
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    #@a1
    .line 1610
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@a3
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowAnimator;->requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V

    #@a6
    .line 1611
    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@a8
    .line 1612
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    #@aa
    if-eqz v0, :cond_5

    #@ac
    .line 1613
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@ae
    invoke-virtual {v0, v10, v12}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    #@b1
    .line 1618
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@b3
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@b6
    move-result v1

    #@b7
    .line 1619
    const/16 v2, 0x8

    #@b9
    .line 1618
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@bc
    .line 1624
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    #@bf
    move-result v0

    #@c0
    if-eqz v0, :cond_7

    #@c2
    .line 1625
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@c4
    iput-boolean v12, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    #@c6
    .line 1634
    .end local v9    # "prepared":Z
    :cond_7
    :goto_1
    if-eqz v8, :cond_9

    #@c8
    .line 1635
    iget-boolean v0, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@ca
    if-eqz v0, :cond_8

    #@cc
    .line 1636
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@cf
    move-result v0

    #@d0
    if-nez v0, :cond_e

    #@d2
    .line 1637
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@d4
    iget v1, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@d6
    and-int/lit8 v1, v1, -0x9

    #@d8
    iput v1, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@da
    .line 1638
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@dc
    iput-object v10, v0, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    #@de
    .line 1646
    :cond_8
    :goto_2
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@e0
    iput-boolean v12, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    #@e2
    .line 1526
    :cond_9
    return-void

    #@e3
    .line 1557
    :cond_a
    const-string/jumbo v0, "prepareSurfaceLocked"

    #@e6
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    #@e9
    goto :goto_1

    #@ea
    .line 1559
    :cond_b
    const-string/jumbo v0, "prepareSurfaceLocked"

    #@ed
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    #@f0
    .line 1560
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@f2
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    #@f5
    .line 1568
    iget-boolean v0, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@f7
    if-eqz v0, :cond_7

    #@f9
    .line 1569
    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@fb
    goto :goto_1

    #@fc
    .line 1575
    :cond_c
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    #@fe
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@100
    cmpl-float v0, v0, v1

    #@102
    if-nez v0, :cond_4

    #@104
    .line 1576
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    #@106
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@108
    cmpl-float v0, v0, v1

    #@10a
    if-nez v0, :cond_4

    #@10c
    .line 1577
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    #@10e
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@110
    cmpl-float v0, v0, v1

    #@112
    if-nez v0, :cond_4

    #@114
    .line 1578
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    #@116
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@118
    cmpl-float v0, v0, v1

    #@11a
    if-nez v0, :cond_4

    #@11c
    .line 1579
    iget v0, v10, Lcom/android/server/wm/WindowState;->mLastHScale:F

    #@11e
    iget v1, v10, Lcom/android/server/wm/WindowState;->mHScale:F

    #@120
    cmpl-float v0, v0, v1

    #@122
    if-nez v0, :cond_4

    #@124
    .line 1580
    iget v0, v10, Lcom/android/server/wm/WindowState;->mLastVScale:F

    #@126
    iget v1, v10, Lcom/android/server/wm/WindowState;->mVScale:F

    #@128
    cmpl-float v0, v0, v1

    #@12a
    if-nez v0, :cond_4

    #@12c
    .line 1581
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@12e
    .line 1573
    if-nez v0, :cond_4

    #@130
    .line 1631
    const/4 v8, 0x1

    #@131
    goto :goto_1

    #@132
    .line 1621
    .restart local v9    # "prepared":Z
    :cond_d
    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@134
    goto :goto_0

    #@135
    .line 1642
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
    .line 637
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 645
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@8
    .line 646
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    #@b
    .line 647
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@d
    .line 648
    return-void

    #@e
    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 652
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@14
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setLayer(I)V

    #@1b
    .line 654
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@1d
    .line 655
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@1f
    .line 656
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    #@22
    .line 636
    return-void
.end method

.method reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "secure"    # Z

    #@0
    .prologue
    .line 2018
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    #@5
    .line 2017
    return-void
.end method

.method seamlesslyRotateWindow(II)V
    .locals 28
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I

    #@0
    .prologue
    .line 2083
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4
    move-object/from16 v24, v0

    #@6
    .line 2084
    .local v24, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    move-object/from16 v0, v24

    #@e
    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 2085
    :cond_0
    return-void

    #@13
    .line 2088
    :cond_1
    move-object/from16 v0, p0

    #@15
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@17
    iget-object v14, v4, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    #@19
    .line 2089
    .local v14, "cropRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@1b
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1d
    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mTmpRect2:Landroid/graphics/Rect;

    #@1f
    move-object/from16 v17, v0

    #@21
    .line 2090
    .local v17, "displayRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@23
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@25
    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mTmpRectF:Landroid/graphics/RectF;

    #@27
    move-object/from16 v19, v0

    #@29
    .line 2091
    .local v19, "frameRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    #@2b
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2d
    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mTmpTransform:Landroid/graphics/Matrix;

    #@2f
    move-object/from16 v23, v0

    #@31
    .line 2093
    .local v23, "transform":Landroid/graphics/Matrix;
    move-object/from16 v0, v24

    #@33
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@35
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@37
    int-to-float v0, v4

    #@38
    move/from16 v26, v0

    #@3a
    .line 2094
    .local v26, "x":F
    move-object/from16 v0, v24

    #@3c
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@3e
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@40
    int-to-float v0, v4

    #@41
    move/from16 v27, v0

    #@43
    .line 2095
    .local v27, "y":F
    move-object/from16 v0, v24

    #@45
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@47
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@4a
    move-result v4

    #@4b
    int-to-float v0, v4

    #@4c
    move/from16 v25, v0

    #@4e
    .line 2096
    .local v25, "width":F
    move-object/from16 v0, v24

    #@50
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@52
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    #@55
    move-result v4

    #@56
    int-to-float v0, v4

    #@57
    move/from16 v20, v0

    #@59
    .line 2098
    .local v20, "height":F
    move-object/from16 v0, p0

    #@5b
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5d
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@60
    move-result-object v4

    #@61
    move-object/from16 v0, v17

    #@63
    invoke-virtual {v4, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@66
    .line 2099
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    #@69
    move-result v4

    #@6a
    int-to-float v0, v4

    #@6b
    move/from16 v18, v0

    #@6d
    .line 2100
    .local v18, "displayWidth":F
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    #@70
    move-result v4

    #@71
    int-to-float v0, v4

    #@72
    move/from16 v16, v0

    #@74
    .line 2104
    .local v16, "displayHeight":F
    move/from16 v0, p2

    #@76
    move/from16 v1, p1

    #@78
    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    #@7b
    move-result v15

    #@7c
    .line 2105
    .local v15, "deltaRotation":I
    packed-switch v15, :pswitch_data_0

    #@7f
    .line 2138
    :goto_0
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@82
    move-result v4

    #@83
    if-eqz v4, :cond_2

    #@85
    move-object/from16 v0, p0

    #@87
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@89
    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->getTransformToDisplayInverse()Z

    #@8c
    move-result v4

    #@8d
    if-eqz v4, :cond_2

    #@8f
    .line 2139
    add-float v4, v26, v25

    #@91
    add-float v5, v27, v20

    #@93
    move-object/from16 v0, v19

    #@95
    move/from16 v1, v26

    #@97
    move/from16 v2, v27

    #@99
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    #@9c
    .line 2140
    move-object/from16 v0, v23

    #@9e
    move-object/from16 v1, v19

    #@a0
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@a3
    .line 2142
    move-object/from16 v0, v24

    #@a5
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@a7
    move-object/from16 v0, v19

    #@a9
    iget v5, v0, Landroid/graphics/RectF;->left:F

    #@ab
    float-to-int v5, v5

    #@ac
    move-object/from16 v0, v24

    #@ae
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@b0
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@b2
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@b4
    sub-int/2addr v5, v6

    #@b5
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    #@b7
    .line 2143
    move-object/from16 v0, v24

    #@b9
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@bb
    move-object/from16 v0, v19

    #@bd
    iget v5, v0, Landroid/graphics/RectF;->top:F

    #@bf
    float-to-int v5, v5

    #@c0
    move-object/from16 v0, v24

    #@c2
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@c4
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@c6
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@c8
    sub-int/2addr v5, v6

    #@c9
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    #@cb
    .line 2144
    move-object/from16 v0, v24

    #@cd
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@cf
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    #@d2
    move-result v5

    #@d3
    float-to-double v6, v5

    #@d4
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    #@d7
    move-result-wide v6

    #@d8
    double-to-int v5, v6

    #@d9
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    #@db
    .line 2145
    move-object/from16 v0, v24

    #@dd
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@df
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    #@e2
    move-result v5

    #@e3
    float-to-double v6, v5

    #@e4
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    #@e7
    move-result-wide v6

    #@e8
    double-to-int v5, v6

    #@e9
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    #@eb
    .line 2147
    move-object/from16 v0, v24

    #@ed
    iget v4, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@ef
    move-object/from16 v0, v24

    #@f1
    iget v5, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@f3
    move-object/from16 v0, v24

    #@f5
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowState;->setWindowScale(II)V

    #@f8
    .line 2149
    move-object/from16 v0, v24

    #@fa
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@fc
    move-object/from16 v0, v24

    #@fe
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@100
    move-object/from16 v0, v24

    #@102
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowState;->applyGravityAndUpdateFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@105
    .line 2150
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    #@108
    .line 2151
    const/4 v4, 0x0

    #@109
    move-object/from16 v0, p0

    #@10b
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    #@10e
    .line 2156
    move-object/from16 v0, v24

    #@110
    iget v4, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@112
    move-object/from16 v0, v24

    #@114
    iget v5, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@116
    move-object/from16 v0, v24

    #@118
    iget v6, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@11a
    add-int/2addr v5, v6

    #@11b
    const/4 v6, 0x0

    #@11c
    const/4 v7, 0x0

    #@11d
    invoke-virtual {v14, v6, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    #@120
    .line 2157
    move-object/from16 v0, p0

    #@122
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@124
    const/4 v5, 0x0

    #@125
    invoke-virtual {v4, v14, v5}, Lcom/android/server/wm/WindowSurfaceController;->setCropInTransaction(Landroid/graphics/Rect;Z)V

    #@128
    .line 2082
    :goto_1
    return-void

    #@129
    .line 2107
    :pswitch_0
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Matrix;->reset()V

    #@12c
    goto/16 :goto_0

    #@12e
    .line 2110
    :pswitch_1
    const/high16 v4, 0x43870000    # 270.0f

    #@130
    const/4 v5, 0x0

    #@131
    const/4 v6, 0x0

    #@132
    move-object/from16 v0, v23

    #@134
    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    #@137
    .line 2111
    const/4 v4, 0x0

    #@138
    move-object/from16 v0, v23

    #@13a
    move/from16 v1, v16

    #@13c
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@13f
    .line 2112
    const/4 v4, 0x0

    #@140
    move-object/from16 v0, v23

    #@142
    move/from16 v1, v27

    #@144
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@147
    goto/16 :goto_0

    #@149
    .line 2115
    :pswitch_2
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Matrix;->reset()V

    #@14c
    goto/16 :goto_0

    #@14e
    .line 2118
    :pswitch_3
    const/high16 v4, 0x42b40000    # 90.0f

    #@150
    const/4 v5, 0x0

    #@151
    const/4 v6, 0x0

    #@152
    move-object/from16 v0, v23

    #@154
    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    #@157
    .line 2119
    const/4 v4, 0x0

    #@158
    move-object/from16 v0, v23

    #@15a
    move/from16 v1, v18

    #@15c
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@15f
    .line 2120
    move/from16 v0, v27

    #@161
    neg-float v4, v0

    #@162
    move-object/from16 v0, v23

    #@164
    move/from16 v1, v26

    #@166
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@169
    goto/16 :goto_0

    #@16b
    .line 2159
    :cond_2
    move-object/from16 v0, p0

    #@16d
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@16f
    const/4 v5, 0x1

    #@170
    move-object/from16 v0, v24

    #@172
    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    #@175
    .line 2160
    move-object/from16 v0, p0

    #@177
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@179
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    #@17b
    move-object/from16 v0, v23

    #@17d
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->getValues([F)V

    #@180
    .line 2162
    move-object/from16 v0, p0

    #@182
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@184
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    #@186
    const/4 v5, 0x0

    #@187
    aget v10, v4, v5

    #@189
    .line 2163
    .local v10, "DsDx":F
    move-object/from16 v0, p0

    #@18b
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@18d
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    #@18f
    const/4 v5, 0x3

    #@190
    aget v12, v4, v5

    #@192
    .line 2164
    .local v12, "DtDx":F
    move-object/from16 v0, p0

    #@194
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@196
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    #@198
    const/4 v5, 0x1

    #@199
    aget v11, v4, v5

    #@19b
    .line 2165
    .local v11, "DsDy":F
    move-object/from16 v0, p0

    #@19d
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@19f
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    #@1a1
    const/4 v5, 0x4

    #@1a2
    aget v13, v4, v5

    #@1a4
    .line 2166
    .local v13, "DtDy":F
    move-object/from16 v0, p0

    #@1a6
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1a8
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    #@1aa
    const/4 v5, 0x2

    #@1ab
    aget v21, v4, v5

    #@1ad
    .line 2167
    .local v21, "nx":F
    move-object/from16 v0, p0

    #@1af
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1b1
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    #@1b3
    const/4 v5, 0x5

    #@1b4
    aget v22, v4, v5

    #@1b6
    .line 2168
    .local v22, "ny":F
    move-object/from16 v0, p0

    #@1b8
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@1ba
    const/4 v5, 0x0

    #@1bb
    move/from16 v0, v21

    #@1bd
    move/from16 v1, v22

    #@1bf
    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    #@1c2
    .line 2169
    move-object/from16 v0, p0

    #@1c4
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@1c6
    move-object/from16 v0, v24

    #@1c8
    iget v5, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@1ca
    mul-float/2addr v5, v10

    #@1cb
    .line 2170
    move-object/from16 v0, v24

    #@1cd
    iget v6, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@1cf
    mul-float/2addr v6, v12

    #@1d0
    .line 2171
    move-object/from16 v0, v24

    #@1d2
    iget v7, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@1d4
    mul-float/2addr v7, v11

    #@1d5
    .line 2172
    move-object/from16 v0, v24

    #@1d7
    iget v8, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@1d9
    mul-float/2addr v8, v13

    #@1da
    const/4 v9, 0x0

    #@1db
    .line 2169
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixInTransaction(FFFFZ)V

    #@1de
    goto/16 :goto_1

    #@1e0
    .line 2105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "anim"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 291
    const-wide/16 v0, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;JI)V

    #@6
    .line 290
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;I)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .param p2, "stackClip"    # I

    #@0
    .prologue
    .line 287
    const-wide/16 v0, -0x1

    #@2
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;JI)V

    #@5
    .line 286
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
    .line 273
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@4
    .line 274
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@6
    .line 275
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@8
    .line 276
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@a
    const-wide/16 v4, 0x2710

    #@c
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->restrictDuration(J)V

    #@f
    .line 277
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
    .line 279
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@1c
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    #@1f
    .line 280
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
    .line 281
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@2b
    .line 282
    iput-wide p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    #@2d
    .line 283
    iput p4, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    #@2f
    .line 271
    return-void

    #@30
    :cond_0
    move v0, v1

    #@31
    .line 280
    goto :goto_0
.end method

.method setMoveAnimation(II)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I

    #@0
    .prologue
    .line 2044
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    #@2
    .line 2045
    const v2, 0x10a00b1

    #@5
    .line 2044
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@8
    move-result-object v0

    #@9
    .line 2046
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    #@c
    .line 2047
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
    .line 2048
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
    .line 2049
    const/4 v1, 0x1

    #@1f
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    #@21
    .line 2043
    return-void
.end method

.method setOpaqueLocked(Z)V
    .locals 1
    .param p1, "isOpaque"    # Z

    #@0
    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1703
    return-void

    #@5
    .line 1705
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setOpaque(Z)V

    #@a
    .line 1701
    return-void
.end method

.method setSecureLocked(Z)V
    .locals 1
    .param p1, "isSecure"    # Z

    #@0
    .prologue
    .line 1709
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1710
    return-void

    #@5
    .line 1712
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V

    #@a
    .line 1708
    return-void
.end method

.method setSurfaceBoundariesLocked(Z)V
    .locals 19
    .param p1, "recoveringMemory"    # Z

    #@0
    .prologue
    .line 1400
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4
    move-object/from16 v16, v0

    #@6
    .line 1401
    .local v16, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@9
    move-result-object v14

    #@a
    .line 1404
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
    if-eqz v2, :cond_d

    #@16
    .line 1408
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
    .line 1409
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
    .line 1411
    const/high16 v2, 0x3f800000    # 1.0f

    #@38
    move-object/from16 v0, p0

    #@3a
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@3c
    .line 1412
    const/high16 v2, 0x3f800000    # 1.0f

    #@3e
    move-object/from16 v0, p0

    #@40
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@42
    .line 1414
    move-object/from16 v0, p0

    #@44
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    #@46
    move/from16 v17, v0

    #@48
    .line 1415
    .local v17, "wasForceScaled":Z
    move-object/from16 v0, v16

    #@4a
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    #@4c
    move/from16 v18, v0

    #@4e
    .line 1424
    .local v18, "wasSeamlesslyRotated":Z
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
    if-eqz v2, :cond_e

    #@5a
    .line 1425
    :cond_1
    move-object/from16 v0, p0

    #@5c
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@5e
    .line 1426
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
    .line 1425
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
    .line 1430
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
    if-eqz v2, :cond_f

    #@84
    :cond_2
    const/4 v2, 0x0

    #@85
    :goto_1
    move-object/from16 v0, p0

    #@87
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    #@89
    .line 1434
    move-object/from16 v0, p0

    #@8b
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8d
    move-object/from16 v0, v16

    #@8f
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    #@91
    if-eqz v2, :cond_3

    #@93
    move-object/from16 v0, p0

    #@95
    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    #@97
    if-eqz v2, :cond_10

    #@99
    :cond_3
    const/4 v2, 0x0

    #@9a
    :goto_2
    move-object/from16 v0, v16

    #@9c
    invoke-virtual {v3, v0, v2}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    #@9f
    .line 1436
    move-object/from16 v0, p0

    #@a1
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@a3
    move-object/from16 v0, p0

    #@a5
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    #@a7
    move-object/from16 v0, p0

    #@a9
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceWindowCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@ac
    .line 1438
    move-object/from16 v0, p0

    #@ae
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@b0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getWidth()F

    #@b3
    move-result v13

    #@b4
    .line 1439
    .local v13, "surfaceWidth":F
    move-object/from16 v0, p0

    #@b6
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@b8
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getHeight()F

    #@bb
    move-result v12

    #@bc
    .line 1441
    .local v12, "surfaceHeight":F
    if-eqz v14, :cond_4

    #@be
    iget-object v2, v14, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@c0
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getForceScaleToCrop()Z

    #@c3
    move-result v2

    #@c4
    if-nez v2, :cond_5

    #@c6
    :cond_4
    move-object/from16 v0, p0

    #@c8
    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    #@ca
    if-eqz v2, :cond_11

    #@cc
    .line 1442
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@cf
    move-result-object v2

    #@d0
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@d2
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@d4
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@d7
    move-result-object v3

    #@d8
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@da
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@dc
    add-int v9, v2, v3

    #@de
    .line 1443
    .local v9, "hInsets":I
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@e1
    move-result-object v2

    #@e2
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@e4
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@e6
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@e9
    move-result-object v3

    #@ea
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@ec
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@ee
    add-int v15, v2, v3

    #@f0
    .line 1444
    .local v15, "vInsets":I
    move-object/from16 v0, p0

    #@f2
    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    #@f4
    if-nez v2, :cond_6

    #@f6
    .line 1445
    move-object/from16 v0, p0

    #@f8
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@fa
    const/4 v3, 0x1

    #@fb
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    #@fe
    .line 1449
    :cond_6
    move-object/from16 v0, p0

    #@100
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@102
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@105
    move-result v2

    #@106
    sub-int/2addr v2, v9

    #@107
    int-to-float v2, v2

    #@108
    int-to-float v3, v9

    #@109
    sub-float v3, v13, v3

    #@10b
    div-float/2addr v2, v3

    #@10c
    move-object/from16 v0, p0

    #@10e
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@110
    .line 1450
    move-object/from16 v0, p0

    #@112
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@114
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@117
    move-result v2

    #@118
    sub-int/2addr v2, v15

    #@119
    int-to-float v2, v2

    #@11a
    int-to-float v3, v15

    #@11b
    sub-float v3, v12, v3

    #@11d
    div-float/2addr v2, v3

    #@11e
    move-object/from16 v0, p0

    #@120
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@122
    .line 1455
    move-object/from16 v0, p0

    #@124
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@126
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@128
    int-to-float v2, v2

    #@129
    move-object/from16 v0, v16

    #@12b
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@12d
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    #@12f
    int-to-float v3, v3

    #@130
    move-object/from16 v0, p0

    #@132
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@134
    const/high16 v5, 0x3f800000    # 1.0f

    #@136
    sub-float v4, v5, v4

    #@138
    mul-float/2addr v3, v4

    #@139
    sub-float/2addr v2, v3

    #@13a
    float-to-int v10, v2

    #@13b
    .line 1456
    .local v10, "posX":I
    move-object/from16 v0, p0

    #@13d
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@13f
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@141
    int-to-float v2, v2

    #@142
    move-object/from16 v0, v16

    #@144
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@146
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    #@148
    int-to-float v3, v3

    #@149
    move-object/from16 v0, p0

    #@14b
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@14d
    const/high16 v5, 0x3f800000    # 1.0f

    #@14f
    sub-float v4, v5, v4

    #@151
    mul-float/2addr v3, v4

    #@152
    sub-float/2addr v2, v3

    #@153
    float-to-int v11, v2

    #@154
    .line 1464
    .local v11, "posY":I
    int-to-float v2, v10

    #@155
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@158
    move-result-object v3

    #@159
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@15b
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@15d
    int-to-float v3, v3

    #@15e
    move-object/from16 v0, p0

    #@160
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@162
    const/high16 v5, 0x3f800000    # 1.0f

    #@164
    sub-float v4, v5, v4

    #@166
    mul-float/2addr v3, v4

    #@167
    add-float/2addr v2, v3

    #@168
    float-to-int v10, v2

    #@169
    .line 1465
    int-to-float v2, v11

    #@16a
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@16d
    move-result-object v3

    #@16e
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@170
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@172
    int-to-float v3, v3

    #@173
    move-object/from16 v0, p0

    #@175
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@177
    const/high16 v5, 0x3f800000    # 1.0f

    #@179
    sub-float v4, v5, v4

    #@17b
    mul-float/2addr v3, v4

    #@17c
    add-float/2addr v2, v3

    #@17d
    float-to-int v11, v2

    #@17e
    .line 1467
    move-object/from16 v0, p0

    #@180
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@182
    int-to-double v4, v10

    #@183
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    #@186
    move-result-wide v4

    #@187
    double-to-float v3, v4

    #@188
    .line 1468
    int-to-double v4, v11

    #@189
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    #@18c
    move-result-wide v4

    #@18d
    double-to-float v4, v4

    #@18e
    .line 1467
    move/from16 v0, p1

    #@190
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    #@193
    .line 1473
    move-object/from16 v0, p0

    #@195
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@197
    float-to-int v3, v13

    #@198
    float-to-int v4, v12

    #@199
    const/4 v5, 0x0

    #@19a
    const/4 v6, 0x0

    #@19b
    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@19e
    .line 1474
    move-object/from16 v0, p0

    #@1a0
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    #@1a2
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    #@1a5
    .line 1482
    const/4 v2, 0x1

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    #@1aa
    .line 1495
    .end local v9    # "hInsets":I
    .end local v10    # "posX":I
    .end local v11    # "posY":I
    .end local v15    # "vInsets":I
    :cond_7
    :goto_3
    if-eqz v17, :cond_8

    #@1ac
    move-object/from16 v0, p0

    #@1ae
    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    #@1b0
    if-eqz v2, :cond_12

    #@1b2
    .line 1496
    :cond_8
    if-eqz v18, :cond_9

    #@1b4
    move-object/from16 v0, v16

    #@1b6
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    #@1b8
    if-eqz v2, :cond_12

    #@1ba
    .line 1501
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    #@1bc
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@1be
    .line 1502
    .local v8, "clipRect":Landroid/graphics/Rect;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->inPinnedWorkspace()Z

    #@1c1
    move-result v2

    #@1c2
    if-eqz v2, :cond_a

    #@1c4
    .line 1503
    const/4 v8, 0x0

    #@1c5
    .line 1504
    .local v8, "clipRect":Landroid/graphics/Rect;
    iget-object v2, v14, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    #@1cb
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@1ce
    .line 1505
    move-object/from16 v0, p0

    #@1d0
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    #@1d2
    move-object/from16 v0, v16

    #@1d4
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1d6
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1d8
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@1da
    neg-int v3, v3

    #@1db
    move-object/from16 v0, v16

    #@1dd
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1df
    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1e1
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@1e3
    neg-int v4, v4

    #@1e4
    .line 1506
    move-object/from16 v0, v16

    #@1e6
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1e8
    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1ea
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@1ec
    neg-int v5, v5

    #@1ed
    move-object/from16 v0, v16

    #@1ef
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1f1
    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1f3
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@1f5
    neg-int v6, v6

    #@1f6
    .line 1505
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->inset(IIII)V

    #@1f9
    .line 1509
    .end local v8    # "clipRect":Landroid/graphics/Rect;
    :cond_a
    move-object/from16 v0, v16

    #@1fb
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    #@1fd
    if-nez v2, :cond_b

    #@1ff
    .line 1510
    move-object/from16 v0, p0

    #@201
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    #@203
    move-object/from16 v0, p0

    #@205
    move/from16 v1, p1

    #@207
    invoke-virtual {v0, v8, v2, v1}, Lcom/android/server/wm/WindowStateAnimator;->updateSurfaceWindowCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    #@20a
    .line 1511
    move-object/from16 v0, p0

    #@20c
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@20e
    move-object/from16 v0, p0

    #@210
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@212
    move-object/from16 v0, v16

    #@214
    iget v4, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@216
    mul-float/2addr v3, v4

    #@217
    move-object/from16 v0, p0

    #@219
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@21b
    mul-float/2addr v3, v4

    #@21c
    .line 1512
    move-object/from16 v0, p0

    #@21e
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@220
    move-object/from16 v0, v16

    #@222
    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@224
    mul-float/2addr v4, v5

    #@225
    move-object/from16 v0, p0

    #@227
    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@229
    mul-float/2addr v4, v5

    #@22a
    .line 1513
    move-object/from16 v0, p0

    #@22c
    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@22e
    move-object/from16 v0, v16

    #@230
    iget v6, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@232
    mul-float/2addr v5, v6

    #@233
    move-object/from16 v0, p0

    #@235
    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    #@237
    mul-float/2addr v5, v6

    #@238
    .line 1514
    move-object/from16 v0, p0

    #@23a
    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@23c
    move-object/from16 v0, v16

    #@23e
    iget v7, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@240
    mul-float/2addr v6, v7

    #@241
    move-object/from16 v0, p0

    #@243
    iget v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    #@245
    mul-float/2addr v6, v7

    #@246
    move/from16 v7, p1

    #@248
    .line 1511
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixInTransaction(FFFFZ)V

    #@24b
    .line 1517
    :cond_b
    move-object/from16 v0, p0

    #@24d
    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    #@24f
    if-eqz v2, :cond_c

    #@251
    .line 1518
    const/4 v2, 0x1

    #@252
    move-object/from16 v0, p0

    #@254
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    #@256
    .line 1519
    move-object/from16 v0, p0

    #@258
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@25a
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@25d
    move-result v3

    #@25e
    .line 1520
    const/4 v4, 0x4

    #@25f
    .line 1519
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@262
    .line 1521
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->applyDimLayerIfNeeded()V

    #@265
    .line 1399
    :cond_c
    return-void

    #@266
    .line 1405
    .end local v12    # "surfaceHeight":F
    .end local v13    # "surfaceWidth":F
    .end local v17    # "wasForceScaled":Z
    .end local v18    # "wasSeamlesslyRotated":Z
    :cond_d
    return-void

    #@267
    .line 1428
    .restart local v17    # "wasForceScaled":Z
    .restart local v18    # "wasSeamlesslyRotated":Z
    :cond_e
    const/4 v2, 0x0

    #@268
    move-object/from16 v0, p0

    #@26a
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    #@26c
    goto/16 :goto_0

    #@26e
    .line 1430
    :cond_f
    const/4 v2, 0x1

    #@26f
    goto/16 :goto_1

    #@271
    .line 1434
    :cond_10
    const/4 v2, 0x1

    #@272
    goto/16 :goto_2

    #@274
    .line 1484
    .restart local v12    # "surfaceHeight":F
    .restart local v13    # "surfaceWidth":F
    :cond_11
    move-object/from16 v0, v16

    #@276
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    #@278
    if-nez v2, :cond_7

    #@27a
    .line 1485
    move-object/from16 v0, p0

    #@27c
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@27e
    move-object/from16 v0, p0

    #@280
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@282
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@284
    int-to-float v3, v3

    #@285
    move-object/from16 v0, p0

    #@287
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    #@289
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@28b
    int-to-float v4, v4

    #@28c
    move/from16 v0, p1

    #@28e
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    #@291
    goto/16 :goto_3

    #@293
    .line 1497
    :cond_12
    move-object/from16 v0, p0

    #@295
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@297
    const/4 v3, 0x1

    #@298
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->setGeometryAppliesWithResizeInTransaction(Z)V

    #@29b
    .line 1498
    move-object/from16 v0, p0

    #@29d
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@29f
    const/4 v3, 0x0

    #@2a0
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    #@2a3
    goto/16 :goto_4
.end method

.method setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1652
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    #@9
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 1653
    return-void

    #@d
    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setTransparentRegionHint(Landroid/graphics/Region;)V

    #@12
    .line 1650
    return-void
.end method

.method setWallpaperOffset(Landroid/graphics/Point;)V
    .locals 8
    .param p1, "shownPosition"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 1659
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@5
    move-result-object v0

    #@6
    .line 1660
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v4, p1, Landroid/graphics/Point;->x:I

    #@8
    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@a
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@c
    sub-int v2, v4, v5

    #@e
    .line 1661
    .local v2, "left":I
    iget v4, p1, Landroid/graphics/Point;->y:I

    #@10
    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@12
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@14
    sub-int v3, v4, v5

    #@16
    .line 1665
    .local v3, "top":I
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@19
    .line 1666
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
    .line 1667
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
    .line 1666
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    #@2f
    .line 1668
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@31
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    #@33
    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceWindowCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@36
    .line 1669
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
    .line 1674
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@41
    .line 1658
    :goto_0
    return-void

    #@42
    .line 1670
    :catch_0
    move-exception v1

    #@43
    .line 1671
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
    .line 1672
    const-string/jumbo v6, " pos=("

    #@5a
    .line 1671
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    .line 1672
    const-string/jumbo v6, ","

    #@65
    .line 1671
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    .line 1672
    const-string/jumbo v6, ")"

    #@70
    .line 1671
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
    .line 1674
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@7e
    goto :goto_0

    #@7f
    .line 1673
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    #@80
    .line 1674
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@83
    .line 1673
    throw v4
.end method

.method startDelayingAnimationStart()V
    .locals 1

    #@0
    .prologue
    .line 2075
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    #@3
    .line 2074
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
    .line 376
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@5
    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    #@7
    .line 377
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@9
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@c
    move-result-object v0

    #@d
    .line 378
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
    .line 381
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
    .line 382
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@25
    .line 383
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@27
    .line 384
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@29
    if-nez v3, :cond_0

    #@2b
    .line 391
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@2e
    move-result-object v2

    #@2f
    .line 392
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    #@31
    if-eqz v3, :cond_1

    #@33
    .line 393
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    #@35
    .line 394
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
    .line 395
    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    #@49
    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    #@4b
    .line 394
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@4e
    .line 400
    :goto_0
    iget v3, v2, Landroid/view/DisplayInfo;->appWidth:I

    #@50
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    #@52
    .line 401
    iget v3, v2, Landroid/view/DisplayInfo;->appHeight:I

    #@54
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    #@56
    .line 402
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
    .line 403
    iget-wide v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    #@62
    .line 402
    :goto_1
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@65
    .line 405
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@67
    .line 406
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@69
    .line 408
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
    .line 409
    iput-wide p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimationTime:J

    #@73
    .line 410
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimation(J)Z

    #@76
    move-result v3

    #@77
    if-eqz v3, :cond_3

    #@79
    .line 411
    return v9

    #@7a
    .line 397
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
    .line 398
    iget v6, v2, Landroid/view/DisplayInfo;->appWidth:I

    #@8e
    iget v7, v2, Landroid/view/DisplayInfo;->appHeight:I

    #@90
    .line 397
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@93
    goto :goto_0

    #@94
    :cond_2
    move-wide v4, p1

    #@95
    .line 404
    goto :goto_1

    #@96
    .line 419
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_3
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@98
    .line 420
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
    .line 421
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@a6
    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@a8
    if-eqz v3, :cond_5

    #@aa
    .line 429
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@ac
    .line 430
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@ae
    .line 431
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@b0
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    #@b3
    .line 432
    return v10

    #@b4
    .line 433
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@b6
    if-eqz v3, :cond_c

    #@b8
    .line 436
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@ba
    .line 446
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
    .line 456
    :cond_7
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@c4
    .line 457
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@c6
    .line 458
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    #@c8
    .line 459
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@ca
    .line 460
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@cc
    if-eqz v3, :cond_8

    #@ce
    .line 461
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@d0
    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    #@d3
    .line 462
    iput-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@d5
    .line 464
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@d7
    iget-object v3, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@d9
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@db
    if-ne v3, v4, :cond_9

    #@dd
    .line 465
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@df
    iput-object v8, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@e1
    .line 467
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@e3
    iget v3, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    #@e5
    .line 468
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
    .line 467
    add-int/2addr v3, v4

    #@f0
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@f2
    .line 470
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@f4
    .line 471
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@f6
    .line 472
    iput v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    #@f8
    .line 473
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@fa
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->checkPolicyVisibilityChange()V

    #@fd
    .line 474
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@ff
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    #@102
    .line 475
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@104
    const/4 v4, 0x4

    #@105
    if-ne v3, v4, :cond_f

    #@107
    .line 476
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
    .line 477
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@112
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@114
    if-eqz v3, :cond_f

    #@116
    .line 478
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@118
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@11a
    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    #@11c
    .line 475
    if-eqz v3, :cond_f

    #@11e
    .line 479
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@120
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@122
    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@124
    if-eqz v3, :cond_f

    #@126
    .line 482
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
    .line 483
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@133
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@135
    const/4 v4, 0x7

    #@136
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    #@139
    .line 492
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    #@13c
    .line 493
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@13e
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@141
    move-result v1

    #@142
    .line 494
    .local v1, "displayId":I
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@144
    const/16 v4, 0x8

    #@146
    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@149
    .line 499
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@14b
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@14d
    if-eqz v3, :cond_b

    #@14f
    .line 500
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@151
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@153
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    #@156
    .line 503
    :cond_b
    return v10

    #@157
    .line 437
    .end local v1    # "displayId":I
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    #@15a
    move-result v3

    #@15b
    if-eqz v3, :cond_6

    #@15d
    .line 438
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@15f
    goto/16 :goto_2

    #@161
    .line 440
    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@163
    if-eqz v3, :cond_6

    #@165
    .line 443
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@167
    goto/16 :goto_2

    #@169
    .line 447
    :cond_e
    return v10

    #@16a
    .line 484
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
    .line 487
    if-eqz v0, :cond_a

    #@178
    .line 488
    iput-boolean v9, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@17a
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2009
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v1, "WindowStateAnimator{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    .line 2010
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
    .line 2011
    const/16 v1, 0x20

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@18
    .line 2012
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
    .line 2013
    const/16 v1, 0x7d

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@28
    .line 2014
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
    .line 1688
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@4
    if-nez v5, :cond_0

    #@6
    .line 1689
    return v3

    #@7
    .line 1691
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@9
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@c
    move-result-object v0

    #@d
    .line 1692
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
    .line 1693
    .local v2, "isHwAccelerated":Z
    :goto_0
    if-eqz v2, :cond_2

    #@17
    const/4 v1, -0x3

    #@18
    .line 1694
    .local v1, "format":I
    :goto_1
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    #@1a
    if-ne v1, v5, :cond_4

    #@1c
    .line 1695
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
    .line 1696
    return v4

    #@28
    .end local v1    # "format":I
    .end local v2    # "isHwAccelerated":Z
    :cond_1
    move v2, v3

    #@29
    .line 1692
    goto :goto_0

    #@2a
    .line 1693
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
    .line 1695
    goto :goto_2

    #@2f
    .line 1698
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
    .line 1303
    if-eqz p1, :cond_2

    #@2
    .line 1304
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    #@4
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1305
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    #@c
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@f
    .line 1306
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@11
    invoke-virtual {v0, p1, p3}, Lcom/android/server/wm/WindowSurfaceController;->setCropInTransaction(Landroid/graphics/Rect;Z)V

    #@14
    .line 1311
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
    .line 1312
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    #@1e
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@21
    .line 1313
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@23
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowSurfaceController;->setFinalCropInTransaction(Landroid/graphics/Rect;)V

    #@26
    .line 1314
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    #@28
    if-eqz v0, :cond_1

    #@2a
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 1315
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    #@30
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowSurfaceController;->setFinalCropInTransaction(Landroid/graphics/Rect;)V

    #@33
    .line 1300
    :cond_1
    return-void

    #@34
    .line 1309
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@36
    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowSurfaceController;->clearCropInTransaction(Z)V

    #@39
    goto :goto_0
.end method
