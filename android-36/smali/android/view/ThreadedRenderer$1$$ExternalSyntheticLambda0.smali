.class public final synthetic Landroid/view/ThreadedRenderer$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCommitCallback;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/ArrayList;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ThreadedRenderer$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final blacklist onFrameCommit(Z)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/ThreadedRenderer$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroid/view/ThreadedRenderer$1;->lambda$onFrameDraw$0(Ljava/util/ArrayList;Z)V

    return-void
.end method
