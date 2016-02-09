.class public final Landroid/renderscript/ScriptIntrinsic3DLUT;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsic3DLUT.java"


# instance fields
.field private mElement:Landroid/renderscript/Element;

.field private mLUT:Landroid/renderscript/Allocation;


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "e"    # Landroid/renderscript/Element;

    #@0
    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 33
    iput-object p4, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mElement:Landroid/renderscript/Element;

    #@5
    .line 31
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsic3DLUT;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    #@0
    .prologue
    .line 47
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@3
    move-result-wide v2

    #@4
    const/16 v4, 0x8

    #@6
    invoke-virtual {p0, v4, v2, v3}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    #@9
    move-result-wide v0

    #@a
    .line 49
    .local v0, "id":J
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_0

    #@14
    .line 50
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@16
    const-string/jumbo v3, "Element must be compatible with uchar4."

    #@19
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 53
    :cond_0
    new-instance v2, Landroid/renderscript/ScriptIntrinsic3DLUT;

    #@1f
    invoke-direct {v2, v0, v1, p0, p1}, Landroid/renderscript/ScriptIntrinsic3DLUT;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    #@22
    return-object v2
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsic3DLUT;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 86
    return-void
.end method

.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 99
    const/4 v1, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v5, p3

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsic3DLUT;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    #@9
    .line 98
    return-void
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 109
    const/4 v0, 0x0

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsic3DLUT;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public setLUT(Landroid/renderscript/Allocation;)V
    .locals 4
    .param p1, "lut"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 64
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4
    move-result-object v0

    #@5
    .line 66
    .local v0, "t":Landroid/renderscript/Type;
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 67
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@d
    const-string/jumbo v2, "LUT must be 3d."

    #@10
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1

    #@14
    .line 70
    :cond_0
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mElement:Landroid/renderscript/Element;

    #@1a
    invoke-virtual {v1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_1

    #@20
    .line 71
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@22
    const-string/jumbo v2, "LUT element type must match."

    #@25
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 74
    :cond_1
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mLUT:Landroid/renderscript/Allocation;

    #@2b
    .line 75
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mLUT:Landroid/renderscript/Allocation;

    #@2d
    invoke-virtual {p0, v3, v1}, Landroid/renderscript/ScriptIntrinsic3DLUT;->setVar(ILandroid/renderscript/BaseObj;)V

    #@30
    .line 63
    return-void
.end method
