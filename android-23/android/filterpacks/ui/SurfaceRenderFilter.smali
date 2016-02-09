.class public Landroid/filterpacks/ui/SurfaceRenderFilter;
.super Landroid/filterfw/core/Filter;
.source "SurfaceRenderFilter.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceRenderFilter"


# instance fields
.field private final RENDERMODE_FILL_CROP:I

.field private final RENDERMODE_FIT:I

.field private final RENDERMODE_STRETCH:I

.field private mAspectRatio:F

.field private mIsBound:Z

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

.field private mScreenWidth:I

.field private mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "surfaceView"
    .end annotation
.end field


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
    const/4 v0, 0x0

    #@3
    .line 77
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@6
    .line 42
    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->RENDERMODE_STRETCH:I

    #@8
    .line 43
    iput v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->RENDERMODE_FIT:I

    #@a
    .line 44
    iput v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->RENDERMODE_FILL_CROP:I

    #@c
    .line 63
    iput-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z

    #@e
    .line 67
    iput v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    #@10
    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    #@12
    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    #@14
    .line 79
    const-string/jumbo v0, "SurfaceRenderFilter"

    #@17
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1a
    move-result v0

    #@1b
    iput-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    #@1d
    .line 76
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
    .line 234
    iget v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    #@7
    if-lez v2, :cond_0

    #@9
    iget v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    #@b
    if-lez v2, :cond_0

    #@d
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 235
    iget v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    #@13
    int-to-float v2, v2

    #@14
    iget v3, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    #@16
    int-to-float v3, v3

    #@17
    div-float v1, v2, v3

    #@19
    .line 236
    .local v1, "screenAspectRatio":F
    iget v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    #@1b
    div-float v0, v1, v2

    #@1d
    .line 238
    .local v0, "relativeAspectRatio":F
    iget v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    #@1f
    packed-switch v2, :pswitch_data_0

    #@22
    .line 233
    .end local v0    # "relativeAspectRatio":F
    .end local v1    # "screenAspectRatio":F
    :cond_0
    :goto_0
    return-void

    #@23
    .line 240
    .restart local v0    # "relativeAspectRatio":F
    .restart local v1    # "screenAspectRatio":F
    :pswitch_0
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@25
    invoke-virtual {v2, v6, v6, v5, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@28
    goto :goto_0

    #@29
    .line 243
    :pswitch_1
    cmpl-float v2, v0, v5

    #@2b
    if-lez v2, :cond_1

    #@2d
    .line 245
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@2f
    div-float v3, v4, v0

    #@31
    sub-float v3, v4, v3

    #@33
    .line 246
    div-float v4, v5, v0

    #@35
    .line 245
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@38
    goto :goto_0

    #@39
    .line 249
    :cond_1
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@3b
    mul-float v3, v4, v0

    #@3d
    sub-float v3, v4, v3

    #@3f
    invoke-virtual {v2, v6, v3, v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@42
    goto :goto_0

    #@43
    .line 254
    :pswitch_2
    cmpl-float v2, v0, v5

    #@45
    if-lez v2, :cond_2

    #@47
    .line 256
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@49
    mul-float v3, v4, v0

    #@4b
    sub-float v3, v4, v3

    #@4d
    invoke-virtual {v2, v6, v3, v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@50
    goto :goto_0

    #@51
    .line 260
    :cond_2
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@53
    div-float v3, v4, v0

    #@55
    sub-float v3, v4, v3

    #@57
    .line 261
    div-float v4, v5, v0

    #@59
    .line 260
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@5c
    goto :goto_0

    #@5d
    .line 238
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
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    #@2
    invoke-virtual {v0}, Landroid/filterfw/core/FilterSurfaceView;->unbind()V

    #@5
    .line 197
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 193
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V

    #@3
    .line 192
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    #@2
    invoke-virtual {v0}, Landroid/filterfw/core/FilterSurfaceView;->unbind()V

    #@5
    .line 134
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    #@7
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, p0, v1}, Landroid/filterfw/core/FilterSurfaceView;->bindToListener(Landroid/view/SurfaceHolder$Callback;Landroid/filterfw/core/GLEnvironment;)V

    #@e
    .line 130
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
    .line 112
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@a
    .line 113
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@c
    const/high16 v2, -0x40800000    # -1.0f

    #@e
    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    #@11
    .line 114
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@13
    const/4 v2, 0x1

    #@14
    invoke-virtual {v1, v2}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    #@17
    .line 115
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@19
    invoke-virtual {v1, v3, v3, v3}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    #@1c
    .line 117
    invoke-virtual {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateRenderMode()V

    #@1f
    .line 120
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    #@21
    invoke-virtual {v1}, Landroid/filterfw/core/FilterSurfaceView;->getWidth()I

    #@24
    move-result v1

    #@25
    .line 121
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    #@27
    invoke-virtual {v2}, Landroid/filterfw/core/FilterSurfaceView;->getHeight()I

    #@2a
    move-result v2

    #@2b
    .line 120
    invoke-static {v1, v2, v5, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@2e
    move-result-object v0

    #@2f
    .line 124
    .local v0, "screenFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@32
    move-result-object v1

    #@33
    .line 126
    const-wide/16 v2, 0x0

    #@35
    .line 125
    const/16 v4, 0x65

    #@37
    .line 124
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Landroid/filterfw/core/GLFrame;

    #@3d
    iput-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@3f
    .line 109
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 10
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    .line 140
    iget-boolean v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z

    #@3
    if-nez v6, :cond_0

    #@5
    .line 141
    const-string/jumbo v6, "SurfaceRenderFilter"

    #@8
    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v7

    #@11
    const-string/jumbo v8, ": Ignoring frame as there is no surface to render to!"

    #@14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v7

    #@1c
    .line 141
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 143
    return-void

    #@20
    .line 146
    :cond_0
    iget-boolean v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    #@22
    if-eqz v6, :cond_1

    #@24
    const-string/jumbo v6, "SurfaceRenderFilter"

    #@27
    const-string/jumbo v7, "Starting frame processing"

    #@2a
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 148
    :cond_1
    iget-object v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    #@2f
    invoke-virtual {v6}, Landroid/filterfw/core/FilterSurfaceView;->getGLEnv()Landroid/filterfw/core/GLEnvironment;

    #@32
    move-result-object v2

    #@33
    .line 149
    .local v2, "glEnv":Landroid/filterfw/core/GLEnvironment;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@36
    move-result-object v6

    #@37
    if-eq v2, v6, :cond_2

    #@39
    .line 150
    new-instance v6, Ljava/lang/RuntimeException;

    #@3b
    const-string/jumbo v7, "Surface created under different GLEnvironment!"

    #@3e
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@41
    throw v6

    #@42
    .line 155
    :cond_2
    const-string/jumbo v6, "frame"

    #@45
    invoke-virtual {p0, v6}, Landroid/filterpacks/ui/SurfaceRenderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@48
    move-result-object v4

    #@49
    .line 156
    .local v4, "input":Landroid/filterfw/core/Frame;
    const/4 v0, 0x0

    #@4a
    .line 158
    .local v0, "createdFrame":Z
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@51
    move-result v6

    #@52
    int-to-float v6, v6

    #@53
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v7}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@5a
    move-result v7

    #@5b
    int-to-float v7, v7

    #@5c
    div-float v1, v6, v7

    #@5e
    .line 159
    .local v1, "currentAspectRatio":F
    iget v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    #@60
    cmpl-float v6, v1, v6

    #@62
    if-eqz v6, :cond_4

    #@64
    .line 160
    iget-boolean v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    #@66
    if-eqz v6, :cond_3

    #@68
    const-string/jumbo v6, "SurfaceRenderFilter"

    #@6b
    new-instance v7, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v8, "New aspect ratio: "

    #@73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v7

    #@77
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v7

    #@7b
    const-string/jumbo v8, ", previously: "

    #@7e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v7

    #@82
    iget v8, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    #@84
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@87
    move-result-object v7

    #@88
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v7

    #@8c
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    .line 161
    :cond_3
    iput v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    #@91
    .line 162
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V

    #@94
    .line 166
    :cond_4
    const/4 v3, 0x0

    #@95
    .line 167
    .local v3, "gpuFrame":Landroid/filterfw/core/Frame;
    iget-boolean v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    #@97
    if-eqz v6, :cond_5

    #@99
    const-string/jumbo v6, "SurfaceRenderFilter"

    #@9c
    new-instance v7, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v8, "Got input format: "

    #@a4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v7

    #@a8
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@ab
    move-result-object v8

    #@ac
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v7

    #@b0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v7

    #@b4
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b7
    .line 168
    :cond_5
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@ba
    move-result-object v6

    #@bb
    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@be
    move-result v5

    #@bf
    .line 169
    .local v5, "target":I
    if-eq v5, v9, :cond_7

    #@c1
    .line 170
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@c4
    move-result-object v6

    #@c5
    invoke-virtual {v6, v4, v9}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    #@c8
    move-result-object v3

    #@c9
    .line 172
    .local v3, "gpuFrame":Landroid/filterfw/core/Frame;
    const/4 v0, 0x1

    #@ca
    .line 178
    :goto_0
    iget-object v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    #@cc
    invoke-virtual {v6}, Landroid/filterfw/core/FilterSurfaceView;->getSurfaceId()I

    #@cf
    move-result v6

    #@d0
    invoke-virtual {v2, v6}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    #@d3
    .line 181
    iget-object v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@d5
    iget-object v7, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@d7
    invoke-virtual {v6, v3, v7}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@da
    .line 184
    invoke-virtual {v2}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    #@dd
    .line 186
    if-eqz v0, :cond_6

    #@df
    .line 187
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@e2
    .line 138
    :cond_6
    return-void

    #@e3
    .line 174
    .local v3, "gpuFrame":Landroid/filterfw/core/Frame;
    :cond_7
    move-object v3, v4

    #@e4
    .local v3, "gpuFrame":Landroid/filterfw/core/Frame;
    goto :goto_0
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "NULL SurfaceView passed to SurfaceRenderFilter"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 90
    :cond_0
    const-string/jumbo v0, "frame"

    #@10
    const/4 v1, 0x3

    #@11
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/ui/SurfaceRenderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@18
    .line 83
    return-void
.end method

.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 220
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 221
    iput p3, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    #@7
    .line 222
    iput p4, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    #@9
    .line 223
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@b
    iget v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    #@d
    iget v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    #@f
    const/4 v3, 0x0

    #@10
    const/4 v4, 0x0

    #@11
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/filterfw/core/GLFrame;->setViewport(IIII)V

    #@14
    .line 224
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit p0

    #@18
    .line 217
    return-void

    #@19
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 210
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 209
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 230
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 229
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 204
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@6
    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@9
    .line 202
    :cond_0
    return-void
.end method

.method public updateRenderMode()V
    .locals 3

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 95
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "stretch"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 96
    const/4 v0, 0x0

    #@10
    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    #@12
    .line 105
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V

    #@15
    .line 93
    return-void

    #@16
    .line 97
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    #@18
    const-string/jumbo v1, "fit"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 98
    const/4 v0, 0x1

    #@22
    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    #@24
    goto :goto_0

    #@25
    .line 99
    :cond_2
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    #@27
    const-string/jumbo v1, "fill_crop"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 100
    const/4 v0, 0x2

    #@31
    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    #@33
    goto :goto_0

    #@34
    .line 102
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
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

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
