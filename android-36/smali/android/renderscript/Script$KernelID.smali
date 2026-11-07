.class public final Landroid/renderscript/Script$KernelID;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KernelID"
.end annotation


# instance fields
.field greylist-max-o mScript:Landroid/renderscript/Script;

.field greylist-max-o mSig:I

.field greylist-max-o mSlot:I


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;II)V
    .registers 7
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "s"    # Landroid/renderscript/Script;
    .param p5, "slot"    # I
    .param p6, "sig"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 47
    iput-object p4, p0, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    .line 48
    iput p5, p0, Landroid/renderscript/Script$KernelID;->mSlot:I

    .line 49
    iput p6, p0, Landroid/renderscript/Script$KernelID;->mSig:I

    .line 50
    return-void
.end method
