.class public final Landroid/renderscript/Script$FieldID;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldID"
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

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 125
    iput-object p4, p0, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    .line 126
    iput p5, p0, Landroid/renderscript/Script$FieldID;->mSlot:I

    .line 127
    return-void
.end method
