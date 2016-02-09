.class public final Landroid/renderscript/ScriptIntrinsicHistogram;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicHistogram.java"


# instance fields
.field private mOut:Landroid/renderscript/Allocation;


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 27
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicHistogram;
    .locals 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    #@0
    .prologue
    .line 45
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {p1, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 46
    invoke-static {p0}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {p1, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 51
    :cond_0
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@17
    move-result-wide v4

    #@18
    const/16 v3, 0x9

    #@1a
    invoke-virtual {p0, v3, v4, v5}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    #@1d
    move-result-wide v0

    #@1e
    .line 52
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicHistogram;

    #@20
    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicHistogram;-><init>(JLandroid/renderscript/RenderScript;)V

    #@23
    .line 53
    .local v2, "sib":Landroid/renderscript/ScriptIntrinsicHistogram;
    return-object v2

    #@24
    .line 47
    .end local v0    # "id":J
    .end local v2    # "sib":Landroid/renderscript/ScriptIntrinsicHistogram;
    :cond_1
    invoke-static {p0}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {p1, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_0

    #@2e
    .line 48
    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {p1, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@35
    move-result v3

    #@36
    if-nez v3, :cond_0

    #@38
    .line 49
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    #@3a
    const-string/jumbo v4, "Unsuported element type."

    #@3d
    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v3
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/renderscript/ScriptIntrinsicHistogram;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 69
    return-void
.end method

.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 88
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/renderscript/Element;->getVectorSize()I

    #@c
    move-result v0

    #@d
    .line 89
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    #@f
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Landroid/renderscript/Element;->getVectorSize()I

    #@1a
    move-result v1

    #@1b
    .line 88
    if-ge v0, v1, :cond_0

    #@1d
    .line 91
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@1f
    .line 92
    const-string/jumbo v1, "Input vector size must be >= output vector size."

    #@22
    .line 91
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@2d
    move-result-object v0

    #@2e
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@30
    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@37
    move-result v0

    #@38
    if-nez v0, :cond_1

    #@3a
    .line 95
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@41
    move-result-object v0

    #@42
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@44
    invoke-static {v1}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_2

    #@4e
    .line 101
    :cond_1
    const/4 v1, 0x0

    #@4f
    move-object v0, p0

    #@50
    move-object v2, p1

    #@51
    move-object v4, v3

    #@52
    move-object v5, p2

    #@53
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicHistogram;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    #@56
    .line 87
    return-void

    #@57
    .line 96
    :cond_2
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@5e
    move-result-object v0

    #@5f
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@61
    invoke-static {v1}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@68
    move-result v0

    #@69
    if-nez v0, :cond_1

    #@6b
    .line 97
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@72
    move-result-object v0

    #@73
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@75
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@7c
    move-result v0

    #@7d
    if-nez v0, :cond_1

    #@7f
    .line 98
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@81
    const-string/jumbo v1, "Input type must be U8, U8_1, U8_2 or U8_4."

    #@84
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@87
    throw v0
.end method

.method public forEach_Dot(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 174
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/renderscript/ScriptIntrinsicHistogram;->forEach_Dot(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 173
    return-void
.end method

.method public forEach_Dot(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 189
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    #@4
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/renderscript/Element;->getVectorSize()I

    #@f
    move-result v0

    #@10
    if-eq v0, v1, :cond_0

    #@12
    .line 190
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@14
    const-string/jumbo v1, "Output vector size must be one."

    #@17
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@22
    move-result-object v0

    #@23
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@25
    invoke-static {v2}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_1

    #@2f
    .line 193
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@36
    move-result-object v0

    #@37
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@39
    invoke-static {v2}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_2

    #@43
    :cond_1
    move-object v0, p0

    #@44
    move-object v2, p1

    #@45
    move-object v4, v3

    #@46
    move-object v5, p2

    #@47
    .line 199
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicHistogram;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    #@4a
    .line 188
    return-void

    #@4b
    .line 194
    :cond_2
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@52
    move-result-object v0

    #@53
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@55
    invoke-static {v2}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@5c
    move-result v0

    #@5d
    if-nez v0, :cond_1

    #@5f
    .line 195
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@66
    move-result-object v0

    #@67
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@69
    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@70
    move-result v0

    #@71
    if-nez v0, :cond_1

    #@73
    .line 196
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@75
    const-string/jumbo v1, "Input type must be U8, U8_1, U8_2 or U8_4."

    #@78
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v0
.end method

.method public getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    #@0
    .prologue
    .line 219
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicHistogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKernelID_Separate()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 210
    const/4 v0, 0x0

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicHistogram;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public setDotCoefficients(FFFF)V
    .locals 3
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 118
    cmpg-float v1, p1, v2

    #@3
    if-ltz v1, :cond_0

    #@5
    cmpg-float v1, p2, v2

    #@7
    if-gez v1, :cond_1

    #@9
    .line 119
    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@b
    const-string/jumbo v2, "Coefficient may not be negative."

    #@e
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 118
    :cond_1
    cmpg-float v1, p3, v2

    #@14
    if-ltz v1, :cond_0

    #@16
    cmpg-float v1, p4, v2

    #@18
    if-ltz v1, :cond_0

    #@1a
    .line 121
    add-float v1, p1, p2

    #@1c
    add-float/2addr v1, p3

    #@1d
    add-float/2addr v1, p4

    #@1e
    const/high16 v2, 0x3f800000    # 1.0f

    #@20
    cmpl-float v1, v1, v2

    #@22
    if-lez v1, :cond_2

    #@24
    .line 122
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@26
    const-string/jumbo v2, "Sum of coefficients must be 1.0 or less."

    #@29
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 125
    :cond_2
    new-instance v0, Landroid/renderscript/FieldPacker;

    #@2f
    const/16 v1, 0x10

    #@31
    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    #@34
    .line 126
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@37
    .line 127
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@3a
    .line 128
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@3d
    .line 129
    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@40
    .line 130
    const/4 v1, 0x0

    #@41
    invoke-virtual {p0, v1, v0}, Landroid/renderscript/ScriptIntrinsicHistogram;->setVar(ILandroid/renderscript/FieldPacker;)V

    #@44
    .line 117
    return-void
.end method

.method public setOutput(Landroid/renderscript/Allocation;)V
    .locals 2
    .param p1, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 140
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    #@2
    .line 141
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    #@4
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-static {v1}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@11
    move-result-object v1

    #@12
    if-eq v0, v1, :cond_0

    #@14
    .line 142
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    #@16
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@1d
    move-result-object v0

    #@1e
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@20
    invoke-static {v1}, Landroid/renderscript/Element;->U32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@23
    move-result-object v1

    #@24
    if-eq v0, v1, :cond_0

    #@26
    .line 143
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    #@28
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@2f
    move-result-object v0

    #@30
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@32
    invoke-static {v1}, Landroid/renderscript/Element;->U32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@35
    move-result-object v1

    #@36
    if-eq v0, v1, :cond_0

    #@38
    .line 144
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    #@3a
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@41
    move-result-object v0

    #@42
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@44
    invoke-static {v1}, Landroid/renderscript/Element;->U32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@47
    move-result-object v1

    #@48
    if-eq v0, v1, :cond_0

    #@4a
    .line 145
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    #@4c
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@53
    move-result-object v0

    #@54
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@56
    invoke-static {v1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@59
    move-result-object v1

    #@5a
    if-eq v0, v1, :cond_0

    #@5c
    .line 146
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    #@5e
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@65
    move-result-object v0

    #@66
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@68
    invoke-static {v1}, Landroid/renderscript/Element;->I32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@6b
    move-result-object v1

    #@6c
    if-eq v0, v1, :cond_0

    #@6e
    .line 147
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    #@70
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@73
    move-result-object v0

    #@74
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@77
    move-result-object v0

    #@78
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@7a
    invoke-static {v1}, Landroid/renderscript/Element;->I32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7d
    move-result-object v1

    #@7e
    if-eq v0, v1, :cond_0

    #@80
    .line 148
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    #@82
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@85
    move-result-object v0

    #@86
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@89
    move-result-object v0

    #@8a
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    #@8c
    invoke-static {v1}, Landroid/renderscript/Element;->I32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@8f
    move-result-object v1

    #@90
    if-eq v0, v1, :cond_0

    #@92
    .line 150
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@94
    const-string/jumbo v1, "Output type must be U32 or I32."

    #@97
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v0

    #@9b
    .line 152
    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    #@9d
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@a0
    move-result-object v0

    #@a1
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    #@a4
    move-result v0

    #@a5
    const/16 v1, 0x100

    #@a7
    if-ne v0, v1, :cond_1

    #@a9
    .line 153
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    #@ab
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@ae
    move-result-object v0

    #@af
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    #@b2
    move-result v0

    #@b3
    if-eqz v0, :cond_2

    #@b5
    .line 157
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@b7
    const-string/jumbo v1, "Output must be 1D, 256 elements."

    #@ba
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@bd
    throw v0

    #@be
    .line 154
    :cond_2
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    #@c0
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@c3
    move-result-object v0

    #@c4
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    #@c7
    move-result v0

    #@c8
    .line 152
    if-nez v0, :cond_1

    #@ca
    .line 155
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    #@cc
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@cf
    move-result-object v0

    #@d0
    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    #@d3
    move-result v0

    #@d4
    if-nez v0, :cond_1

    #@d6
    .line 159
    const/4 v0, 0x1

    #@d7
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicHistogram;->setVar(ILandroid/renderscript/BaseObj;)V

    #@da
    .line 139
    return-void
.end method
