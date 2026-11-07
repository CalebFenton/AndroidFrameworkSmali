.class public Landroid/filterpacks/imageproc/ToGrayFilter;
.super Landroid/filterpacks/imageproc/SimpleImageFilter;
.source "ToGrayFilter.java"


# static fields
.field private static final blacklist mColorToGray4Shader:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float y = dot(color, vec4(0.299, 0.587, 0.114, 0));\n  gl_FragColor = vec4(y, y, y, color.a);\n}\n"


# instance fields
.field private blacklist mInvertSource:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "invertSource"
    .end annotation
.end field

.field private blacklist mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private blacklist mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/filterpacks/imageproc/SimpleImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ToGrayFilter;->mInvertSource:Z

    .line 36
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/ToGrayFilter;->mTileSize:I

    .line 53
    return-void
.end method


# virtual methods
.method protected blacklist getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Native toGray not implemented yet!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 69
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ToGrayFilter;->getInputFormat(Ljava/lang/String;)Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v0

    .line 70
    .local v0, "inputChannels":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    .line 74
    new-instance v1, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float y = dot(color, vec4(0.299, 0.587, 0.114, 0));\n  gl_FragColor = vec4(y, y, y, color.a);\n}\n"

    invoke-direct {v1, p1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 75
    .local v1, "program":Landroid/filterfw/core/ShaderProgram;
    iget v2, p0, Landroid/filterpacks/imageproc/ToGrayFilter;->mTileSize:I

    invoke-virtual {v1, v2}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 76
    iget-boolean v2, p0, Landroid/filterpacks/imageproc/ToGrayFilter;->mInvertSource:Z

    if-eqz v2, :cond_27

    .line 77
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 78
    :cond_27
    return-object v1

    .line 71
    .end local v1    # "program":Landroid/filterfw/core/ShaderProgram;
    :cond_28
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported GL input channels: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Channels must be 4!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 57
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ToGrayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 59
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/ToGrayFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
