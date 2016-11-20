.class public abstract Landroid/renderscript/ScriptIntrinsic;
.super Landroid/renderscript/Script;
.source "ScriptIntrinsic.java"


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 30
    const-wide/16 v0, 0x0

    #@5
    cmp-long v0, p1, v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 31
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    #@b
    const-string/jumbo v1, "Loading of ScriptIntrinsic failed."

    #@e
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 28
    :cond_0
    return-void
.end method
