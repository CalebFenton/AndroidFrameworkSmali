.class Landroid/renderscript/ScriptGroup$Node;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# instance fields
.field dagNumber:I

.field mInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/renderscript/ScriptGroup$ConnectLine;",
            ">;"
        }
    .end annotation
.end field

.field mKernels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field

.field mNext:Landroid/renderscript/ScriptGroup$Node;

.field mOutputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/renderscript/ScriptGroup$ConnectLine;",
            ">;"
        }
    .end annotation
.end field

.field mScript:Landroid/renderscript/Script;


# direct methods
.method constructor <init>(Landroid/renderscript/Script;)V
    .locals 1
    .param p1, "s"    # Landroid/renderscript/Script;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    #@a
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    #@11
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    #@18
    .line 84
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Node;->mScript:Landroid/renderscript/Script;

    #@1a
    .line 83
    return-void
.end method
