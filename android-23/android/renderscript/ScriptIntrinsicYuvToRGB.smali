.class public final Landroid/renderscript/ScriptIntrinsicYuvToRGB;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicYuvToRGB.java"


# instance fields
.field private mInput:Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 30
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    .locals 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    #@0
    .prologue
    .line 46
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@3
    move-result-wide v4

    #@4
    const/4 v3, 0x6

    #@5
    invoke-virtual {p0, v3, v4, v5}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    #@8
    move-result-wide v0

    #@9
    .line 47
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    #@b
    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;-><init>(JLandroid/renderscript/RenderScript;)V

    #@e
    .line 48
    .local v2, "si":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    return-object v2
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
    .line 69
    check-cast v0, Landroid/renderscript/Allocation;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    #@8
    .line 68
    return-void
.end method

.method public getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

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
    .line 78
    const/4 v0, 0x0

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

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
    .line 58
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->mInput:Landroid/renderscript/Allocation;

    #@2
    .line 59
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setVar(ILandroid/renderscript/BaseObj;)V

    #@6
    .line 57
    return-void
.end method
