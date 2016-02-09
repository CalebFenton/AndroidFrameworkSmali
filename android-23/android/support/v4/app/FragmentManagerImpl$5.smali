.class Landroid/support/v4/app/FragmentManagerImpl$5;
.super Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentManagerImpl;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/FragmentManagerImpl;
    .param p2, "$anonymous0"    # Landroid/view/View;
    .param p3, "$anonymous1"    # Landroid/view/animation/Animation;
    .param p4, "val$fragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 1102
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$5;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    iput-object p4, p0, Landroid/support/v4/app/FragmentManagerImpl$5;->val$fragment:Landroid/support/v4/app/Fragment;

    #@4
    invoke-direct {p0, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    #@7
    .line 1103
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1106
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    #@5
    .line 1107
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$5;->val$fragment:Landroid/support/v4/app/Fragment;

    #@7
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1108
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$5;->val$fragment:Landroid/support/v4/app/Fragment;

    #@d
    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@f
    .line 1109
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$5;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    #@11
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$5;->val$fragment:Landroid/support/v4/app/Fragment;

    #@13
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl$5;->val$fragment:Landroid/support/v4/app/Fragment;

    #@15
    iget v2, v2, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    #@17
    move v4, v3

    #@18
    move v5, v3

    #@19
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@1c
    .line 1105
    :cond_0
    return-void
.end method
