.class Landroid/view/InsetsController$2;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/InsetsState$OnTraverseCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mPendingRemoveIndexes:Landroid/util/IntArray;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsController;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/InsetsController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController$2;->mPendingRemoveIndexes:Landroid/util/IntArray;

    return-void
.end method


# virtual methods
.method public blacklist onFinish(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .registers 5
    .param p1, "state1"    # Landroid/view/InsetsState;
    .param p2, "state2"    # Landroid/view/InsetsState;

    .line 700
    iget-object v0, p0, Landroid/view/InsetsController$2;->mPendingRemoveIndexes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_16

    .line 701
    iget-object v1, p0, Landroid/view/InsetsController$2;->mPendingRemoveIndexes:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->removeSourceAt(I)V

    .line 700
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 703
    .end local v0    # "i":I
    :cond_16
    iget-object v0, p0, Landroid/view/InsetsController$2;->mPendingRemoveIndexes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 704
    return-void
.end method

.method public blacklist onIdNotFoundInState2(ILandroid/view/InsetsSource;)V
    .registers 5
    .param p1, "index1"    # I
    .param p2, "source1"    # Landroid/view/InsetsSource;

    .line 690
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getId()I

    move-result v0

    sget v1, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v0, v1, :cond_9

    .line 691
    return-void

    .line 695
    :cond_9
    iget-object v0, p0, Landroid/view/InsetsController$2;->mPendingRemoveIndexes:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 696
    return-void
.end method
