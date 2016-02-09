.class public Landroid/filterpacks/videosrc/SurfaceTextureTarget;
.super Landroid/filterfw/core/Filter;
.source "SurfaceTextureTarget.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureTarget"


# instance fields
.field private final RENDERMODE_CUSTOMIZE:I

.field private final RENDERMODE_FILL_CROP:I

.field private final RENDERMODE_FIT:I

.field private final RENDERMODE_STRETCH:I

.field private mAspectRatio:F

.field private mLogVerbose:Z

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRenderMode:I

.field private mRenderModeString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "renderMode"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mScreenHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "height"
    .end annotation
.end field

.field private mScreenWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "width"
    .end annotation
.end field

.field private mSourceQuad:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceQuad"
    .end annotation
.end field

.field private mSurfaceId:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "surfaceTexture"
    .end annotation
.end field

.field private mTargetQuad:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "targetQuad"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    const/high16 v5, 0x3f800000    # 1.0f

    #@5
    .line 97
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@8
    .line 44
    const/4 v0, 0x0

    #@9
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_STRETCH:I

    #@b
    .line 45
    iput v7, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_FIT:I

    #@d
    .line 46
    iput v8, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_FILL_CROP:I

    #@f
    .line 47
    const/4 v0, 0x3

    #@10
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_CUSTOMIZE:I

    #@12
    .line 75
    new-instance v0, Landroid/filterfw/geometry/Quad;

    #@14
    new-instance v1, Landroid/filterfw/geometry/Point;

    #@16
    invoke-direct {v1, v6, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@19
    .line 76
    new-instance v2, Landroid/filterfw/geometry/Point;

    #@1b
    invoke-direct {v2, v5, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@1e
    .line 77
    new-instance v3, Landroid/filterfw/geometry/Point;

    #@20
    invoke-direct {v3, v6, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@23
    .line 78
    new-instance v4, Landroid/filterfw/geometry/Point;

    #@25
    invoke-direct {v4, v5, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@28
    .line 75
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@2b
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSourceQuad:Landroid/filterfw/geometry/Quad;

    #@2d
    .line 81
    new-instance v0, Landroid/filterfw/geometry/Quad;

    #@2f
    new-instance v1, Landroid/filterfw/geometry/Point;

    #@31
    invoke-direct {v1, v6, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@34
    .line 82
    new-instance v2, Landroid/filterfw/geometry/Point;

    #@36
    invoke-direct {v2, v5, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@39
    .line 83
    new-instance v3, Landroid/filterfw/geometry/Point;

    #@3b
    invoke-direct {v3, v6, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@3e
    .line 84
    new-instance v4, Landroid/filterfw/geometry/Point;

    #@40
    invoke-direct {v4, v5, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@43
    .line 81
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@46
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@48
    .line 90
    iput v7, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    #@4a
    .line 91
    iput v5, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    #@4c
    .line 99
    const-string/jumbo v0, "SurfaceTextureTarget"

    #@4f
    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@52
    move-result v0

    #@53
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    #@55
    .line 96
    return-void
.end method

.method private updateTargetRect()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    const/high16 v6, 0x3f800000    # 1.0f

    #@5
    const/high16 v5, 0x3f000000    # 0.5f

    #@7
    .line 267
    iget-boolean v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    const-string/jumbo v2, "SurfaceTextureTarget"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "updateTargetRect. Thread: "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 268
    :cond_0
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    #@2b
    if-lez v2, :cond_2

    #@2d
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    #@2f
    if-lez v2, :cond_2

    #@31
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@33
    if-eqz v2, :cond_2

    #@35
    .line 269
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    #@37
    int-to-float v2, v2

    #@38
    iget v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    #@3a
    int-to-float v3, v3

    #@3b
    div-float v1, v2, v3

    #@3d
    .line 270
    .local v1, "screenAspectRatio":F
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    #@3f
    div-float v0, v1, v2

    #@41
    .line 271
    .local v0, "relativeAspectRatio":F
    iget-boolean v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    #@43
    if-eqz v2, :cond_1

    #@45
    .line 272
    const-string/jumbo v2, "SurfaceTextureTarget"

    #@48
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v4, "UTR. screen w = "

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    iget v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    #@56
    int-to-float v4, v4

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    const-string/jumbo v4, " x screen h = "

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    .line 273
    iget v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    #@64
    int-to-float v4, v4

    #@65
    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    .line 273
    const-string/jumbo v4, " Screen AR: "

    #@6c
    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    .line 274
    const-string/jumbo v4, ", frame AR: "

    #@77
    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    .line 274
    iget v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    #@7d
    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    .line 274
    const-string/jumbo v4, ", relative AR: "

    #@84
    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v3

    #@90
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@93
    .line 277
    :cond_1
    cmpl-float v2, v0, v6

    #@95
    if-nez v2, :cond_3

    #@97
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    #@99
    const/4 v3, 0x3

    #@9a
    if-eq v2, v3, :cond_3

    #@9c
    .line 278
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@9e
    invoke-virtual {v2, v7, v7, v6, v6}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@a1
    .line 279
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@a3
    invoke-virtual {v2, v8}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    #@a6
    .line 266
    .end local v0    # "relativeAspectRatio":F
    .end local v1    # "screenAspectRatio":F
    :cond_2
    :goto_0
    return-void

    #@a7
    .line 281
    .restart local v0    # "relativeAspectRatio":F
    .restart local v1    # "screenAspectRatio":F
    :cond_3
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    #@a9
    packed-switch v2, :pswitch_data_0

    #@ac
    .line 326
    :goto_1
    iget-boolean v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    #@ae
    if-eqz v2, :cond_4

    #@b0
    const-string/jumbo v2, "SurfaceTextureTarget"

    #@b3
    new-instance v3, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v4, "UTR. quad: "

    #@bb
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v3

    #@bf
    iget-object v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@c1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v3

    #@c5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v3

    #@c9
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@cc
    .line 327
    :cond_4
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@ce
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@d0
    invoke-virtual {v2, v3}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    #@d3
    goto :goto_0

    #@d4
    .line 283
    :pswitch_0
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@d6
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@d8
    invoke-virtual {v2, v7, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@db
    .line 284
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@dd
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@df
    invoke-virtual {v2, v6, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@e2
    .line 285
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@e4
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@e6
    invoke-virtual {v2, v7, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@e9
    .line 286
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@eb
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@ed
    invoke-virtual {v2, v6, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@f0
    .line 287
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@f2
    invoke-virtual {v2, v8}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    #@f5
    goto :goto_1

    #@f6
    .line 290
    :pswitch_1
    cmpl-float v2, v0, v6

    #@f8
    if-lez v2, :cond_5

    #@fa
    .line 292
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@fc
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@fe
    div-float v3, v5, v0

    #@100
    sub-float v3, v5, v3

    #@102
    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@105
    .line 293
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@107
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@109
    div-float v3, v5, v0

    #@10b
    add-float/2addr v3, v5

    #@10c
    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@10f
    .line 294
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@111
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@113
    div-float v3, v5, v0

    #@115
    sub-float v3, v5, v3

    #@117
    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@11a
    .line 295
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@11c
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@11e
    div-float v3, v5, v0

    #@120
    add-float/2addr v3, v5

    #@121
    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@124
    .line 304
    :goto_2
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@126
    invoke-virtual {v2, v9}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    #@129
    goto :goto_1

    #@12a
    .line 299
    :cond_5
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@12c
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@12e
    mul-float v3, v5, v0

    #@130
    sub-float v3, v5, v3

    #@132
    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@135
    .line 300
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@137
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@139
    mul-float v3, v5, v0

    #@13b
    sub-float v3, v5, v3

    #@13d
    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@140
    .line 301
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@142
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@144
    mul-float v3, v5, v0

    #@146
    add-float/2addr v3, v5

    #@147
    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@14a
    .line 302
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@14c
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@14e
    mul-float v3, v5, v0

    #@150
    add-float/2addr v3, v5

    #@151
    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@154
    goto :goto_2

    #@155
    .line 307
    :pswitch_2
    cmpl-float v2, v0, v6

    #@157
    if-lez v2, :cond_6

    #@159
    .line 309
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@15b
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@15d
    mul-float v3, v5, v0

    #@15f
    sub-float v3, v5, v3

    #@161
    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@164
    .line 310
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@166
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@168
    mul-float v3, v5, v0

    #@16a
    sub-float v3, v5, v3

    #@16c
    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@16f
    .line 311
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@171
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@173
    mul-float v3, v5, v0

    #@175
    add-float/2addr v3, v5

    #@176
    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@179
    .line 312
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@17b
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@17d
    mul-float v3, v5, v0

    #@17f
    add-float/2addr v3, v5

    #@180
    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@183
    .line 320
    :goto_3
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@185
    invoke-virtual {v2, v9}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    #@188
    goto/16 :goto_1

    #@18a
    .line 315
    :cond_6
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@18c
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@18e
    div-float v3, v5, v0

    #@190
    sub-float v3, v5, v3

    #@192
    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@195
    .line 316
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@197
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@199
    div-float v3, v5, v0

    #@19b
    add-float/2addr v3, v5

    #@19c
    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@19f
    .line 317
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@1a1
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@1a3
    div-float v3, v5, v0

    #@1a5
    sub-float v3, v5, v3

    #@1a7
    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@1aa
    .line 318
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    #@1ac
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@1ae
    div-float v3, v5, v0

    #@1b0
    add-float/2addr v3, v5

    #@1b1
    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@1b4
    goto :goto_3

    #@1b5
    .line 323
    :pswitch_3
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@1b7
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSourceQuad:Landroid/filterfw/geometry/Quad;

    #@1b9
    invoke-virtual {v2, v3}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    #@1bc
    goto/16 :goto_1

    #@1be
    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized close(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 176
    :try_start_0
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 177
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@8
    move-result-object v0

    #@9
    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    #@b
    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    #@e
    .line 178
    const/4 v0, -0x1

    #@f
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 175
    return-void

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public declared-synchronized disconnect(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 186
    :try_start_0
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "SurfaceTextureTarget"

    #@8
    const-string/jumbo v1, "disconnect"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 187
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@10
    if-nez v0, :cond_1

    #@12
    .line 188
    const-string/jumbo v0, "SurfaceTextureTarget"

    #@15
    const-string/jumbo v1, "SurfaceTexture is already null. Nothing to disconnect."

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    .line 189
    return-void

    #@1d
    .line 191
    :cond_1
    const/4 v0, 0x0

    #@1e
    :try_start_1
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@20
    .line 197
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    #@22
    if-lez v0, :cond_2

    #@24
    .line 198
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@27
    move-result-object v0

    #@28
    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    #@2a
    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    #@2d
    .line 199
    const/4 v0, -0x1

    #@2e
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    :cond_2
    monitor-exit p0

    #@31
    .line 185
    return-void

    #@32
    :catchall_0
    move-exception v0

    #@33
    monitor-exit p0

    #@34
    throw v0
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 255
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "SurfaceTextureTarget"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "FPVU. Thread: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 256
    :cond_0
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateRenderMode()V

    #@25
    .line 254
    return-void
.end method

.method public declared-synchronized open(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 155
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 156
    const-string/jumbo v0, "SurfaceTextureTarget"

    #@8
    const-string/jumbo v1, "SurfaceTexture is null!!"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Could not register SurfaceTexture: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit p0

    #@2c
    throw v0

    #@2d
    .line 159
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@30
    move-result-object v0

    #@31
    .line 160
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@33
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    #@35
    iget v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    #@37
    .line 159
    invoke-virtual {v0, v1, v2, v3}, Landroid/filterfw/core/GLEnvironment;->registerSurfaceTexture(Landroid/graphics/SurfaceTexture;II)I

    #@3a
    move-result v0

    #@3b
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    #@3d
    .line 161
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    #@3f
    if-gtz v0, :cond_1

    #@41
    .line 162
    new-instance v0, Ljava/lang/RuntimeException;

    #@43
    new-instance v1, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v2, "Could not register SurfaceTexture: "

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    :cond_1
    monitor-exit p0

    #@5e
    .line 153
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    #@2
    const/4 v4, 0x0

    #@3
    .line 133
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    const-string/jumbo v1, "SurfaceTextureTarget"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Prepare. Thread: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 136
    :cond_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@28
    move-result-object v1

    #@29
    iput-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@2b
    .line 137
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@2d
    const/high16 v2, -0x40800000    # -1.0f

    #@2f
    invoke-virtual {v1, v4, v5, v5, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    #@32
    .line 138
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@34
    invoke-virtual {v1, v4, v4, v4}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    #@37
    .line 140
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateRenderMode()V

    #@3a
    .line 143
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    #@3c
    const/4 v1, 0x2

    #@3d
    .line 144
    const/4 v2, 0x3

    #@3e
    .line 143
    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    #@41
    .line 145
    .local v0, "screenFormat":Landroid/filterfw/core/MutableFrameFormat;
    const/4 v1, 0x4

    #@42
    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    #@45
    .line 146
    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    #@47
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    #@49
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@4c
    .line 147
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@4f
    move-result-object v1

    #@50
    .line 149
    const-wide/16 v2, 0x0

    #@52
    .line 148
    const/16 v4, 0x65

    #@54
    .line 147
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    #@57
    move-result-object v1

    #@58
    check-cast v1, Landroid/filterfw/core/GLFrame;

    #@5a
    iput-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreen:Landroid/filterfw/core/GLFrame;

    #@5c
    .line 132
    return-void
.end method

.method public declared-synchronized process(Landroid/filterfw/core/FilterContext;)V
    .locals 10
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    monitor-enter p0

    #@2
    .line 206
    :try_start_0
    iget v6, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-gtz v6, :cond_0

    #@6
    monitor-exit p0

    #@7
    .line 207
    return-void

    #@8
    .line 209
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@b
    move-result-object v2

    #@c
    .line 212
    .local v2, "glEnv":Landroid/filterfw/core/GLEnvironment;
    const-string/jumbo v6, "frame"

    #@f
    invoke-virtual {p0, v6}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@12
    move-result-object v4

    #@13
    .line 213
    .local v4, "input":Landroid/filterfw/core/Frame;
    const/4 v0, 0x0

    #@14
    .line 216
    .local v0, "createdFrame":Z
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@1b
    move-result v6

    #@1c
    int-to-float v6, v6

    #@1d
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {v7}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@24
    move-result v7

    #@25
    int-to-float v7, v7

    #@26
    div-float v1, v6, v7

    #@28
    .line 217
    .local v1, "currentAspectRatio":F
    iget v6, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    #@2a
    cmpl-float v6, v1, v6

    #@2c
    if-eqz v6, :cond_2

    #@2e
    .line 218
    iget-boolean v6, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    #@30
    if-eqz v6, :cond_1

    #@32
    .line 219
    const-string/jumbo v6, "SurfaceTextureTarget"

    #@35
    new-instance v7, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v8, "Process. New aspect ratio: "

    #@3d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    .line 220
    const-string/jumbo v8, ", previously: "

    #@48
    .line 219
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    .line 220
    iget v8, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    #@4e
    .line 219
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    .line 220
    const-string/jumbo v8, ". Thread: "

    #@55
    .line 219
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    .line 220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5c
    move-result-object v8

    #@5d
    .line 219
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v7

    #@65
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 222
    :cond_1
    iput v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    #@6a
    .line 223
    invoke-direct {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateTargetRect()V

    #@6d
    .line 227
    :cond_2
    const/4 v3, 0x0

    #@6e
    .line 228
    .local v3, "gpuFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@75
    move-result v5

    #@76
    .line 229
    .local v5, "target":I
    if-eq v5, v9, :cond_4

    #@78
    .line 230
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@7b
    move-result-object v6

    #@7c
    .line 231
    const/4 v7, 0x3

    #@7d
    .line 230
    invoke-virtual {v6, v4, v7}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    #@80
    move-result-object v3

    #@81
    .line 232
    .local v3, "gpuFrame":Landroid/filterfw/core/Frame;
    const/4 v0, 0x1

    #@82
    .line 238
    :goto_0
    iget v6, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    #@84
    invoke-virtual {v2, v6}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    #@87
    .line 241
    iget-object v6, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@89
    iget-object v7, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreen:Landroid/filterfw/core/GLFrame;

    #@8b
    invoke-virtual {v6, v3, v7}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@8e
    .line 243
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getTimestamp()J

    #@91
    move-result-wide v6

    #@92
    invoke-virtual {v2, v6, v7}, Landroid/filterfw/core/GLEnvironment;->setSurfaceTimestamp(J)V

    #@95
    .line 246
    invoke-virtual {v2}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    #@98
    .line 248
    if-eqz v0, :cond_3

    #@9a
    .line 249
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9d
    :cond_3
    monitor-exit p0

    #@9e
    .line 204
    return-void

    #@9f
    .line 234
    .local v3, "gpuFrame":Landroid/filterfw/core/Frame;
    :cond_4
    move-object v3, v4

    #@a0
    .local v3, "gpuFrame":Landroid/filterfw/core/Frame;
    goto :goto_0

    #@a1
    .end local v0    # "createdFrame":Z
    .end local v1    # "currentAspectRatio":F
    .end local v2    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    .end local v3    # "gpuFrame":Landroid/filterfw/core/Frame;
    .end local v4    # "input":Landroid/filterfw/core/Frame;
    .end local v5    # "target":I
    :catchall_0
    move-exception v6

    #@a2
    monitor-exit p0

    #@a3
    throw v6
.end method

.method public declared-synchronized setupPorts()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 105
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v1, "Null SurfaceTexture passed to SurfaceTextureTarget"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 110
    :cond_0
    :try_start_1
    const-string/jumbo v0, "frame"

    #@14
    const/4 v1, 0x3

    #@15
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    .line 103
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreen:Landroid/filterfw/core/GLFrame;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 262
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreen:Landroid/filterfw/core/GLFrame;

    #@6
    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@9
    .line 260
    :cond_0
    return-void
.end method

.method public updateRenderMode()V
    .locals 3

    #@0
    .prologue
    .line 114
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "SurfaceTextureTarget"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "updateRenderMode. Thread: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 115
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 116
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    #@28
    const-string/jumbo v1, "stretch"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_2

    #@31
    .line 117
    const/4 v0, 0x0

    #@32
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    #@34
    .line 128
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateTargetRect()V

    #@37
    .line 113
    return-void

    #@38
    .line 118
    :cond_2
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    #@3a
    const-string/jumbo v1, "fit"

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_3

    #@43
    .line 119
    const/4 v0, 0x1

    #@44
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    #@46
    goto :goto_0

    #@47
    .line 120
    :cond_3
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    #@49
    const-string/jumbo v1, "fill_crop"

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_4

    #@52
    .line 121
    const/4 v0, 0x2

    #@53
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    #@55
    goto :goto_0

    #@56
    .line 122
    :cond_4
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    #@58
    const-string/jumbo v1, "customize"

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_5

    #@61
    .line 123
    const/4 v0, 0x3

    #@62
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    #@64
    goto :goto_0

    #@65
    .line 125
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    #@67
    new-instance v1, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v2, "Unknown render mode \'"

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    #@75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    const-string/jumbo v2, "\'!"

    #@7c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v1

    #@84
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@87
    throw v0
.end method
