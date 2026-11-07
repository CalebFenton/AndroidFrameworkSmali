.class public Landroid/renderscript/ScriptIntrinsicBlend;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBlend.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 31
    return-void
.end method

.method private greylist-max-o blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 12
    .param p1, "id"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 49
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicBlend;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 52
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicBlend;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 55
    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .end local p1    # "id":I
    .end local p2    # "ain":Landroid/renderscript/Allocation;
    .end local p3    # "aout":Landroid/renderscript/Allocation;
    .end local p4    # "opt":Landroid/renderscript/Script$LaunchOptions;
    .local v2, "id":I
    .local v3, "ain":Landroid/renderscript/Allocation;
    .local v4, "aout":Landroid/renderscript/Allocation;
    .local v6, "opt":Landroid/renderscript/Script$LaunchOptions;
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/ScriptIntrinsicBlend;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 56
    return-void

    .line 53
    .end local v2    # "id":I
    .end local v3    # "ain":Landroid/renderscript/Allocation;
    .end local v4    # "aout":Landroid/renderscript/Allocation;
    .end local v6    # "opt":Landroid/renderscript/Script$LaunchOptions;
    .restart local p1    # "id":I
    .restart local p2    # "ain":Landroid/renderscript/Allocation;
    .restart local p3    # "aout":Landroid/renderscript/Allocation;
    .restart local p4    # "opt":Landroid/renderscript/Script$LaunchOptions;
    :cond_2a
    move v2, p1

    move-object v3, p2

    .end local p1    # "id":I
    .end local p2    # "ain":Landroid/renderscript/Allocation;
    .restart local v2    # "id":I
    .restart local v3    # "ain":Landroid/renderscript/Allocation;
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Output is not of expected format."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    .end local v2    # "id":I
    .end local v3    # "ain":Landroid/renderscript/Allocation;
    .restart local p1    # "id":I
    .restart local p2    # "ain":Landroid/renderscript/Allocation;
    :cond_34
    move v2, p1

    move-object v3, p2

    .end local p1    # "id":I
    .end local p2    # "ain":Landroid/renderscript/Allocation;
    .restart local v2    # "id":I
    .restart local v3    # "ain":Landroid/renderscript/Allocation;
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Input is not of expected format."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static whitelist create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlend;
    .registers 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    .line 43
    const/4 v0, 0x7

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .line 44
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicBlend;-><init>(JLandroid/renderscript/RenderScript;)V

    return-object v2
.end method


# virtual methods
.method public whitelist forEachAdd(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 557
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachAdd(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 558
    return-void
.end method

.method public whitelist forEachAdd(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 568
    const/16 v0, 0x22

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 569
    return-void
.end method

.method public whitelist forEachClear(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachClear(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 66
    return-void
.end method

.method public whitelist forEachClear(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 77
    return-void
.end method

.method public whitelist forEachDst(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 3
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 129
    return-void
.end method

.method public whitelist forEachDst(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 142
    return-void
.end method

.method public whitelist forEachDstAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 376
    return-void
.end method

.method public whitelist forEachDstAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 389
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 390
    return-void
.end method

.method public whitelist forEachDstIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 251
    return-void
.end method

.method public whitelist forEachDstIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 261
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 262
    return-void
.end method

.method public whitelist forEachDstOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 311
    return-void
.end method

.method public whitelist forEachDstOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 321
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 322
    return-void
.end method

.method public whitelist forEachDstOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 191
    return-void
.end method

.method public whitelist forEachDstOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 201
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 202
    return-void
.end method

.method public whitelist forEachMultiply(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachMultiply(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 451
    return-void
.end method

.method public whitelist forEachMultiply(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 461
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 462
    return-void
.end method

.method public whitelist forEachSrc(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrc(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 97
    return-void
.end method

.method public whitelist forEachSrc(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 107
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 108
    return-void
.end method

.method public whitelist forEachSrcAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 342
    return-void
.end method

.method public whitelist forEachSrcAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 353
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 354
    return-void
.end method

.method public whitelist forEachSrcIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 221
    return-void
.end method

.method public whitelist forEachSrcIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 231
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 232
    return-void
.end method

.method public whitelist forEachSrcOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 281
    return-void
.end method

.method public whitelist forEachSrcOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 291
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 292
    return-void
.end method

.method public whitelist forEachSrcOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 161
    return-void
.end method

.method public whitelist forEachSrcOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 171
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 172
    return-void
.end method

.method public whitelist forEachSubtract(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 587
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSubtract(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 588
    return-void
.end method

.method public whitelist forEachSubtract(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 598
    const/16 v0, 0x23

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 599
    return-void
.end method

.method public whitelist forEachXor(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachXor(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 409
    return-void
.end method

.method public whitelist forEachXor(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 421
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 422
    return-void
.end method

.method public whitelist getKernelIDAdd()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 577
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x22

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelIDClear()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 85
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelIDDst()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 150
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelIDDstAtop()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 398
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelIDDstIn()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 270
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelIDDstOut()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 330
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelIDDstOver()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 210
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelIDMultiply()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 470
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelIDSrc()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 116
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelIDSrcAtop()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 362
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelIDSrcIn()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 240
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelIDSrcOut()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 300
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelIDSrcOver()Landroid/renderscript/Script$KernelID;
    .registers 3

    .line 180
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelIDSubtract()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 607
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelIDXor()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 430
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method
