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
.field mAllocationType:Landroid/renderscript/Type;

.field mFrom:Landroid/renderscript/Script$KernelID;

.field mToF:Landroid/renderscript/Script$FieldID;

.field mToK:Landroid/renderscript/Script$KernelID;


# direct methods
.method constructor <init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)V
    .locals 0
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "from"    # Landroid/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/renderscript/Script$FieldID;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput-object p2, p0, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    #@5
    .line 64
    iput-object p3, p0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    #@7
    .line 65
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroid/renderscript/Type;

    #@9
    .line 62
    return-void
.end method

.method constructor <init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)V
    .locals 0
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "from"    # Landroid/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/renderscript/Script$KernelID;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p2, p0, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    #@5
    .line 58
    iput-object p3, p0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    #@7
    .line 59
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroid/renderscript/Type;

    #@9
    .line 56
    return-void
.end method
