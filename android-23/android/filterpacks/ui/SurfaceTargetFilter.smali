.class public Landroid/filterpacks/ui/SurfaceTargetFilter;
.super Landroid/filterfw/core/Filter;
.source "SurfaceTargetFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceRenderFilter"


# instance fields
.field private final RENDERMODE_FILL_CROP:I

.field private final RENDERMODE_FIT:I

.field private final RENDERMODE_STRETCH:I

.field private mAspectRatio:F

.field private mGlEnv:Landroid/filterfw/core/GLEnvironment;

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
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "oheight"
    .end annotation
.end field

.field private mScreenWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "owidth"
    .end annotation
.end field

.field private mSurface:Landroid/view/Surface;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "surface"
    .end annotation
.end field

.field private mSurfaceId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    .line 83
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@5
    .line 41
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->RENDERMODE_STRETCH:I

    #@8
    .line 42
    iput v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->RENDERMODE_FIT:I

    #@a
    .line 43
    iput v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->RENDERMODE_FILL_CROP:I

    #@c
    .line 74
    iput v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    #@e
    .line 75
    const/high16 v0, 0x3f800000    # 1.0f

    #@10
    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    #@12
    .line 77
    const/4 v0, -0x1

    #@13
    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    #@15
    .line 85
    const-string/jumbo v0, "SurfaceRenderFilter"

    #@18
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1b
    move-result v0

    #@1c
    iput-boolean v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    #@1e
    .line 82
    return-void
.end method

.method private registerSurface()V
    .locals 3

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    #@2
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurface:Landroid/view/Surface;

    #@4
    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->registerSurface(Landroid/view/Surface;)I

    #@7
    move-result v0

    #@8
    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    #@a
    .line 238
    iget v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    #@c
    if-gez v0, :cond_0

    #@e
    .line 239
    new-instance v0, Ljava/lang/RuntimeException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Could not register Surface: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurface:Landroid/view/Surface;

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

    #@2a
    .line 236
    :cond_0
    return-void
.end method

.method private unregisterSurface()V
    .locals 2

    #@0
    .prologue
    .line 244
    iget v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 245
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    #@6
    iget v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    #@8
    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    #@b
    .line 243
    :cond_0
    return-void
.end method

.method private updateTargetRect()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/high16 v4, 0x3f000000    # 0.5f

    #@3
    const/high16 v5, 0x3f800000    # 1.0f

    #@5
    .line 202
    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    #@7
    if-lez v2, :cond_0

    #@9
    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    #@b
    if-lez v2, :cond_0

    #@d
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 203
    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    #@13
    int-to-float v2, v2

    #@14
    iget v3, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    #@16
    int-to-float v3, v3

    #@17
    div-float v1, v2, v3

    #@19
    .line 204
    .local v1, "screenAspectRatio":F
    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    #@1b
    div-float v0, v1, v2

    #@1d
    .line 206
    .local v0, "relativeAspectRatio":F
    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    #@1f
    packed-switch v2, :pswitch_data_0

    #@22
    .line 201
    .end local v0    # "relativeAspectRatio":F
    .end local v1    # "screenAspectRatio":F
    :cond_0
    :goto_0
    return-void

    #@23
    .line 208
    .restart local v0    # "relativeAspectRatio":F
    .restart local v1    # "screenAspectRatio":F
    :pswitch_0
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@25
    invoke-virtual {v2, v6, v6, v5, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@28
    goto :goto_0

    #@29
    .line 211
    :pswitch_1
    cmpl-float v2, v0, v5

    #@2b
    if-lez v2, :cond_1

    #@2d
    .line 213
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@2f
    div-float v3, v4, v0

    #@31
    sub-float v3, v4, v3

    #@33
    .line 214
    div-float v4, v5, v0

    #@35
    .line 213
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@38
    goto :goto_0

    #@39
    .line 217
    :cond_1
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@3b
    mul-float v3, v4, v0

    #@3d
    sub-float v3, v4, v3

    #@3f
    invoke-virtual {v2, v6, v3, v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@42
    goto :goto_0

    #@43
    .line 222
    :pswitch_2
    cmpl-float v2, v0, v5

    #@45
    if-lez v2, :cond_2

    #@47
    .line 224
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@49
    mul-float v3, v4, v0

    #@4b
    sub-float v3, v4, v3

    #@4d
    invoke-virtual {v2, v6, v3, v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@50
    goto :goto_0

    #@51
    .line 228
    :cond_2
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@53
    div-float v3, v4, v0

    #@55
    sub-float v3, v4, v3

    #@57
    .line 229
    div-float v4, v5, v0

    #@59
    .line 228
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@5c
    goto :goto_0

    #@5d
    .line 206
    nop

    #@5e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 191
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->unregisterSurface()V

    #@3
    .line 190
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 185
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@3
    iget v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    #@5
    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    #@7
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/filterfw/core/GLFrame;->setViewport(IIII)V

    #@a
    .line 186
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateTargetRect()V

    #@d
    .line 184
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->registerSurface()V

    #@3
    .line 138
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/high16 v4, 0x3f800000    # 1.0f

    #@3
    const/4 v3, 0x0

    #@4
    .line 116
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    #@a
    .line 120
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@10
    .line 121
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@12
    const/high16 v2, -0x40800000    # -1.0f

    #@14
    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    #@17
    .line 122
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@19
    const/4 v2, 0x1

    #@1a
    invoke-virtual {v1, v2}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    #@1d
    .line 123
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@1f
    invoke-virtual {v1, v3, v3, v3}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    #@22
    .line 125
    iget v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    #@24
    .line 126
    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    #@26
    .line 125
    invoke-static {v1, v2, v5, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@29
    move-result-object v0

    #@2a
    .line 129
    .local v0, "screenFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@2d
    move-result-object v1

    #@2e
    .line 131
    const-wide/16 v2, 0x0

    #@30
    .line 130
    const/16 v4, 0x65

    #@32
    .line 129
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Landroid/filterfw/core/GLFrame;

    #@38
    iput-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@3a
    .line 134
    invoke-virtual {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateRenderMode()V

    #@3d
    .line 115
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 9
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    .line 144
    iget-boolean v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    #@3
    if-eqz v5, :cond_0

    #@5
    const-string/jumbo v5, "SurfaceRenderFilter"

    #@8
    const-string/jumbo v6, "Starting frame processing"

    #@b
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 147
    :cond_0
    const-string/jumbo v5, "frame"

    #@11
    invoke-virtual {p0, v5}, Landroid/filterpacks/ui/SurfaceTargetFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@14
    move-result-object v3

    #@15
    .line 148
    .local v3, "input":Landroid/filterfw/core/Frame;
    const/4 v0, 0x0

    #@16
    .line 150
    .local v0, "createdFrame":Z
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@1d
    move-result v5

    #@1e
    int-to-float v5, v5

    #@1f
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@26
    move-result v6

    #@27
    int-to-float v6, v6

    #@28
    div-float v1, v5, v6

    #@2a
    .line 151
    .local v1, "currentAspectRatio":F
    iget v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    #@2c
    cmpl-float v5, v1, v5

    #@2e
    if-eqz v5, :cond_2

    #@30
    .line 152
    iget-boolean v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    #@32
    if-eqz v5, :cond_1

    #@34
    const-string/jumbo v5, "SurfaceRenderFilter"

    #@37
    new-instance v6, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v7, "New aspect ratio: "

    #@3f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    const-string/jumbo v7, ", previously: "

    #@4a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    iget v7, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 153
    :cond_1
    iput v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    #@5d
    .line 154
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateTargetRect()V

    #@60
    .line 158
    :cond_2
    const/4 v2, 0x0

    #@61
    .line 159
    .local v2, "gpuFrame":Landroid/filterfw/core/Frame;
    iget-boolean v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    #@63
    if-eqz v5, :cond_3

    #@65
    const-string/jumbo v5, "SurfaceRenderFilter"

    #@68
    new-instance v6, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v7, "Got input format: "

    #@70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v6

    #@74
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@77
    move-result-object v7

    #@78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v6

    #@7c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v6

    #@80
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    .line 160
    :cond_3
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@8a
    move-result v4

    #@8b
    .line 161
    .local v4, "target":I
    if-eq v4, v8, :cond_5

    #@8d
    .line 162
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {v5, v3, v8}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    #@94
    move-result-object v2

    #@95
    .line 164
    .local v2, "gpuFrame":Landroid/filterfw/core/Frame;
    const/4 v0, 0x1

    #@96
    .line 170
    :goto_0
    iget-object v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    #@98
    iget v6, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    #@9a
    invoke-virtual {v5, v6}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    #@9d
    .line 173
    iget-object v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@9f
    iget-object v6, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@a1
    invoke-virtual {v5, v2, v6}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@a4
    .line 176
    iget-object v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    #@a6
    invoke-virtual {v5}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    #@a9
    .line 178
    if-eqz v0, :cond_4

    #@ab
    .line 179
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@ae
    .line 143
    :cond_4
    return-void

    #@af
    .line 166
    .local v2, "gpuFrame":Landroid/filterfw/core/Frame;
    :cond_5
    move-object v2, v3

    #@b0
    .local v2, "gpuFrame":Landroid/filterfw/core/Frame;
    goto :goto_0
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurface:Landroid/view/Surface;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "NULL Surface passed to SurfaceTargetFilter"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 96
    :cond_0
    const-string/jumbo v0, "frame"

    #@10
    const/4 v1, 0x3

    #@11
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/ui/SurfaceTargetFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@18
    .line 89
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 197
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@6
    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@9
    .line 195
    :cond_0
    return-void
.end method

.method public updateRenderMode()V
    .locals 3

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 101
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "stretch"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 102
    const/4 v0, 0x0

    #@10
    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    #@12
    .line 111
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateTargetRect()V

    #@15
    .line 99
    return-void

    #@16
    .line 103
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    #@18
    const-string/jumbo v1, "fit"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 104
    const/4 v0, 0x1

    #@22
    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    #@24
    goto :goto_0

    #@25
    .line 105
    :cond_2
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    #@27
    const-string/jumbo v1, "fill_crop"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 106
    const/4 v0, 0x2

    #@31
    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    #@33
    goto :goto_0

    #@34
    .line 108
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    #@36
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v2, "Unknown render mode \'"

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    const-string/jumbo v2, "\'!"

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@56
    throw v0
.end method
