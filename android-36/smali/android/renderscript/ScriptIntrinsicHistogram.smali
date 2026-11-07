.class public final Landroid/renderscript/ScriptIntrinsicHistogram;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicHistogram.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mOut:Landroid/renderscript/Allocation;


# direct methods
.method private constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 32
    return-void
.end method

.method public static whitelist create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicHistogram;
    .registers 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    .line 48
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 49
    invoke-static {p0}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 50
    invoke-static {p0}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 51
    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_31

    .line 52
    :cond_29
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsupported element type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_31
    :goto_31
    const/16 v0, 0x9

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .line 55
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicHistogram;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicHistogram;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 56
    .local v2, "sib":Landroid/renderscript/ScriptIntrinsicHistogram;
    return-object v2
.end method


# virtual methods
.method public whitelist forEach(Landroid/renderscript/Allocation;)V
    .registers 3
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/renderscript/ScriptIntrinsicHistogram;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 74
    return-void
.end method

.method public whitelist forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 11
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 91
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    .line 92
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v1

    if-lt v0, v1, :cond_7f

    .line 97
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 98
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 99
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 100
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_6d

    goto :goto_75

    .line 101
    :cond_6d
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Input type must be U8, U8_1, U8_2 or U8_4."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_75
    :goto_75
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    .end local p1    # "ain":Landroid/renderscript/Allocation;
    .end local p2    # "opt":Landroid/renderscript/Script$LaunchOptions;
    .local v4, "ain":Landroid/renderscript/Allocation;
    .local v7, "opt":Landroid/renderscript/Script$LaunchOptions;
    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicHistogram;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 105
    return-void

    .line 94
    .end local v4    # "ain":Landroid/renderscript/Allocation;
    .end local v7    # "opt":Landroid/renderscript/Script$LaunchOptions;
    .restart local p1    # "ain":Landroid/renderscript/Allocation;
    .restart local p2    # "opt":Landroid/renderscript/Script$LaunchOptions;
    :cond_7f
    move-object v4, p1

    move-object v7, p2

    .end local p1    # "ain":Landroid/renderscript/Allocation;
    .end local p2    # "opt":Landroid/renderscript/Script$LaunchOptions;
    .restart local v4    # "ain":Landroid/renderscript/Allocation;
    .restart local v7    # "opt":Landroid/renderscript/Script$LaunchOptions;
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Input vector size must be >= output vector size."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist forEach_Dot(Landroid/renderscript/Allocation;)V
    .registers 3
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/renderscript/ScriptIntrinsicHistogram;->forEach_Dot(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 178
    return-void
.end method

.method public whitelist forEach_Dot(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 11
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 192
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_74

    .line 195
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 196
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 197
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 198
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_62

    goto :goto_6a

    .line 199
    :cond_62
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Input type must be U8, U8_1, U8_2 or U8_4."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_6a
    :goto_6a
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    .end local p1    # "ain":Landroid/renderscript/Allocation;
    .end local p2    # "opt":Landroid/renderscript/Script$LaunchOptions;
    .local v4, "ain":Landroid/renderscript/Allocation;
    .local v7, "opt":Landroid/renderscript/Script$LaunchOptions;
    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicHistogram;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 203
    return-void

    .line 193
    .end local v4    # "ain":Landroid/renderscript/Allocation;
    .end local v7    # "opt":Landroid/renderscript/Script$LaunchOptions;
    .restart local p1    # "ain":Landroid/renderscript/Allocation;
    .restart local p2    # "opt":Landroid/renderscript/Script$LaunchOptions;
    :cond_74
    move-object v4, p1

    move-object v7, p2

    .end local p1    # "ain":Landroid/renderscript/Allocation;
    .end local p2    # "opt":Landroid/renderscript/Script$LaunchOptions;
    .restart local v4    # "ain":Landroid/renderscript/Allocation;
    .restart local v7    # "opt":Landroid/renderscript/Script$LaunchOptions;
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Output vector size must be one."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .registers 3

    .line 222
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicHistogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelID_Separate()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 213
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicHistogram;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setDotCoefficients(FFFF)V
    .registers 7
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 121
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_3b

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_3b

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_3b

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_3b

    .line 124
    add-float v0, p1, p2

    add-float/2addr v0, p3

    add-float/2addr v0, p4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_33

    .line 128
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 129
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 130
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 131
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 132
    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 133
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/renderscript/ScriptIntrinsicHistogram;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 134
    return-void

    .line 125
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_33
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Sum of coefficients must be 1.0 or less."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_3b
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Coefficient may not be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOutput(Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "aout"    # Landroid/renderscript/Allocation;

    .line 143
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    .line 144
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    if-eq v0, v1, :cond_9b

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    .line 145
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    if-eq v0, v1, :cond_9b

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    .line 146
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    if-eq v0, v1, :cond_9b

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    .line 147
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    if-eq v0, v1, :cond_9b

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    .line 148
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    if-eq v0, v1, :cond_9b

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    .line 149
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->I32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    if-eq v0, v1, :cond_9b

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    .line 150
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->I32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    if-eq v0, v1, :cond_9b

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    .line 151
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->I32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    if-ne v0, v1, :cond_93

    goto :goto_9b

    .line 153
    :cond_93
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Output type must be U32 or I32."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_9b
    :goto_9b
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_d2

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    .line 156
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-nez v0, :cond_d2

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    .line 157
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_d2

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/renderscript/Allocation;

    .line 158
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    if-nez v0, :cond_d2

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicHistogram;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 163
    return-void

    .line 160
    :cond_d2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Output must be 1D, 256 elements."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
