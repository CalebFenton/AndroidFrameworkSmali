.class public final Landroid/renderscript/ScriptIntrinsicColorMatrix;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicColorMatrix.java"


# instance fields
.field private final mAdd:Landroid/renderscript/Float4;

.field private final mMatrix:Landroid/renderscript/Matrix4f;


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 41
    new-instance v0, Landroid/renderscript/Matrix4f;

    #@5
    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    #@8
    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@a
    .line 42
    new-instance v0, Landroid/renderscript/Float4;

    #@c
    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    #@f
    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    #@11
    .line 44
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicColorMatrix;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 76
    const-wide/16 v2, 0x0

    #@2
    const/4 v4, 0x2

    #@3
    invoke-virtual {p0, v4, v2, v3}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    #@6
    move-result-wide v0

    #@7
    .line 77
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicColorMatrix;

    #@9
    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;-><init>(JLandroid/renderscript/RenderScript;)V

    #@c
    return-object v2
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicColorMatrix;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-static {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicColorMatrix;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private setMatrix()V
    .locals 2

    #@0
    .prologue
    .line 82
    new-instance v0, Landroid/renderscript/FieldPacker;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    #@7
    .line 83
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@9
    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    #@c
    .line 84
    const/4 v1, 0x0

    #@d
    invoke-virtual {p0, v1, v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setVar(ILandroid/renderscript/FieldPacker;)V

    #@10
    .line 81
    return-void
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 225
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 224
    return-void
.end method

.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@6
    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 246
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@16
    invoke-static {v1}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 257
    :cond_0
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@23
    move-result-object v0

    #@24
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@26
    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_1

    #@30
    .line 258
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@33
    move-result-object v0

    #@34
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@36
    invoke-static {v1}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_3

    #@40
    .line 269
    :cond_1
    const/4 v1, 0x0

    #@41
    const/4 v4, 0x0

    #@42
    move-object v0, p0

    #@43
    move-object v2, p1

    #@44
    move-object v3, p2

    #@45
    move-object v5, p3

    #@46
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    #@49
    .line 244
    return-void

    #@4a
    .line 247
    :cond_2
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@4d
    move-result-object v0

    #@4e
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@50
    invoke-static {v1}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@57
    move-result v0

    #@58
    if-nez v0, :cond_0

    #@5a
    .line 248
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@5d
    move-result-object v0

    #@5e
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@60
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@67
    move-result v0

    #@68
    if-nez v0, :cond_0

    #@6a
    .line 249
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@6d
    move-result-object v0

    #@6e
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@70
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@77
    move-result v0

    #@78
    if-nez v0, :cond_0

    #@7a
    .line 250
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@7d
    move-result-object v0

    #@7e
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@80
    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@87
    move-result v0

    #@88
    if-nez v0, :cond_0

    #@8a
    .line 251
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@8d
    move-result-object v0

    #@8e
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@90
    invoke-static {v1}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@97
    move-result v0

    #@98
    if-nez v0, :cond_0

    #@9a
    .line 252
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@9d
    move-result-object v0

    #@9e
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@a0
    invoke-static {v1}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@a3
    move-result-object v1

    #@a4
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@a7
    move-result v0

    #@a8
    if-nez v0, :cond_0

    #@aa
    .line 254
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@ac
    const-string/jumbo v1, "Unsuported element type."

    #@af
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b2
    throw v0

    #@b3
    .line 259
    :cond_3
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@b6
    move-result-object v0

    #@b7
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@b9
    invoke-static {v1}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@bc
    move-result-object v1

    #@bd
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@c0
    move-result v0

    #@c1
    if-nez v0, :cond_1

    #@c3
    .line 260
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@c6
    move-result-object v0

    #@c7
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@c9
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@cc
    move-result-object v1

    #@cd
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@d0
    move-result v0

    #@d1
    if-nez v0, :cond_1

    #@d3
    .line 261
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@d6
    move-result-object v0

    #@d7
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@d9
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@dc
    move-result-object v1

    #@dd
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@e0
    move-result v0

    #@e1
    if-nez v0, :cond_1

    #@e3
    .line 262
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@e6
    move-result-object v0

    #@e7
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@e9
    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@ec
    move-result-object v1

    #@ed
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@f0
    move-result v0

    #@f1
    if-nez v0, :cond_1

    #@f3
    .line 263
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@f6
    move-result-object v0

    #@f7
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@f9
    invoke-static {v1}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@fc
    move-result-object v1

    #@fd
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@100
    move-result v0

    #@101
    if-nez v0, :cond_1

    #@103
    .line 264
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@106
    move-result-object v0

    #@107
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    #@109
    invoke-static {v1}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@10c
    move-result-object v1

    #@10d
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@110
    move-result v0

    #@111
    if-nez v0, :cond_1

    #@113
    .line 266
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@115
    const-string/jumbo v1, "Unsuported element type."

    #@118
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11b
    throw v0
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 278
    const/4 v0, 0x0

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public setAdd(FFFF)V
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    #@0
    .prologue
    .line 139
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    #@2
    iput p1, v1, Landroid/renderscript/Float4;->x:F

    #@4
    .line 140
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    #@6
    iput p2, v1, Landroid/renderscript/Float4;->y:F

    #@8
    .line 141
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    #@a
    iput p3, v1, Landroid/renderscript/Float4;->z:F

    #@c
    .line 142
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    #@e
    iput p4, v1, Landroid/renderscript/Float4;->w:F

    #@10
    .line 144
    new-instance v0, Landroid/renderscript/FieldPacker;

    #@12
    const/16 v1, 0x10

    #@14
    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    #@17
    .line 145
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    #@19
    iget v1, v1, Landroid/renderscript/Float4;->x:F

    #@1b
    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@1e
    .line 146
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    #@20
    iget v1, v1, Landroid/renderscript/Float4;->y:F

    #@22
    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@25
    .line 147
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    #@27
    iget v1, v1, Landroid/renderscript/Float4;->z:F

    #@29
    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@2c
    .line 148
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    #@2e
    iget v1, v1, Landroid/renderscript/Float4;->w:F

    #@30
    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@33
    .line 149
    const/4 v1, 0x1

    #@34
    invoke-virtual {p0, v1, v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setVar(ILandroid/renderscript/FieldPacker;)V

    #@37
    .line 138
    return-void
.end method

.method public setAdd(Landroid/renderscript/Float4;)V
    .locals 3
    .param p1, "f"    # Landroid/renderscript/Float4;

    #@0
    .prologue
    .line 116
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    #@2
    iget v2, p1, Landroid/renderscript/Float4;->x:F

    #@4
    iput v2, v1, Landroid/renderscript/Float4;->x:F

    #@6
    .line 117
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    #@8
    iget v2, p1, Landroid/renderscript/Float4;->y:F

    #@a
    iput v2, v1, Landroid/renderscript/Float4;->y:F

    #@c
    .line 118
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    #@e
    iget v2, p1, Landroid/renderscript/Float4;->z:F

    #@10
    iput v2, v1, Landroid/renderscript/Float4;->z:F

    #@12
    .line 119
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    #@14
    iget v2, p1, Landroid/renderscript/Float4;->w:F

    #@16
    iput v2, v1, Landroid/renderscript/Float4;->w:F

    #@18
    .line 121
    new-instance v0, Landroid/renderscript/FieldPacker;

    #@1a
    const/16 v1, 0x10

    #@1c
    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    #@1f
    .line 122
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    iget v1, p1, Landroid/renderscript/Float4;->x:F

    #@21
    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@24
    .line 123
    iget v1, p1, Landroid/renderscript/Float4;->y:F

    #@26
    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@29
    .line 124
    iget v1, p1, Landroid/renderscript/Float4;->z:F

    #@2b
    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@2e
    .line 125
    iget v1, p1, Landroid/renderscript/Float4;->w:F

    #@30
    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@33
    .line 126
    const/4 v1, 0x1

    #@34
    invoke-virtual {p0, v1, v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setVar(ILandroid/renderscript/FieldPacker;)V

    #@37
    .line 115
    return-void
.end method

.method public setColorMatrix(Landroid/renderscript/Matrix3f;)V
    .locals 1
    .param p1, "m"    # Landroid/renderscript/Matrix3f;

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@2
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix3f;)V

    #@5
    .line 106
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    #@8
    .line 104
    return-void
.end method

.method public setColorMatrix(Landroid/renderscript/Matrix4f;)V
    .locals 1
    .param p1, "m"    # Landroid/renderscript/Matrix4f;

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@2
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    #@5
    .line 95
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    #@8
    .line 93
    return-void
.end method

.method public setGreyscale()V
    .locals 7

    #@0
    .prologue
    const v6, 0x3e991687    # 0.299f

    #@3
    const v5, 0x3de978d5    # 0.114f

    #@6
    const/4 v4, 0x2

    #@7
    const/4 v3, 0x1

    #@8
    const/4 v2, 0x0

    #@9
    .line 158
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@b
    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    #@e
    .line 159
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@10
    invoke-virtual {v0, v2, v2, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@13
    .line 160
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@15
    const v1, 0x3f1645a2    # 0.587f

    #@18
    invoke-virtual {v0, v3, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@1b
    .line 161
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@1d
    invoke-virtual {v0, v4, v2, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@20
    .line 162
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@22
    invoke-virtual {v0, v2, v3, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@25
    .line 163
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@27
    const v1, 0x3f1645a2    # 0.587f

    #@2a
    invoke-virtual {v0, v3, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@2d
    .line 164
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@2f
    invoke-virtual {v0, v4, v3, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@32
    .line 165
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@34
    invoke-virtual {v0, v2, v4, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@37
    .line 166
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@39
    const v1, 0x3f1645a2    # 0.587f

    #@3c
    invoke-virtual {v0, v3, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@3f
    .line 167
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@41
    invoke-virtual {v0, v4, v4, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@44
    .line 168
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    #@47
    .line 157
    return-void
.end method

.method public setRGBtoYUV()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 196
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@5
    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    #@8
    .line 197
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@a
    const v1, 0x3e991687    # 0.299f

    #@d
    invoke-virtual {v0, v2, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@10
    .line 198
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@12
    const v1, 0x3f1645a2    # 0.587f

    #@15
    invoke-virtual {v0, v3, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@18
    .line 199
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@1a
    const v1, 0x3de978d5    # 0.114f

    #@1d
    invoke-virtual {v0, v4, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@20
    .line 200
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@22
    const v1, -0x41e956c1    # -0.14713f

    #@25
    invoke-virtual {v0, v2, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@28
    .line 201
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@2a
    const v1, -0x416c1a8b    # -0.28886f

    #@2d
    invoke-virtual {v0, v3, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@30
    .line 202
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@32
    const v1, 0x3edf3b64    # 0.436f

    #@35
    invoke-virtual {v0, v4, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@38
    .line 203
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@3a
    const v1, 0x3f1d70a4    # 0.615f

    #@3d
    invoke-virtual {v0, v2, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@40
    .line 204
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@42
    const v1, -0x40fc299e

    #@45
    invoke-virtual {v0, v3, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@48
    .line 205
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@4a
    const v1, -0x42332df5    # -0.10001f

    #@4d
    invoke-virtual {v0, v4, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@50
    .line 206
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    #@53
    .line 195
    return-void
.end method

.method public setYUVtoRGB()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/high16 v5, 0x3f800000    # 1.0f

    #@3
    const/4 v4, 0x2

    #@4
    const/4 v3, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    .line 177
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@8
    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    #@b
    .line 178
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@d
    invoke-virtual {v0, v2, v2, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@10
    .line 179
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@12
    invoke-virtual {v0, v3, v2, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@15
    .line 180
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@17
    const v1, 0x3f91e5f3    # 1.13983f

    #@1a
    invoke-virtual {v0, v4, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@1d
    .line 181
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@1f
    invoke-virtual {v0, v2, v3, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@22
    .line 182
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@24
    const v1, -0x4135f06f

    #@27
    invoke-virtual {v0, v3, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@2a
    .line 183
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@2c
    const v1, -0x40eb5dcc    # -0.5806f

    #@2f
    invoke-virtual {v0, v4, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@32
    .line 184
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@34
    invoke-virtual {v0, v2, v4, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@37
    .line 185
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@39
    const v1, 0x40020e17

    #@3c
    invoke-virtual {v0, v3, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@3f
    .line 186
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    #@41
    invoke-virtual {v0, v4, v4, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@44
    .line 187
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    #@47
    .line 176
    return-void
.end method
