.class public Landroid/filterpacks/imageproc/DuotoneFilter;
.super Landroid/filterfw/core/Filter;
.source "DuotoneFilter.java"


# instance fields
.field private final mDuotoneShader:Ljava/lang/String;

.field private mFirstColor:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "first_color"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mSecondColor:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "second_color"
    .end annotation
.end field

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 32
    const/high16 v0, -0x10000

    #@5
    iput v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    #@7
    .line 35
    const/16 v0, -0x100

    #@9
    iput v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    #@b
    .line 38
    const/16 v0, 0x280

    #@d
    iput v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTileSize:I

    #@f
    .line 41
    const/4 v0, 0x0

    #@10
    iput v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTarget:I

    #@12
    .line 44
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 first;\nuniform vec3 second;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = (color.r + color.g + color.b) * 0.3333;\n  vec3 new_color = (1.0 - energy) * first + energy * second;\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    #@15
    .line 43
    iput-object v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mDuotoneShader:Ljava/lang/String;

    #@17
    .line 56
    return-void
.end method

.method private updateParameters()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    const/high16 v3, 0x437f0000    # 255.0f

    #@6
    .line 112
    new-array v0, v7, [F

    #@8
    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    #@a
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    #@d
    move-result v2

    #@e
    int-to-float v2, v2

    #@f
    div-float/2addr v2, v3

    #@10
    aput v2, v0, v4

    #@12
    .line 113
    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    #@14
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    #@17
    move-result v2

    #@18
    int-to-float v2, v2

    #@19
    div-float/2addr v2, v3

    #@1a
    aput v2, v0, v5

    #@1c
    .line 114
    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    #@1e
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    #@21
    move-result v2

    #@22
    int-to-float v2, v2

    #@23
    div-float/2addr v2, v3

    #@24
    aput v2, v0, v6

    #@26
    .line 115
    .local v0, "first":[F
    new-array v1, v7, [F

    #@28
    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    #@2a
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    #@2d
    move-result v2

    #@2e
    int-to-float v2, v2

    #@2f
    div-float/2addr v2, v3

    #@30
    aput v2, v1, v4

    #@32
    .line 116
    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    #@34
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    #@37
    move-result v2

    #@38
    int-to-float v2, v2

    #@39
    div-float/2addr v2, v3

    #@3a
    aput v2, v1, v5

    #@3c
    .line 117
    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    #@3e
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    #@41
    move-result v2

    #@42
    int-to-float v2, v2

    #@43
    div-float/2addr v2, v3

    #@44
    aput v2, v1, v6

    #@46
    .line 119
    .local v1, "second":[F
    iget-object v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    #@48
    const-string/jumbo v3, "first"

    #@4b
    invoke-virtual {v2, v3, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@4e
    .line 120
    iget-object v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    #@50
    const-string/jumbo v3, "second"

    #@53
    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@56
    .line 111
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 68
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 72
    packed-switch p2, :pswitch_data_0

    #@3
    .line 80
    new-instance v1, Ljava/lang/RuntimeException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Filter Duotone does not support frames of target "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 81
    const-string/jumbo v3, "!"

    #@18
    .line 80
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
    .line 74
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@26
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 first;\nuniform vec3 second;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = (color.r + color.g + color.b) * 0.3333;\n  vec3 new_color = (1.0 - energy) * first + energy * second;\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    #@29
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2c
    .line 75
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTileSize:I

    #@2e
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@31
    .line 76
    iput-object v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    #@33
    .line 83
    iput p2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTarget:I

    #@35
    .line 71
    return-void

    #@36
    .line 72
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
    .line 89
    const-string/jumbo v3, "image"

    #@3
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/DuotoneFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 90
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 93
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@12
    move-result-object v2

    #@13
    .line 96
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    #@15
    if-eqz v3, :cond_0

    #@17
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1a
    move-result v3

    #@1b
    iget v4, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTarget:I

    #@1d
    if-eq v3, v4, :cond_1

    #@1f
    .line 97
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@22
    move-result v3

    #@23
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/DuotoneFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@26
    .line 99
    :cond_1
    invoke-direct {p0}, Landroid/filterpacks/imageproc/DuotoneFilter;->updateParameters()V

    #@29
    .line 102
    iget-object v3, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2b
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@2e
    .line 105
    const-string/jumbo v3, "image"

    #@31
    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/DuotoneFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@34
    .line 108
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@37
    .line 87
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 62
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/DuotoneFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 63
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/DuotoneFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 61
    return-void
.end method
