.class public Landroid/renderscript/ScriptIntrinsicBlend;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBlend.java"


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 24
    return-void
.end method

.method private blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicBlend;->mRS:Landroid/renderscript/RenderScript;

    #@6
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 45
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@12
    const-string/jumbo v1, "Input is not of expected format."

    #@15
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 47
    :cond_0
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicBlend;->mRS:Landroid/renderscript/RenderScript;

    #@1f
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_1

    #@29
    .line 48
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@2b
    const-string/jumbo v1, "Output is not of expected format."

    #@2e
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 50
    :cond_1
    const/4 v4, 0x0

    #@33
    move-object v0, p0

    #@34
    move v1, p1

    #@35
    move-object v2, p2

    #@36
    move-object v3, p3

    #@37
    move-object v5, p4

    #@38
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    #@3b
    .line 43
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlend;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    #@0
    .prologue
    .line 38
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@3
    move-result-wide v2

    #@4
    const/4 v4, 0x7

    #@5
    invoke-virtual {p0, v4, v2, v3}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    #@8
    move-result-wide v0

    #@9
    .line 39
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicBlend;

    #@b
    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicBlend;-><init>(JLandroid/renderscript/RenderScript;)V

    #@e
    return-object v2
.end method


# virtual methods
.method public forEachAdd(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 550
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachAdd(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 549
    return-void
.end method

.method public forEachAdd(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 561
    const/16 v0, 0x22

    #@2
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@5
    .line 560
    return-void
.end method

.method public forEachClear(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 60
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachClear(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 59
    return-void
.end method

.method public forEachClear(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 71
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 70
    return-void
.end method

.method public forEachDst(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 0
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 122
    return-void
.end method

.method public forEachDst(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 0
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 135
    return-void
.end method

.method public forEachDstAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 370
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 369
    return-void
.end method

.method public forEachDstAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 384
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@5
    .line 383
    return-void
.end method

.method public forEachDstIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 245
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 244
    return-void
.end method

.method public forEachDstIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 256
    const/4 v0, 0x6

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 255
    return-void
.end method

.method public forEachDstOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 305
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 304
    return-void
.end method

.method public forEachDstOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 316
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@5
    .line 315
    return-void
.end method

.method public forEachDstOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 185
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 184
    return-void
.end method

.method public forEachDstOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 196
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 195
    return-void
.end method

.method public forEachMultiply(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 443
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachMultiply(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 442
    return-void
.end method

.method public forEachMultiply(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 454
    const/16 v0, 0xe

    #@2
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@5
    .line 453
    return-void
.end method

.method public forEachSrc(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 91
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrc(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 90
    return-void
.end method

.method public forEachSrc(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 2
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 102
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@5
    .line 101
    return-void
.end method

.method public forEachSrcAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 336
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 335
    return-void
.end method

.method public forEachSrcAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 348
    const/16 v0, 0x9

    #@2
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@5
    .line 347
    return-void
.end method

.method public forEachSrcIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 215
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 214
    return-void
.end method

.method public forEachSrcIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 226
    const/4 v0, 0x5

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 225
    return-void
.end method

.method public forEachSrcOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 275
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 274
    return-void
.end method

.method public forEachSrcOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 286
    const/4 v0, 0x7

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 285
    return-void
.end method

.method public forEachSrcOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 155
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 154
    return-void
.end method

.method public forEachSrcOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 166
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 165
    return-void
.end method

.method public forEachSubtract(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 580
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSubtract(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 579
    return-void
.end method

.method public forEachSubtract(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 591
    const/16 v0, 0x23

    #@2
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@5
    .line 590
    return-void
.end method

.method public forEachXor(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 403
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachXor(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 402
    return-void
.end method

.method public forEachXor(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 414
    const/16 v0, 0xb

    #@2
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@5
    .line 413
    return-void
.end method

.method public getKernelIDAdd()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 570
    const/16 v0, 0x22

    #@3
    const/4 v1, 0x3

    #@4
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getKernelIDClear()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 80
    const/4 v0, 0x0

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getKernelIDDst()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 145
    const/4 v0, 0x2

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getKernelIDDstAtop()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 393
    const/16 v0, 0xa

    #@3
    const/4 v1, 0x3

    #@4
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getKernelIDDstIn()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 265
    const/4 v0, 0x6

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getKernelIDDstOut()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 325
    const/16 v0, 0x8

    #@3
    const/4 v1, 0x3

    #@4
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getKernelIDDstOver()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 205
    const/4 v0, 0x4

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getKernelIDMultiply()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 463
    const/16 v0, 0xe

    #@3
    const/4 v1, 0x3

    #@4
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getKernelIDSrc()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 111
    const/4 v0, 0x1

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getKernelIDSrcAtop()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 357
    const/16 v0, 0x9

    #@3
    const/4 v1, 0x3

    #@4
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getKernelIDSrcIn()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 235
    const/4 v0, 0x5

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getKernelIDSrcOut()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 295
    const/4 v0, 0x7

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getKernelIDSrcOver()Landroid/renderscript/Script$KernelID;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x3

    #@2
    .line 175
    invoke-virtual {p0, v0, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKernelIDSubtract()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 600
    const/16 v0, 0x23

    #@3
    const/4 v1, 0x3

    #@4
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getKernelIDXor()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 423
    const/16 v0, 0xb

    #@3
    const/4 v1, 0x3

    #@4
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
