.class public final Landroid/renderscript/ScriptIntrinsicConvolve3x3;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicConvolve3x3.java"


# instance fields
.field private mInput:Landroid/renderscript/Allocation;

.field private final mValues:[F


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
    .line 24
    const/16 v0, 0x9

    #@5
    new-array v0, v0, [F

    #@7
    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    #@9
    .line 27
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicConvolve3x3;
    .locals 7
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    #@0
    .prologue
    .line 51
    const/16 v4, 0x9

    #@2
    new-array v0, v4, [F

    #@4
    .local v0, "f":[F
    fill-array-data v0, :array_0

    #@7
    .line 52
    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {p1, v4}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_0

    #@11
    .line 53
    invoke-static {p0}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {p1, v4}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 62
    :cond_0
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@1e
    move-result-wide v4

    #@1f
    const/4 v6, 0x1

    #@20
    invoke-virtual {p0, v6, v4, v5}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    #@23
    move-result-wide v2

    #@24
    .line 63
    .local v2, "id":J
    new-instance v1, Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    #@26
    invoke-direct {v1, v2, v3, p0}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;-><init>(JLandroid/renderscript/RenderScript;)V

    #@29
    .line 64
    .local v1, "si":Landroid/renderscript/ScriptIntrinsicConvolve3x3;
    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setCoefficients([F)V

    #@2c
    .line 65
    return-object v1

    #@2d
    .line 54
    .end local v1    # "si":Landroid/renderscript/ScriptIntrinsicConvolve3x3;
    .end local v2    # "id":J
    :cond_1
    invoke-static {p0}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {p1, v4}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@34
    move-result v4

    #@35
    if-nez v4, :cond_0

    #@37
    .line 55
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {p1, v4}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@3e
    move-result v4

    #@3f
    if-nez v4, :cond_0

    #@41
    .line 56
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {p1, v4}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@48
    move-result v4

    #@49
    if-nez v4, :cond_0

    #@4b
    .line 57
    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {p1, v4}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@52
    move-result v4

    #@53
    if-nez v4, :cond_0

    #@55
    .line 58
    invoke-static {p0}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {p1, v4}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@5c
    move-result v4

    #@5d
    if-nez v4, :cond_0

    #@5f
    .line 59
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {p1, v4}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@66
    move-result v4

    #@67
    if-nez v4, :cond_0

    #@69
    .line 60
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    #@6b
    const-string/jumbo v5, "Unsuported element type."

    #@6e
    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@71
    throw v4

    #@72
    .line 51
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;)V
    .locals 3
    .param p1, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    move-object v0, v1

    #@2
    .line 109
    check-cast v0, Landroid/renderscript/Allocation;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    #@8
    .line 108
    return-void
.end method

.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "aout"    # Landroid/renderscript/Allocation;
    .param p2, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v2, v4

    #@2
    .line 121
    check-cast v2, Landroid/renderscript/Allocation;

    #@4
    const/4 v1, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v3, p1

    #@7
    move-object v5, p2

    #@8
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    #@b
    .line 120
    return-void
.end method

.method public getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    #@0
    .prologue
    .line 139
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 130
    const/4 v0, 0x0

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public setCoefficients([F)V
    .locals 4
    .param p1, "v"    # [F

    #@0
    .prologue
    .line 93
    new-instance v1, Landroid/renderscript/FieldPacker;

    #@2
    const/16 v2, 0x24

    #@4
    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    #@7
    .line 94
    .local v1, "fp":Landroid/renderscript/FieldPacker;
    const/4 v0, 0x0

    #@8
    .local v0, "ct":I
    :goto_0
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    #@a
    array-length v2, v2

    #@b
    if-ge v0, v2, :cond_0

    #@d
    .line 95
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    #@f
    aget v3, p1, v0

    #@11
    aput v3, v2, v0

    #@13
    .line 96
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    #@15
    aget v2, v2, v0

    #@17
    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@1a
    .line 94
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 98
    :cond_0
    const/4 v2, 0x0

    #@1e
    invoke-virtual {p0, v2, v1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setVar(ILandroid/renderscript/FieldPacker;)V

    #@21
    .line 92
    return-void
.end method

.method public setInput(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 76
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mInput:Landroid/renderscript/Allocation;

    #@2
    .line 77
    const/4 v0, 0x1

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setVar(ILandroid/renderscript/BaseObj;)V

    #@6
    .line 75
    return-void
.end method
