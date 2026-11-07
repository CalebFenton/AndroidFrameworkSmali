.class Landroid/view/ThreadedRenderer$1;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$frameCallbacks:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Landroid/view/ThreadedRenderer;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ThreadedRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 708
    iput-object p2, p0, Landroid/view/ThreadedRenderer$1;->val$frameCallbacks:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFrameDraw$0(Ljava/util/ArrayList;Z)V
    .registers 4
    .param p0, "frameCommitCallbacks"    # Ljava/util/ArrayList;
    .param p1, "didProduceBuffer"    # Z

    .line 729
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 730
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/HardwareRenderer$FrameCommitCallback;

    invoke-interface {v1, p1}, Landroid/graphics/HardwareRenderer$FrameCommitCallback;->onFrameCommit(Z)V

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 732
    .end local v0    # "i":I
    :cond_13
    return-void
.end method


# virtual methods
.method public blacklist onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .registers 7
    .param p1, "syncResult"    # I
    .param p2, "frame"    # J

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 716
    .local v0, "frameCommitCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/HardwareRenderer$FrameCommitCallback;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/view/ThreadedRenderer$1;->val$frameCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 717
    iget-object v2, p0, Landroid/view/ThreadedRenderer$1;->val$frameCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    .line 718
    invoke-interface {v2, p1, p2, p3}, Landroid/graphics/HardwareRenderer$FrameDrawingCallback;->onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;

    move-result-object v2

    .line 719
    .local v2, "frameCommitCallback":Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    if-eqz v2, :cond_1f

    .line 720
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    .end local v2    # "frameCommitCallback":Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 724
    .end local v1    # "i":I
    :cond_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 725
    const/4 v1, 0x0

    return-object v1

    .line 728
    :cond_2a
    new-instance v1, Landroid/view/ThreadedRenderer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/view/ThreadedRenderer$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public blacklist onFrameDraw(J)V
    .registers 3
    .param p1, "frame"    # J

    .line 711
    return-void
.end method
