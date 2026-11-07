.class Landroid/app/FragmentManagerImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/FragmentManagerImpl;

.field final synthetic blacklist val$container:Landroid/view/ViewGroup;

.field final synthetic blacklist val$f:Landroid/app/Fragment;

.field final synthetic blacklist val$fragment:Landroid/app/Fragment;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;)V
    .registers 6
    .param p1, "this$0"    # Landroid/app/FragmentManagerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1403
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$2;->this$0:Landroid/app/FragmentManagerImpl;

    iput-object p2, p0, Landroid/app/FragmentManagerImpl$2;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/app/FragmentManagerImpl$2;->val$view:Landroid/view/View;

    iput-object p4, p0, Landroid/app/FragmentManagerImpl$2;->val$f:Landroid/app/Fragment;

    iput-object p5, p0, Landroid/app/FragmentManagerImpl$2;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 11
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 1406
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$2;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1407
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$2;->val$f:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    .line 1408
    .local v0, "animator":Landroid/animation/Animator;
    iget-object v1, p0, Landroid/app/FragmentManagerImpl$2;->val$f:Landroid/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    .line 1412
    iget-object v1, p0, Landroid/app/FragmentManagerImpl$2;->val$container:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl$2;->val$view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_30

    if-eqz v0, :cond_30

    .line 1414
    iget-object v3, p0, Landroid/app/FragmentManagerImpl$2;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v4, p0, Landroid/app/FragmentManagerImpl$2;->val$fragment:Landroid/app/Fragment;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl$2;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getStateAfterAnimating()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1417
    :cond_30
    return-void
.end method
