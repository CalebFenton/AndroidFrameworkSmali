.class Landroid/app/FragmentManagerImpl$5;
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
.field final synthetic this$0:Landroid/app/FragmentManagerImpl;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Landroid/app/Fragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/FragmentManagerImpl;
    .param p2, "val$container"    # Landroid/view/ViewGroup;
    .param p3, "val$view"    # Landroid/view/View;
    .param p4, "val$fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 1052
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$5;->this$0:Landroid/app/FragmentManagerImpl;

    #@2
    iput-object p2, p0, Landroid/app/FragmentManagerImpl$5;->val$container:Landroid/view/ViewGroup;

    #@4
    iput-object p3, p0, Landroid/app/FragmentManagerImpl$5;->val$view:Landroid/view/View;

    #@6
    iput-object p4, p0, Landroid/app/FragmentManagerImpl$5;->val$fragment:Landroid/app/Fragment;

    #@8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1055
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$5;->val$container:Landroid/view/ViewGroup;

    #@4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl$5;->val$view:Landroid/view/View;

    #@6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    #@9
    .line 1056
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$5;->val$fragment:Landroid/app/Fragment;

    #@b
    iget-object v0, v0, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1057
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$5;->val$fragment:Landroid/app/Fragment;

    #@11
    iput-object v2, v0, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@13
    .line 1058
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$5;->this$0:Landroid/app/FragmentManagerImpl;

    #@15
    iget-object v1, p0, Landroid/app/FragmentManagerImpl$5;->val$fragment:Landroid/app/Fragment;

    #@17
    iget-object v2, p0, Landroid/app/FragmentManagerImpl$5;->val$fragment:Landroid/app/Fragment;

    #@19
    iget v2, v2, Landroid/app/Fragment;->mStateAfterAnimating:I

    #@1b
    move v4, v3

    #@1c
    move v5, v3

    #@1d
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    #@20
    .line 1054
    :cond_0
    return-void
.end method
