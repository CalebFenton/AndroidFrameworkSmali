.class public final Landroid/renderscript/ScriptIntrinsicResize;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicResize.java"


# instance fields
.field private mInput:Landroid/renderscript/Allocation;


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 25
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicResize;
    .locals 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 40
    const-wide/16 v4, 0x0

    #@2
    const/16 v3, 0xc

    #@4
    invoke-virtual {p0, v3, v4, v5}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    #@7
    move-result-wide v0

    #@8
    .line 41
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicResize;

    #@a
    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicResize;-><init>(JLandroid/renderscript/RenderScript;)V

    #@d
    .line 42
    .local v2, "si":Landroid/renderscript/ScriptIntrinsicResize;
    return-object v2
.end method


# virtual methods
.method public forEach_bicubic(Landroid/renderscript/Allocation;)V
    .locals 2
    .param p1, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicResize;->mInput:Landroid/renderscript/Allocation;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 89
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@6
    const-string/jumbo v1, "Output cannot be same as Input."

    #@9
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 91
    :cond_0
    const/4 v0, 0x0

    #@e
    invoke-virtual {p0, p1, v0}, Landroid/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@11
    .line 87
    return-void
.end method

.method public forEach_bicubic(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "aout"    # Landroid/renderscript/Allocation;
    .param p2, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v2, v4

    #@2
    .line 104
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
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicResize;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    #@b
    .line 103
    return-void
.end method

.method public getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    #@0
    .prologue
    .line 75
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicResize;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKernelID_bicubic()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 113
    const/4 v0, 0x0

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicResize;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public setInput(Landroid/renderscript/Allocation;)V
    .locals 3
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@3
    move-result-object v0

    #@4
    .line 54
    .local v0, "e":Landroid/renderscript/Element;
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    #@6
    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 55
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    #@12
    invoke-static {v1}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 65
    :cond_0
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mInput:Landroid/renderscript/Allocation;

    #@1e
    .line 66
    const/4 v1, 0x0

    #@1f
    invoke-virtual {p0, v1, p1}, Landroid/renderscript/ScriptIntrinsicResize;->setVar(ILandroid/renderscript/BaseObj;)V

    #@22
    .line 52
    return-void

    #@23
    .line 56
    :cond_1
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    #@25
    invoke-static {v1}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@2c
    move-result v1

    #@2d
    if-nez v1, :cond_0

    #@2f
    .line 57
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    #@31
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@38
    move-result v1

    #@39
    if-nez v1, :cond_0

    #@3b
    .line 58
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    #@3d
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@44
    move-result v1

    #@45
    if-nez v1, :cond_0

    #@47
    .line 59
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    #@49
    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@50
    move-result v1

    #@51
    if-nez v1, :cond_0

    #@53
    .line 60
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    #@55
    invoke-static {v1}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@5c
    move-result v1

    #@5d
    if-nez v1, :cond_0

    #@5f
    .line 61
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    #@61
    invoke-static {v1}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@68
    move-result v1

    #@69
    if-nez v1, :cond_0

    #@6b
    .line 62
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@6d
    const-string/jumbo v2, "Unsuported element type."

    #@70
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@73
    throw v1
.end method
