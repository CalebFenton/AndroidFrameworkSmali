.class public final Landroid/renderscript/ScriptIntrinsic3DLUT;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsic3DLUT.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mElement:Landroid/renderscript/Element;

.field private greylist-max-o mLUT:Landroid/renderscript/Allocation;


# direct methods
.method private constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "e"    # Landroid/renderscript/Element;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 37
    iput-object p4, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mElement:Landroid/renderscript/Element;

    .line 38
    return-void
.end method

.method public static whitelist create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsic3DLUT;
    .registers 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    .line 51
    const/16 v0, 0x8

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .line 53
    .local v0, "id":J
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 57
    new-instance v2, Landroid/renderscript/ScriptIntrinsic3DLUT;

    invoke-direct {v2, v0, v1, p0, p1}, Landroid/renderscript/ScriptIntrinsic3DLUT;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v2

    .line 54
    :cond_1a
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Element must be compatible with uchar4."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsic3DLUT;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 92
    return-void
.end method

.method public whitelist forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 10
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 103
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .end local p1    # "ain":Landroid/renderscript/Allocation;
    .end local p2    # "aout":Landroid/renderscript/Allocation;
    .end local p3    # "opt":Landroid/renderscript/Script$LaunchOptions;
    .local v2, "ain":Landroid/renderscript/Allocation;
    .local v3, "aout":Landroid/renderscript/Allocation;
    .local v5, "opt":Landroid/renderscript/Script$LaunchOptions;
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsic3DLUT;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 104
    return-void
.end method

.method public whitelist getKernelID()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 113
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsic3DLUT;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setLUT(Landroid/renderscript/Allocation;)V
    .registers 5
    .param p1, "lut"    # Landroid/renderscript/Allocation;

    .line 68
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 70
    .local v0, "t":Landroid/renderscript/Type;
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-eqz v1, :cond_27

    .line 74
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 78
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mLUT:Landroid/renderscript/Allocation;

    .line 79
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mLUT:Landroid/renderscript/Allocation;

    invoke-virtual {p0, v1, v2}, Landroid/renderscript/ScriptIntrinsic3DLUT;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 80
    return-void

    .line 75
    :cond_1f
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "LUT element type must match."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_27
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "LUT must be 3d."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
