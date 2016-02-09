.class public final Landroid/renderscript/ScriptIntrinsicConvolve5x5;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicConvolve5x5.java"


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
    const/16 v0, 0x19

    #@5
    new-array v0, v0, [F

    #@7
    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    #@9
    .line 27
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicConvolve5x5;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    #@0
    .prologue
    .line 52
    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 53
    invoke-static {p0}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 63
    :cond_0
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@17
    move-result-wide v2

    #@18
    const/4 v4, 0x4

    #@19
    invoke-virtual {p0, v4, v2, v3}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    #@1c
    move-result-wide v0

    #@1d
    .line 64
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicConvolve5x5;

    #@1f
    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;-><init>(JLandroid/renderscript/RenderScript;)V

    #@22
    return-object v2

    #@23
    .line 54
    .end local v0    # "id":J
    :cond_1
    invoke-static {p0}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_0

    #@2d
    .line 55
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {p1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_0

    #@37
    .line 56
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {p1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@3e
    move-result v2

    #@3f
    if-nez v2, :cond_0

    #@41
    .line 57
    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {p1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@48
    move-result v2

    #@49
    if-nez v2, :cond_0

    #@4b
    .line 58
    invoke-static {p0}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {p1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@52
    move-result v2

    #@53
    if-nez v2, :cond_0

    #@55
    .line 59
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {p1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@5c
    move-result v2

    #@5d
    if-nez v2, :cond_0

    #@5f
    .line 60
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@61
    const-string/jumbo v3, "Unsuported element type."

    #@64
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@67
    throw v2
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
    .line 110
    check-cast v0, Landroid/renderscript/Allocation;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    #@8
    .line 109
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
    .line 122
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
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    #@b
    .line 121
    return-void
.end method

.method public getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    #@0
    .prologue
    .line 141
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

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
    .line 132
    const/4 v0, 0x0

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

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
    .line 94
    new-instance v1, Landroid/renderscript/FieldPacker;

    #@2
    const/16 v2, 0x64

    #@4
    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    #@7
    .line 95
    .local v1, "fp":Landroid/renderscript/FieldPacker;
    const/4 v0, 0x0

    #@8
    .local v0, "ct":I
    :goto_0
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    #@a
    array-length v2, v2

    #@b
    if-ge v0, v2, :cond_0

    #@d
    .line 96
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    #@f
    aget v3, p1, v0

    #@11
    aput v3, v2, v0

    #@13
    .line 97
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    #@15
    aget v2, v2, v0

    #@17
    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@1a
    .line 95
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 99
    :cond_0
    const/4 v2, 0x0

    #@1e
    invoke-virtual {p0, v2, v1}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->setVar(ILandroid/renderscript/FieldPacker;)V

    #@21
    .line 93
    return-void
.end method

.method public setInput(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 75
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mInput:Landroid/renderscript/Allocation;

    #@2
    .line 76
    const/4 v0, 0x1

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->setVar(ILandroid/renderscript/BaseObj;)V

    #@6
    .line 74
    return-void
.end method
