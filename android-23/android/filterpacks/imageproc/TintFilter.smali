.class public Landroid/filterpacks/imageproc/TintFilter;
.super Landroid/filterfw/core/Filter;
.source "TintFilter.java"


# instance fields
.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mTint:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tint"
    .end annotation
.end field

.field private final mTintShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 32
    const v0, -0xffff01

    #@6
    iput v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mTint:I

    #@8
    .line 35
    const/16 v0, 0x280

    #@a
    iput v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mTileSize:I

    #@c
    .line 38
    const/4 v0, 0x0

    #@d
    iput v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mTarget:I

    #@f
    .line 41
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 tint;\nuniform vec3 color_ratio;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float avg_color = dot(color_ratio, color.rgb);\n  vec3 new_color = min(0.8 * avg_color + 0.2 * tint, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    #@12
    .line 40
    iput-object v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mTintShader:Ljava/lang/String;

    #@14
    .line 53
    return-void
.end method

.method private initParameters()V
    .locals 3

    #@0
    .prologue
    .line 116
    const/4 v1, 0x3

    #@1
    new-array v0, v1, [F

    #@3
    .local v0, "color_ratio":[F
    fill-array-data v0, :array_0

    #@6
    .line 117
    iget-object v1, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    #@8
    const-string/jumbo v2, "color_ratio"

    #@b
    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@e
    .line 119
    invoke-direct {p0}, Landroid/filterpacks/imageproc/TintFilter;->updateParameters()V

    #@11
    .line 115
    return-void

    #@12
    .line 116
    :array_0
    .array-data 4
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3d8f5c29    # 0.07f
    .end array-data
.end method

.method private updateParameters()V
    .locals 4

    #@0
    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    #@2
    .line 123
    const/4 v1, 0x3

    #@3
    new-array v0, v1, [F

    #@5
    iget v1, p0, Landroid/filterpacks/imageproc/TintFilter;->mTint:I

    #@7
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    #@a
    move-result v1

    #@b
    int-to-float v1, v1

    #@c
    div-float/2addr v1, v3

    #@d
    const/4 v2, 0x0

    #@e
    aput v1, v0, v2

    #@10
    .line 124
    iget v1, p0, Landroid/filterpacks/imageproc/TintFilter;->mTint:I

    #@12
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    #@15
    move-result v1

    #@16
    int-to-float v1, v1

    #@17
    div-float/2addr v1, v3

    #@18
    const/4 v2, 0x1

    #@19
    aput v1, v0, v2

    #@1b
    .line 125
    iget v1, p0, Landroid/filterpacks/imageproc/TintFilter;->mTint:I

    #@1d
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    #@20
    move-result v1

    #@21
    int-to-float v1, v1

    #@22
    div-float/2addr v1, v3

    #@23
    const/4 v2, 0x2

    #@24
    aput v1, v0, v2

    #@26
    .line 127
    .local v0, "tint_color":[F
    iget-object v1, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    #@28
    const-string/jumbo v2, "tint"

    #@2b
    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2e
    .line 122
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 86
    invoke-direct {p0}, Landroid/filterpacks/imageproc/TintFilter;->updateParameters()V

    #@7
    .line 84
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 65
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 69
    packed-switch p2, :pswitch_data_0

    #@3
    .line 77
    new-instance v1, Ljava/lang/RuntimeException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Filter Sharpen does not support frames of target "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 78
    const-string/jumbo v3, "!"

    #@18
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 71
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@26
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 tint;\nuniform vec3 color_ratio;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float avg_color = dot(color_ratio, color.rgb);\n  vec3 new_color = min(0.8 * avg_color + 0.2 * tint, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    #@29
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2c
    .line 72
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/TintFilter;->mTileSize:I

    #@2e
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@31
    .line 73
    iput-object v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    #@33
    .line 80
    iput p2, p0, Landroid/filterpacks/imageproc/TintFilter;->mTarget:I

    #@35
    .line 68
    return-void

    #@36
    .line 69
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 93
    const-string/jumbo v3, "image"

    #@3
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/TintFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 94
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 97
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@12
    move-result v3

    #@13
    iget v4, p0, Landroid/filterpacks/imageproc/TintFilter;->mTarget:I

    #@15
    if-eq v3, v4, :cond_1

    #@17
    .line 98
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/TintFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@1e
    .line 99
    invoke-direct {p0}, Landroid/filterpacks/imageproc/TintFilter;->initParameters()V

    #@21
    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@28
    move-result-object v2

    #@29
    .line 106
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2b
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@2e
    .line 109
    const-string/jumbo v3, "image"

    #@31
    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/TintFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@34
    .line 112
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@37
    .line 91
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/TintFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 60
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/TintFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 58
    return-void
.end method
