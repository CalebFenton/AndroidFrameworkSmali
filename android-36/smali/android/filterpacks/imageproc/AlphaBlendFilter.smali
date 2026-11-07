.class public Landroid/filterpacks/imageproc/AlphaBlendFilter;
.super Landroid/filterpacks/imageproc/ImageCombineFilter;
.source "AlphaBlendFilter.java"


# instance fields
.field private final blacklist mAlphaBlendShader:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "overlay"

    const-string/jumbo v1, "mask"

    const-string/jumbo v2, "source"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "blended"

    const-string/jumbo v2, "weight"

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/filterpacks/imageproc/ImageCombineFilter;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float weight;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 colorL = texture2D(tex_sampler_0, v_texcoord);\n  vec4 colorR = texture2D(tex_sampler_1, v_texcoord);\n  float blend = texture2D(tex_sampler_2, v_texcoord).r * weight;\n  gl_FragColor = colorL * (1.0 - blend) + colorR * blend;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/AlphaBlendFilter;->mAlphaBlendShader:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method protected blacklist getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TODO: Write native implementation for AlphaBlend!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 54
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float weight;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 colorL = texture2D(tex_sampler_0, v_texcoord);\n  vec4 colorR = texture2D(tex_sampler_1, v_texcoord);\n  float blend = texture2D(tex_sampler_2, v_texcoord).r * weight;\n  gl_FragColor = colorL * (1.0 - blend) + colorR * blend;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    return-object v0
.end method
