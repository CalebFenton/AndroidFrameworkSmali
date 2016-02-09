.class Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    }
.end annotation


# static fields
.field static final COMMIT_DRAW_PENDING:I = 0x2

.field static final DRAW_PENDING:I = 0x1

.field static final HAS_DRAWN:I = 0x4

.field static final NO_SURFACE:I = 0x0

.field static final READY_TO_SHOW:I = 0x3

.field private static final SYSTEM_UI_FLAGS_LAYOUT_STABLE_FULLSCREEN:I = 0x500

.field static final TAG:Ljava/lang/String; = "WindowStateAnimator"


# instance fields
.field mAlpha:F

.field mAnimDh:I

.field mAnimDw:I

.field mAnimLayer:I

.field mAnimateMove:Z

.field mAnimating:Z

.field mAnimatingMove:Z

.field mAnimation:Landroid/view/animation/Animation;

.field mAnimationIsEntrance:Z

.field mAnimationStartTime:J

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field final mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAttrType:I

.field mClipRect:Landroid/graphics/Rect;

.field final mContext:Landroid/content/Context;

.field mDrawState:I

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnterAnimationPending:Z

.field mEnteringAnimation:Z

.field mHasClipRect:Z

.field mHasLocalTransformation:Z

.field mHasTransformation:Z

.field mHaveMatrix:Z

.field final mIsWallpaper:Z

.field mKeyguardGoingAwayAnimation:Z

.field mLastAlpha:F

.field mLastAnimationTime:J

.field mLastClipRect:Landroid/graphics/Rect;

.field mLastDsDx:F

.field mLastDsDy:F

.field mLastDtDx:F

.field mLastDtDy:F

.field mLastHidden:Z

.field mLastLayer:I

.field mLocalAnimating:Z

.field mPendingDestroySurface:Landroid/view/SurfaceControl;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field mShownAlpha:F

.field mSurfaceAlpha:F

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mSurfaceDestroyDeferred:Z

.field mSurfaceFormat:I

.field mSurfaceH:F

.field mSurfaceLayer:I

.field mSurfaceResized:Z

.field mSurfaceShown:Z

.field mSurfaceW:F

.field mSurfaceX:F

.field mSurfaceY:F

.field mTmpClipRect:Landroid/graphics/Rect;

.field final mTransformation:Landroid/view/animation/Transformation;

.field mWasAnimating:Z

.field final mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/high16 v6, 0x3f800000    # 1.0f

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v5, 0x0

    #@5
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 89
    new-instance v3, Landroid/view/animation/Transformation;

    #@a
    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    #@d
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@f
    .line 111
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@11
    .line 112
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@13
    .line 113
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@15
    .line 116
    new-instance v3, Landroid/graphics/Rect;

    #@17
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@1a
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@1c
    .line 117
    new-instance v3, Landroid/graphics/Rect;

    #@1e
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@21
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@23
    .line 118
    new-instance v3, Landroid/graphics/Rect;

    #@25
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@28
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    #@2a
    .line 126
    iput-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    #@2c
    .line 129
    iput-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimatingMove:Z

    #@2e
    .line 131
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@30
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@32
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@34
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@36
    .line 132
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    #@38
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    #@3a
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    #@3c
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    #@3e
    .line 193
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@40
    .line 195
    .local v2, "service":Lcom/android/server/wm/WindowManagerService;
    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@42
    .line 196
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@44
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@46
    .line 197
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@48
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4a
    .line 198
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@4c
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    #@4e
    .line 199
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@51
    move-result-object v0

    #@52
    .line 200
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    #@54
    .line 201
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@57
    move-result-object v1

    #@58
    .line 202
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    #@5a
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    #@5c
    .line 203
    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    #@5e
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    #@60
    .line 209
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@62
    .line 210
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@64
    if-nez v3, :cond_1

    #@66
    move-object v3, v4

    #@67
    :goto_1
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@69
    .line 212
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6b
    if-nez v3, :cond_2

    #@6d
    :goto_2
    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@6f
    .line 213
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@71
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    #@73
    .line 214
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@75
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@77
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    #@79
    .line 215
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@7b
    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    #@7d
    .line 192
    return-void

    #@7e
    .line 205
    :cond_0
    const-string/jumbo v3, "WindowStateAnimator"

    #@81
    const-string/jumbo v5, "WindowStateAnimator ctor: Display has been removed"

    #@84
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    goto :goto_0

    #@88
    .line 211
    :cond_1
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@8a
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@8c
    goto :goto_1

    #@8d
    .line 212
    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@8f
    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@91
    goto :goto_2
.end method

.method private applyDecorRect(Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "decorRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/high16 v11, 0x3f000000    # 0.5f

    #@3
    .line 1240
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5
    .line 1241
    .local v4, "w":Lcom/android/server/wm/WindowState;
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@7
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    #@a
    move-result v5

    #@b
    .line 1242
    .local v5, "width":I
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@d
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    #@10
    move-result v0

    #@11
    .line 1245
    .local v0, "height":I
    iget v6, v4, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@13
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@15
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@17
    add-int v1, v6, v7

    #@19
    .line 1246
    .local v1, "left":I
    iget v6, v4, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@1b
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@1d
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@1f
    add-int v3, v6, v7

    #@21
    .line 1249
    .local v3, "top":I
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@23
    invoke-virtual {v6, v8, v8, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@26
    .line 1252
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@28
    iget v7, p1, Landroid/graphics/Rect;->left:I

    #@2a
    sub-int/2addr v7, v1

    #@2b
    iget v8, p1, Landroid/graphics/Rect;->top:I

    #@2d
    sub-int/2addr v8, v3

    #@2e
    .line 1253
    iget v9, p1, Landroid/graphics/Rect;->right:I

    #@30
    sub-int/2addr v9, v1

    #@31
    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    #@33
    sub-int/2addr v10, v3

    #@34
    .line 1252
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@37
    .line 1261
    iget-boolean v6, v4, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@39
    if-eqz v6, :cond_0

    #@3b
    iget v6, v4, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@3d
    const/high16 v7, 0x3f800000    # 1.0f

    #@3f
    cmpl-float v6, v6, v7

    #@41
    if-eqz v6, :cond_0

    #@43
    .line 1262
    iget v2, v4, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@45
    .line 1263
    .local v2, "scale":F
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@47
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@49
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@4b
    int-to-float v7, v7

    #@4c
    mul-float/2addr v7, v2

    #@4d
    sub-float/2addr v7, v11

    #@4e
    float-to-int v7, v7

    #@4f
    iput v7, v6, Landroid/graphics/Rect;->left:I

    #@51
    .line 1264
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@53
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@55
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@57
    int-to-float v7, v7

    #@58
    mul-float/2addr v7, v2

    #@59
    sub-float/2addr v7, v11

    #@5a
    float-to-int v7, v7

    #@5b
    iput v7, v6, Landroid/graphics/Rect;->top:I

    #@5d
    .line 1265
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@5f
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@61
    iget v7, v7, Landroid/graphics/Rect;->right:I

    #@63
    add-int/lit8 v7, v7, 0x1

    #@65
    int-to-float v7, v7

    #@66
    mul-float/2addr v7, v2

    #@67
    sub-float/2addr v7, v11

    #@68
    float-to-int v7, v7

    #@69
    iput v7, v6, Landroid/graphics/Rect;->right:I

    #@6b
    .line 1266
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@6d
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@6f
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@71
    add-int/lit8 v7, v7, 0x1

    #@73
    int-to-float v7, v7

    #@74
    mul-float/2addr v7, v2

    #@75
    sub-float/2addr v7, v11

    #@76
    float-to-int v7, v7

    #@77
    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    #@79
    .line 1239
    .end local v2    # "scale":F
    :cond_0
    return-void
.end method

.method private applyFadeoutDuringKeyguardExitAnimation()V
    .locals 14

    #@0
    .prologue
    .line 1896
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@2
    invoke-virtual {v10}, Landroid/view/animation/Animation;->getStartTime()J

    #@5
    move-result-wide v8

    #@6
    .line 1897
    .local v8, "startTime":J
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@8
    invoke-virtual {v10}, Landroid/view/animation/Animation;->getDuration()J

    #@b
    move-result-wide v0

    #@c
    .line 1898
    .local v0, "duration":J
    iget-wide v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimationTime:J

    #@e
    sub-long v2, v10, v8

    #@10
    .line 1899
    .local v2, "elapsed":J
    sub-long v4, v0, v2

    #@12
    .line 1900
    .local v4, "fadeDuration":J
    const-wide/16 v10, 0x0

    #@14
    cmp-long v10, v4, v10

    #@16
    if-gtz v10, :cond_0

    #@18
    .line 1902
    return-void

    #@19
    .line 1904
    :cond_0
    new-instance v7, Landroid/view/animation/AnimationSet;

    #@1b
    const/4 v10, 0x0

    #@1c
    invoke-direct {v7, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@1f
    .line 1905
    .local v7, "newAnimation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    #@22
    .line 1906
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AnimationSet;->setStartTime(J)V

    #@25
    .line 1907
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@27
    invoke-virtual {v7, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@2a
    .line 1909
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    #@2c
    const v11, 0x10a0011

    #@2f
    .line 1908
    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@32
    move-result-object v6

    #@33
    .line 1910
    .local v6, "fadeOut":Landroid/view/animation/Animation;
    invoke-virtual {v6, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    #@36
    .line 1911
    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    #@39
    .line 1912
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@3c
    .line 1913
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
    iget v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    #@4e
    iget v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    #@50
    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    #@53
    .line 1914
    iput-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@55
    .line 1895
    return-void
.end method

.method private stepAnimation(J)Z
    .locals 3
    .param p1, "currentTime"    # J

    #@0
    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 277
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@a
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    #@d
    .line 278
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@f
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@11
    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@14
    move-result v0

    #@15
    .line 282
    .local v0, "more":Z
    return v0

    #@16
    .line 275
    .end local v0    # "more":Z
    :cond_0
    const/4 v1, 0x0

    #@17
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
    .line 1827
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@4
    if-eqz v5, :cond_2

    #@6
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@8
    if-ne v5, p2, :cond_2

    #@a
    .line 1834
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@c
    if-eqz v4, :cond_1

    #@e
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 1835
    const/4 v4, 0x5

    #@13
    if-ne p1, v4, :cond_1

    #@15
    .line 1836
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyFadeoutDuringKeyguardExitAnimation()V

    #@18
    .line 1838
    :cond_1
    return v3

    #@19
    .line 1828
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@1b
    .line 1827
    if-nez v5, :cond_0

    #@1d
    .line 1845
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1f
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_7

    #@25
    .line 1846
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@27
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@29
    invoke-interface {v5, v6, p1}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    #@2c
    move-result v1

    #@2d
    .line 1847
    .local v1, "anim":I
    const/4 v2, -0x1

    #@2e
    .line 1848
    .local v2, "attr":I
    const/4 v0, 0x0

    #@2f
    .line 1849
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz v1, :cond_6

    #@31
    .line 1850
    const/4 v5, -0x1

    #@32
    if-eq v1, v5, :cond_5

    #@34
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    #@36
    invoke-static {v5, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@39
    move-result-object v0

    #@3a
    .line 1876
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    #@3c
    .line 1885
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    #@3f
    .line 1886
    iput-boolean p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@41
    .line 1892
    .end local v1    # "anim":I
    .end local v2    # "attr":I
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@43
    if-eqz v5, :cond_8

    #@45
    :goto_2
    return v3

    #@46
    .line 1850
    .restart local v0    # "a":Landroid/view/animation/Animation;
    .restart local v1    # "anim":I
    .restart local v2    # "attr":I
    :cond_5
    const/4 v0, 0x0

    #@47
    goto :goto_0

    #@48
    .line 1852
    :cond_6
    packed-switch p1, :pswitch_data_0

    #@4b
    .line 1866
    :goto_3
    if-ltz v2, :cond_3

    #@4d
    .line 1867
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4f
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@51
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@53
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@55
    invoke-virtual {v5, v6, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    #@58
    move-result-object v0

    #@59
    .local v0, "a":Landroid/view/animation/Animation;
    goto :goto_0

    #@5a
    .line 1854
    .local v0, "a":Landroid/view/animation/Animation;
    :pswitch_0
    const/4 v2, 0x0

    #@5b
    .line 1855
    goto :goto_3

    #@5c
    .line 1857
    :pswitch_1
    const/4 v2, 0x1

    #@5d
    .line 1858
    goto :goto_3

    #@5e
    .line 1860
    :pswitch_2
    const/4 v2, 0x2

    #@5f
    .line 1861
    goto :goto_3

    #@60
    .line 1863
    :pswitch_3
    const/4 v2, 0x3

    #@61
    .line 1864
    goto :goto_3

    #@62
    .line 1889
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "anim":I
    .end local v2    # "attr":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    #@65
    goto :goto_1

    #@66
    :cond_8
    move v3, v4

    #@67
    .line 1892
    goto :goto_2

    #@68
    .line 1852
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
    .line 1803
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1804
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    #@7
    .line 1805
    const/4 v0, 0x1

    #@8
    .line 1809
    .local v0, "transit":I
    :goto_0
    const/4 v1, 0x1

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    #@c
    .line 1811
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 1812
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@14
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 1813
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1c
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@1e
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@20
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    #@23
    .line 1801
    :cond_0
    return-void

    #@24
    .line 1807
    .end local v0    # "transit":I
    :cond_1
    const/4 v0, 0x3

    #@25
    .restart local v0    # "transit":I
    goto :goto_0
.end method

.method cancelExitAnimationForNextAnimationLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 265
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 266
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@7
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    #@a
    .line 267
    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@c
    .line 268
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@f
    .line 269
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    #@12
    .line 264
    :cond_0
    return-void
.end method

.method public clearAnimation()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 237
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 238
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@9
    .line 239
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@b
    .line 240
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@d
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    #@10
    .line 241
    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@12
    .line 242
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@14
    .line 236
    :cond_0
    return-void
.end method

.method commitFinishDrawingLocked()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x3

    #@2
    .line 538
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@4
    const/4 v2, 0x2

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@9
    if-eq v1, v3, :cond_0

    #@b
    .line 539
    return v4

    #@c
    .line 544
    :cond_0
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@e
    .line 545
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@10
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@12
    .line 546
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_1

    #@14
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@16
    if-nez v1, :cond_1

    #@18
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1a
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1c
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1e
    if-ne v1, v3, :cond_2

    #@20
    .line 547
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    #@23
    move-result v1

    #@24
    return v1

    #@25
    .line 549
    :cond_2
    return v4
.end method

.method computeShownFrameLocked()V
    .locals 29

    #@0
    .prologue
    .line 1029
    move-object/from16 v0, p0

    #@2
    iget-boolean v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@4
    .line 1031
    .local v13, "selfTransformation":Z
    move-object/from16 v0, p0

    #@6
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@8
    move-object/from16 v24, v0

    #@a
    if-eqz v24, :cond_f

    #@c
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@10
    move-object/from16 v24, v0

    #@12
    move-object/from16 v0, v24

    #@14
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@16
    move/from16 v24, v0

    #@18
    if-eqz v24, :cond_f

    #@1a
    .line 1032
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1e
    move-object/from16 v24, v0

    #@20
    move-object/from16 v0, v24

    #@22
    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@24
    .line 1033
    :goto_0
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@28
    move-object/from16 v24, v0

    #@2a
    if-eqz v24, :cond_10

    #@2c
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@30
    move-object/from16 v24, v0

    #@32
    move-object/from16 v0, v24

    #@34
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@36
    move/from16 v24, v0

    #@38
    if-eqz v24, :cond_10

    #@3a
    .line 1034
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@3e
    move-object/from16 v24, v0

    #@40
    move-object/from16 v0, v24

    #@42
    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@44
    .line 1038
    :goto_1
    move-object/from16 v0, p0

    #@46
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@48
    move-object/from16 v24, v0

    #@4a
    move-object/from16 v0, v24

    #@4c
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@4e
    move-object/from16 v20, v0

    #@50
    .line 1039
    .local v20, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    #@52
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    #@54
    move/from16 v24, v0

    #@56
    if-eqz v24, :cond_1

    #@58
    if-eqz v20, :cond_1

    #@5a
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5e
    move-object/from16 v24, v0

    #@60
    move-object/from16 v0, v24

    #@62
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    #@64
    move/from16 v24, v0

    #@66
    if-eqz v24, :cond_1

    #@68
    .line 1040
    move-object/from16 v0, v20

    #@6a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@6c
    move-object/from16 v19, v0

    #@6e
    .line 1041
    .local v19, "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v19

    #@70
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@72
    move/from16 v24, v0

    #@74
    if-eqz v24, :cond_0

    #@76
    .line 1042
    move-object/from16 v0, v19

    #@78
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@7a
    move-object/from16 v24, v0

    #@7c
    if-eqz v24, :cond_0

    #@7e
    .line 1043
    move-object/from16 v0, v19

    #@80
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@82
    move-object/from16 v24, v0

    #@84
    invoke-virtual/range {v24 .. v24}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    #@87
    move-result v24

    #@88
    if-eqz v24, :cond_11

    #@8a
    .line 1049
    :cond_0
    :goto_2
    move-object/from16 v0, v20

    #@8c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@8e
    move-object/from16 v24, v0

    #@90
    if-nez v24, :cond_12

    #@92
    .line 1050
    const/16 v21, 0x0

    #@94
    .line 1051
    :goto_3
    if-eqz v21, :cond_1

    #@96
    move-object/from16 v0, v21

    #@98
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@9a
    move/from16 v24, v0

    #@9c
    if-eqz v24, :cond_1

    #@9e
    .line 1052
    move-object/from16 v0, v21

    #@a0
    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@a2
    move-object/from16 v24, v0

    #@a4
    if-eqz v24, :cond_1

    #@a6
    .line 1053
    move-object/from16 v0, v21

    #@a8
    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@aa
    move-object/from16 v24, v0

    #@ac
    invoke-virtual/range {v24 .. v24}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    #@af
    move-result v24

    #@b0
    if-eqz v24, :cond_13

    #@b2
    .line 1061
    .end local v19    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    #@b4
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@b6
    move-object/from16 v24, v0

    #@b8
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@bb
    move-result v7

    #@bc
    .line 1063
    .local v7, "displayId":I
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@c0
    move-object/from16 v24, v0

    #@c2
    move-object/from16 v0, v24

    #@c4
    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    #@c7
    move-result-object v12

    #@c8
    .line 1065
    .local v12, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v12, :cond_14

    #@ca
    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    #@cd
    move-result v11

    #@ce
    .line 1066
    :goto_5
    if-nez v13, :cond_2

    #@d0
    if-eqz v6, :cond_15

    #@d2
    .line 1069
    :cond_2
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@d6
    move-object/from16 v24, v0

    #@d8
    move-object/from16 v0, v24

    #@da
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@dc
    .line 1070
    .local v8, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e0
    move-object/from16 v24, v0

    #@e2
    move-object/from16 v0, v24

    #@e4
    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    #@e6
    .line 1071
    .local v15, "tmpFloats":[F
    move-object/from16 v0, p0

    #@e8
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@ea
    move-object/from16 v24, v0

    #@ec
    move-object/from16 v0, v24

    #@ee
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    #@f0
    move-object/from16 v16, v0

    #@f2
    .line 1074
    .local v16, "tmpMatrix":Landroid/graphics/Matrix;
    if-eqz v11, :cond_17

    #@f4
    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    #@f7
    move-result v24

    #@f8
    if-eqz v24, :cond_17

    #@fa
    .line 1082
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@fd
    move-result v24

    #@fe
    move/from16 v0, v24

    #@100
    int-to-float v0, v0

    #@101
    move/from16 v17, v0

    #@103
    .line 1083
    .local v17, "w":F
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    #@106
    move-result v24

    #@107
    move/from16 v0, v24

    #@109
    int-to-float v9, v0

    #@10a
    .line 1084
    .local v9, "h":F
    const/high16 v24, 0x3f800000    # 1.0f

    #@10c
    cmpl-float v24, v17, v24

    #@10e
    if-ltz v24, :cond_16

    #@110
    const/high16 v24, 0x3f800000    # 1.0f

    #@112
    cmpl-float v24, v9, v24

    #@114
    if-ltz v24, :cond_16

    #@116
    .line 1085
    const/high16 v24, 0x40000000    # 2.0f

    #@118
    div-float v24, v24, v17

    #@11a
    const/high16 v25, 0x3f800000    # 1.0f

    #@11c
    add-float v24, v24, v25

    #@11e
    const/high16 v25, 0x40000000    # 2.0f

    #@120
    div-float v25, v25, v9

    #@122
    const/high16 v26, 0x3f800000    # 1.0f

    #@124
    add-float v25, v25, v26

    #@126
    const/high16 v26, 0x40000000    # 2.0f

    #@128
    div-float v26, v17, v26

    #@12a
    const/high16 v27, 0x40000000    # 2.0f

    #@12c
    div-float v27, v9, v27

    #@12e
    move-object/from16 v0, v16

    #@130
    move/from16 v1, v24

    #@132
    move/from16 v2, v25

    #@134
    move/from16 v3, v26

    #@136
    move/from16 v4, v27

    #@138
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    #@13b
    .line 1092
    .end local v9    # "h":F
    .end local v17    # "w":F
    :goto_6
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@13f
    move-object/from16 v24, v0

    #@141
    move-object/from16 v0, v24

    #@143
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@145
    move/from16 v24, v0

    #@147
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@14b
    move-object/from16 v25, v0

    #@14d
    move-object/from16 v0, v25

    #@14f
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@151
    move/from16 v25, v0

    #@153
    move-object/from16 v0, v16

    #@155
    move/from16 v1, v24

    #@157
    move/from16 v2, v25

    #@159
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@15c
    .line 1093
    if-eqz v13, :cond_3

    #@15e
    .line 1094
    move-object/from16 v0, p0

    #@160
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@162
    move-object/from16 v24, v0

    #@164
    invoke-virtual/range {v24 .. v24}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@167
    move-result-object v24

    #@168
    move-object/from16 v0, v16

    #@16a
    move-object/from16 v1, v24

    #@16c
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@16f
    .line 1096
    :cond_3
    iget v0, v8, Landroid/graphics/Rect;->left:I

    #@171
    move/from16 v24, v0

    #@173
    move-object/from16 v0, p0

    #@175
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@177
    move-object/from16 v25, v0

    #@179
    move-object/from16 v0, v25

    #@17b
    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@17d
    move/from16 v25, v0

    #@17f
    add-int v24, v24, v25

    #@181
    move/from16 v0, v24

    #@183
    int-to-float v0, v0

    #@184
    move/from16 v24, v0

    #@186
    iget v0, v8, Landroid/graphics/Rect;->top:I

    #@188
    move/from16 v25, v0

    #@18a
    move-object/from16 v0, p0

    #@18c
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@18e
    move-object/from16 v26, v0

    #@190
    move-object/from16 v0, v26

    #@192
    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@194
    move/from16 v26, v0

    #@196
    add-int v25, v25, v26

    #@198
    move/from16 v0, v25

    #@19a
    int-to-float v0, v0

    #@19b
    move/from16 v25, v0

    #@19d
    move-object/from16 v0, v16

    #@19f
    move/from16 v1, v24

    #@1a1
    move/from16 v2, v25

    #@1a3
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@1a6
    .line 1097
    if-eqz v6, :cond_4

    #@1a8
    .line 1098
    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@1ab
    move-result-object v24

    #@1ac
    move-object/from16 v0, v16

    #@1ae
    move-object/from16 v1, v24

    #@1b0
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@1b3
    .line 1100
    :cond_4
    if-eqz v5, :cond_5

    #@1b5
    .line 1101
    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@1b8
    move-result-object v24

    #@1b9
    move-object/from16 v0, v16

    #@1bb
    move-object/from16 v1, v24

    #@1bd
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@1c0
    .line 1103
    :cond_5
    if-eqz v11, :cond_6

    #@1c2
    .line 1104
    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    #@1c5
    move-result-object v24

    #@1c6
    invoke-virtual/range {v24 .. v24}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@1c9
    move-result-object v24

    #@1ca
    move-object/from16 v0, v16

    #@1cc
    move-object/from16 v1, v24

    #@1ce
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@1d1
    .line 1108
    :cond_6
    move-object/from16 v0, p0

    #@1d3
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1d5
    move-object/from16 v24, v0

    #@1d7
    move-object/from16 v0, v24

    #@1d9
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@1db
    move-object/from16 v24, v0

    #@1dd
    if-eqz v24, :cond_7

    #@1df
    if-nez v7, :cond_7

    #@1e1
    .line 1109
    move-object/from16 v0, p0

    #@1e3
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1e5
    move-object/from16 v24, v0

    #@1e7
    move-object/from16 v0, v24

    #@1e9
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@1eb
    move-object/from16 v24, v0

    #@1ed
    .line 1110
    move-object/from16 v0, p0

    #@1ef
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1f1
    move-object/from16 v25, v0

    #@1f3
    .line 1109
    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    #@1f6
    move-result-object v14

    #@1f7
    .line 1111
    .local v14, "spec":Landroid/view/MagnificationSpec;
    if-eqz v14, :cond_7

    #@1f9
    invoke-virtual {v14}, Landroid/view/MagnificationSpec;->isNop()Z

    #@1fc
    move-result v24

    #@1fd
    if-eqz v24, :cond_18

    #@1ff
    .line 1123
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    :cond_7
    :goto_7
    const/16 v24, 0x1

    #@201
    move/from16 v0, v24

    #@203
    move-object/from16 v1, p0

    #@205
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    #@207
    .line 1124
    move-object/from16 v0, v16

    #@209
    invoke-virtual {v0, v15}, Landroid/graphics/Matrix;->getValues([F)V

    #@20c
    .line 1125
    const/16 v24, 0x0

    #@20e
    aget v24, v15, v24

    #@210
    move/from16 v0, v24

    #@212
    move-object/from16 v1, p0

    #@214
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@216
    .line 1126
    const/16 v24, 0x3

    #@218
    aget v24, v15, v24

    #@21a
    move/from16 v0, v24

    #@21c
    move-object/from16 v1, p0

    #@21e
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@220
    .line 1127
    const/16 v24, 0x1

    #@222
    aget v24, v15, v24

    #@224
    move/from16 v0, v24

    #@226
    move-object/from16 v1, p0

    #@228
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@22a
    .line 1128
    const/16 v24, 0x4

    #@22c
    aget v24, v15, v24

    #@22e
    move/from16 v0, v24

    #@230
    move-object/from16 v1, p0

    #@232
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@234
    .line 1129
    const/16 v24, 0x2

    #@236
    aget v22, v15, v24

    #@238
    .line 1130
    .local v22, "x":F
    const/16 v24, 0x5

    #@23a
    aget v23, v15, v24

    #@23c
    .line 1131
    .local v23, "y":F
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@23f
    move-result v18

    #@240
    .line 1132
    .local v18, "w":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    #@243
    move-result v10

    #@244
    .line 1133
    .local v10, "h":I
    move-object/from16 v0, p0

    #@246
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@248
    move-object/from16 v24, v0

    #@24a
    move-object/from16 v0, v24

    #@24c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    #@24e
    move-object/from16 v24, v0

    #@250
    move/from16 v0, v18

    #@252
    int-to-float v0, v0

    #@253
    move/from16 v25, v0

    #@255
    add-float v25, v25, v22

    #@257
    int-to-float v0, v10

    #@258
    move/from16 v26, v0

    #@25a
    add-float v26, v26, v23

    #@25c
    move-object/from16 v0, v24

    #@25e
    move/from16 v1, v22

    #@260
    move/from16 v2, v23

    #@262
    move/from16 v3, v25

    #@264
    move/from16 v4, v26

    #@266
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    #@269
    .line 1140
    move-object/from16 v0, p0

    #@26b
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@26d
    move/from16 v24, v0

    #@26f
    move/from16 v0, v24

    #@271
    move-object/from16 v1, p0

    #@273
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@275
    .line 1141
    const/16 v24, 0x0

    #@277
    move/from16 v0, v24

    #@279
    move-object/from16 v1, p0

    #@27b
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@27d
    .line 1142
    move-object/from16 v0, p0

    #@27f
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@281
    move-object/from16 v24, v0

    #@283
    move-object/from16 v0, v24

    #@285
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    #@287
    move/from16 v24, v0

    #@289
    if-eqz v24, :cond_8

    #@28b
    .line 1143
    move-object/from16 v0, p0

    #@28d
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@28f
    move-object/from16 v24, v0

    #@291
    move-object/from16 v0, v24

    #@293
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@295
    move-object/from16 v24, v0

    #@297
    move-object/from16 v0, v24

    #@299
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@29b
    move/from16 v24, v0

    #@29d
    invoke-static/range {v24 .. v24}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    #@2a0
    move-result v24

    #@2a1
    if-eqz v24, :cond_8

    #@2a3
    .line 1144
    move-object/from16 v0, p0

    #@2a5
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2a7
    move-object/from16 v24, v0

    #@2a9
    move-object/from16 v0, p0

    #@2ab
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@2ad
    move/from16 v25, v0

    #@2af
    move-object/from16 v0, p0

    #@2b1
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@2b3
    move/from16 v26, v0

    #@2b5
    move-object/from16 v0, p0

    #@2b7
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@2b9
    move/from16 v27, v0

    #@2bb
    move-object/from16 v0, p0

    #@2bd
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@2bf
    move/from16 v28, v0

    #@2c1
    invoke-virtual/range {v24 .. v28}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    #@2c4
    move-result v24

    #@2c5
    if-eqz v24, :cond_e

    #@2c7
    .line 1145
    iget v0, v8, Landroid/graphics/Rect;->left:I

    #@2c9
    move/from16 v24, v0

    #@2cb
    move/from16 v0, v24

    #@2cd
    int-to-float v0, v0

    #@2ce
    move/from16 v24, v0

    #@2d0
    cmpl-float v24, v22, v24

    #@2d2
    if-nez v24, :cond_e

    #@2d4
    iget v0, v8, Landroid/graphics/Rect;->top:I

    #@2d6
    move/from16 v24, v0

    #@2d8
    move/from16 v0, v24

    #@2da
    int-to-float v0, v0

    #@2db
    move/from16 v24, v0

    #@2dd
    cmpl-float v24, v23, v24

    #@2df
    if-nez v24, :cond_e

    #@2e1
    .line 1147
    :cond_8
    if-eqz v13, :cond_9

    #@2e3
    .line 1148
    move-object/from16 v0, p0

    #@2e5
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@2e7
    move/from16 v24, v0

    #@2e9
    move-object/from16 v0, p0

    #@2eb
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@2ed
    move-object/from16 v25, v0

    #@2ef
    invoke-virtual/range {v25 .. v25}, Landroid/view/animation/Transformation;->getAlpha()F

    #@2f2
    move-result v25

    #@2f3
    mul-float v24, v24, v25

    #@2f5
    move/from16 v0, v24

    #@2f7
    move-object/from16 v1, p0

    #@2f9
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@2fb
    .line 1150
    :cond_9
    if-eqz v6, :cond_a

    #@2fd
    .line 1151
    move-object/from16 v0, p0

    #@2ff
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@301
    move/from16 v24, v0

    #@303
    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    #@306
    move-result v25

    #@307
    mul-float v24, v24, v25

    #@309
    move/from16 v0, v24

    #@30b
    move-object/from16 v1, p0

    #@30d
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@30f
    .line 1153
    :cond_a
    if-eqz v5, :cond_d

    #@311
    .line 1154
    move-object/from16 v0, p0

    #@313
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@315
    move/from16 v24, v0

    #@317
    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    #@31a
    move-result v25

    #@31b
    mul-float v24, v24, v25

    #@31d
    move/from16 v0, v24

    #@31f
    move-object/from16 v1, p0

    #@321
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@323
    .line 1155
    invoke-virtual {v5}, Landroid/view/animation/Transformation;->hasClipRect()Z

    #@326
    move-result v24

    #@327
    if-eqz v24, :cond_d

    #@329
    .line 1156
    move-object/from16 v0, p0

    #@32b
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@32d
    move-object/from16 v24, v0

    #@32f
    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    #@332
    move-result-object v25

    #@333
    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@336
    .line 1157
    move-object/from16 v0, p0

    #@338
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@33a
    move-object/from16 v24, v0

    #@33c
    move-object/from16 v0, v24

    #@33e
    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@340
    move/from16 v24, v0

    #@342
    const/16 v25, 0x0

    #@344
    cmpl-float v24, v24, v25

    #@346
    if-lez v24, :cond_b

    #@348
    .line 1158
    move-object/from16 v0, p0

    #@34a
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@34c
    move-object/from16 v24, v0

    #@34e
    move-object/from16 v0, v24

    #@350
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@352
    move/from16 v25, v0

    #@354
    move/from16 v0, v25

    #@356
    int-to-float v0, v0

    #@357
    move/from16 v25, v0

    #@359
    move-object/from16 v0, p0

    #@35b
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@35d
    move-object/from16 v26, v0

    #@35f
    move-object/from16 v0, v26

    #@361
    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@363
    move/from16 v26, v0

    #@365
    div-float v25, v25, v26

    #@367
    move/from16 v0, v25

    #@369
    float-to-int v0, v0

    #@36a
    move/from16 v25, v0

    #@36c
    move/from16 v0, v25

    #@36e
    move-object/from16 v1, v24

    #@370
    iput v0, v1, Landroid/graphics/Rect;->left:I

    #@372
    .line 1159
    move-object/from16 v0, p0

    #@374
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@376
    move-object/from16 v24, v0

    #@378
    move-object/from16 v0, v24

    #@37a
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@37c
    move/from16 v25, v0

    #@37e
    move/from16 v0, v25

    #@380
    int-to-float v0, v0

    #@381
    move/from16 v25, v0

    #@383
    move-object/from16 v0, p0

    #@385
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@387
    move-object/from16 v26, v0

    #@389
    move-object/from16 v0, v26

    #@38b
    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@38d
    move/from16 v26, v0

    #@38f
    div-float v25, v25, v26

    #@391
    move/from16 v0, v25

    #@393
    float-to-int v0, v0

    #@394
    move/from16 v25, v0

    #@396
    move/from16 v0, v25

    #@398
    move-object/from16 v1, v24

    #@39a
    iput v0, v1, Landroid/graphics/Rect;->right:I

    #@39c
    .line 1161
    :cond_b
    move-object/from16 v0, p0

    #@39e
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3a0
    move-object/from16 v24, v0

    #@3a2
    move-object/from16 v0, v24

    #@3a4
    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@3a6
    move/from16 v24, v0

    #@3a8
    const/16 v25, 0x0

    #@3aa
    cmpl-float v24, v24, v25

    #@3ac
    if-lez v24, :cond_c

    #@3ae
    .line 1162
    move-object/from16 v0, p0

    #@3b0
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@3b2
    move-object/from16 v24, v0

    #@3b4
    move-object/from16 v0, v24

    #@3b6
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@3b8
    move/from16 v25, v0

    #@3ba
    move/from16 v0, v25

    #@3bc
    int-to-float v0, v0

    #@3bd
    move/from16 v25, v0

    #@3bf
    move-object/from16 v0, p0

    #@3c1
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3c3
    move-object/from16 v26, v0

    #@3c5
    move-object/from16 v0, v26

    #@3c7
    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@3c9
    move/from16 v26, v0

    #@3cb
    div-float v25, v25, v26

    #@3cd
    move/from16 v0, v25

    #@3cf
    float-to-int v0, v0

    #@3d0
    move/from16 v25, v0

    #@3d2
    move/from16 v0, v25

    #@3d4
    move-object/from16 v1, v24

    #@3d6
    iput v0, v1, Landroid/graphics/Rect;->top:I

    #@3d8
    .line 1163
    move-object/from16 v0, p0

    #@3da
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@3dc
    move-object/from16 v24, v0

    #@3de
    move-object/from16 v0, v24

    #@3e0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@3e2
    move/from16 v25, v0

    #@3e4
    move/from16 v0, v25

    #@3e6
    int-to-float v0, v0

    #@3e7
    move/from16 v25, v0

    #@3e9
    move-object/from16 v0, p0

    #@3eb
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3ed
    move-object/from16 v26, v0

    #@3ef
    move-object/from16 v0, v26

    #@3f1
    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@3f3
    move/from16 v26, v0

    #@3f5
    div-float v25, v25, v26

    #@3f7
    move/from16 v0, v25

    #@3f9
    float-to-int v0, v0

    #@3fa
    move/from16 v25, v0

    #@3fc
    move/from16 v0, v25

    #@3fe
    move-object/from16 v1, v24

    #@400
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    #@402
    .line 1165
    :cond_c
    const/16 v24, 0x1

    #@404
    move/from16 v0, v24

    #@406
    move-object/from16 v1, p0

    #@408
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@40a
    .line 1168
    :cond_d
    if-eqz v11, :cond_e

    #@40c
    .line 1169
    move-object/from16 v0, p0

    #@40e
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@410
    move/from16 v24, v0

    #@412
    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    #@415
    move-result-object v25

    #@416
    invoke-virtual/range {v25 .. v25}, Landroid/view/animation/Transformation;->getAlpha()F

    #@419
    move-result v25

    #@41a
    mul-float v24, v24, v25

    #@41c
    move/from16 v0, v24

    #@41e
    move-object/from16 v1, p0

    #@420
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@422
    .line 1184
    :cond_e
    return-void

    #@423
    .line 1032
    .end local v7    # "displayId":I
    .end local v8    # "frame":Landroid/graphics/Rect;
    .end local v10    # "h":I
    .end local v12    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v15    # "tmpFloats":[F
    .end local v16    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v18    # "w":I
    .end local v20    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_f
    const/4 v6, 0x0

    #@424
    .local v6, "attachedTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_0

    #@426
    .line 1034
    .end local v6    # "attachedTransformation":Landroid/view/animation/Transformation;
    :cond_10
    const/4 v5, 0x0

    #@427
    .local v5, "appTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_1

    #@429
    .line 1044
    .end local v5    # "appTransformation":Landroid/view/animation/Transformation;
    .restart local v19    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v20    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_11
    move-object/from16 v0, v19

    #@42b
    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@42d
    .local v6, "attachedTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_2

    #@42f
    .line 1050
    .end local v6    # "attachedTransformation":Landroid/view/animation/Transformation;
    :cond_12
    move-object/from16 v0, v20

    #@431
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@433
    move-object/from16 v24, v0

    #@435
    move-object/from16 v0, v24

    #@437
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@439
    move-object/from16 v21, v0

    #@43b
    .local v21, "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    goto/16 :goto_3

    #@43d
    .line 1054
    .end local v21    # "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_13
    move-object/from16 v0, v21

    #@43f
    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@441
    .local v5, "appTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_4

    #@443
    .line 1065
    .end local v5    # "appTransformation":Landroid/view/animation/Transformation;
    .end local v19    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v7    # "displayId":I
    .restart local v12    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_14
    const/4 v11, 0x0

    #@444
    .local v11, "screenAnimation":Z
    goto/16 :goto_5

    #@446
    .line 1067
    .end local v11    # "screenAnimation":Z
    :cond_15
    if-nez v5, :cond_2

    #@448
    .line 1066
    if-nez v11, :cond_2

    #@44a
    .line 1185
    move-object/from16 v0, p0

    #@44c
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    #@44e
    move/from16 v24, v0

    #@450
    if-eqz v24, :cond_19

    #@452
    move-object/from16 v0, p0

    #@454
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@456
    move-object/from16 v24, v0

    #@458
    move-object/from16 v0, v24

    #@45a
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #@45c
    move-object/from16 v24, v0

    #@45e
    move-object/from16 v0, v24

    #@460
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperActionPending:Z

    #@462
    move/from16 v24, v0

    #@464
    if-eqz v24, :cond_19

    #@466
    .line 1186
    return-void

    #@467
    .line 1087
    .restart local v8    # "frame":Landroid/graphics/Rect;
    .restart local v9    # "h":F
    .restart local v15    # "tmpFloats":[F
    .restart local v16    # "tmpMatrix":Landroid/graphics/Matrix;
    .restart local v17    # "w":F
    :cond_16
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Matrix;->reset()V

    #@46a
    goto/16 :goto_6

    #@46c
    .line 1090
    .end local v9    # "h":F
    .end local v17    # "w":F
    :cond_17
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Matrix;->reset()V

    #@46f
    goto/16 :goto_6

    #@471
    .line 1112
    .restart local v14    # "spec":Landroid/view/MagnificationSpec;
    :cond_18
    iget v0, v14, Landroid/view/MagnificationSpec;->scale:F

    #@473
    move/from16 v24, v0

    #@475
    iget v0, v14, Landroid/view/MagnificationSpec;->scale:F

    #@477
    move/from16 v25, v0

    #@479
    move-object/from16 v0, v16

    #@47b
    move/from16 v1, v24

    #@47d
    move/from16 v2, v25

    #@47f
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@482
    .line 1113
    iget v0, v14, Landroid/view/MagnificationSpec;->offsetX:F

    #@484
    move/from16 v24, v0

    #@486
    iget v0, v14, Landroid/view/MagnificationSpec;->offsetY:F

    #@488
    move/from16 v25, v0

    #@48a
    move-object/from16 v0, v16

    #@48c
    move/from16 v1, v24

    #@48e
    move/from16 v2, v25

    #@490
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@493
    goto/16 :goto_7

    #@495
    .line 1193
    .end local v8    # "frame":Landroid/graphics/Rect;
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    .end local v15    # "tmpFloats":[F
    .end local v16    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_19
    const/4 v14, 0x0

    #@496
    .line 1195
    .local v14, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v0, p0

    #@498
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@49a
    move-object/from16 v24, v0

    #@49c
    move-object/from16 v0, v24

    #@49e
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@4a0
    move-object/from16 v24, v0

    #@4a2
    if-eqz v24, :cond_1a

    #@4a4
    if-nez v7, :cond_1a

    #@4a6
    .line 1196
    move-object/from16 v0, p0

    #@4a8
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4aa
    move-object/from16 v24, v0

    #@4ac
    move-object/from16 v0, v24

    #@4ae
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@4b0
    move-object/from16 v24, v0

    #@4b2
    move-object/from16 v0, p0

    #@4b4
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4b6
    move-object/from16 v25, v0

    #@4b8
    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    #@4bb
    move-result-object v14

    #@4bc
    .line 1198
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    :cond_1a
    if-eqz v14, :cond_1d

    #@4be
    .line 1199
    move-object/from16 v0, p0

    #@4c0
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4c2
    move-object/from16 v24, v0

    #@4c4
    move-object/from16 v0, v24

    #@4c6
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@4c8
    .line 1200
    .restart local v8    # "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@4ca
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4cc
    move-object/from16 v24, v0

    #@4ce
    move-object/from16 v0, v24

    #@4d0
    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    #@4d2
    .line 1201
    .restart local v15    # "tmpFloats":[F
    move-object/from16 v0, p0

    #@4d4
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4d6
    move-object/from16 v24, v0

    #@4d8
    move-object/from16 v0, v24

    #@4da
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    #@4dc
    move-object/from16 v16, v0

    #@4de
    .line 1203
    .restart local v16    # "tmpMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    #@4e0
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4e2
    move-object/from16 v24, v0

    #@4e4
    move-object/from16 v0, v24

    #@4e6
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@4e8
    move/from16 v24, v0

    #@4ea
    move-object/from16 v0, p0

    #@4ec
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4ee
    move-object/from16 v25, v0

    #@4f0
    move-object/from16 v0, v25

    #@4f2
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@4f4
    move/from16 v25, v0

    #@4f6
    move-object/from16 v0, v16

    #@4f8
    move/from16 v1, v24

    #@4fa
    move/from16 v2, v25

    #@4fc
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    #@4ff
    .line 1204
    iget v0, v8, Landroid/graphics/Rect;->left:I

    #@501
    move/from16 v24, v0

    #@503
    move-object/from16 v0, p0

    #@505
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@507
    move-object/from16 v25, v0

    #@509
    move-object/from16 v0, v25

    #@50b
    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@50d
    move/from16 v25, v0

    #@50f
    add-int v24, v24, v25

    #@511
    move/from16 v0, v24

    #@513
    int-to-float v0, v0

    #@514
    move/from16 v24, v0

    #@516
    iget v0, v8, Landroid/graphics/Rect;->top:I

    #@518
    move/from16 v25, v0

    #@51a
    move-object/from16 v0, p0

    #@51c
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@51e
    move-object/from16 v26, v0

    #@520
    move-object/from16 v0, v26

    #@522
    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@524
    move/from16 v26, v0

    #@526
    add-int v25, v25, v26

    #@528
    move/from16 v0, v25

    #@52a
    int-to-float v0, v0

    #@52b
    move/from16 v25, v0

    #@52d
    move-object/from16 v0, v16

    #@52f
    move/from16 v1, v24

    #@531
    move/from16 v2, v25

    #@533
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@536
    .line 1206
    if-eqz v14, :cond_1b

    #@538
    invoke-virtual {v14}, Landroid/view/MagnificationSpec;->isNop()Z

    #@53b
    move-result v24

    #@53c
    if-eqz v24, :cond_1c

    #@53e
    .line 1211
    :cond_1b
    :goto_8
    move-object/from16 v0, v16

    #@540
    invoke-virtual {v0, v15}, Landroid/graphics/Matrix;->getValues([F)V

    #@543
    .line 1213
    const/16 v24, 0x1

    #@545
    move/from16 v0, v24

    #@547
    move-object/from16 v1, p0

    #@549
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    #@54b
    .line 1214
    const/16 v24, 0x0

    #@54d
    aget v24, v15, v24

    #@54f
    move/from16 v0, v24

    #@551
    move-object/from16 v1, p0

    #@553
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@555
    .line 1215
    const/16 v24, 0x3

    #@557
    aget v24, v15, v24

    #@559
    move/from16 v0, v24

    #@55b
    move-object/from16 v1, p0

    #@55d
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@55f
    .line 1216
    const/16 v24, 0x1

    #@561
    aget v24, v15, v24

    #@563
    move/from16 v0, v24

    #@565
    move-object/from16 v1, p0

    #@567
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@569
    .line 1217
    const/16 v24, 0x4

    #@56b
    aget v24, v15, v24

    #@56d
    move/from16 v0, v24

    #@56f
    move-object/from16 v1, p0

    #@571
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@573
    .line 1218
    const/16 v24, 0x2

    #@575
    aget v22, v15, v24

    #@577
    .line 1219
    .restart local v22    # "x":F
    const/16 v24, 0x5

    #@579
    aget v23, v15, v24

    #@57b
    .line 1220
    .restart local v23    # "y":F
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@57e
    move-result v18

    #@57f
    .line 1221
    .restart local v18    # "w":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    #@582
    move-result v10

    #@583
    .line 1222
    .restart local v10    # "h":I
    move-object/from16 v0, p0

    #@585
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@587
    move-object/from16 v24, v0

    #@589
    move-object/from16 v0, v24

    #@58b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    #@58d
    move-object/from16 v24, v0

    #@58f
    move/from16 v0, v18

    #@591
    int-to-float v0, v0

    #@592
    move/from16 v25, v0

    #@594
    add-float v25, v25, v22

    #@596
    int-to-float v0, v10

    #@597
    move/from16 v26, v0

    #@599
    add-float v26, v26, v23

    #@59b
    move-object/from16 v0, v24

    #@59d
    move/from16 v1, v22

    #@59f
    move/from16 v2, v23

    #@5a1
    move/from16 v3, v25

    #@5a3
    move/from16 v4, v26

    #@5a5
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    #@5a8
    .line 1224
    move-object/from16 v0, p0

    #@5aa
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@5ac
    move/from16 v24, v0

    #@5ae
    move/from16 v0, v24

    #@5b0
    move-object/from16 v1, p0

    #@5b2
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@5b4
    .line 1028
    .end local v8    # "frame":Landroid/graphics/Rect;
    .end local v10    # "h":I
    .end local v15    # "tmpFloats":[F
    .end local v16    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v18    # "w":I
    .end local v22    # "x":F
    .end local v23    # "y":F
    :goto_9
    return-void

    #@5b5
    .line 1207
    .restart local v8    # "frame":Landroid/graphics/Rect;
    .restart local v15    # "tmpFloats":[F
    .restart local v16    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_1c
    iget v0, v14, Landroid/view/MagnificationSpec;->scale:F

    #@5b7
    move/from16 v24, v0

    #@5b9
    iget v0, v14, Landroid/view/MagnificationSpec;->scale:F

    #@5bb
    move/from16 v25, v0

    #@5bd
    move-object/from16 v0, v16

    #@5bf
    move/from16 v1, v24

    #@5c1
    move/from16 v2, v25

    #@5c3
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@5c6
    .line 1208
    iget v0, v14, Landroid/view/MagnificationSpec;->offsetX:F

    #@5c8
    move/from16 v24, v0

    #@5ca
    iget v0, v14, Landroid/view/MagnificationSpec;->offsetY:F

    #@5cc
    move/from16 v25, v0

    #@5ce
    move-object/from16 v0, v16

    #@5d0
    move/from16 v1, v24

    #@5d2
    move/from16 v2, v25

    #@5d4
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@5d7
    goto/16 :goto_8

    #@5d9
    .line 1226
    .end local v8    # "frame":Landroid/graphics/Rect;
    .end local v15    # "tmpFloats":[F
    .end local v16    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_1d
    move-object/from16 v0, p0

    #@5db
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5dd
    move-object/from16 v24, v0

    #@5df
    move-object/from16 v0, v24

    #@5e1
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    #@5e3
    move-object/from16 v24, v0

    #@5e5
    move-object/from16 v0, p0

    #@5e7
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5e9
    move-object/from16 v25, v0

    #@5eb
    move-object/from16 v0, v25

    #@5ed
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@5ef
    move-object/from16 v25, v0

    #@5f1
    invoke-virtual/range {v24 .. v25}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@5f4
    .line 1227
    move-object/from16 v0, p0

    #@5f6
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5f8
    move-object/from16 v24, v0

    #@5fa
    move-object/from16 v0, v24

    #@5fc
    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@5fe
    move/from16 v24, v0

    #@600
    if-nez v24, :cond_1e

    #@602
    move-object/from16 v0, p0

    #@604
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@606
    move-object/from16 v24, v0

    #@608
    move-object/from16 v0, v24

    #@60a
    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@60c
    move/from16 v24, v0

    #@60e
    if-eqz v24, :cond_1f

    #@610
    .line 1228
    :cond_1e
    move-object/from16 v0, p0

    #@612
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@614
    move-object/from16 v24, v0

    #@616
    move-object/from16 v0, v24

    #@618
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    #@61a
    move-object/from16 v24, v0

    #@61c
    move-object/from16 v0, p0

    #@61e
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@620
    move-object/from16 v25, v0

    #@622
    move-object/from16 v0, v25

    #@624
    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@626
    move/from16 v25, v0

    #@628
    move/from16 v0, v25

    #@62a
    int-to-float v0, v0

    #@62b
    move/from16 v25, v0

    #@62d
    move-object/from16 v0, p0

    #@62f
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@631
    move-object/from16 v26, v0

    #@633
    move-object/from16 v0, v26

    #@635
    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@637
    move/from16 v26, v0

    #@639
    move/from16 v0, v26

    #@63b
    int-to-float v0, v0

    #@63c
    move/from16 v26, v0

    #@63e
    invoke-virtual/range {v24 .. v26}, Landroid/graphics/RectF;->offset(FF)V

    #@641
    .line 1230
    :cond_1f
    move-object/from16 v0, p0

    #@643
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@645
    move/from16 v24, v0

    #@647
    move/from16 v0, v24

    #@649
    move-object/from16 v1, p0

    #@64b
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@64d
    .line 1231
    const/16 v24, 0x0

    #@64f
    move/from16 v0, v24

    #@651
    move-object/from16 v1, p0

    #@653
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    #@655
    .line 1232
    move-object/from16 v0, p0

    #@657
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@659
    move-object/from16 v24, v0

    #@65b
    move-object/from16 v0, v24

    #@65d
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@65f
    move/from16 v24, v0

    #@661
    move/from16 v0, v24

    #@663
    move-object/from16 v1, p0

    #@665
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@667
    .line 1233
    const/16 v24, 0x0

    #@669
    move/from16 v0, v24

    #@66b
    move-object/from16 v1, p0

    #@66d
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@66f
    .line 1234
    const/16 v24, 0x0

    #@671
    move/from16 v0, v24

    #@673
    move-object/from16 v1, p0

    #@675
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@677
    .line 1235
    move-object/from16 v0, p0

    #@679
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@67b
    move-object/from16 v24, v0

    #@67d
    move-object/from16 v0, v24

    #@67f
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@681
    move/from16 v24, v0

    #@683
    move/from16 v0, v24

    #@685
    move-object/from16 v1, p0

    #@687
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@689
    goto/16 :goto_9
.end method

.method createSurfaceLocked()Landroid/view/SurfaceControl;
    .locals 20

    #@0
    .prologue
    .line 770
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4
    move-object/from16 v17, v0

    #@6
    .line 771
    .local v17, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@a
    if-nez v2, :cond_6

    #@c
    .line 774
    const/4 v2, 0x1

    #@d
    move-object/from16 v0, p0

    #@f
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@11
    .line 775
    move-object/from16 v0, v17

    #@13
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 776
    move-object/from16 v0, v17

    #@19
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1b
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@1d
    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@1f
    if-nez v2, :cond_7

    #@21
    .line 777
    move-object/from16 v0, v17

    #@23
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@25
    const/4 v3, 0x0

    #@26
    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@28
    .line 778
    move-object/from16 v0, v17

    #@2a
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2c
    const/4 v3, 0x0

    #@2d
    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    #@2f
    .line 786
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@31
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@33
    move-object/from16 v0, v17

    #@35
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    #@38
    .line 788
    const/4 v8, 0x4

    #@39
    .line 789
    .local v8, "flags":I
    move-object/from16 v0, v17

    #@3b
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@3d
    .line 791
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    #@3f
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@41
    move-object/from16 v0, v17

    #@43
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_1

    #@49
    .line 792
    const/16 v8, 0x84

    #@4b
    .line 797
    :cond_1
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@4d
    and-int/lit16 v2, v2, 0x4000

    #@4f
    if-eqz v2, :cond_8

    #@51
    .line 800
    move-object/from16 v0, v17

    #@53
    iget v5, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@55
    .line 801
    .local v5, "width":I
    move-object/from16 v0, v17

    #@57
    iget v6, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@59
    .line 809
    .local v6, "height":I
    :goto_1
    if-gtz v5, :cond_2

    #@5b
    .line 810
    const/4 v5, 0x1

    #@5c
    .line 812
    :cond_2
    if-gtz v6, :cond_3

    #@5e
    .line 813
    const/4 v6, 0x1

    #@5f
    .line 816
    :cond_3
    move-object/from16 v0, v17

    #@61
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@63
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@65
    move-object/from16 v0, v17

    #@67
    iget v3, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@69
    add-int/2addr v2, v3

    #@6a
    int-to-float v15, v2

    #@6b
    .line 817
    .local v15, "left":F
    move-object/from16 v0, v17

    #@6d
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@6f
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@71
    move-object/from16 v0, v17

    #@73
    iget v3, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@75
    add-int/2addr v2, v3

    #@76
    int-to-float v0, v2

    #@77
    move/from16 v16, v0

    #@79
    .line 820
    .local v16, "top":F
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@7b
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@7d
    iget-object v3, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@7f
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@81
    add-int/2addr v2, v3

    #@82
    add-int/2addr v5, v2

    #@83
    .line 821
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@85
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@87
    iget-object v3, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@89
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@8b
    add-int/2addr v2, v3

    #@8c
    add-int/2addr v6, v2

    #@8d
    .line 822
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@8f
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@91
    int-to-float v2, v2

    #@92
    sub-float/2addr v15, v2

    #@93
    .line 823
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@95
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@97
    int-to-float v2, v2

    #@98
    sub-float v16, v16, v2

    #@9a
    .line 834
    const/4 v2, 0x0

    #@9b
    move-object/from16 v0, p0

    #@9d
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    #@9f
    .line 835
    const/4 v2, 0x0

    #@a0
    move-object/from16 v0, p0

    #@a2
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    #@a4
    .line 836
    const/4 v2, 0x0

    #@a5
    move-object/from16 v0, p0

    #@a7
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceAlpha:F

    #@a9
    .line 837
    const/4 v2, 0x0

    #@aa
    move-object/from16 v0, p0

    #@ac
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    #@ae
    .line 838
    const/4 v2, 0x0

    #@af
    move-object/from16 v0, p0

    #@b1
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    #@b3
    .line 839
    move-object/from16 v0, v17

    #@b5
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    #@b7
    const/4 v3, 0x0

    #@b8
    const/4 v4, 0x0

    #@b9
    const/16 v18, 0x0

    #@bb
    const/16 v19, 0x0

    #@bd
    move/from16 v0, v18

    #@bf
    move/from16 v1, v19

    #@c1
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    #@c4
    .line 840
    move-object/from16 v0, p0

    #@c6
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    #@c8
    const/4 v3, 0x0

    #@c9
    const/4 v4, 0x0

    #@ca
    const/16 v18, 0x0

    #@cc
    const/16 v19, 0x0

    #@ce
    move/from16 v0, v18

    #@d0
    move/from16 v1, v19

    #@d2
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    #@d5
    .line 844
    int-to-float v2, v5

    #@d6
    :try_start_0
    move-object/from16 v0, p0

    #@d8
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    #@da
    .line 845
    int-to-float v2, v6

    #@db
    move-object/from16 v0, p0

    #@dd
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    #@df
    .line 847
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@e1
    .line 848
    const/high16 v3, 0x1000000

    #@e3
    .line 847
    and-int/2addr v2, v3

    #@e4
    if-eqz v2, :cond_9

    #@e6
    const/4 v14, 0x1

    #@e7
    .line 849
    .local v14, "isHwAccelerated":Z
    :goto_2
    if-eqz v14, :cond_a

    #@e9
    const/4 v7, -0x3

    #@ea
    .line 850
    .local v7, "format":I
    :goto_3
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    #@ec
    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    #@ef
    move-result v2

    #@f0
    if-nez v2, :cond_4

    #@f2
    .line 851
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@f4
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@f6
    if-nez v2, :cond_4

    #@f8
    .line 852
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@fa
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@fc
    if-nez v2, :cond_4

    #@fe
    .line 853
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@100
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@102
    if-nez v2, :cond_4

    #@104
    .line 854
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@106
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@108
    if-nez v2, :cond_4

    #@10a
    .line 855
    or-int/lit16 v8, v8, 0x400

    #@10c
    .line 858
    :cond_4
    move-object/from16 v0, p0

    #@10e
    iput v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    #@110
    .line 865
    new-instance v2, Landroid/view/SurfaceControl;

    #@112
    .line 866
    move-object/from16 v0, p0

    #@114
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    #@116
    iget-object v3, v3, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@118
    .line 867
    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@11b
    move-result-object v4

    #@11c
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@11f
    move-result-object v4

    #@120
    .line 865
    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    #@123
    move-object/from16 v0, p0

    #@125
    iput-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@127
    .line 871
    const/4 v2, 0x1

    #@128
    move-object/from16 v0, v17

    #@12a
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@12c
    .line 910
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@12f
    .line 912
    :try_start_1
    move-object/from16 v0, p0

    #@131
    iput v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    #@133
    .line 913
    move/from16 v0, v16

    #@135
    move-object/from16 v1, p0

    #@137
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@139
    .line 916
    :try_start_2
    move-object/from16 v0, p0

    #@13b
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@13d
    move/from16 v0, v16

    #@13f
    invoke-virtual {v2, v15, v0}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@142
    .line 917
    move-object/from16 v0, p0

    #@144
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@146
    move-object/from16 v0, p0

    #@148
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    #@14a
    .line 918
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@14d
    move-result-object v10

    #@14e
    .line 919
    .local v10, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v10, :cond_5

    #@150
    .line 920
    move-object/from16 v0, p0

    #@152
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@154
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    #@157
    move-result-object v3

    #@158
    invoke-virtual {v3}, Landroid/view/Display;->getLayerStack()I

    #@15b
    move-result v3

    #@15c
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@15f
    .line 922
    :cond_5
    move-object/from16 v0, p0

    #@161
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@163
    move-object/from16 v0, p0

    #@165
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@167
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@16a
    .line 923
    move-object/from16 v0, p0

    #@16c
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@16e
    const/4 v3, 0x0

    #@16f
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@172
    .line 924
    const/4 v2, 0x0

    #@173
    move-object/from16 v0, p0

    #@175
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@177
    .line 929
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_4
    const/4 v2, 0x1

    #@178
    :try_start_3
    move-object/from16 v0, p0

    #@17a
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@17c
    .line 931
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@17f
    .line 938
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "format":I
    .end local v8    # "flags":I
    .end local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "isHwAccelerated":Z
    .end local v15    # "left":F
    .end local v16    # "top":F
    :cond_6
    move-object/from16 v0, p0

    #@181
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@183
    return-object v2

    #@184
    .line 782
    :cond_7
    move-object/from16 v0, v17

    #@186
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@188
    const/4 v3, 0x1

    #@189
    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    #@18b
    goto/16 :goto_0

    #@18d
    .line 803
    .restart local v8    # "flags":I
    .restart local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_8
    move-object/from16 v0, v17

    #@18f
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@191
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@194
    move-result v5

    #@195
    .line 804
    .restart local v5    # "width":I
    move-object/from16 v0, v17

    #@197
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@199
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@19c
    move-result v6

    #@19d
    .restart local v6    # "height":I
    goto/16 :goto_1

    #@19f
    .line 847
    .restart local v15    # "left":F
    .restart local v16    # "top":F
    :cond_9
    const/4 v14, 0x0

    #@1a0
    .restart local v14    # "isHwAccelerated":Z
    goto/16 :goto_2

    #@1a2
    .line 849
    :cond_a
    :try_start_4
    iget v7, v9, Landroid/view/WindowManager$LayoutParams;->format:I
    :try_end_4
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@1a4
    .restart local v7    # "format":I
    goto/16 :goto_3

    #@1a6
    .line 888
    .end local v7    # "format":I
    .end local v14    # "isHwAccelerated":Z
    :catch_0
    move-exception v12

    #@1a7
    .line 889
    .local v12, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    #@1a8
    move-object/from16 v0, v17

    #@1aa
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@1ac
    .line 890
    const-string/jumbo v2, "WindowStateAnimator"

    #@1af
    const-string/jumbo v3, "Exception creating surface"

    #@1b2
    invoke-static {v2, v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b5
    .line 891
    const/4 v2, 0x0

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@1ba
    .line 892
    const/4 v2, 0x0

    #@1bb
    return-object v2

    #@1bc
    .line 882
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    #@1bd
    .line 883
    .local v11, "e":Landroid/view/Surface$OutOfResourcesException;
    const/4 v2, 0x0

    #@1be
    move-object/from16 v0, v17

    #@1c0
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@1c2
    .line 884
    const-string/jumbo v2, "WindowStateAnimator"

    #@1c5
    const-string/jumbo v3, "OutOfResourcesException creating surface"

    #@1c8
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1cb
    .line 885
    move-object/from16 v0, p0

    #@1cd
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1cf
    const-string/jumbo v3, "create"

    #@1d2
    const/4 v4, 0x1

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    #@1d8
    .line 886
    const/4 v2, 0x0

    #@1d9
    move-object/from16 v0, p0

    #@1db
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@1dd
    .line 887
    const/4 v2, 0x0

    #@1de
    return-object v2

    #@1df
    .line 925
    .end local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v7    # "format":I
    .restart local v14    # "isHwAccelerated":Z
    :catch_2
    move-exception v13

    #@1e0
    .line 926
    .local v13, "e":Ljava/lang/RuntimeException;
    :try_start_5
    const-string/jumbo v2, "WindowStateAnimator"

    #@1e3
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e8
    const-string/jumbo v4, "Error creating surface in "

    #@1eb
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v3

    #@1ef
    move-object/from16 v0, v17

    #@1f1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v3

    #@1f5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f8
    move-result-object v3

    #@1f9
    invoke-static {v2, v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1fc
    .line 927
    move-object/from16 v0, p0

    #@1fe
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@200
    const-string/jumbo v3, "create-init"

    #@203
    const/4 v4, 0x1

    #@204
    move-object/from16 v0, p0

    #@206
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@209
    goto/16 :goto_4

    #@20b
    .line 930
    .end local v13    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    #@20c
    .line 931
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@20f
    .line 930
    throw v2
.end method

.method destroyDeferredSurfaceLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1007
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1016
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    #@7
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    #@a
    .line 1017
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@c
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@e
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1024
    :cond_0
    :goto_0
    const/4 v1, 0x0

    #@12
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@14
    .line 1025
    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    #@16
    .line 1005
    return-void

    #@17
    .line 1019
    :catch_0
    move-exception v0

    #@18
    .line 1020
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "WindowStateAnimator"

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "Exception thrown when destroying Window "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 1021
    const-string/jumbo v3, " surface "

    #@2e
    .line 1020
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 1021
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    #@34
    .line 1020
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 1022
    const-string/jumbo v3, " session "

    #@3b
    .line 1020
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 1022
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    #@41
    .line 1020
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    .line 1022
    const-string/jumbo v3, ": "

    #@48
    .line 1020
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    .line 1022
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    .line 1020
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    goto :goto_0
.end method

.method destroySurfaceLocked()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 942
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    if-eqz v3, :cond_0

    #@8
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@a
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@c
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@e
    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@10
    if-ne v3, v4, :cond_0

    #@12
    .line 943
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@14
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@16
    iput-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    #@18
    .line 946
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@1a
    if-eqz v3, :cond_4

    #@1c
    .line 948
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1e
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@20
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@23
    move-result v2

    #@24
    .line 949
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_1

    #@26
    .line 950
    add-int/lit8 v2, v2, -0x1

    #@28
    .line 951
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2a
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@2c
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@32
    .line 952
    .local v0, "c":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x1

    #@33
    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@35
    goto :goto_0

    #@36
    .line 965
    .end local v0    # "c":Lcom/android/server/wm/WindowState;
    :cond_1
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@38
    if-eqz v3, :cond_5

    #@3a
    .line 966
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@3c
    if-eqz v3, :cond_3

    #@3e
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    #@40
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@42
    if-eq v3, v4, :cond_3

    #@44
    .line 967
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 976
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    #@4a
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->destroy()V

    #@4d
    .line 978
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@4f
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    #@51
    .line 991
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@53
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@55
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    .line 998
    :goto_2
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    #@5a
    .line 999
    iput-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@5c
    .line 1000
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5e
    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@60
    .line 1001
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@62
    .line 941
    .end local v2    # "i":I
    :cond_4
    return-void

    #@63
    .line 989
    .restart local v2    # "i":I
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@65
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->destroy()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@68
    goto :goto_1

    #@69
    .line 992
    :catch_0
    move-exception v1

    #@6a
    .line 993
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "WindowStateAnimator"

    #@6d
    new-instance v4, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v5, "Exception thrown when destroying Window "

    #@75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    .line 994
    const-string/jumbo v5, " surface "

    #@80
    .line 993
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    .line 994
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@86
    .line 993
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    .line 994
    const-string/jumbo v5, " session "

    #@8d
    .line 993
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    .line 994
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    #@93
    .line 993
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v4

    #@97
    .line 995
    const-string/jumbo v5, ": "

    #@9a
    .line 993
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v4

    #@9e
    .line 995
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@a1
    move-result-object v5

    #@a2
    .line 993
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v4

    #@aa
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ad
    goto :goto_2
.end method

.method drawStateToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 176
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 182
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@7
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 177
    :pswitch_0
    const-string/jumbo v0, "NO_SURFACE"

    #@f
    return-object v0

    #@10
    .line 178
    :pswitch_1
    const-string/jumbo v0, "DRAW_PENDING"

    #@13
    return-object v0

    #@14
    .line 179
    :pswitch_2
    const-string/jumbo v0, "COMMIT_DRAW_PENDING"

    #@17
    return-object v0

    #@18
    .line 180
    :pswitch_3
    const-string/jumbo v0, "READY_TO_SHOW"

    #@1b
    return-object v0

    #@1c
    .line 181
    :pswitch_4
    const-string/jumbo v0, "HAS_DRAWN"

    #@1f
    return-object v0

    #@20
    .line 176
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
    .line 1918
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
    .line 1919
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1920
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
    .line 1921
    const-string/jumbo v0, " mLocalAnimating="

    #@23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@2b
    .line 1922
    const-string/jumbo v0, " mAnimationIsEntrance="

    #@2e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@36
    .line 1923
    const-string/jumbo v0, " mAnimation="

    #@39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@3e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@41
    .line 1925
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@43
    if-nez v0, :cond_2

    #@45
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@47
    if-eqz v0, :cond_3

    #@49
    .line 1926
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    const-string/jumbo v0, "XForm: has="

    #@4f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52
    .line 1927
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@54
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@57
    .line 1928
    const-string/jumbo v0, " hasLocal="

    #@5a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@5f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@62
    .line 1929
    const-string/jumbo v0, " "

    #@65
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@6a
    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@6d
    .line 1930
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@70
    .line 1932
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@72
    if-eqz v0, :cond_5

    #@74
    .line 1933
    if-eqz p3, :cond_4

    #@76
    .line 1934
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@79
    const-string/jumbo v0, "mSurface="

    #@7c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@81
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@84
    .line 1935
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@87
    const-string/jumbo v0, "mDrawState="

    #@8a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    .line 1936
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    .line 1937
    const-string/jumbo v0, " mLastHidden="

    #@97
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@9c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@9f
    .line 1939
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a2
    const-string/jumbo v0, "Surface: shown="

    #@a5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    #@aa
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@ad
    .line 1940
    const-string/jumbo v0, " layer="

    #@b0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b3
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    #@b5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@b8
    .line 1941
    const-string/jumbo v0, " alpha="

    #@bb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@be
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceAlpha:F

    #@c0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@c3
    .line 1942
    const-string/jumbo v0, " rect=("

    #@c6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c9
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    #@cb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@ce
    .line 1943
    const-string/jumbo v0, ","

    #@d1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d4
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    #@d6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@d9
    .line 1944
    const-string/jumbo v0, ") "

    #@dc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@df
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    #@e1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@e4
    .line 1945
    const-string/jumbo v0, " x "

    #@e7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ea
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    #@ec
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    #@ef
    .line 1947
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    #@f1
    if-eqz v0, :cond_6

    #@f3
    .line 1948
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    const-string/jumbo v0, "mPendingDestroySurface="

    #@f9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc
    .line 1949
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    #@fe
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@101
    .line 1951
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    #@103
    if-nez v0, :cond_7

    #@105
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@107
    if-eqz v0, :cond_8

    #@109
    .line 1952
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10c
    const-string/jumbo v0, "mSurfaceResized="

    #@10f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@112
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    #@114
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@117
    .line 1953
    const-string/jumbo v0, " mSurfaceDestroyDeferred="

    #@11a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    #@11f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@122
    .line 1955
    :cond_8
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@124
    cmpl-float v0, v0, v1

    #@126
    if-nez v0, :cond_9

    #@128
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@12a
    cmpl-float v0, v0, v1

    #@12c
    if-eqz v0, :cond_d

    #@12e
    .line 1956
    :cond_9
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@131
    const-string/jumbo v0, "mShownAlpha="

    #@134
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@137
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@139
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@13c
    .line 1957
    const-string/jumbo v0, " mAlpha="

    #@13f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@142
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@144
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@147
    .line 1958
    const-string/jumbo v0, " mLastAlpha="

    #@14a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14d
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@14f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    #@152
    .line 1960
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    #@154
    if-nez v0, :cond_b

    #@156
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@158
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@15a
    cmpl-float v0, v0, v1

    #@15c
    if-eqz v0, :cond_c

    #@15e
    .line 1961
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@161
    const-string/jumbo v0, "mGlobalScale="

    #@164
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@167
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@169
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@16b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@16e
    .line 1962
    const-string/jumbo v0, " mDsDx="

    #@171
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@174
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@176
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@179
    .line 1963
    const-string/jumbo v0, " mDtDx="

    #@17c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17f
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@181
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@184
    .line 1964
    const-string/jumbo v0, " mDsDy="

    #@187
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18a
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@18c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@18f
    .line 1965
    const-string/jumbo v0, " mDtDy="

    #@192
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@195
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@197
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    #@19a
    .line 1917
    :cond_c
    return-void

    #@19b
    .line 1955
    :cond_d
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@19d
    cmpl-float v0, v0, v1

    #@19f
    if-eqz v0, :cond_a

    #@1a1
    goto :goto_0
.end method

.method finishDrawingLocked()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 513
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@5
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7
    const/4 v1, 0x3

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 518
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@c
    if-ne v0, v2, :cond_1

    #@e
    .line 525
    const/4 v0, 0x2

    #@f
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@11
    .line 526
    return v2

    #@12
    .line 528
    :cond_1
    const/4 v0, 0x0

    #@13
    return v0
.end method

.method finishExit()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 447
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@5
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@8
    move-result v0

    #@9
    .line 448
    .local v0, "N":I
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@c
    .line 449
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@e
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@10
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Lcom/android/server/wm/WindowState;

    #@16
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@18
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    #@1b
    .line 448
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 452
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    #@20
    if-eqz v3, :cond_1

    #@22
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@24
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@26
    if-nez v3, :cond_1

    #@28
    .line 454
    const/4 v3, 0x0

    #@29
    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    #@2b
    .line 455
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2d
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@2f
    invoke-interface {v3}, Landroid/view/IWindow;->dispatchWindowShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 460
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimating()Z

    #@35
    move-result v3

    #@36
    if-nez v3, :cond_2

    #@38
    .line 462
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3a
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@3c
    if-eqz v3, :cond_2

    #@3e
    .line 463
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@40
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@43
    move-result v3

    #@44
    if-nez v3, :cond_2

    #@46
    .line 464
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@48
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@4a
    invoke-virtual {v3}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    #@4d
    .line 468
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4f
    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mExiting:Z

    #@51
    if-nez v3, :cond_3

    #@53
    .line 469
    return-void

    #@54
    .line 472
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimating()Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_4

    #@5a
    .line 473
    return-void

    #@5b
    .line 479
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@5d
    if-eqz v3, :cond_5

    #@5f
    .line 480
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@61
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    #@63
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@65
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@68
    .line 481
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@6a
    const/4 v4, 0x1

    #@6b
    iput-boolean v4, v3, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@6d
    .line 484
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    #@70
    .line 486
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@72
    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mExiting:Z

    #@74
    .line 487
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@76
    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@78
    if-eqz v3, :cond_6

    #@7a
    .line 488
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7c
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    #@7e
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@80
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@83
    .line 489
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@85
    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@87
    .line 491
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@89
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@8b
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V

    #@8e
    .line 440
    return-void

    #@8f
    .line 456
    :catch_0
    move-exception v1

    #@90
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method hide()V
    .locals 4

    #@0
    .prologue
    .line 495
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 497
    const/4 v1, 0x1

    #@5
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@7
    .line 500
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 501
    const/4 v1, 0x0

    #@c
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    #@e
    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@10
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 494
    :cond_0
    :goto_0
    return-void

    #@14
    .line 504
    :catch_0
    move-exception v0

    #@15
    .line 505
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "WindowStateAnimator"

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Exception hiding surface in "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    goto :goto_0
.end method

.method isAnimating()Z
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 249
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
    .line 248
    :cond_0
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    .line 250
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

.method isDummyAnimation()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 255
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 256
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
    .line 255
    :cond_0
    return v0
.end method

.method isWindowAnimating()Z
    .locals 1

    #@0
    .prologue
    .line 261
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
    .line 1674
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 1676
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@d
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    #@10
    .line 1677
    return v4

    #@11
    .line 1696
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
    .line 1713
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1f
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    #@22
    .line 1715
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    #@25
    .line 1718
    const/high16 v3, -0x40800000    # -1.0f

    #@27
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@29
    .line 1721
    const/4 v3, 0x4

    #@2a
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@2c
    .line 1722
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2e
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@31
    .line 1724
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@33
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@35
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@38
    move-result v2

    #@39
    .line 1725
    .local v2, "i":I
    :cond_1
    :goto_0
    if-lez v2, :cond_2

    #@3b
    .line 1726
    add-int/lit8 v2, v2, -0x1

    #@3d
    .line 1727
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
    .line 1728
    .local v0, "c":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@49
    if-eqz v3, :cond_1

    #@4b
    .line 1729
    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@4d
    .line 1730
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4f
    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@51
    if-eqz v3, :cond_1

    #@53
    .line 1731
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@55
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    #@58
    .line 1737
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@5b
    move-result-object v1

    #@5c
    .line 1738
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1

    #@5e
    .line 1739
    iput-boolean v5, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@60
    goto :goto_0

    #@61
    .line 1745
    .end local v0    # "c":Lcom/android/server/wm/WindowState;
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@63
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@65
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@67
    if-eq v3, v6, :cond_4

    #@69
    .line 1746
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@6b
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6d
    if-eqz v3, :cond_4

    #@6f
    .line 1747
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@71
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@73
    iput-boolean v5, v3, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    #@75
    .line 1749
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@77
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@79
    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@7b
    if-eqz v3, :cond_3

    #@7d
    .line 1758
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    #@80
    .line 1759
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@82
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    #@84
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@86
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@88
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8b
    .line 1760
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8d
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@8f
    const/4 v4, 0x7

    #@90
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    #@93
    .line 1762
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@95
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@97
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    #@9a
    .line 1765
    :cond_4
    return v5

    #@9b
    .line 1768
    .end local v2    # "i":I
    :cond_5
    return v4
.end method

.method public prepareSurfaceLocked(Z)V
    .locals 11
    .param p1, "recoveringMemory"    # Z

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1447
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4
    .line 1448
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@6
    if-nez v3, :cond_1

    #@8
    .line 1449
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 1453
    iput-boolean v9, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@e
    .line 1455
    :cond_0
    return-void

    #@f
    .line 1458
    :cond_1
    const/4 v0, 0x0

    #@10
    .line 1460
    .local v0, "displayed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    #@13
    .line 1462
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    #@16
    .line 1464
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    #@18
    if-eqz v3, :cond_2

    #@1a
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1c
    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    #@1e
    if-eqz v3, :cond_9

    #@20
    .line 1467
    :cond_2
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@22
    if-nez v3, :cond_a

    #@24
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_a

    #@2a
    .line 1482
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    #@2c
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@2e
    if-ne v3, v4, :cond_3

    #@30
    .line 1483
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@32
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@34
    cmpl-float v3, v3, v4

    #@36
    if-eqz v3, :cond_b

    #@38
    .line 1491
    :cond_3
    const/4 v0, 0x1

    #@39
    .line 1492
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@3b
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    #@3d
    .line 1493
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@3f
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    #@41
    .line 1494
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@43
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    #@45
    .line 1495
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@47
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    #@49
    .line 1496
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@4b
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    #@4d
    .line 1497
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@4f
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    #@51
    .line 1498
    iget v3, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    #@53
    iput v3, v2, Lcom/android/server/wm/WindowState;->mLastHScale:F

    #@55
    .line 1499
    iget v3, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    #@57
    iput v3, v2, Lcom/android/server/wm/WindowState;->mLastVScale:F

    #@59
    .line 1506
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@5b
    if-eqz v3, :cond_6

    #@5d
    .line 1508
    :try_start_0
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@5f
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceAlpha:F

    #@61
    .line 1509
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@63
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    #@65
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@68
    .line 1510
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@6a
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    #@6c
    .line 1511
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@6e
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@70
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@73
    .line 1512
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@75
    .line 1513
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@77
    iget v5, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    #@79
    mul-float/2addr v4, v5

    #@7a
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@7c
    iget v6, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    #@7e
    mul-float/2addr v5, v6

    #@7f
    .line 1514
    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@81
    iget v7, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    #@83
    mul-float/2addr v6, v7

    #@84
    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@86
    iget v8, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    #@88
    mul-float/2addr v7, v8

    #@89
    .line 1512
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    #@8c
    .line 1516
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@8e
    if-eqz v3, :cond_5

    #@90
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@92
    const/4 v4, 0x4

    #@93
    if-ne v3, v4, :cond_5

    #@95
    .line 1521
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked()Z

    #@98
    move-result v3

    #@99
    if-eqz v3, :cond_c

    #@9b
    .line 1522
    const/4 v3, 0x0

    #@9c
    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@9e
    .line 1523
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    #@a0
    if-eqz v3, :cond_4

    #@a2
    .line 1524
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a4
    const/4 v4, 0x1

    #@a5
    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    #@a8
    .line 1529
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@aa
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@ad
    move-result v4

    #@ae
    .line 1530
    const/16 v5, 0x8

    #@b0
    .line 1529
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@b3
    .line 1535
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@b5
    if-eqz v3, :cond_6

    #@b7
    .line 1536
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@b9
    const/4 v4, 0x1

    #@ba
    iput-boolean v4, v3, Lcom/android/server/wm/WindowToken;->hasVisible:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@bc
    .line 1552
    :cond_6
    :goto_1
    if-eqz v0, :cond_8

    #@be
    .line 1553
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@c0
    if-eqz v3, :cond_7

    #@c2
    .line 1554
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@c5
    move-result v3

    #@c6
    if-nez v3, :cond_d

    #@c8
    .line 1555
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@ca
    iget v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@cc
    and-int/lit8 v4, v4, -0x9

    #@ce
    iput v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@d0
    .line 1556
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@d2
    iput-object v2, v3, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    #@d4
    .line 1564
    :cond_7
    :goto_2
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@d6
    iput-boolean v10, v3, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    #@d8
    .line 1446
    :cond_8
    return-void

    #@d9
    .line 1466
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    #@dc
    goto :goto_1

    #@dd
    .line 1468
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    #@e0
    .line 1469
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e2
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V

    #@e5
    .line 1477
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@e7
    if-eqz v3, :cond_6

    #@e9
    .line 1478
    iput-boolean v9, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@eb
    goto :goto_1

    #@ec
    .line 1484
    :cond_b
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    #@ee
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@f0
    cmpl-float v3, v3, v4

    #@f2
    if-nez v3, :cond_3

    #@f4
    .line 1485
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    #@f6
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@f8
    cmpl-float v3, v3, v4

    #@fa
    if-nez v3, :cond_3

    #@fc
    .line 1486
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    #@fe
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@100
    cmpl-float v3, v3, v4

    #@102
    if-nez v3, :cond_3

    #@104
    .line 1487
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    #@106
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@108
    cmpl-float v3, v3, v4

    #@10a
    if-nez v3, :cond_3

    #@10c
    .line 1488
    iget v3, v2, Lcom/android/server/wm/WindowState;->mLastHScale:F

    #@10e
    iget v4, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    #@110
    cmpl-float v3, v3, v4

    #@112
    if-nez v3, :cond_3

    #@114
    .line 1489
    iget v3, v2, Lcom/android/server/wm/WindowState;->mLastVScale:F

    #@116
    iget v4, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    #@118
    cmpl-float v3, v3, v4

    #@11a
    if-nez v3, :cond_3

    #@11c
    .line 1490
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@11e
    .line 1482
    if-nez v3, :cond_3

    #@120
    .line 1549
    const/4 v0, 0x1

    #@121
    goto :goto_1

    #@122
    .line 1532
    :cond_c
    const/4 v3, 0x0

    #@123
    :try_start_1
    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@125
    goto :goto_0

    #@126
    .line 1538
    :catch_0
    move-exception v1

    #@127
    .line 1539
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "WindowStateAnimator"

    #@12a
    new-instance v4, Ljava/lang/StringBuilder;

    #@12c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12f
    const-string/jumbo v5, "Error updating surface in "

    #@132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v4

    #@136
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v4

    #@13a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v4

    #@13e
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@141
    .line 1540
    if-nez p1, :cond_6

    #@143
    .line 1541
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@145
    const-string/jumbo v4, "update"

    #@148
    invoke-virtual {v3, p0, v4, v10}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    #@14b
    goto/16 :goto_1

    #@14d
    .line 1560
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_d
    iput-boolean v9, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@14f
    goto :goto_2
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 233
    const-wide/16 v0, -0x1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;J)V

    #@5
    .line 232
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;J)V
    .locals 6
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .param p2, "startTime"    # J

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 220
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@4
    .line 221
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@6
    .line 222
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@8
    .line 223
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@a
    const-wide/16 v4, 0x2710

    #@c
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->restrictDuration(J)V

    #@f
    .line 224
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
    .line 226
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@1c
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    #@1f
    .line 227
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
    .line 228
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@2b
    .line 229
    iput-wide p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    #@2d
    .line 218
    return-void

    #@2e
    :cond_0
    move v0, v1

    #@2f
    .line 227
    goto :goto_0
.end method

.method setOpaqueLocked(Z)V
    .locals 1
    .param p1, "isOpaque"    # Z

    #@0
    .prologue
    .line 1641
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1642
    return-void

    #@5
    .line 1645
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@8
    .line 1649
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@a
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1651
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@10
    .line 1640
    return-void

    #@11
    .line 1650
    :catchall_0
    move-exception v0

    #@12
    .line 1651
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@15
    .line 1650
    throw v0
.end method

.method setSecureLocked(Z)V
    .locals 1
    .param p1, "isSecure"    # Z

    #@0
    .prologue
    .line 1657
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1658
    return-void

    #@5
    .line 1661
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@8
    .line 1665
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@a
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1667
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@10
    .line 1656
    return-void

    #@11
    .line 1666
    :catchall_0
    move-exception v0

    #@12
    .line 1667
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@15
    .line 1666
    throw v0
.end method

.method setSurfaceBoundariesLocked(Z)V
    .locals 23
    .param p1, "recoveringMemory"    # Z

    #@0
    .prologue
    .line 1348
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4
    .line 1352
    .local v15, "w":Lcom/android/server/wm/WindowState;
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@6
    move-object/from16 v17, v0

    #@8
    move-object/from16 v0, v17

    #@a
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@c
    move/from16 v17, v0

    #@e
    move/from16 v0, v17

    #@10
    and-int/lit16 v0, v0, 0x4000

    #@12
    move/from16 v17, v0

    #@14
    if-eqz v17, :cond_7

    #@16
    .line 1355
    iget v0, v15, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@18
    move/from16 v16, v0

    #@1a
    .line 1356
    .local v16, "width":I
    iget v7, v15, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@1c
    .line 1364
    .local v7, "height":I
    :goto_0
    const/16 v17, 0x1

    #@1e
    move/from16 v0, v16

    #@20
    move/from16 v1, v17

    #@22
    if-ge v0, v1, :cond_0

    #@24
    .line 1365
    const/16 v16, 0x1

    #@26
    .line 1367
    :cond_0
    const/16 v17, 0x1

    #@28
    move/from16 v0, v17

    #@2a
    if-ge v7, v0, :cond_1

    #@2c
    .line 1368
    const/4 v7, 0x1

    #@2d
    .line 1371
    :cond_1
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    #@2f
    move-object/from16 v17, v0

    #@31
    move-object/from16 v0, v17

    #@33
    iget v8, v0, Landroid/graphics/RectF;->left:F

    #@35
    .line 1372
    .local v8, "left":F
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    #@37
    move-object/from16 v17, v0

    #@39
    move-object/from16 v0, v17

    #@3b
    iget v14, v0, Landroid/graphics/RectF;->top:F

    #@3d
    .line 1375
    .local v14, "top":F
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@40
    move-result-object v4

    #@41
    .line 1376
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@44
    move-result v5

    #@45
    .line 1377
    .local v5, "displayId":I
    const/high16 v9, 0x3f800000    # 1.0f

    #@47
    .line 1379
    .local v9, "scale":F
    move-object/from16 v0, p0

    #@49
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4b
    move-object/from16 v17, v0

    #@4d
    move-object/from16 v0, v17

    #@4f
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@51
    move-object/from16 v17, v0

    #@53
    if-eqz v17, :cond_2

    #@55
    if-nez v5, :cond_2

    #@57
    .line 1381
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5b
    move-object/from16 v17, v0

    #@5d
    move-object/from16 v0, v17

    #@5f
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@61
    move-object/from16 v17, v0

    #@63
    move-object/from16 v0, v17

    #@65
    invoke-virtual {v0, v15}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    #@68
    move-result-object v10

    #@69
    .line 1382
    .local v10, "spec":Landroid/view/MagnificationSpec;
    if-eqz v10, :cond_2

    #@6b
    invoke-virtual {v10}, Landroid/view/MagnificationSpec;->isNop()Z

    #@6e
    move-result v17

    #@6f
    if-eqz v17, :cond_8

    #@71
    .line 1387
    .end local v10    # "spec":Landroid/view/MagnificationSpec;
    :cond_2
    :goto_1
    move/from16 v0, v16

    #@73
    int-to-float v0, v0

    #@74
    move/from16 v17, v0

    #@76
    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@78
    move-object/from16 v18, v0

    #@7a
    move-object/from16 v0, v18

    #@7c
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@7e
    move/from16 v18, v0

    #@80
    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@82
    move-object/from16 v19, v0

    #@84
    move-object/from16 v0, v19

    #@86
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@88
    move/from16 v19, v0

    #@8a
    add-int v18, v18, v19

    #@8c
    move/from16 v0, v18

    #@8e
    int-to-float v0, v0

    #@8f
    move/from16 v18, v0

    #@91
    mul-float v18, v18, v9

    #@93
    add-float v17, v17, v18

    #@95
    move/from16 v0, v17

    #@97
    float-to-int v0, v0

    #@98
    move/from16 v16, v0

    #@9a
    .line 1388
    int-to-float v0, v7

    #@9b
    move/from16 v17, v0

    #@9d
    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@9f
    move-object/from16 v18, v0

    #@a1
    move-object/from16 v0, v18

    #@a3
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@a5
    move/from16 v18, v0

    #@a7
    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@a9
    move-object/from16 v19, v0

    #@ab
    move-object/from16 v0, v19

    #@ad
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@af
    move/from16 v19, v0

    #@b1
    add-int v18, v18, v19

    #@b3
    move/from16 v0, v18

    #@b5
    int-to-float v0, v0

    #@b6
    move/from16 v18, v0

    #@b8
    mul-float v18, v18, v9

    #@ba
    add-float v17, v17, v18

    #@bc
    move/from16 v0, v17

    #@be
    float-to-int v7, v0

    #@bf
    .line 1389
    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@c1
    move-object/from16 v17, v0

    #@c3
    move-object/from16 v0, v17

    #@c5
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@c7
    move/from16 v17, v0

    #@c9
    move/from16 v0, v17

    #@cb
    int-to-float v0, v0

    #@cc
    move/from16 v17, v0

    #@ce
    mul-float v17, v17, v9

    #@d0
    sub-float v8, v8, v17

    #@d2
    .line 1390
    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@d4
    move-object/from16 v17, v0

    #@d6
    move-object/from16 v0, v17

    #@d8
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@da
    move/from16 v17, v0

    #@dc
    move/from16 v0, v17

    #@de
    int-to-float v0, v0

    #@df
    move/from16 v17, v0

    #@e1
    mul-float v17, v17, v9

    #@e3
    sub-float v14, v14, v17

    #@e5
    .line 1392
    move-object/from16 v0, p0

    #@e7
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    #@e9
    move/from16 v17, v0

    #@eb
    cmpl-float v17, v17, v8

    #@ed
    if-nez v17, :cond_3

    #@ef
    move-object/from16 v0, p0

    #@f1
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    #@f3
    move/from16 v17, v0

    #@f5
    cmpl-float v17, v17, v14

    #@f7
    if-eqz v17, :cond_9

    #@f9
    :cond_3
    const/4 v12, 0x1

    #@fa
    .line 1393
    .local v12, "surfaceMoved":Z
    :goto_2
    if-eqz v12, :cond_4

    #@fc
    .line 1394
    move-object/from16 v0, p0

    #@fe
    iput v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    #@100
    .line 1395
    move-object/from16 v0, p0

    #@102
    iput v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    #@104
    .line 1400
    :try_start_0
    move-object/from16 v0, p0

    #@106
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@108
    move-object/from16 v17, v0

    #@10a
    move-object/from16 v0, v17

    #@10c
    invoke-virtual {v0, v8, v14}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@10f
    .line 1410
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    #@111
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    #@113
    move/from16 v17, v0

    #@115
    move/from16 v0, v16

    #@117
    int-to-float v0, v0

    #@118
    move/from16 v18, v0

    #@11a
    cmpl-float v17, v17, v18

    #@11c
    if-nez v17, :cond_5

    #@11e
    move-object/from16 v0, p0

    #@120
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    #@122
    move/from16 v17, v0

    #@124
    int-to-float v0, v7

    #@125
    move/from16 v18, v0

    #@127
    cmpl-float v17, v17, v18

    #@129
    if-eqz v17, :cond_a

    #@12b
    :cond_5
    const/4 v13, 0x1

    #@12c
    .line 1411
    .local v13, "surfaceResized":Z
    :goto_4
    if-eqz v13, :cond_6

    #@12e
    .line 1412
    move/from16 v0, v16

    #@130
    int-to-float v0, v0

    #@131
    move/from16 v17, v0

    #@133
    move/from16 v0, v17

    #@135
    move-object/from16 v1, p0

    #@137
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    #@139
    .line 1413
    int-to-float v0, v7

    #@13a
    move/from16 v17, v0

    #@13c
    move/from16 v0, v17

    #@13e
    move-object/from16 v1, p0

    #@140
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    #@142
    .line 1414
    const/16 v17, 0x1

    #@144
    move/from16 v0, v17

    #@146
    move-object/from16 v1, p0

    #@148
    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    #@14a
    .line 1419
    :try_start_1
    move-object/from16 v0, p0

    #@14c
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@14e
    move-object/from16 v17, v0

    #@150
    move-object/from16 v0, v17

    #@152
    move/from16 v1, v16

    #@154
    invoke-virtual {v0, v1, v7}, Landroid/view/SurfaceControl;->setSize(II)V

    #@157
    .line 1420
    move-object/from16 v0, p0

    #@159
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@15b
    move-object/from16 v17, v0

    #@15d
    .line 1421
    move-object/from16 v0, p0

    #@15f
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@161
    move/from16 v18, v0

    #@163
    iget v0, v15, Lcom/android/server/wm/WindowState;->mHScale:F

    #@165
    move/from16 v19, v0

    #@167
    mul-float v18, v18, v19

    #@169
    move-object/from16 v0, p0

    #@16b
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@16d
    move/from16 v19, v0

    #@16f
    iget v0, v15, Lcom/android/server/wm/WindowState;->mVScale:F

    #@171
    move/from16 v20, v0

    #@173
    mul-float v19, v19, v20

    #@175
    .line 1422
    move-object/from16 v0, p0

    #@177
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@179
    move/from16 v20, v0

    #@17b
    iget v0, v15, Lcom/android/server/wm/WindowState;->mHScale:F

    #@17d
    move/from16 v21, v0

    #@17f
    mul-float v20, v20, v21

    #@181
    move-object/from16 v0, p0

    #@183
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@185
    move/from16 v21, v0

    #@187
    iget v0, v15, Lcom/android/server/wm/WindowState;->mVScale:F

    #@189
    move/from16 v22, v0

    #@18b
    mul-float v21, v21, v22

    #@18d
    .line 1420
    invoke-virtual/range {v17 .. v21}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    #@190
    .line 1423
    move-object/from16 v0, p0

    #@192
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@194
    move-object/from16 v17, v0

    #@196
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@199
    move-result v18

    #@19a
    .line 1424
    const/16 v19, 0x4

    #@19c
    .line 1423
    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@19f
    .line 1425
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1a1
    move-object/from16 v17, v0

    #@1a3
    move-object/from16 v0, v17

    #@1a5
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@1a7
    move/from16 v17, v0

    #@1a9
    and-int/lit8 v17, v17, 0x2

    #@1ab
    if-eqz v17, :cond_6

    #@1ad
    .line 1426
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@1b0
    move-result-object v11

    #@1b1
    .line 1427
    .local v11, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v11, :cond_6

    #@1b3
    .line 1428
    move-object/from16 v0, p0

    #@1b5
    invoke-virtual {v11, v0}, Lcom/android/server/wm/TaskStack;->startDimmingIfNeeded(Lcom/android/server/wm/WindowStateAnimator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@1b8
    .line 1443
    .end local v11    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_6
    :goto_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->updateSurfaceWindowCrop(Z)V

    #@1bb
    .line 1347
    return-void

    #@1bc
    .line 1358
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "displayId":I
    .end local v7    # "height":I
    .end local v8    # "left":F
    .end local v9    # "scale":F
    .end local v12    # "surfaceMoved":Z
    .end local v13    # "surfaceResized":Z
    .end local v14    # "top":F
    .end local v16    # "width":I
    :cond_7
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@1be
    move-object/from16 v17, v0

    #@1c0
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    #@1c3
    move-result v16

    #@1c4
    .line 1359
    .restart local v16    # "width":I
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@1c6
    move-object/from16 v17, v0

    #@1c8
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    #@1cb
    move-result v7

    #@1cc
    .restart local v7    # "height":I
    goto/16 :goto_0

    #@1ce
    .line 1383
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "displayId":I
    .restart local v8    # "left":F
    .restart local v9    # "scale":F
    .restart local v10    # "spec":Landroid/view/MagnificationSpec;
    .restart local v14    # "top":F
    :cond_8
    iget v9, v10, Landroid/view/MagnificationSpec;->scale:F

    #@1d0
    goto/16 :goto_1

    #@1d2
    .line 1392
    .end local v10    # "spec":Landroid/view/MagnificationSpec;
    :cond_9
    const/4 v12, 0x0

    #@1d3
    .restart local v12    # "surfaceMoved":Z
    goto/16 :goto_2

    #@1d5
    .line 1401
    :catch_0
    move-exception v6

    #@1d6
    .line 1402
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v17, "WindowStateAnimator"

    #@1d9
    new-instance v18, Ljava/lang/StringBuilder;

    #@1db
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1de
    const-string/jumbo v19, "Error positioning surface of "

    #@1e1
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v18

    #@1e5
    move-object/from16 v0, v18

    #@1e7
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v18

    #@1eb
    .line 1403
    const-string/jumbo v19, " pos=("

    #@1ee
    .line 1402
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v18

    #@1f2
    move-object/from16 v0, v18

    #@1f4
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v18

    #@1f8
    .line 1403
    const-string/jumbo v19, ","

    #@1fb
    .line 1402
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    move-result-object v18

    #@1ff
    move-object/from16 v0, v18

    #@201
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@204
    move-result-object v18

    #@205
    .line 1403
    const-string/jumbo v19, ")"

    #@208
    .line 1402
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v18

    #@20c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20f
    move-result-object v18

    #@210
    move-object/from16 v0, v17

    #@212
    move-object/from16 v1, v18

    #@214
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@217
    .line 1404
    if-nez p1, :cond_4

    #@219
    .line 1405
    move-object/from16 v0, p0

    #@21b
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@21d
    move-object/from16 v17, v0

    #@21f
    const-string/jumbo v18, "position"

    #@222
    const/16 v19, 0x1

    #@224
    move-object/from16 v0, v17

    #@226
    move-object/from16 v1, p0

    #@228
    move-object/from16 v2, v18

    #@22a
    move/from16 v3, v19

    #@22c
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    #@22f
    goto/16 :goto_3

    #@231
    .line 1410
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_a
    const/4 v13, 0x0

    #@232
    .restart local v13    # "surfaceResized":Z
    goto/16 :goto_4

    #@234
    .line 1431
    :catch_1
    move-exception v6

    #@235
    .line 1435
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v17, "WindowStateAnimator"

    #@238
    new-instance v18, Ljava/lang/StringBuilder;

    #@23a
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@23d
    const-string/jumbo v19, "Error resizing surface of "

    #@240
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@243
    move-result-object v18

    #@244
    move-object/from16 v0, v18

    #@246
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@249
    move-result-object v18

    #@24a
    .line 1436
    const-string/jumbo v19, " size=("

    #@24d
    .line 1435
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@250
    move-result-object v18

    #@251
    move-object/from16 v0, v18

    #@253
    move/from16 v1, v16

    #@255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@258
    move-result-object v18

    #@259
    .line 1436
    const-string/jumbo v19, "x"

    #@25c
    .line 1435
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25f
    move-result-object v18

    #@260
    move-object/from16 v0, v18

    #@262
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@265
    move-result-object v18

    #@266
    .line 1436
    const-string/jumbo v19, ")"

    #@269
    .line 1435
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26c
    move-result-object v18

    #@26d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@270
    move-result-object v18

    #@271
    move-object/from16 v0, v17

    #@273
    move-object/from16 v1, v18

    #@275
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@278
    .line 1437
    if-nez p1, :cond_6

    #@27a
    .line 1438
    move-object/from16 v0, p0

    #@27c
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@27e
    move-object/from16 v17, v0

    #@280
    const-string/jumbo v18, "size"

    #@283
    const/16 v19, 0x1

    #@285
    move-object/from16 v0, v17

    #@287
    move-object/from16 v1, p0

    #@289
    move-object/from16 v2, v18

    #@28b
    move/from16 v3, v19

    #@28d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    #@290
    goto/16 :goto_5
.end method

.method setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 1569
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1570
    const-string/jumbo v0, "WindowStateAnimator"

    #@7
    const-string/jumbo v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    #@a
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1571
    return-void

    #@e
    .line 1574
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@11
    .line 1578
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@13
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 1580
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@19
    .line 1568
    return-void

    #@1a
    .line 1579
    :catchall_0
    move-exception v0

    #@1b
    .line 1580
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@1e
    .line 1579
    throw v0
.end method

.method setWallpaperOffset(Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "shownFrame"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 1587
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@5
    move-result-object v0

    #@6
    .line 1588
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v4, p1, Landroid/graphics/RectF;->left:F

    #@8
    float-to-int v4, v4

    #@9
    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@b
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@d
    sub-int v2, v4, v5

    #@f
    .line 1589
    .local v2, "left":I
    iget v4, p1, Landroid/graphics/RectF;->top:F

    #@11
    float-to-int v4, v4

    #@12
    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@14
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@16
    sub-int v3, v4, v5

    #@18
    .line 1590
    .local v3, "top":I
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    #@1a
    int-to-float v5, v2

    #@1b
    cmpl-float v4, v4, v5

    #@1d
    if-nez v4, :cond_0

    #@1f
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    #@21
    int-to-float v5, v3

    #@22
    cmpl-float v4, v4, v5

    #@24
    if-eqz v4, :cond_2

    #@26
    .line 1591
    :cond_0
    int-to-float v4, v2

    #@27
    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    #@29
    .line 1592
    int-to-float v4, v3

    #@2a
    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    #@2c
    .line 1593
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@2e
    if-eqz v4, :cond_1

    #@30
    .line 1598
    return-void

    #@31
    .line 1601
    :cond_1
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@34
    .line 1605
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@36
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@38
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@3a
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@3c
    add-int/2addr v5, v2

    #@3d
    int-to-float v5, v5

    #@3e
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@40
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@42
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@44
    add-int/2addr v6, v3

    #@45
    int-to-float v6, v6

    #@46
    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@49
    .line 1606
    const/4 v4, 0x0

    #@4a
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowStateAnimator;->updateSurfaceWindowCrop(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4d
    .line 1611
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@50
    .line 1586
    :cond_2
    :goto_0
    return-void

    #@51
    .line 1607
    :catch_0
    move-exception v1

    #@52
    .line 1608
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v4, "WindowStateAnimator"

    #@55
    new-instance v5, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v6, "Error positioning surface of "

    #@5d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    .line 1609
    const-string/jumbo v6, " pos=("

    #@6a
    .line 1608
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    .line 1609
    const-string/jumbo v6, ","

    #@75
    .line 1608
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    .line 1609
    const-string/jumbo v6, ")"

    #@80
    .line 1608
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v5

    #@88
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8b
    .line 1611
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@8e
    goto :goto_0

    #@8f
    .line 1610
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    #@90
    .line 1611
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@93
    .line 1610
    throw v4
.end method

.method showSurfaceRobustlyLocked()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 1781
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1782
    const/4 v1, 0x1

    #@7
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    #@9
    .line 1783
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@b
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    #@e
    .line 1784
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@10
    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 1787
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@16
    const/4 v2, 0x0

    #@17
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@19
    .line 1788
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@1b
    iget v2, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@1d
    or-int/lit8 v2, v2, 0x10

    #@1f
    iput v2, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 1791
    :cond_0
    return v4

    #@22
    .line 1792
    :catch_0
    move-exception v0

    #@23
    .line 1793
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "WindowStateAnimator"

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "Failure showing surface "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    const-string/jumbo v3, " in "

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    .line 1796
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4e
    const-string/jumbo v2, "show"

    #@51
    invoke-virtual {v1, p0, v2, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    #@54
    .line 1798
    return v5
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
    .line 288
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@5
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@8
    move-result-object v0

    #@9
    .line 289
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_11

    #@b
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_11

    #@13
    .line 292
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@15
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_3

    #@1b
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@1d
    if-eqz v3, :cond_3

    #@1f
    .line 293
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@21
    .line 294
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@23
    .line 295
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@25
    if-nez v3, :cond_0

    #@27
    .line 302
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@2a
    move-result-object v2

    #@2b
    .line 303
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    #@2d
    if-eqz v3, :cond_1

    #@2f
    .line 304
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    #@31
    .line 305
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@33
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@35
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@37
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@3a
    move-result v4

    #@3b
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3d
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@3f
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@42
    move-result v5

    #@43
    .line 306
    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    #@45
    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    #@47
    .line 305
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@4a
    .line 311
    :goto_0
    iget v3, v2, Landroid/view/DisplayInfo;->appWidth:I

    #@4c
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    #@4e
    .line 312
    iget v3, v2, Landroid/view/DisplayInfo;->appHeight:I

    #@50
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    #@52
    .line 313
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@54
    iget-wide v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    #@56
    const-wide/16 v6, -0x1

    #@58
    cmp-long v4, v4, v6

    #@5a
    if-eqz v4, :cond_2

    #@5c
    .line 314
    iget-wide v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    #@5e
    .line 313
    :goto_1
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@61
    .line 316
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@63
    .line 317
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@65
    .line 319
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@67
    if-eqz v3, :cond_3

    #@69
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@6b
    if-eqz v3, :cond_3

    #@6d
    .line 320
    iput-wide p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimationTime:J

    #@6f
    .line 321
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimation(J)Z

    #@72
    move-result v3

    #@73
    if-eqz v3, :cond_3

    #@75
    .line 322
    return v9

    #@76
    .line 308
    .restart local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@78
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@7a
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@7c
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@7f
    move-result v4

    #@80
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@82
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@84
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@87
    move-result v5

    #@88
    .line 309
    iget v6, v2, Landroid/view/DisplayInfo;->appWidth:I

    #@8a
    iget v7, v2, Landroid/view/DisplayInfo;->appHeight:I

    #@8c
    .line 308
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@8f
    goto :goto_0

    #@90
    :cond_2
    move-wide v4, p1

    #@91
    .line 315
    goto :goto_1

    #@92
    .line 330
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_3
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@94
    .line 331
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@96
    if-eqz v3, :cond_4

    #@98
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    #@9a
    if-eqz v3, :cond_5

    #@9c
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@9e
    if-eqz v3, :cond_5

    #@a0
    .line 332
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@a2
    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@a4
    if-eqz v3, :cond_5

    #@a6
    .line 340
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@a8
    .line 341
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@aa
    .line 342
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@ac
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    #@af
    .line 343
    return v10

    #@b0
    .line 344
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@b2
    if-eqz v3, :cond_10

    #@b4
    .line 347
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@b6
    .line 357
    :cond_6
    :goto_2
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@b8
    if-nez v3, :cond_7

    #@ba
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@bc
    if-eqz v3, :cond_12

    #@be
    .line 367
    :cond_7
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@c0
    .line 368
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    #@c2
    .line 369
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimatingMove:Z

    #@c4
    .line 370
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    #@c6
    .line 371
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@c8
    if-eqz v3, :cond_8

    #@ca
    .line 372
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@cc
    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    #@cf
    .line 373
    iput-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@d1
    .line 375
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@d3
    iget-object v3, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@d5
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@d7
    if-ne v3, v4, :cond_9

    #@d9
    .line 376
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@db
    iput-object v8, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    #@dd
    .line 378
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@df
    iget v3, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    #@e1
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@e3
    .line 379
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@e5
    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@e7
    if-eqz v3, :cond_13

    #@e9
    .line 380
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@eb
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@ed
    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    #@ef
    add-int/2addr v3, v4

    #@f0
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@f2
    .line 386
    :cond_a
    :goto_3
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    #@f4
    .line 387
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    #@f6
    .line 388
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@f8
    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@fa
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@fc
    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@fe
    if-eq v3, v4, :cond_d

    #@100
    .line 393
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@102
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@104
    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@106
    iput-boolean v4, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@108
    .line 394
    if-eqz v0, :cond_b

    #@10a
    .line 395
    iput-boolean v9, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@10c
    .line 397
    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@10e
    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@110
    if-nez v3, :cond_d

    #@112
    .line 398
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@114
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    #@116
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@118
    if-ne v3, v4, :cond_c

    #@11a
    .line 401
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@11c
    iput-boolean v9, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@11e
    .line 406
    :cond_c
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@120
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    #@123
    .line 409
    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    #@125
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    #@128
    .line 410
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@12a
    const/4 v4, 0x4

    #@12b
    if-ne v3, v4, :cond_14

    #@12d
    .line 411
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@12f
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@131
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@133
    const/4 v4, 0x3

    #@134
    if-ne v3, v4, :cond_14

    #@136
    .line 412
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@138
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@13a
    if-eqz v3, :cond_14

    #@13c
    .line 413
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@13e
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@140
    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    #@142
    .line 410
    if-eqz v3, :cond_14

    #@144
    .line 414
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@146
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@148
    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@14a
    if-eqz v3, :cond_14

    #@14c
    .line 417
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@14e
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    #@150
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@152
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@154
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@157
    .line 418
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@159
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@15b
    const/4 v4, 0x7

    #@15c
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    #@15f
    .line 427
    :cond_e
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    #@162
    .line 428
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@164
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@167
    move-result v1

    #@168
    .line 429
    .local v1, "displayId":I
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@16a
    const/16 v4, 0x8

    #@16c
    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    #@16f
    .line 430
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@171
    .line 431
    const-string/jumbo v4, "WindowStateAnimator"

    #@174
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@176
    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    #@179
    move-result v5

    #@17a
    .line 430
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    #@17d
    .line 433
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@17f
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@181
    if-eqz v3, :cond_f

    #@183
    .line 434
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@185
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@187
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    #@18a
    .line 437
    :cond_f
    return v10

    #@18b
    .line 348
    .end local v1    # "displayId":I
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    #@18e
    move-result v3

    #@18f
    if-eqz v3, :cond_6

    #@191
    .line 349
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@193
    goto/16 :goto_2

    #@195
    .line 351
    :cond_11
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@197
    if-eqz v3, :cond_6

    #@199
    .line 354
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@19b
    goto/16 :goto_2

    #@19d
    .line 358
    :cond_12
    return v10

    #@19e
    .line 381
    :cond_13
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    #@1a0
    if-eqz v3, :cond_a

    #@1a2
    .line 382
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@1a4
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1a6
    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    #@1a8
    add-int/2addr v3, v4

    #@1a9
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@1ab
    goto/16 :goto_3

    #@1ad
    .line 419
    :cond_14
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    #@1af
    const/16 v4, 0x7d0

    #@1b1
    if-ne v3, v4, :cond_e

    #@1b3
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@1b5
    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@1b7
    if-eqz v3, :cond_e

    #@1b9
    .line 422
    if-eqz v0, :cond_e

    #@1bb
    .line 423
    iput-boolean v9, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@1bd
    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1971
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v1, "WindowStateAnimator{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    .line 1972
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
    .line 1973
    const/16 v1, 0x20

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@18
    .line 1974
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
    .line 1975
    const/16 v1, 0x7d

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@28
    .line 1976
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
    .line 1626
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@4
    if-nez v5, :cond_0

    #@6
    .line 1627
    return v3

    #@7
    .line 1629
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@9
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@c
    move-result-object v0

    #@d
    .line 1630
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@f
    .line 1631
    const/high16 v6, 0x1000000

    #@11
    .line 1630
    and-int/2addr v5, v6

    #@12
    if-eqz v5, :cond_1

    #@14
    const/4 v2, 0x1

    #@15
    .line 1632
    .local v2, "isHwAccelerated":Z
    :goto_0
    if-eqz v2, :cond_2

    #@17
    const/4 v1, -0x3

    #@18
    .line 1633
    .local v1, "format":I
    :goto_1
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    #@1a
    if-ne v1, v5, :cond_4

    #@1c
    .line 1634
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
    .line 1635
    return v4

    #@28
    .line 1630
    .end local v1    # "format":I
    .end local v2    # "isHwAccelerated":Z
    :cond_1
    const/4 v2, 0x0

    #@29
    .restart local v2    # "isHwAccelerated":Z
    goto :goto_0

    #@2a
    .line 1632
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@2c
    .restart local v1    # "format":I
    goto :goto_1

    #@2d
    :cond_3
    move v3, v4

    #@2e
    .line 1634
    goto :goto_2

    #@2f
    .line 1637
    :cond_4
    return v3
.end method

.method updateSurfaceWindowCrop(Z)V
    .locals 13
    .param p1, "recoveringMemory"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1271
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3
    .line 1272
    .local v6, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@6
    move-result-object v2

    #@7
    .line 1273
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_0

    #@9
    .line 1274
    return-void

    #@a
    .line 1276
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@d
    move-result-object v3

    #@e
    .line 1279
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@10
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@12
    and-int/lit16 v7, v7, 0x4000

    #@14
    if-eqz v7, :cond_4

    #@16
    .line 1282
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@18
    iget v8, v6, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@1a
    iget v9, v6, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@1c
    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    #@1f
    .line 1307
    :goto_0
    iget v7, v3, Landroid/view/DisplayInfo;->appWidth:I

    #@21
    iget v8, v3, Landroid/view/DisplayInfo;->appHeight:I

    #@23
    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    #@26
    move-result v5

    #@27
    .line 1308
    .local v5, "fullscreen":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@29
    .line 1311
    .local v1, "clipRect":Landroid/graphics/Rect;
    iget-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@2b
    if-eqz v7, :cond_1

    #@2d
    if-eqz v5, :cond_9

    #@2f
    :cond_1
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@31
    :goto_1
    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@34
    .line 1314
    iget-object v0, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@36
    .line 1315
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v7, v1, Landroid/graphics/Rect;->left:I

    #@38
    iget-object v8, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@3a
    iget v8, v8, Landroid/graphics/Rect;->left:I

    #@3c
    sub-int/2addr v7, v8

    #@3d
    iput v7, v1, Landroid/graphics/Rect;->left:I

    #@3f
    .line 1316
    iget v7, v1, Landroid/graphics/Rect;->top:I

    #@41
    iget-object v8, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@43
    iget v8, v8, Landroid/graphics/Rect;->top:I

    #@45
    sub-int/2addr v7, v8

    #@46
    iput v7, v1, Landroid/graphics/Rect;->top:I

    #@48
    .line 1317
    iget v7, v1, Landroid/graphics/Rect;->right:I

    #@4a
    iget-object v8, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@4c
    iget v8, v8, Landroid/graphics/Rect;->right:I

    #@4e
    add-int/2addr v7, v8

    #@4f
    iput v7, v1, Landroid/graphics/Rect;->right:I

    #@51
    .line 1318
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    #@53
    iget-object v8, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@55
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    #@57
    add-int/2addr v7, v8

    #@58
    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    #@5a
    .line 1320
    iget-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@5c
    if-eqz v7, :cond_2

    #@5e
    if-eqz v5, :cond_2

    #@60
    .line 1324
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@62
    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@65
    .line 1329
    :cond_2
    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@67
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@69
    iget-object v8, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@6b
    iget v8, v8, Landroid/graphics/Rect;->top:I

    #@6d
    invoke-virtual {v1, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    #@70
    .line 1331
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    #@72
    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v7

    #@76
    if-nez v7, :cond_3

    #@78
    .line 1332
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    #@7a
    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@7d
    .line 1336
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@7f
    invoke-virtual {v7, v1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@82
    .line 1270
    :cond_3
    :goto_2
    return-void

    #@83
    .line 1283
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "clipRect":Landroid/graphics/Rect;
    .end local v5    # "fullscreen":Z
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    #@86
    move-result v7

    #@87
    if-nez v7, :cond_5

    #@89
    .line 1286
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@8b
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@8d
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@90
    move-result v8

    #@91
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@93
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    #@96
    move-result v9

    #@97
    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    #@9a
    .line 1287
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@9c
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@9e
    iget v8, v8, Landroid/graphics/Rect;->left:I

    #@a0
    neg-int v8, v8

    #@a1
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@a3
    iget v9, v9, Landroid/graphics/Rect;->top:I

    #@a5
    neg-int v9, v9

    #@a6
    .line 1288
    iget v10, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    #@a8
    iget-object v11, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@aa
    iget v11, v11, Landroid/graphics/Rect;->left:I

    #@ac
    sub-int/2addr v10, v11

    #@ad
    .line 1289
    iget v11, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    #@af
    iget-object v12, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@b1
    iget v12, v12, Landroid/graphics/Rect;->top:I

    #@b3
    sub-int/2addr v11, v12

    #@b4
    .line 1287
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@b7
    goto/16 :goto_0

    #@b9
    .line 1290
    :cond_5
    iget v7, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    #@bb
    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@bd
    iget v8, v8, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    #@bf
    if-lt v7, v8, :cond_6

    #@c1
    .line 1292
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@c3
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@c5
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@c8
    move-result v8

    #@c9
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@cb
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    #@ce
    move-result v9

    #@cf
    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    #@d2
    goto/16 :goto_0

    #@d4
    .line 1293
    :cond_6
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    #@d6
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    #@d9
    move-result v7

    #@da
    if-eqz v7, :cond_7

    #@dc
    .line 1295
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@de
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@e0
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@e3
    move-result v8

    #@e4
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@e6
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    #@e9
    move-result v9

    #@ea
    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    #@ed
    goto/16 :goto_0

    #@ef
    .line 1296
    :cond_7
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@f1
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    #@f3
    const/16 v8, 0x7dd

    #@f5
    if-ne v7, v8, :cond_8

    #@f7
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@f9
    iget-boolean v7, v7, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@fb
    if-eqz v7, :cond_8

    #@fd
    .line 1299
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@ff
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@101
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@104
    .line 1300
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    #@106
    invoke-direct {p0, v7}, Lcom/android/server/wm/WindowStateAnimator;->applyDecorRect(Landroid/graphics/Rect;)V

    #@109
    .line 1301
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@10b
    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    #@10d
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    #@110
    goto/16 :goto_0

    #@112
    .line 1304
    :cond_8
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    #@114
    invoke-direct {p0, v7}, Lcom/android/server/wm/WindowStateAnimator;->applyDecorRect(Landroid/graphics/Rect;)V

    #@117
    goto/16 :goto_0

    #@119
    .line 1311
    .restart local v1    # "clipRect":Landroid/graphics/Rect;
    .restart local v5    # "fullscreen":Z
    :cond_9
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    #@11b
    goto/16 :goto_1

    #@11d
    .line 1337
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v4

    #@11e
    .line 1338
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v7, "WindowStateAnimator"

    #@121
    new-instance v8, Ljava/lang/StringBuilder;

    #@123
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@126
    const-string/jumbo v9, "Error setting crop surface of "

    #@129
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v8

    #@12d
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v8

    #@131
    .line 1339
    const-string/jumbo v9, " crop="

    #@134
    .line 1338
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v8

    #@138
    .line 1339
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@13b
    move-result-object v9

    #@13c
    .line 1338
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v8

    #@140
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@143
    move-result-object v8

    #@144
    invoke-static {v7, v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@147
    .line 1340
    if-nez p1, :cond_3

    #@149
    .line 1341
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@14b
    const-string/jumbo v8, "crop"

    #@14e
    const/4 v9, 0x1

    #@14f
    invoke-virtual {v7, p0, v8, v9}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    #@152
    goto/16 :goto_2
.end method
