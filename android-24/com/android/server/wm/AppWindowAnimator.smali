.class public Lcom/android/server/wm/AppWindowAnimator;
.super Ljava/lang/Object;
.source "AppWindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;
    }
.end annotation


# static fields
.field static final PROLONG_ANIMATION_AT_END:I = 0x1

.field static final PROLONG_ANIMATION_AT_START:I = 0x2

.field private static final PROLONG_ANIMATION_DISABLED:I

.field static final TAG:Ljava/lang/String;

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field allDrawn:Z

.field animLayerAdjustment:I

.field animating:Z

.field animation:Landroid/view/animation/Animation;

.field deferFinalFrameCleanup:Z

.field deferThumbnailDestruction:Z

.field freezingScreen:Z

.field hasTransformation:Z

.field lastFreezeDuration:I

.field mAllAppWinAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;"
        }
    .end annotation
.end field

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field final mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mClearProlongedAnimation:Z

.field private mProlongAnimation:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSkipFirstFrame:Z

.field private mStackClip:I

.field thumbnail:Landroid/view/SurfaceControl;

.field thumbnailAnimation:Landroid/view/animation/Animation;

.field thumbnailForceAboveLayer:I

.field thumbnailLayer:I

.field thumbnailTransactionSeq:I

.field final thumbnailTransformation:Landroid/view/animation/Transformation;

.field final transformation:Landroid/view/animation/Transformation;

.field usingTransferredAnimation:Z

.field wasAnimating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/AppWindowAnimator;->TAG:Ljava/lang/String;

    #@5
    .line 110
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;

    #@7
    invoke-direct {v0}, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;-><init>()V

    #@a
    sput-object v0, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    #@c
    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppWindowToken;)V
    .locals 2
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 56
    new-instance v0, Landroid/view/animation/Transformation;

    #@6
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@b
    .line 83
    new-instance v0, Landroid/view/animation/Transformation;

    #@d
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@12
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@19
    .line 105
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    #@1b
    .line 107
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    #@1d
    .line 108
    const/4 v0, 0x1

    #@1e
    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mStackClip:I

    #@20
    .line 113
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@22
    .line 114
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@24
    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@26
    .line 115
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@28
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@2a
    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@2c
    .line 112
    return-void
.end method

.method private getAnimationFrameTime(Landroid/view/animation/Animation;J)J
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "currentTime"    # J

    #@0
    .prologue
    .line 302
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mProlongAnimation:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 303
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@8
    .line 304
    const-wide/16 v0, 0x1

    #@a
    add-long/2addr v0, p2

    #@b
    return-wide v0

    #@c
    .line 306
    :cond_0
    return-wide p2
.end method

.method private getStartTimeCorrection()J
    .locals 4

    #@0
    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 347
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    #@b
    move-result-wide v0

    #@c
    neg-long v0, v0

    #@d
    const-wide/32 v2, 0xf4240

    #@10
    div-long/2addr v0, v2

    #@11
    return-wide v0

    #@12
    .line 349
    :cond_0
    const-wide/16 v0, 0x0

    #@14
    return-wide v0
.end method

.method private stepAnimation(J)Z
    .locals 7
    .param p1, "currentTime"    # J

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 310
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 311
    return v5

    #@7
    .line 313
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@9
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    #@c
    .line 314
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@e
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->getAnimationFrameTime(Landroid/view/animation/Animation;J)J

    #@11
    move-result-wide v0

    #@12
    .line 315
    .local v0, "animationFrameTime":J
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@14
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@16
    invoke-virtual {v3, v0, v1, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@19
    move-result v2

    #@1a
    .line 316
    .local v2, "hasMoreFrames":Z
    if-nez v2, :cond_2

    #@1c
    .line 317
    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    #@1e
    if-eqz v3, :cond_1

    #@20
    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    #@22
    if-eqz v3, :cond_3

    #@24
    .line 326
    :cond_1
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    #@26
    .line 327
    iget v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mProlongAnimation:I

    #@28
    if-ne v3, v6, :cond_4

    #@2a
    .line 328
    const/4 v2, 0x1

    #@2b
    .line 337
    .end local v2    # "hasMoreFrames":Z
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@2d
    .line 338
    return v2

    #@2e
    .line 320
    .restart local v2    # "hasMoreFrames":Z
    :cond_3
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    #@30
    .line 321
    const/4 v2, 0x1

    #@31
    .line 317
    .local v2, "hasMoreFrames":Z
    goto :goto_0

    #@32
    .line 330
    .local v2, "hasMoreFrames":Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    #@35
    .line 331
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    #@38
    goto :goto_0
.end method

.method private stepThumbnailAnimation(J)V
    .locals 11
    .param p1, "currentTime"    # J

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 257
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@3
    invoke-virtual {v6}, Landroid/view/animation/Transformation;->clear()V

    #@6
    .line 258
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    #@8
    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->getAnimationFrameTime(Landroid/view/animation/Animation;J)J

    #@b
    move-result-wide v0

    #@c
    .line 259
    .local v0, "animationFrameTime":J
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    #@e
    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@10
    invoke-virtual {v6, v0, v1, v7}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@13
    .line 262
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@15
    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    #@18
    move-result-object v3

    #@19
    .line 263
    .local v3, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v3, :cond_1

    #@1b
    .line 264
    invoke-virtual {v3}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    #@1e
    move-result v2

    #@1f
    .line 265
    .local v2, "screenAnimation":Z
    :goto_0
    if-eqz v2, :cond_0

    #@21
    .line 266
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@23
    invoke-virtual {v3}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    #@26
    move-result-object v7

    #@27
    invoke-virtual {v6, v7}, Landroid/view/animation/Transformation;->postCompose(Landroid/view/animation/Transformation;)V

    #@2a
    .line 269
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2c
    iget-object v4, v6, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    #@2e
    .line 270
    .local v4, "tmpFloats":[F
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@30
    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->getValues([F)V

    #@37
    .line 274
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@39
    const/4 v7, 0x2

    #@3a
    aget v7, v4, v7

    #@3c
    const/4 v8, 0x5

    #@3d
    aget v8, v4, v8

    #@3f
    invoke-virtual {v6, v7, v8}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@42
    .line 282
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@44
    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@46
    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getAlpha()F

    #@49
    move-result v7

    #@4a
    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@4d
    .line 283
    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    #@4f
    if-lez v6, :cond_2

    #@51
    .line 284
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@53
    iget v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    #@55
    add-int/lit8 v7, v7, 0x1

    #@57
    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@5a
    .line 291
    :goto_1
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@5c
    aget v5, v4, v5

    #@5e
    const/4 v7, 0x3

    #@5f
    aget v7, v4, v7

    #@61
    .line 292
    const/4 v8, 0x1

    #@62
    aget v8, v4, v8

    #@64
    const/4 v9, 0x4

    #@65
    aget v9, v4, v9

    #@67
    .line 291
    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    #@6a
    .line 293
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@6c
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@6e
    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    #@75
    .line 256
    return-void

    #@76
    .end local v2    # "screenAnimation":Z
    .end local v4    # "tmpFloats":[F
    :cond_1
    move v2, v5

    #@77
    .line 263
    goto :goto_0

    #@78
    .line 288
    .restart local v2    # "screenAnimation":Z
    .restart local v4    # "tmpFloats":[F
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@7a
    iget v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@7c
    add-int/lit8 v7, v7, 0x5

    #@7e
    add-int/lit8 v7, v7, -0x4

    #@80
    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@83
    goto :goto_1
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 182
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 183
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@7
    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    #@a
    .line 186
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    #@d
    .line 187
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@f
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 188
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@15
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    #@18
    .line 190
    :cond_1
    iput v1, p0, Lcom/android/server/wm/AppWindowAnimator;->mStackClip:I

    #@1a
    .line 181
    return-void
.end method

.method public clearThumbnail()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 198
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 199
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@7
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    #@a
    .line 200
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@c
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@e
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@10
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->destroyAfterTransaction(Landroid/view/SurfaceControl;)V

    #@13
    .line 201
    iput-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@15
    .line 203
    :cond_0
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    #@18
    .line 197
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    #@0
    .prologue
    .line 447
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v2, "mAppToken="

    #@6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e
    .line 448
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    const-string/jumbo v2, "mAnimator="

    #@14
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@19
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1c
    .line 449
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    const-string/jumbo v2, "freezingScreen="

    #@22
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    #@27
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@2a
    .line 450
    const-string/jumbo v2, " allDrawn="

    #@2d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    #@32
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@35
    .line 451
    const-string/jumbo v2, " animLayerAdjustment="

    #@38
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@3d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@40
    .line 452
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    #@42
    if-eqz v2, :cond_0

    #@44
    .line 453
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    const-string/jumbo v2, "lastFreezeDuration="

    #@4a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 454
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    #@4f
    int-to-long v2, v2

    #@50
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@53
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@56
    .line 456
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@58
    if-nez v2, :cond_1

    #@5a
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@5c
    if-eqz v2, :cond_2

    #@5e
    .line 457
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61
    const-string/jumbo v2, "animating="

    #@64
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@67
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@69
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@6c
    .line 458
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    const-string/jumbo v2, "animation="

    #@72
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@75
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@77
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@7a
    .line 460
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@7c
    if-eqz v2, :cond_3

    #@7e
    .line 461
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    const-string/jumbo v2, "XForm: "

    #@84
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@87
    .line 462
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@89
    invoke-virtual {v2, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@8c
    .line 463
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@8f
    .line 465
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@91
    if-eqz v2, :cond_4

    #@93
    .line 466
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@96
    const-string/jumbo v2, "thumbnail="

    #@99
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9c
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@9e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@a1
    .line 467
    const-string/jumbo v2, " layer="

    #@a4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a7
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@a9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@ac
    .line 468
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@af
    const-string/jumbo v2, "thumbnailAnimation="

    #@b2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b5
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    #@b7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@ba
    .line 469
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bd
    const-string/jumbo v2, "thumbnailTransformation="

    #@c0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c3
    .line 470
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@c5
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->toShortString()Ljava/lang/String;

    #@c8
    move-result-object v2

    #@c9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cc
    .line 472
    :cond_4
    const/4 v0, 0x0

    #@cd
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@cf
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@d2
    move-result v2

    #@d3
    if-ge v0, v2, :cond_5

    #@d5
    .line 473
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@d7
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@da
    move-result-object v1

    #@db
    check-cast v1, Lcom/android/server/wm/WindowStateAnimator;

    #@dd
    .line 474
    .local v1, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e0
    const-string/jumbo v2, "App Win Anim #"

    #@e3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@e9
    .line 475
    const-string/jumbo v2, ": "

    #@ec
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ef
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@f2
    .line 472
    add-int/lit8 v0, v0, 0x1

    #@f4
    goto :goto_0

    #@f5
    .line 446
    .end local v1    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    return-void
.end method

.method endProlongedAnimation()V
    .locals 1

    #@0
    .prologue
    .line 485
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mProlongAnimation:I

    #@3
    .line 484
    return-void
.end method

.method getStackClip()I
    .locals 1

    #@0
    .prologue
    .line 207
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mStackClip:I

    #@2
    return v0
.end method

.method public isAnimating()Z
    .locals 1

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;IIZI)V
    .locals 8
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "skipFirstFrame"    # Z
    .param p5, "stackClip"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 123
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@4
    .line 124
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@6
    .line 125
    invoke-virtual {p1}, Landroid/view/animation/Animation;->isInitialized()Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    .line 126
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@f
    .line 128
    :cond_0
    const-wide/16 v6, 0x2710

    #@11
    invoke-virtual {p1, v6, v7}, Landroid/view/animation/Animation;->restrictDuration(J)V

    #@14
    .line 129
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@16
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    #@19
    move-result v3

    #@1a
    invoke-virtual {p1, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    #@1d
    .line 130
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getZAdjustment()I

    #@20
    move-result v2

    #@21
    .line 131
    .local v2, "zorder":I
    const/4 v0, 0x0

    #@22
    .line 132
    .local v0, "adj":I
    if-ne v2, v4, :cond_4

    #@24
    .line 133
    const/16 v0, 0x3e8

    #@26
    .line 138
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@28
    if-eq v3, v0, :cond_2

    #@2a
    .line 139
    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@2c
    .line 140
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    #@2f
    .line 143
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@31
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    #@34
    .line 144
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@36
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@38
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_5

    #@3e
    move v3, v4

    #@3f
    :goto_1
    int-to-float v3, v3

    #@40
    invoke-virtual {v6, v3}, Landroid/view/animation/Transformation;->setAlpha(F)V

    #@43
    .line 145
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@45
    .line 146
    iput p5, p0, Lcom/android/server/wm/AppWindowAnimator;->mStackClip:I

    #@47
    .line 148
    iput-boolean p4, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    #@49
    .line 150
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@4b
    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    #@4d
    if-nez v3, :cond_3

    #@4f
    .line 151
    invoke-virtual {p1, v5}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    #@52
    .line 153
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mClearProlongedAnimation:Z

    #@54
    if-eqz v3, :cond_6

    #@56
    .line 154
    iput v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mProlongAnimation:I

    #@58
    .line 162
    :goto_2
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@5a
    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@5c
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@5f
    move-result v3

    #@60
    add-int/lit8 v1, v3, -0x1

    #@62
    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_7

    #@64
    .line 163
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@66
    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@68
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@6b
    move-result-object v3

    #@6c
    check-cast v3, Lcom/android/server/wm/WindowState;

    #@6e
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->resetJustMovedInStack()V

    #@71
    .line 162
    add-int/lit8 v1, v1, -0x1

    #@73
    goto :goto_3

    #@74
    .line 134
    .end local v1    # "i":I
    :cond_4
    const/4 v3, -0x1

    #@75
    if-ne v2, v3, :cond_1

    #@77
    .line 135
    const/16 v0, -0x3e8

    #@79
    goto :goto_0

    #@7a
    :cond_5
    move v3, v5

    #@7b
    .line 144
    goto :goto_1

    #@7c
    .line 156
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mClearProlongedAnimation:Z

    #@7e
    goto :goto_2

    #@7f
    .line 119
    .restart local v1    # "i":I
    :cond_7
    return-void
.end method

.method public setDummyAnimation()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 170
    sget-object v1, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    #@3
    iput-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@5
    .line 171
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@7
    .line 172
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@9
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    #@c
    .line 173
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@e
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@10
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    :goto_0
    int-to-float v0, v0

    #@17
    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    #@1a
    .line 167
    return-void

    #@1b
    .line 173
    :cond_0
    const/4 v0, 0x0

    #@1c
    goto :goto_0
.end method

.method setNullAnimation()V
    .locals 1

    #@0
    .prologue
    .line 177
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@3
    .line 178
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    #@6
    .line 176
    return-void
.end method

.method showAllWindowsLocked()Z
    .locals 5

    #@0
    .prologue
    .line 435
    const/4 v2, 0x0

    #@1
    .line 436
    .local v2, "isAnimating":Z
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 437
    .local v0, "NW":I
    const/4 v1, 0x0

    #@8
    .end local v2    # "isAnimating":Z
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@a
    .line 438
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/wm/WindowStateAnimator;

    #@12
    .line 440
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    #@15
    .line 441
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    #@18
    move-result v4

    #@19
    or-int/2addr v2, v4

    #@1a
    .line 437
    .local v2, "isAnimating":Z
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 443
    .end local v2    # "isAnimating":Z
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    return v2
.end method

.method startProlongAnimation(I)V
    .locals 1
    .param p1, "prolongType"    # I

    #@0
    .prologue
    .line 480
    iput p1, p0, Lcom/android/server/wm/AppWindowAnimator;->mProlongAnimation:I

    #@2
    .line 481
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mClearProlongedAnimation:Z

    #@5
    .line 479
    return-void
.end method

.method stepAnimationLocked(JI)Z
    .locals 11
    .param p1, "currentTime"    # J
    .param p3, "displayId"    # I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 355
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_5

    #@b
    .line 358
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@d
    sget-object v5, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    #@f
    if-ne v4, v5, :cond_0

    #@11
    .line 363
    return v8

    #@12
    .line 366
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@14
    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@16
    if-nez v4, :cond_1

    #@18
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@1a
    if-nez v4, :cond_1

    #@1c
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1e
    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    #@20
    if-eqz v4, :cond_6

    #@22
    .line 367
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@24
    if-eqz v4, :cond_6

    #@26
    .line 368
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@28
    if-nez v4, :cond_3

    #@2a
    .line 374
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowAnimator;->getStartTimeCorrection()J

    #@2d
    move-result-wide v0

    #@2e
    .line 375
    .local v0, "correction":J
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@30
    add-long v6, p1, v0

    #@32
    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@35
    .line 376
    iput-boolean v9, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@37
    .line 377
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@39
    if-eqz v4, :cond_2

    #@3b
    .line 378
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@3d
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->show()V

    #@40
    .line 379
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    #@42
    add-long v6, p1, v0

    #@44
    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@47
    .line 381
    :cond_2
    iput-boolean v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    #@49
    .line 383
    .end local v0    # "correction":J
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimation(J)Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_6

    #@4f
    .line 386
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@51
    if-eqz v4, :cond_4

    #@53
    .line 387
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepThumbnailAnimation(J)V

    #@56
    .line 389
    :cond_4
    return v9

    #@57
    .line 392
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@59
    if-eqz v4, :cond_6

    #@5b
    .line 395
    iput-boolean v9, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@5d
    .line 396
    iput-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@5f
    .line 399
    :cond_6
    iput-boolean v8, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@61
    .line 401
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@63
    if-nez v4, :cond_7

    #@65
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@67
    if-nez v4, :cond_7

    #@69
    .line 402
    return v8

    #@6a
    .line 405
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@6c
    .line 406
    const-string/jumbo v5, "AppWindowToken"

    #@6f
    .line 405
    const/16 v6, 0x8

    #@71
    invoke-virtual {v4, p0, v6, v5, p3}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    #@74
    .line 408
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    #@77
    .line 409
    iput-boolean v8, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@79
    .line 410
    iget v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@7b
    if-eqz v4, :cond_8

    #@7d
    .line 411
    iput v8, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@7f
    .line 412
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    #@82
    .line 414
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@84
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    #@86
    if-eqz v4, :cond_9

    #@88
    .line 415
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8a
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    #@8c
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@8e
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@90
    if-ne v4, v5, :cond_9

    #@92
    .line 416
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@94
    invoke-virtual {v4, v9}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    #@97
    .line 423
    :cond_9
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@99
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    #@9c
    .line 425
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@9e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a1
    move-result v3

    #@a2
    .line 426
    .local v3, "numAllAppWinAnimators":I
    const/4 v2, 0x0

    #@a3
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_a

    #@a5
    .line 427
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@a7
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@aa
    move-result-object v4

    #@ab
    check-cast v4, Lcom/android/server/wm/WindowStateAnimator;

    #@ad
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    #@b0
    .line 426
    add-int/lit8 v2, v2, 0x1

    #@b2
    goto :goto_0

    #@b3
    .line 429
    :cond_a
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b5
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@b7
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@b9
    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@bb
    invoke-virtual {v4, v5}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    #@be
    .line 430
    return v8
.end method

.method transferCurrentAnimation(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 2
    .param p1, "toAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "transferWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 214
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@6
    iput-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@8
    .line 215
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@a
    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@c
    .line 216
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@e
    iput v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@10
    .line 217
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    #@13
    .line 218
    const/4 v0, 0x0

    #@14
    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@16
    .line 219
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    #@19
    .line 220
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    #@1c
    .line 221
    const/4 v0, 0x1

    #@1d
    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    #@1f
    .line 223
    :cond_0
    if-eqz p2, :cond_1

    #@21
    .line 224
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@26
    .line 225
    iget-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 226
    iget-object v0, p2, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@2d
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@2f
    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@31
    .line 227
    iget-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@33
    if-eqz v0, :cond_2

    #@35
    .line 228
    iget-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@37
    iget-object v1, p2, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@39
    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@3b
    invoke-virtual {v0, v1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    #@3e
    .line 232
    :goto_0
    iput-object p1, p2, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@40
    .line 211
    :cond_1
    return-void

    #@41
    .line 230
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@43
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    #@46
    goto :goto_0
.end method

.method updateLayers()V
    .locals 8

    #@0
    .prologue
    .line 237
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@4
    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    #@7
    move-result v5

    #@8
    .line 238
    .local v5, "windowCount":I
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@a
    .line 239
    .local v0, "adj":I
    const/4 v6, -0x1

    #@b
    iput v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@d
    .line 240
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@f
    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@11
    .line 241
    .local v3, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    #@14
    .line 242
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@16
    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@18
    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@1e
    .line 243
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@20
    .line 244
    .local v4, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget v6, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    #@22
    add-int/2addr v6, v0

    #@23
    iput v6, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@25
    .line 245
    iget v6, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@27
    iget v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@29
    if-le v6, v7, :cond_0

    #@2b
    .line 246
    iget v6, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@2d
    iput v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@2f
    .line 249
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@31
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    #@33
    if-ne v2, v6, :cond_1

    #@35
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@37
    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    #@39
    if-eqz v6, :cond_2

    #@3b
    .line 252
    :cond_1
    :goto_1
    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/WallpaperController;->setAnimLayerAdjustment(Lcom/android/server/wm/WindowState;I)V

    #@3e
    .line 241
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .line 250
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@43
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    #@45
    invoke-virtual {v6, v0}, Lcom/android/server/wm/WindowLayersController;->setInputMethodAnimLayerAdjustment(I)V

    #@48
    goto :goto_1

    #@49
    .line 236
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v4    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    return-void
.end method
