.class public final Landroid/renderscript/Script$InvokeID;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvokeID"
.end annotation


# instance fields
.field greylist-max-o mScript:Landroid/renderscript/Script;

.field greylist-max-o mSlot:I


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V
    .registers 6
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "s"    # Landroid/renderscript/Script;
    .param p5, "slot"    # I

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 87
    iput-object p4, p0, Landroid/renderscript/Script$InvokeID;->mScript:Landroid/renderscript/Script;

    .line 88
    iput p5, p0, Landroid/renderscript/Script$InvokeID;->mSlot:I

    .line 89
    return-void
.end method
