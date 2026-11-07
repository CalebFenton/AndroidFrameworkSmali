.class public Landroid/filterpacks/imageproc/ToPackedGrayFilter;
.super Landroid/filterfw/core/Filter;
.source "ToPackedGrayFilter.java"


# instance fields
.field private final blacklist mColorToPackedGrayShader:Ljava/lang/String;

.field private blacklist mKeepAspectRatio:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "keepAspectRatio"
    .end annotation
.end field

.field private blacklist mOHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "oheight"
    .end annotation
.end field

.field private blacklist mOWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "owidth"
    .end annotation
.end field

.field private blacklist mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOWidth:I

    .line 38
    iput v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOHeight:I

    .line 40
    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mKeepAspectRatio:Z

    .line 45
    const-string/jumbo v0, "precision mediump float;\nconst vec4 coeff_y = vec4(0.299, 0.587, 0.114, 0);\nuniform sampler2D tex_sampler_0;\nuniform float pix_stride;\nvarying vec2 v_texcoord;\nvoid main() {\n  for (int i = 0; i < 4; ++i) {\n    vec4 p = texture2D(tex_sampler_0,\n                       v_texcoord + vec2(pix_stride * float(i), 0.0));\n    gl_FragColor[i] = dot(p, coeff_y);\n  }\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mColorToPackedGrayShader:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private blacklist checkOutputDimensions(II)V
    .registers 6
    .param p1, "outputWidth"    # I
    .param p2, "outputHeight"    # I

    .line 76
    if-lez p1, :cond_5

    if-lez p2, :cond_5

    .line 80
    return-void

    .line 77
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid output dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist convertInputFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 8
    .param p1, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 83
    iget v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOWidth:I

    .line 84
    .local v0, "ow":I
    iget v1, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOHeight:I

    .line 85
    .local v1, "oh":I
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    .line 86
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    .line 87
    .local v3, "h":I
    iget v4, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOWidth:I

    if-nez v4, :cond_11

    .line 88
    move v0, v2

    .line 90
    :cond_11
    iget v4, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOHeight:I

    if-nez v4, :cond_16

    .line 91
    move v1, v3

    .line 93
    :cond_16
    iget-boolean v4, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mKeepAspectRatio:Z

    if-eqz v4, :cond_2d

    .line 96
    if-le v2, v3, :cond_25

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 98
    mul-int v4, v0, v3

    div-int v1, v4, v2

    goto :goto_2d

    .line 100
    :cond_25
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 101
    mul-int v4, v1, v2

    div-int v0, v4, v3

    .line 104
    :cond_2d
    :goto_2d
    const/4 v4, 0x4

    if-lez v0, :cond_33

    if-ge v0, v4, :cond_33

    goto :goto_36

    :cond_33
    div-int/lit8 v5, v0, 0x4

    mul-int/2addr v4, v5

    .line 105
    .end local v0    # "ow":I
    .local v4, "ow":I
    :goto_36
    const/4 v0, 0x1

    const/4 v5, 0x2

    invoke-static {v4, v1, v0, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 4
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 72
    invoke-direct {p0, p2}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->convertInputFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 112
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nconst vec4 coeff_y = vec4(0.299, 0.587, 0.114, 0);\nuniform sampler2D tex_sampler_0;\nuniform float pix_stride;\nvarying vec2 v_texcoord;\nvoid main() {\n  for (int i = 0; i < 4; ++i) {\n    vec4 p = texture2D(tex_sampler_0,\n                       v_texcoord + vec2(pix_stride * float(i), 0.0));\n    gl_FragColor[i] = dot(p, coeff_y);\n  }\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 113
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 117
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 118
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 119
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-direct {p0, v2}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->convertInputFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    .line 120
    .local v3, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    .line 121
    .local v4, "ow":I
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    .line 122
    .local v5, "oh":I
    invoke-direct {p0, v4, v5}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->checkOutputDimensions(II)V

    .line 123
    iget-object v6, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mProgram:Landroid/filterfw/core/Program;

    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string/jumbo v8, "pix_stride"

    invoke-virtual {v6, v8, v7}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v6

    .line 127
    .local v6, "tempFrameFormat":Landroid/filterfw/core/MutableFrameFormat;
    div-int/lit8 v7, v4, 0x4

    invoke-virtual {v6, v7, v5}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 128
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    .line 129
    .local v7, "temp":Landroid/filterfw/core/Frame;
    iget-object v8, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v8, v1, v7}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 132
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v8

    .line 133
    .local v8, "output":Landroid/filterfw/core/Frame;
    invoke-virtual {v8, v7}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 134
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 137
    invoke-virtual {p0, v0, v8}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 138
    invoke-virtual {v8}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 139
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 65
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 67
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
