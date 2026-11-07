.class Landroid/renderscript/ScriptGroup$ConnectLine;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectLine"
.end annotation


# instance fields
.field greylist-max-o mAllocationType:Landroid/renderscript/Type;

.field greylist-max-o mFrom:Landroid/renderscript/Script$KernelID;

.field greylist-max-o mToF:Landroid/renderscript/Script$FieldID;

.field greylist-max-o mToK:Landroid/renderscript/Script$KernelID;


# direct methods
.method constructor greylist-max-o <init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)V
    .registers 4
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "from"    # Landroid/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/renderscript/Script$FieldID;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    .line 69
    iput-object p3, p0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    .line 70
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroid/renderscript/Type;

    .line 71
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)V
    .registers 4
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "from"    # Landroid/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/renderscript/Script$KernelID;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    .line 63
    iput-object p3, p0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    .line 64
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroid/renderscript/Type;

    .line 65
    return-void
.end method
