.class public final Landroid/renderscript/ScriptIntrinsicConvolve5x5;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicConvolve5x5.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mInput:Landroid/renderscript/Allocation;

.field private final greylist-max-o mValues:[F


# direct methods
.method private constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 28
    const/16 v0, 0x19

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    .line 33
    return-void
.end method

.method public static whitelist create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicConvolve5x5;
    .registers 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    .line 56
    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 57
    invoke-static {p0}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 58
    invoke-static {p0}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 59
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 60
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 61
    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 62
    invoke-static {p0}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 63
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_59

    .line 64
    :cond_51
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsupported element type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_59
    :goto_59
    const/4 v0, 0x4

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .line 68
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicConvolve5x5;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;-><init>(JLandroid/renderscript/RenderScript;)V

    return-object v2
.end method


# virtual methods
.method public whitelist forEach(Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "aout"    # Landroid/renderscript/Allocation;

    .line 114
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, v0}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 115
    return-void
.end method

.method public whitelist forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 9
    .param p1, "aout"    # Landroid/renderscript/Allocation;
    .param p2, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 126
    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, Landroid/renderscript/Allocation;

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .end local p1    # "aout":Landroid/renderscript/Allocation;
    .end local p2    # "opt":Landroid/renderscript/Script$LaunchOptions;
    .local v3, "aout":Landroid/renderscript/Allocation;
    .local v5, "opt":Landroid/renderscript/Script$LaunchOptions;
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 127
    return-void
.end method

.method public whitelist getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .registers 3

    .line 145
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelID()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 136
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setCoefficients([F)V
    .registers 6
    .param p1, "v"    # [F

    .line 98
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 99
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct":I
    :goto_8
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1d

    .line 100
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    aget v3, p1, v1

    aput v3, v2, v1

    .line 101
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 103
    .end local v1    # "ct":I
    :cond_1d
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 104
    return-void
.end method

.method public whitelist setInput(Landroid/renderscript/Allocation;)V
    .registers 3
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    .line 79
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mInput:Landroid/renderscript/Allocation;

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 81
    return-void
.end method
