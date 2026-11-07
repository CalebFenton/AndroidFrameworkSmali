.class public final Landroid/renderscript/ScriptIntrinsicColorMatrix;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicColorMatrix.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mAdd:Landroid/renderscript/Float4;

.field private final greylist-max-o mMatrix:Landroid/renderscript/Matrix4f;


# direct methods
.method private constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 46
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 47
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    .line 51
    return-void
.end method

.method public static whitelist create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicColorMatrix;
    .registers 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 81
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .line 82
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicColorMatrix;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;-><init>(JLandroid/renderscript/RenderScript;)V

    return-object v2
.end method

.method public static whitelist create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicColorMatrix;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-static {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicColorMatrix;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o setMatrix()V
    .registers 3

    .line 87
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 88
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 231
    return-void
.end method

.method public whitelist forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 12
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 250
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    const-string v1, "Unsupported element type."

    if-nez v0, :cond_89

    .line 251
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 252
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 253
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 254
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 255
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 256
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 257
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_83

    goto :goto_89

    .line 259
    :cond_83
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_89
    :goto_89
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 263
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 264
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 265
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 266
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 267
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 268
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 269
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_10a

    goto :goto_110

    .line 271
    :cond_10a
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_110
    :goto_110
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .end local p1    # "ain":Landroid/renderscript/Allocation;
    .end local p2    # "aout":Landroid/renderscript/Allocation;
    .end local p3    # "opt":Landroid/renderscript/Script$LaunchOptions;
    .local v4, "ain":Landroid/renderscript/Allocation;
    .local v5, "aout":Landroid/renderscript/Allocation;
    .local v7, "opt":Landroid/renderscript/Script$LaunchOptions;
    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 275
    return-void
.end method

.method public whitelist getKernelID()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 283
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setAdd(FFFF)V
    .registers 7
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 144
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iput p1, v0, Landroid/renderscript/Float4;->x:F

    .line 145
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iput p2, v0, Landroid/renderscript/Float4;->y:F

    .line 146
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iput p3, v0, Landroid/renderscript/Float4;->z:F

    .line 147
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iput p4, v0, Landroid/renderscript/Float4;->w:F

    .line 149
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 150
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v1, v1, Landroid/renderscript/Float4;->x:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 151
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v1, v1, Landroid/renderscript/Float4;->y:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 152
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v1, v1, Landroid/renderscript/Float4;->z:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 153
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v1, v1, Landroid/renderscript/Float4;->w:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 154
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 155
    return-void
.end method

.method public whitelist setAdd(Landroid/renderscript/Float4;)V
    .registers 4
    .param p1, "f"    # Landroid/renderscript/Float4;

    .line 121
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 122
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 123
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 124
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    .line 126
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 127
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    iget v1, p1, Landroid/renderscript/Float4;->x:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 128
    iget v1, p1, Landroid/renderscript/Float4;->y:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 129
    iget v1, p1, Landroid/renderscript/Float4;->z:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 130
    iget v1, p1, Landroid/renderscript/Float4;->w:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 131
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 132
    return-void
.end method

.method public whitelist setColorMatrix(Landroid/renderscript/Matrix3f;)V
    .registers 3
    .param p1, "m"    # Landroid/renderscript/Matrix3f;

    .line 110
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix3f;)V

    .line 111
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 112
    return-void
.end method

.method public whitelist setColorMatrix(Landroid/renderscript/Matrix4f;)V
    .registers 3
    .param p1, "m"    # Landroid/renderscript/Matrix4f;

    .line 99
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 100
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 101
    return-void
.end method

.method public whitelist setGreyscale()V
    .registers 8

    .line 163
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 164
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const/4 v1, 0x0

    const v2, 0x3e991687    # 0.299f

    invoke-virtual {v0, v1, v1, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 165
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const/4 v3, 0x1

    const v4, 0x3f1645a2    # 0.587f

    invoke-virtual {v0, v3, v1, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 166
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const/4 v5, 0x2

    const v6, 0x3de978d5    # 0.114f

    invoke-virtual {v0, v5, v1, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 167
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v1, v3, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 168
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v3, v3, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 169
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v5, v3, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 170
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v1, v5, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 171
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v3, v5, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 172
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v5, v5, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 173
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 174
    return-void
.end method

.method public whitelist setRGBtoYUV()V
    .registers 6

    .line 201
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 202
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x3e991687    # 0.299f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 203
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x3f1645a2    # 0.587f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 204
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x3de978d5    # 0.114f

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 205
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, -0x41e956c1    # -0.14713f

    invoke-virtual {v0, v2, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 206
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, -0x416c1a8b    # -0.28886f

    invoke-virtual {v0, v3, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 207
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x3edf3b64    # 0.436f

    invoke-virtual {v0, v4, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 208
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x3f1d70a4    # 0.615f

    invoke-virtual {v0, v2, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 209
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, -0x40fc299e

    invoke-virtual {v0, v3, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 210
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, -0x42332df5    # -0.10001f

    invoke-virtual {v0, v4, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 211
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 212
    return-void
.end method

.method public whitelist setYUVtoRGB()V
    .registers 8

    .line 182
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 183
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 184
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 185
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v5, 0x3f91e5f3    # 1.13983f

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v1, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 186
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v1, v3, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 187
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v5, -0x4135f06f

    invoke-virtual {v0, v3, v3, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 188
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v5, -0x40eb5dcc    # -0.5806f

    invoke-virtual {v0, v6, v3, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 189
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v1, v6, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 190
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x40020e17

    invoke-virtual {v0, v3, v6, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 191
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v6, v6, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 192
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 193
    return-void
.end method
