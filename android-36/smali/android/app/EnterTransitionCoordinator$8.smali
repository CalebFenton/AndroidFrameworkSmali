.class Landroid/app/EnterTransitionCoordinator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EnterTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->startRejectedAnimations(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$decorView:Landroid/view/ViewGroup;

.field final synthetic blacklist val$rejectedSnapshots:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 732
    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$8;->val$decorView:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/app/EnterTransitionCoordinator$8;->val$rejectedSnapshots:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 735
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$8;->val$decorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    .line 736
    .local v0, "overlay":Landroid/view/ViewGroupOverlay;
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$8;->val$rejectedSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 737
    .local v1, "numRejected":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_1d

    .line 738
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator$8;->val$rejectedSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 737
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 740
    .end local v2    # "i":I
    :cond_1d
    return-void
.end method
