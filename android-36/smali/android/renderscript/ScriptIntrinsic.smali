.class public abstract Landroid/renderscript/ScriptIntrinsic;
.super Landroid/renderscript/Script;
.source "ScriptIntrinsic.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 6
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 35
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_a

    .line 38
    return-void

    .line 36
    :cond_a
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Loading of ScriptIntrinsic failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
