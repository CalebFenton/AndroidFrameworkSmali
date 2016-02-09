.class public final Landroid/renderscript/ScriptIntrinsicBlur;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBlur.java"


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
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 26
    const/16 v0, 0x9

    #@5
    new-array v0, v0, [F

    #@7
    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicBlur;->mValues:[F

    #@9
    .line 29
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;
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
    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {p1, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 48
    :cond_0
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@17
    move-result-wide v4

    #@18
    const/4 v3, 0x5

    #@19
    invoke-virtual {p0, v3, v4, v5}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    #@1c
    move-result-wide v0

    #@1d
    .line 49
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicBlur;

    #@1f
    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicBlur;-><init>(JLandroid/renderscript/RenderScript;)V

    #@22
    .line 50
    .local v2, "sib":Landroid/renderscript/ScriptIntrinsicBlur;
    const/high16 v3, 0x40a00000    # 5.0f

    #@24
    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    #@27
    .line 51
    return-object v2

    #@28
    .line 46
    .end local v0    # "id":J
    .end local v2    # "sib":Landroid/renderscript/ScriptIntrinsicBlur;
    :cond_1
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    #@2a
    const-string/jumbo v4, "Unsuported element type."

    #@2d
    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3
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
    .line 87
    check-cast v0, Landroid/renderscript/Allocation;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    #@8
    .line 86
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
    .line 99
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
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    #@b
    .line 98
    return-void
.end method

.method public getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    #@0
    .prologue
    .line 118
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

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
    .line 109
    const/4 v0, 0x0

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public setInput(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 61
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicBlur;->mInput:Landroid/renderscript/Allocation;

    #@2
    .line 62
    const/4 v0, 0x1

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setVar(ILandroid/renderscript/BaseObj;)V

    #@6
    .line 60
    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    if-lez v0, :cond_0

    #@5
    const/high16 v0, 0x41c80000    # 25.0f

    #@7
    cmpl-float v0, p1, v0

    #@9
    if-lez v0, :cond_1

    #@b
    .line 74
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@d
    const-string/jumbo v1, "Radius out of range (0 < r <= 25)."

    #@10
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 76
    :cond_1
    const/4 v0, 0x0

    #@15
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setVar(IF)V

    #@18
    .line 72
    return-void
.end method
