.class public Landroid/filterpacks/imageproc/ToGrayFilter;
.super Landroid/filterpacks/imageproc/SimpleImageFilter;
.source "ToGrayFilter.java"


# static fields
.field private static final mColorToGray4Shader:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float y = dot(color, vec4(0.299, 0.587, 0.114, 0));\n  gl_FragColor = vec4(y, y, y, color.a);\n}\n"


# instance fields
.field private mInvertSource:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "invertSource"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

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
    .line 52
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/filterpacks/imageproc/SimpleImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 34
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ToGrayFilter;->mInvertSource:Z

    #@7
    .line 37
    const/16 v0, 0x280

    #@9
    iput v0, p0, Landroid/filterpacks/imageproc/ToGrayFilter;->mTileSize:I

    #@b
    .line 51
    return-void
.end method


# virtual methods
.method protected getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Native toGray not implemented yet!"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    #@2
    .line 69
    const-string/jumbo v2, "image"

    #@5
    invoke-virtual {p0, v2}, Landroid/filterpacks/imageproc/ToGrayFilter;->getInputFormat(Ljava/lang/String;)Landroid/filterfw/core/FrameFormat;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@c
    move-result v0

    #@d
    .line 70
    .local v0, "inputChannels":I
    const/4 v2, 0x4

    #@e
    if-eq v0, v2, :cond_0

    #@10
    .line 71
    new-instance v2, Ljava/lang/RuntimeException;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Unsupported GL input channels: "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    .line 72
    const-string/jumbo v4, "! Channels must be 4!"

    #@25
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@30
    throw v2

    #@31
    .line 74
    :cond_0
    new-instance v1, Landroid/filterfw/core/ShaderProgram;

    #@33
    const-string/jumbo v2, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float y = dot(color, vec4(0.299, 0.587, 0.114, 0));\n  gl_FragColor = vec4(y, y, y, color.a);\n}\n"

    #@36
    invoke-direct {v1, p1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@39
    .line 75
    .local v1, "program":Landroid/filterfw/core/ShaderProgram;
    iget v2, p0, Landroid/filterpacks/imageproc/ToGrayFilter;->mTileSize:I

    #@3b
    invoke-virtual {v1, v2}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@3e
    .line 76
    iget-boolean v2, p0, Landroid/filterpacks/imageproc/ToGrayFilter;->mInvertSource:Z

    #@40
    if-eqz v2, :cond_1

    #@42
    .line 77
    const/4 v2, 0x0

    #@43
    const/high16 v3, -0x40800000    # -1.0f

    #@45
    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    #@48
    .line 78
    :cond_1
    return-object v1
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 57
    const-string/jumbo v0, "image"

    #@4
    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ToGrayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 59
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ToGrayFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 56
    return-void
.end method
