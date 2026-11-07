.class public Landroid/renderscript/ProgramVertexFixedFunction$Builder;
.super Ljava/lang/Object;
.source "ProgramVertexFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertexFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field greylist-max-o mRS:Landroid/renderscript/RenderScript;

.field greylist-max-o mShader:Ljava/lang/String;

.field greylist-max-o mTextureMatrixEnable:Z


# direct methods
.method public constructor greylist <init>(Landroid/renderscript/RenderScript;)V
    .registers 2
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 128
    return-void
.end method

.method private greylist-max-o buildShaderString()V
    .registers 3

    .line 154
    const-string v0, "//rs_shader_internal\n"

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "varying vec4 varColor;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "varying vec2 varTex0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "void main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  gl_Position = UNI_MVP * ATTRIB_position;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  gl_PointSize = 1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  varColor = ATTRIB_color;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 163
    iget-boolean v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mTextureMatrixEnable:Z

    if-eqz v0, :cond_ad

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  varTex0 = (UNI_TexMatrix * vec4(ATTRIB_texture0, 0.0, 1.0)).xy;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto :goto_c4

    .line 166
    :cond_ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  varTex0 = ATTRIB_texture0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 168
    :goto_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 169
    return-void
.end method

.method static greylist-max-o getConstantInputType(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type;
    .registers 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 141
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 142
    .local v0, "b":Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "MV"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 143
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "P"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 144
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "TexMatrix"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 145
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "MVP"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 147
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 148
    .local v1, "typeBuilder":Landroid/renderscript/Type$Builder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 149
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public greylist create()Landroid/renderscript/ProgramVertexFixedFunction;
    .registers 5

    .line 180
    invoke-direct {p0}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->buildShaderString()V

    .line 182
    new-instance v0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 183
    .local v0, "sb":Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 184
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->getConstantInputType(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 186
    new-instance v1, Landroid/renderscript/Element$Builder;

    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v2}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 187
    .local v1, "b":Landroid/renderscript/Element$Builder;
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const-string/jumbo v3, "position"

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 188
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const-string v3, "color"

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 189
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const-string/jumbo v3, "normal"

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 190
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const-string/jumbo v3, "texture0"

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 191
    invoke-virtual {v1}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;

    .line 193
    invoke-virtual {v0}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o setTextureMatrixEnable(Z)Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    .registers 2
    .param p1, "enable"    # Z

    .line 137
    iput-boolean p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mTextureMatrixEnable:Z

    .line 138
    return-object p0
.end method
