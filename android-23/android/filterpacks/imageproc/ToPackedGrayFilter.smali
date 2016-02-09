.class public Landroid/filterpacks/imageproc/ToPackedGrayFilter;
.super Landroid/filterfw/core/Filter;
.source "ToPackedGrayFilter.java"


# instance fields
.field private final mColorToPackedGrayShader:Ljava/lang/String;

.field private mKeepAspectRatio:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "keepAspectRatio"
    .end annotation
.end field

.field private mOHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "oheight"
    .end annotation
.end field

.field private mOWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "owidth"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 60
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 37
    iput v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOWidth:I

    #@6
    .line 39
    iput v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOHeight:I

    #@8
    .line 41
    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mKeepAspectRatio:Z

    #@a
    .line 46
    const-string/jumbo v0, "precision mediump float;\nconst vec4 coeff_y = vec4(0.299, 0.587, 0.114, 0);\nuniform sampler2D tex_sampler_0;\nuniform float pix_stride;\nvarying vec2 v_texcoord;\nvoid main() {\n  for (int i = 0; i < 4; ++i) {\n    vec4 p = texture2D(tex_sampler_0,\n                       v_texcoord + vec2(pix_stride * float(i), 0.0));\n    gl_FragColor[i] = dot(p, coeff_y);\n  }\n}\n"

    #@d
    .line 45
    iput-object v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mColorToPackedGrayShader:Ljava/lang/String;

    #@f
    .line 59
    return-void
.end method

.method private checkOutputDimensions(II)V
    .locals 3
    .param p1, "outputWidth"    # I
    .param p2, "outputHeight"    # I

    #@0
    .prologue
    .line 76
    if-lez p1, :cond_0

    #@2
    if-gtz p2, :cond_1

    #@4
    .line 77
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Invalid output dimensions: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 78
    const-string/jumbo v2, " "

    #@19
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 75
    :cond_1
    return-void
.end method

.method private convertInputFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 6
    .param p1, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 83
    iget v2, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOWidth:I

    #@2
    .line 84
    .local v2, "ow":I
    iget v1, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOHeight:I

    #@4
    .line 85
    .local v1, "oh":I
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@7
    move-result v3

    #@8
    .line 86
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@b
    move-result v0

    #@c
    .line 87
    .local v0, "h":I
    iget v4, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOWidth:I

    #@e
    if-nez v4, :cond_0

    #@10
    .line 88
    move v2, v3

    #@11
    .line 90
    :cond_0
    iget v4, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOHeight:I

    #@13
    if-nez v4, :cond_1

    #@15
    .line 91
    move v1, v0

    #@16
    .line 93
    :cond_1
    iget-boolean v4, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mKeepAspectRatio:Z

    #@18
    if-eqz v4, :cond_2

    #@1a
    .line 96
    if-le v3, v0, :cond_3

    #@1c
    .line 97
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@1f
    move-result v2

    #@20
    .line 98
    mul-int v4, v2, v0

    #@22
    div-int v1, v4, v3

    #@24
    .line 104
    :cond_2
    :goto_0
    if-lez v2, :cond_4

    #@26
    const/4 v4, 0x4

    #@27
    if-ge v2, v4, :cond_4

    #@29
    const/4 v2, 0x4

    #@2a
    .line 106
    :goto_1
    const/4 v4, 0x1

    #@2b
    .line 107
    const/4 v5, 0x2

    #@2c
    .line 105
    invoke-static {v2, v1, v4, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@2f
    move-result-object v4

    #@30
    return-object v4

    #@31
    .line 100
    :cond_3
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@34
    move-result v1

    #@35
    .line 101
    mul-int v4, v1, v3

    #@37
    div-int v2, v4, v0

    #@39
    goto :goto_0

    #@3a
    .line 104
    :cond_4
    div-int/lit8 v4, v2, 0x4

    #@3c
    mul-int/lit8 v2, v4, 0x4

    #@3e
    goto :goto_1
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 1
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 72
    invoke-direct {p0, p2}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->convertInputFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 112
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@2
    const-string/jumbo v1, "precision mediump float;\nconst vec4 coeff_y = vec4(0.299, 0.587, 0.114, 0);\nuniform sampler2D tex_sampler_0;\nuniform float pix_stride;\nvarying vec2 v_texcoord;\nvoid main() {\n  for (int i = 0; i < 4; ++i) {\n    vec4 p = texture2D(tex_sampler_0,\n                       v_texcoord + vec2(pix_stride * float(i), 0.0));\n    gl_FragColor[i] = dot(p, coeff_y);\n  }\n}\n"

    #@5
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mProgram:Landroid/filterfw/core/Program;

    #@a
    .line 111
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 12
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 117
    const-string/jumbo v8, "image"

    #@3
    invoke-virtual {p0, v8}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 118
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 119
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-direct {p0, v1}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->convertInputFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    #@e
    move-result-object v4

    #@f
    .line 120
    .local v4, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@12
    move-result v5

    #@13
    .line 121
    .local v5, "ow":I
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@16
    move-result v2

    #@17
    .line 122
    .local v2, "oh":I
    invoke-direct {p0, v5, v2}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->checkOutputDimensions(II)V

    #@1a
    .line 123
    iget-object v8, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mProgram:Landroid/filterfw/core/Program;

    #@1c
    const-string/jumbo v9, "pix_stride"

    #@1f
    int-to-float v10, v5

    #@20
    const/high16 v11, 0x3f800000    # 1.0f

    #@22
    div-float v10, v11, v10

    #@24
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@27
    move-result-object v10

    #@28
    invoke-virtual {v8, v9, v10}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2b
    .line 126
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@2e
    move-result-object v7

    #@2f
    .line 127
    .local v7, "tempFrameFormat":Landroid/filterfw/core/MutableFrameFormat;
    div-int/lit8 v8, v5, 0x4

    #@31
    invoke-virtual {v7, v8, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@34
    .line 128
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@37
    move-result-object v8

    #@38
    invoke-virtual {v8, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@3b
    move-result-object v6

    #@3c
    .line 129
    .local v6, "temp":Landroid/filterfw/core/Frame;
    iget-object v8, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mProgram:Landroid/filterfw/core/Program;

    #@3e
    invoke-virtual {v8, v0, v6}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@41
    .line 132
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@44
    move-result-object v8

    #@45
    invoke-virtual {v8, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@48
    move-result-object v3

    #@49
    .line 133
    .local v3, "output":Landroid/filterfw/core/Frame;
    invoke-virtual {v3, v6}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@4c
    .line 134
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@4f
    .line 137
    const-string/jumbo v8, "image"

    #@52
    invoke-virtual {p0, v8, v3}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@55
    .line 138
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@58
    .line 116
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 65
    const-string/jumbo v0, "image"

    #@4
    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 67
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 64
    return-void
.end method
