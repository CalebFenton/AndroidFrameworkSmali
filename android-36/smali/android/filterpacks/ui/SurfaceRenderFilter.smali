.class public Landroid/filterpacks/ui/SurfaceRenderFilter;
.super Landroid/filterfw/core/Filter;
.source "SurfaceRenderFilter.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceRenderFilter"


# instance fields
.field private final blacklist RENDERMODE_FILL_CROP:I

.field private final blacklist RENDERMODE_FIT:I

.field private final blacklist RENDERMODE_STRETCH:I

.field private blacklist mAspectRatio:F

.field private blacklist mIsBound:Z

.field private blacklist mLogVerbose:Z

.field private blacklist mProgram:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mRenderMode:I

.field private blacklist mRenderModeString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "renderMode"
    .end annotation
.end field

.field private blacklist mScreen:Landroid/filterfw/core/GLFrame;

.field private blacklist mScreenHeight:I

.field private blacklist mScreenWidth:I

.field private blacklist mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "surfaceView"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->RENDERMODE_STRETCH:I

    .line 43
    const/4 v1, 0x1

    iput v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->RENDERMODE_FIT:I

    .line 44
    const/4 v2, 0x2

    iput v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->RENDERMODE_FILL_CROP:I

    .line 63
    iput-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z

    .line 67
    iput v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    .line 79
    const-string v0, "SurfaceRenderFilter"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    .line 80
    return-void
.end method

.method private blacklist updateTargetRect()V
    .registers 8

    .line 234
    iget v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    if-lez v0, :cond_58

    iget v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    if-lez v0, :cond_58

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v0, :cond_58

    .line 235
    iget v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 236
    .local v0, "screenAspectRatio":F
    iget v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    div-float v1, v0, v1

    .line 238
    .local v1, "relativeAspectRatio":F
    iget v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    packed-switch v2, :pswitch_data_5a

    goto :goto_58

    .line 254
    :pswitch_22
    cmpl-float v2, v1, v5

    if-lez v2, :cond_2f

    .line 256
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v6, v1, v4

    sub-float/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_58

    .line 260
    :cond_2f
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    div-float v6, v4, v1

    sub-float/2addr v4, v6

    div-float v6, v5, v1

    invoke-virtual {v2, v4, v3, v6, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_58

    .line 243
    :pswitch_3a
    cmpl-float v2, v1, v5

    if-lez v2, :cond_49

    .line 245
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    div-float v6, v4, v1

    sub-float/2addr v4, v6

    div-float v6, v5, v1

    invoke-virtual {v2, v4, v3, v6, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_58

    .line 249
    :cond_49
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v6, v1, v4

    sub-float/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 252
    goto :goto_58

    .line 240
    :pswitch_52
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v3, v3, v5, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 241
    nop

    .line 266
    .end local v0    # "screenAspectRatio":F
    .end local v1    # "relativeAspectRatio":F
    :cond_58
    :goto_58
    return-void

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_52
        :pswitch_3a
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method public blacklist close(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 198
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterSurfaceView;->unbind()V

    .line 199
    return-void
.end method

.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 193
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V

    .line 194
    return-void
.end method

.method public blacklist open(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 133
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterSurfaceView;->unbind()V

    .line 134
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/filterfw/core/FilterSurfaceView;->bindToListener(Landroid/view/SurfaceHolder$Callback;Landroid/filterfw/core/GLEnvironment;)V

    .line 135
    return-void
.end method

.method public blacklist prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 112
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 113
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 114
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 115
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v0, v3, v3, v3}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    .line 117
    invoke-virtual {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateRenderMode()V

    .line 120
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterSurfaceView;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    .line 121
    invoke-virtual {v1}, Landroid/filterfw/core/FilterSurfaceView;->getHeight()I

    move-result v1

    .line 120
    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 124
    .local v0, "screenFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    const/16 v2, 0x65

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/GLFrame;

    iput-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 127
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 10
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 140
    iget-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z

    const-string v1, "SurfaceRenderFilter"

    if-nez v0, :cond_1d

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": Ignoring frame as there is no surface to render to!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 146
    :cond_1d
    iget-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_26

    const-string v0, "Starting frame processing"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_26
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterSurfaceView;->getGLEnv()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 149
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v2

    if-ne v0, v2, :cond_cb

    .line 155
    const-string v2, "frame"

    invoke-virtual {p0, v2}, Landroid/filterpacks/ui/SurfaceRenderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 156
    .local v2, "input":Landroid/filterfw/core/Frame;
    const/4 v3, 0x0

    .line 158
    .local v3, "createdFrame":Z
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 159
    .local v4, "currentAspectRatio":F
    iget v5, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_7d

    .line 160
    iget-boolean v5, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    if-eqz v5, :cond_78

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New aspect ratio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", previously: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_78
    iput v4, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    .line 162
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V

    .line 166
    :cond_7d
    const/4 v5, 0x0

    .line 167
    .local v5, "gpuFrame":Landroid/filterfw/core/Frame;
    iget-boolean v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    if-eqz v6, :cond_9c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got input format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_9c
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    .line 169
    .local v1, "target":I
    const/4 v6, 0x3

    if-eq v1, v6, :cond_b1

    .line 170
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v2, v6}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    move-result-object v5

    .line 172
    const/4 v3, 0x1

    goto :goto_b2

    .line 174
    :cond_b1
    move-object v5, v2

    .line 178
    :goto_b2
    iget-object v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v6}, Landroid/filterfw/core/FilterSurfaceView;->getSurfaceId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 181
    iget-object v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v7, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v6, v5, v7}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 184
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 186
    if-eqz v3, :cond_ca

    .line 187
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 189
    :cond_ca
    return-void

    .line 150
    .end local v1    # "target":I
    .end local v2    # "input":Landroid/filterfw/core/Frame;
    .end local v3    # "createdFrame":Z
    .end local v4    # "currentAspectRatio":F
    .end local v5    # "gpuFrame":Landroid/filterfw/core/Frame;
    :cond_cb
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Surface created under different GLEnvironment!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 85
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    if-eqz v0, :cond_f

    .line 90
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 91
    return-void

    .line 86
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NULL SurfaceView passed to SurfaceRenderFilter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    monitor-enter p0

    .line 220
    :try_start_1
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_16

    .line 221
    iput p3, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    .line 222
    iput p4, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    .line 223
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    iget v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    iget v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/filterfw/core/GLFrame;->setViewport(IIII)V

    .line 224
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 226
    .end local p0    # "this":Landroid/filterpacks/ui/SurfaceRenderFilter;
    :cond_16
    monitor-exit p0

    return-void

    .line 219
    .end local p1    # "holder":Landroid/view/SurfaceHolder;
    .end local p2    # "format":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public declared-synchronized whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    monitor-enter p0

    .line 210
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 211
    monitor-exit p0

    return-void

    .line 209
    .end local p0    # "this":Landroid/filterpacks/ui/SurfaceRenderFilter;
    .end local p1    # "holder":Landroid/view/SurfaceHolder;
    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public declared-synchronized whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    monitor-enter p0

    .line 230
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 231
    monitor-exit p0

    return-void

    .line 229
    .end local p0    # "this":Landroid/filterpacks/ui/SurfaceRenderFilter;
    .end local p1    # "holder":Landroid/view/SurfaceHolder;
    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public blacklist tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 203
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_9

    .line 204
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 206
    :cond_9
    return-void
.end method

.method public blacklist updateRenderMode()V
    .registers 4

    .line 94
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    if-eqz v0, :cond_50

    .line 95
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    const-string/jumbo v1, "stretch"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    goto :goto_50

    .line 97
    :cond_13
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fit"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    goto :goto_50

    .line 99
    :cond_21
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fill_crop"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    goto :goto_50

    .line 102
    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown render mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_50
    :goto_50
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V

    .line 106
    return-void
.end method
