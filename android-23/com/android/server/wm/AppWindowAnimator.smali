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
.field static final TAG:Ljava/lang/String; = "AppWindowAnimator"

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

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSkipFirstFrame:Z

.field thumbnail:Landroid/view/SurfaceControl;

.field thumbnailAnimation:Landroid/view/animation/Animation;

.field thumbnailForceAboveLayer:I

.field thumbnailLayer:I

.field thumbnailTransactionSeq:I

.field final thumbnailTransformation:Landroid/view/animation/Transformation;

.field thumbnailX:I

.field thumbnailY:I

.field final transformation:Landroid/view/animation/Transformation;

.field usingTransferredAnimation:Z

.field wasAnimating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 95
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;

    #@2
    invoke-direct {v0}, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    #@7
    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppWindowToken;)V
    .locals 2
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 48
    new-instance v0, Landroid/view/animation/Transformation;

    #@6
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@b
    .line 77
    new-instance v0, Landroid/view/animation/Transformation;

    #@d
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@12
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@19
    .line 91
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    #@1b
    .line 93
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    #@1d
    .line 98
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1f
    .line 99
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@21
    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@23
    .line 100
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@25
    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@27
    .line 97
    return-void
.end method

.method private getStartTimeCorrection()J
    .locals 4

    #@0
    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 285
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
    .line 287
    :cond_0
    const-wide/16 v0, 0x0

    #@14
    return-wide v0
.end method

.method private stepAnimation(J)Z
    .locals 5
    .param p1, "currentTime"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 253
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 254
    return v3

    #@7
    .line 256
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@9
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    #@c
    .line 257
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@e
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@10
    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@13
    move-result v0

    #@14
    .line 258
    .local v0, "hasMoreFrames":Z
    if-nez v0, :cond_2

    #@16
    .line 259
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    #@18
    if-eqz v1, :cond_1

    #@1a
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    #@1c
    if-eqz v1, :cond_3

    #@1e
    .line 268
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    #@20
    .line 269
    iput-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@22
    .line 270
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    #@25
    .line 275
    .end local v0    # "hasMoreFrames":Z
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@27
    .line 276
    return v0

    #@28
    .line 262
    .restart local v0    # "hasMoreFrames":Z
    :cond_3
    const/4 v1, 0x1

    #@29
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    #@2b
    .line 263
    const/4 v0, 0x1

    #@2c
    .line 259
    .local v0, "hasMoreFrames":Z
    goto :goto_0
.end method

.method private stepThumbnailAnimation(J)V
    .locals 9
    .param p1, "currentTime"    # J

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 214
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@3
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    #@6
    .line 215
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    #@8
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@a
    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@d
    .line 216
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@f
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@12
    move-result-object v3

    #@13
    iget v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    #@15
    int-to-float v4, v4

    #@16
    iget v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    #@18
    int-to-float v5, v5

    #@19
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@1c
    .line 219
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@1e
    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    #@21
    move-result-object v1

    #@22
    .line 220
    .local v1, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v1, :cond_1

    #@24
    .line 221
    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    #@27
    move-result v0

    #@28
    .line 222
    :goto_0
    if-eqz v0, :cond_0

    #@2a
    .line 223
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@2c
    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->postCompose(Landroid/view/animation/Transformation;)V

    #@33
    .line 226
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@35
    iget-object v2, v3, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    #@37
    .line 227
    .local v2, "tmpFloats":[F
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@39
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    #@40
    .line 231
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@42
    const/4 v4, 0x2

    #@43
    aget v4, v2, v4

    #@45
    const/4 v5, 0x5

    #@46
    aget v5, v2, v5

    #@48
    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@4b
    .line 239
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@4d
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@4f
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    #@52
    move-result v4

    #@53
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@56
    .line 240
    iget v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    #@58
    if-lez v3, :cond_2

    #@5a
    .line 241
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@5c
    iget v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    #@5e
    add-int/lit8 v4, v4, 0x1

    #@60
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@63
    .line 248
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@65
    aget v4, v2, v6

    #@67
    const/4 v5, 0x3

    #@68
    aget v5, v2, v5

    #@6a
    .line 249
    const/4 v6, 0x1

    #@6b
    aget v6, v2, v6

    #@6d
    const/4 v7, 0x4

    #@6e
    aget v7, v2, v7

    #@70
    .line 248
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    #@73
    .line 213
    return-void

    #@74
    .line 220
    .end local v2    # "tmpFloats":[F
    :cond_1
    const/4 v0, 0x0

    #@75
    .local v0, "screenAnimation":Z
    goto :goto_0

    #@76
    .line 245
    .end local v0    # "screenAnimation":Z
    .restart local v2    # "tmpFloats":[F
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@78
    iget v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@7a
    add-int/lit8 v4, v4, 0x5

    #@7c
    add-int/lit8 v4, v4, -0x4

    #@7e
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@81
    goto :goto_1
.end method


# virtual methods
.method public clearAnimation()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 148
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 149
    iput-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@8
    .line 150
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@b
    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    #@e
    .line 153
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@10
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 154
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@16
    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@18
    .line 155
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1a
    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    #@1c
    .line 157
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    #@1e
    .line 147
    return-void
.end method

.method public clearThumbnail()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 165
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 166
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@7
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    #@a
    .line 167
    iput-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@c
    .line 169
    :cond_0
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    #@f
    .line 164
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    #@0
    .prologue
    .line 385
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
    .line 386
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
    .line 387
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
    .line 388
    const-string/jumbo v2, " allDrawn="

    #@2d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    #@32
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@35
    .line 389
    const-string/jumbo v2, " animLayerAdjustment="

    #@38
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@3d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@40
    .line 390
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    #@42
    if-eqz v2, :cond_0

    #@44
    .line 391
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    const-string/jumbo v2, "lastFreezeDuration="

    #@4a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 392
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    #@4f
    int-to-long v2, v2

    #@50
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@53
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@56
    .line 394
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@58
    if-nez v2, :cond_1

    #@5a
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@5c
    if-eqz v2, :cond_2

    #@5e
    .line 395
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
    .line 396
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
    .line 398
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@7c
    if-eqz v2, :cond_3

    #@7e
    .line 399
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    const-string/jumbo v2, "XForm: "

    #@84
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@87
    .line 400
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@89
    invoke-virtual {v2, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@8c
    .line 401
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@8f
    .line 403
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@91
    if-eqz v2, :cond_4

    #@93
    .line 404
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
    .line 405
    const-string/jumbo v2, " x="

    #@a4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a7
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    #@a9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@ac
    .line 406
    const-string/jumbo v2, " y="

    #@af
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b2
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    #@b4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@b7
    .line 407
    const-string/jumbo v2, " layer="

    #@ba
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bd
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@bf
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@c2
    .line 408
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c5
    const-string/jumbo v2, "thumbnailAnimation="

    #@c8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cb
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    #@cd
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@d0
    .line 409
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d3
    const-string/jumbo v2, "thumbnailTransformation="

    #@d6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d9
    .line 410
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    #@db
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->toShortString()Ljava/lang/String;

    #@de
    move-result-object v2

    #@df
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e2
    .line 412
    :cond_4
    const/4 v0, 0x0

    #@e3
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@e5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e8
    move-result v2

    #@e9
    if-ge v0, v2, :cond_5

    #@eb
    .line 413
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@ed
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f0
    move-result-object v1

    #@f1
    check-cast v1, Lcom/android/server/wm/WindowStateAnimator;

    #@f3
    .line 414
    .local v1, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    const-string/jumbo v2, "App Win Anim #"

    #@f9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@ff
    .line 415
    const-string/jumbo v2, ": "

    #@102
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@105
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@108
    .line 412
    add-int/lit8 v0, v0, 0x1

    #@10a
    goto :goto_0

    #@10b
    .line 384
    .end local v1    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    #@0
    .prologue
    .line 161
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

.method public setAnimation(Landroid/view/animation/Animation;IIZ)V
    .locals 8
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "skipFirstFrame"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 107
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@4
    .line 108
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@6
    .line 109
    invoke-virtual {p1}, Landroid/view/animation/Animation;->isInitialized()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 110
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@f
    .line 112
    :cond_0
    const-wide/16 v6, 0x2710

    #@11
    invoke-virtual {p1, v6, v7}, Landroid/view/animation/Animation;->restrictDuration(J)V

    #@14
    .line 113
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@16
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    #@19
    move-result v2

    #@1a
    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    #@1d
    .line 114
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getZAdjustment()I

    #@20
    move-result v1

    #@21
    .line 115
    .local v1, "zorder":I
    const/4 v0, 0x0

    #@22
    .line 116
    .local v0, "adj":I
    if-ne v1, v3, :cond_4

    #@24
    .line 117
    const/16 v0, 0x3e8

    #@26
    .line 122
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@28
    if-eq v2, v0, :cond_2

    #@2a
    .line 123
    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@2c
    .line 124
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    #@2f
    .line 127
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@31
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    #@34
    .line 128
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@36
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@38
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_5

    #@3e
    move v2, v3

    #@3f
    :goto_1
    int-to-float v2, v2

    #@40
    invoke-virtual {v5, v2}, Landroid/view/animation/Transformation;->setAlpha(F)V

    #@43
    .line 129
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@45
    .line 131
    iput-boolean p4, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    #@47
    .line 133
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@49
    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    #@4b
    if-nez v2, :cond_3

    #@4d
    .line 134
    invoke-virtual {p1, v4}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    #@50
    .line 103
    :cond_3
    return-void

    #@51
    .line 118
    :cond_4
    const/4 v2, -0x1

    #@52
    if-ne v1, v2, :cond_1

    #@54
    .line 119
    const/16 v0, -0x3e8

    #@56
    goto :goto_0

    #@57
    :cond_5
    move v2, v4

    #@58
    .line 128
    goto :goto_1
.end method

.method public setDummyAnimation()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 141
    sget-object v1, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    #@3
    iput-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@5
    .line 142
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@7
    .line 143
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@9
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    #@c
    .line 144
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
    .line 138
    return-void

    #@1b
    .line 144
    :cond_0
    const/4 v0, 0x0

    #@1c
    goto :goto_0
.end method

.method showAllWindowsLocked()Z
    .locals 5

    #@0
    .prologue
    .line 372
    const/4 v2, 0x0

    #@1
    .line 373
    .local v2, "isAnimating":Z
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 374
    .local v0, "NW":I
    const/4 v1, 0x0

    #@8
    .end local v2    # "isAnimating":Z
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@a
    .line 375
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/wm/WindowStateAnimator;

    #@12
    .line 378
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    #@15
    .line 379
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    #@18
    move-result v4

    #@19
    or-int/2addr v2, v4

    #@1a
    .line 374
    .local v2, "isAnimating":Z
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 381
    .end local v2    # "isAnimating":Z
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    return v2
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
    .line 293
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_5

    #@b
    .line 296
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@d
    sget-object v5, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    #@f
    if-ne v4, v5, :cond_0

    #@11
    .line 301
    return v8

    #@12
    .line 304
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
    .line 305
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@24
    if-eqz v4, :cond_6

    #@26
    .line 306
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@28
    if-nez v4, :cond_3

    #@2a
    .line 312
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowAnimator;->getStartTimeCorrection()J

    #@2d
    move-result-wide v0

    #@2e
    .line 313
    .local v0, "correction":J
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@30
    add-long v6, p1, v0

    #@32
    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@35
    .line 314
    iput-boolean v9, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@37
    .line 315
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@39
    if-eqz v4, :cond_2

    #@3b
    .line 316
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@3d
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->show()V

    #@40
    .line 317
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    #@42
    add-long v6, p1, v0

    #@44
    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@47
    .line 319
    :cond_2
    iput-boolean v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    #@49
    .line 321
    .end local v0    # "correction":J
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimation(J)Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_6

    #@4f
    .line 324
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@51
    if-eqz v4, :cond_4

    #@53
    .line 325
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepThumbnailAnimation(J)V

    #@56
    .line 327
    :cond_4
    return v9

    #@57
    .line 330
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@59
    if-eqz v4, :cond_6

    #@5b
    .line 333
    iput-boolean v9, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@5d
    .line 334
    iput-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@5f
    .line 337
    :cond_6
    iput-boolean v8, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    #@61
    .line 339
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@63
    if-nez v4, :cond_7

    #@65
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@67
    if-nez v4, :cond_7

    #@69
    .line 340
    return v8

    #@6a
    .line 343
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@6c
    .line 344
    const-string/jumbo v5, "AppWindowToken"

    #@6f
    .line 343
    const/16 v6, 0x8

    #@71
    invoke-virtual {v4, p0, v6, v5, p3}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    #@74
    .line 346
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    #@77
    .line 347
    iput-boolean v8, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@79
    .line 348
    iget v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@7b
    if-eqz v4, :cond_8

    #@7d
    .line 349
    iput v8, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@7f
    .line 350
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    #@82
    .line 352
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@84
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    #@86
    if-eqz v4, :cond_9

    #@88
    .line 353
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
    .line 354
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@94
    invoke-virtual {v4, v9}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    #@97
    .line 361
    :cond_9
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    #@99
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    #@9c
    .line 363
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@9e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a1
    move-result v3

    #@a2
    .line 364
    .local v3, "numAllAppWinAnimators":I
    const/4 v2, 0x0

    #@a3
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_a

    #@a5
    .line 365
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
    .line 364
    add-int/lit8 v2, v2, 0x1

    #@b2
    goto :goto_0

    #@b3
    .line 367
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
    .line 368
    return v8
.end method

.method transferCurrentAnimation(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 2
    .param p1, "toAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "transferWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 175
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 176
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@7
    iput-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@9
    .line 177
    iput-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@b
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@d
    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@f
    .line 179
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@11
    iput v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@13
    .line 180
    const/4 v0, 0x0

    #@14
    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@16
    .line 181
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    #@19
    .line 182
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    #@1c
    .line 183
    const/4 v0, 0x1

    #@1d
    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    #@1f
    .line 185
    :cond_0
    if-eqz p2, :cond_1

    #@21
    .line 186
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@26
    .line 187
    iget-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 188
    iput-object p1, p2, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@2d
    .line 173
    :cond_1
    return-void
.end method

.method updateLayers()V
    .locals 7

    #@0
    .prologue
    .line 193
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@4
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    #@7
    move-result v4

    #@8
    .line 194
    .local v4, "windowCount":I
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@a
    .line 195
    .local v0, "adj":I
    const/4 v5, -0x1

    #@b
    iput v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@d
    .line 196
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_4

    #@10
    .line 197
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@12
    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@14
    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@1a
    .line 198
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1c
    .line 199
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget v5, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    #@1e
    add-int/2addr v5, v0

    #@1f
    iput v5, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@21
    .line 200
    iget v5, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@23
    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@25
    if-le v5, v6, :cond_0

    #@27
    .line 201
    iget v5, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@29
    iput v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@2b
    .line 204
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2d
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    #@2f
    if-ne v2, v5, :cond_1

    #@31
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@33
    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    #@35
    if-eqz v5, :cond_3

    #@37
    .line 207
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@39
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@3b
    if-ne v2, v5, :cond_2

    #@3d
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3f
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@41
    if-nez v5, :cond_2

    #@43
    .line 208
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@45
    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->setWallpaperAnimLayerAdjustmentLocked(I)V

    #@48
    .line 196
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 205
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4d
    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    #@50
    goto :goto_1

    #@51
    .line 192
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_4
    return-void
.end method
