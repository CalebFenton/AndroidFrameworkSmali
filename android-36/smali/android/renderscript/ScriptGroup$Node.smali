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
.field greylist-max-o dagNumber:I

.field greylist-max-o mInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/renderscript/ScriptGroup$ConnectLine;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mKernels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mNext:Landroid/renderscript/ScriptGroup$Node;

.field greylist-max-o mOutputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/renderscript/ScriptGroup$ConnectLine;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mScript:Landroid/renderscript/Script;


# direct methods
.method constructor greylist-max-o <init>(Landroid/renderscript/Script;)V
    .registers 3
    .param p1, "s"    # Landroid/renderscript/Script;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    .line 89
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Node;->mScript:Landroid/renderscript/Script;

    .line 90
    return-void
.end method
