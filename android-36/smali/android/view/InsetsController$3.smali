.class Landroid/view/InsetsController$3;
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
.field private blacklist mFromState:Landroid/view/InsetsState;

.field private blacklist mToState:Landroid/view/InsetsState;

.field private blacklist mTypes:I

.field final synthetic blacklist this$0:Landroid/view/InsetsController;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsController;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/InsetsController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 708
    iput-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFinish(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .registers 14
    .param p1, "state1"    # Landroid/view/InsetsState;
    .param p2, "state2"    # Landroid/view/InsetsState;

    .line 746
    iget v0, p0, Landroid/view/InsetsController$3;->mTypes:I

    if-nez v0, :cond_5

    .line 747
    return-void

    .line 749
    :cond_5
    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    iget v1, p0, Landroid/view/InsetsController$3;->mTypes:I

    invoke-static {v0, v1}, Landroid/view/InsetsController;->-$$Nest$mcancelExistingControllers(Landroid/view/InsetsController;I)V

    .line 750
    new-instance v2, Landroid/view/InsetsResizeAnimationRunner;

    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    iget-object v5, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    sget-object v6, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iget v9, p0, Landroid/view/InsetsController$3;->mTypes:I

    iget-object v10, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    const-wide/16 v7, 0x12c

    invoke-direct/range {v2 .. v10}, Landroid/view/InsetsResizeAnimationRunner;-><init>(Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/animation/Interpolator;JILandroid/view/InsetsAnimationControlCallbacks;)V

    .line 753
    .local v2, "runner":Landroid/view/InsetsAnimationControlRunner;
    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 754
    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    .line 755
    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_45

    .line 756
    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v3

    goto :goto_46

    :cond_45
    const/4 v3, 0x0

    .line 754
    :goto_46
    invoke-interface {v0, v1, v3}, Landroid/view/InsetsController$Host;->updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 758
    :cond_49
    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsController$RunningAnimation;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmAnimatingTypes(Landroid/view/InsetsController;)I

    move-result v1

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v3

    or-int/2addr v1, v3

    invoke-static {v0, v1}, Landroid/view/InsetsController;->-$$Nest$fputmAnimatingTypes(Landroid/view/InsetsController;I)V

    .line 760
    return-void
.end method

.method public blacklist onIdMatch(Landroid/view/InsetsSource;Landroid/view/InsetsSource;)V
    .registers 7
    .param p1, "source1"    # Landroid/view/InsetsSource;
    .param p2, "source2"    # Landroid/view/InsetsSource;

    .line 723
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 724
    .local v0, "frame1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 725
    .local v1, "frame2":Landroid/graphics/Rect;
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 726
    invoke-virtual {p2, v2}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 727
    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 728
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_89

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_89

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_89

    iget-object v2, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v2}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v2

    .line 729
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v2}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v2

    .line 730
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_55

    goto :goto_89

    .line 733
    :cond_55
    iget v2, p0, Landroid/view/InsetsController$3;->mTypes:I

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/InsetsController$3;->mTypes:I

    .line 734
    iget-object v2, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    if-nez v2, :cond_69

    .line 735
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2}, Landroid/view/InsetsState;-><init>()V

    iput-object v2, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    .line 737
    :cond_69
    iget-object v2, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    if-nez v2, :cond_74

    .line 738
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2}, Landroid/view/InsetsState;-><init>()V

    iput-object v2, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    .line 740
    :cond_74
    iget-object v2, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsSource;

    invoke-direct {v3, p1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 741
    iget-object v2, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsSource;

    invoke-direct {v3, p2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 742
    return-void

    .line 731
    :cond_89
    :goto_89
    return-void
.end method

.method public blacklist onStart(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .registers 4
    .param p1, "state1"    # Landroid/view/InsetsState;
    .param p2, "state2"    # Landroid/view/InsetsState;

    .line 716
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController$3;->mTypes:I

    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    .line 718
    iput-object v0, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    .line 719
    return-void
.end method
