.class Landroid/app/EnterTransitionCoordinator$10;
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
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic val$decorView:Landroid/view/ViewGroup;

.field final synthetic val$rejectedSnapshots:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;
    .param p2, "val$decorView"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 616
    .local p3, "val$rejectedSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$10;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@2
    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$10;->val$decorView:Landroid/view/ViewGroup;

    #@4
    iput-object p3, p0, Landroid/app/EnterTransitionCoordinator$10;->val$rejectedSnapshots:Ljava/util/ArrayList;

    #@6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 619
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator$10;->val$decorView:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@5
    move-result-object v2

    #@6
    .line 620
    .local v2, "overlay":Landroid/view/ViewGroupOverlay;
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator$10;->val$rejectedSnapshots:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    .line 621
    .local v1, "numRejected":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@f
    .line 622
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator$10;->val$rejectedSnapshots:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Landroid/view/View;

    #@17
    invoke-virtual {v2, v3}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@1a
    .line 621
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 618
    :cond_0
    return-void
.end method
