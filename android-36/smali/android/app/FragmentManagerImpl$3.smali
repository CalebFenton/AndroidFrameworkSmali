.class Landroid/app/FragmentManagerImpl$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentManagerImpl;->completeShowHideFragment(Landroid/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$animatingView:Landroid/view/View;

.field final synthetic blacklist val$container:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/FragmentManagerImpl;
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

    .line 1529
    iput-object p2, p0, Landroid/app/FragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/app/FragmentManagerImpl$3;->val$animatingView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1532
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 1533
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl$3;->val$animatingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1535
    :cond_b
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1536
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$3;->val$animatingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1537
    return-void
.end method
