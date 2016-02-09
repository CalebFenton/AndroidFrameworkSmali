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
.field mRS:Landroid/renderscript/RenderScript;

.field mShader:Ljava/lang/String;

.field mTextureMatrixEnable:Z


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 122
    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@5
    .line 121
    return-void
.end method

.method private buildShaderString()V
    .locals 2

    #@0
    .prologue
    .line 149
    const-string/jumbo v0, "//rs_shader_internal\n"

    #@3
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@5
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "varying vec4 varColor;\n"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@1d
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    const-string/jumbo v1, "varying vec2 varTex0;\n"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@35
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    const-string/jumbo v1, "void main() {\n"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@4d
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    const-string/jumbo v1, "  gl_Position = UNI_MVP * ATTRIB_position;\n"

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@65
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    const-string/jumbo v1, "  gl_PointSize = 1.0;\n"

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v0

    #@7b
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@7d
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    const-string/jumbo v1, "  varColor = ATTRIB_color;\n"

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v0

    #@93
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@95
    .line 158
    iget-boolean v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mTextureMatrixEnable:Z

    #@97
    if-eqz v0, :cond_0

    #@99
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v0

    #@a4
    const-string/jumbo v1, "  varTex0 = (UNI_TexMatrix * vec4(ATTRIB_texture0, 0.0, 1.0)).xy;\n"

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v0

    #@af
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@b1
    .line 163
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v0

    #@bc
    const-string/jumbo v1, "}\n"

    #@bf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v0

    #@c3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v0

    #@c7
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@c9
    .line 147
    return-void

    #@ca
    .line 161
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@d1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v0

    #@d5
    const-string/jumbo v1, "  varTex0 = ATTRIB_texture0;\n"

    #@d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v0

    #@dc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v0

    #@e0
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@e2
    goto :goto_0
.end method

.method static getConstantInputType(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 136
    new-instance v0, Landroid/renderscript/Element$Builder;

    #@2
    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@5
    .line 137
    .local v0, "b":Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@8
    move-result-object v2

    #@9
    const-string/jumbo v3, "MV"

    #@c
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    #@f
    .line 138
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, "P"

    #@16
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    #@19
    .line 139
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, "TexMatrix"

    #@20
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    #@23
    .line 140
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v3, "MVP"

    #@2a
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    #@2d
    .line 142
    new-instance v1, Landroid/renderscript/Type$Builder;

    #@2f
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    #@32
    move-result-object v2

    #@33
    invoke-direct {v1, p0, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    #@36
    .line 143
    .local v1, "typeBuilder":Landroid/renderscript/Type$Builder;
    const/4 v2, 0x1

    #@37
    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    #@3a
    .line 144
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    #@3d
    move-result-object v2

    #@3e
    return-object v2
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramVertexFixedFunction;
    .locals 4

    #@0
    .prologue
    .line 174
    invoke-direct {p0}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->buildShaderString()V

    #@3
    .line 176
    new-instance v1, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;

    #@5
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-direct {v1, v2}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    #@a
    .line 177
    .local v1, "sb":Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@c
    invoke-virtual {v1, v2}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    #@f
    .line 178
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@11
    invoke-static {v2}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->getConstantInputType(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    #@18
    .line 180
    new-instance v0, Landroid/renderscript/Element$Builder;

    #@1a
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    invoke-direct {v0, v2}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@1f
    .line 181
    .local v0, "b":Landroid/renderscript/Element$Builder;
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@21
    invoke-static {v2}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, "position"

    #@28
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    #@2b
    .line 182
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    invoke-static {v2}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@30
    move-result-object v2

    #@31
    const-string/jumbo v3, "color"

    #@34
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    #@37
    .line 183
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@39
    invoke-static {v2}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@3c
    move-result-object v2

    #@3d
    const-string/jumbo v3, "normal"

    #@40
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    #@43
    .line 184
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@45
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@48
    move-result-object v2

    #@49
    const-string/jumbo v3, "texture0"

    #@4c
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    #@4f
    .line 185
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v1, v2}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;

    #@56
    .line 187
    invoke-virtual {v1}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    #@59
    move-result-object v2

    #@5a
    return-object v2
.end method

.method public setTextureMatrixEnable(Z)Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 132
    iput-boolean p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mTextureMatrixEnable:Z

    #@2
    .line 133
    return-object p0
.end method
