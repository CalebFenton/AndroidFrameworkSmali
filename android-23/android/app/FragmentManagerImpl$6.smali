.class Landroid/app/FragmentManagerImpl$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/FragmentManagerImpl;

.field final synthetic val$finalFragment:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Landroid/app/FragmentManagerImpl;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/FragmentManagerImpl;
    .param p2, "val$finalFragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 1270
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$6;->this$0:Landroid/app/FragmentManagerImpl;

    #@2
    iput-object p2, p0, Landroid/app/FragmentManagerImpl$6;->val$finalFragment:Landroid/app/Fragment;

    #@4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 1273
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$6;->val$finalFragment:Landroid/app/Fragment;

    #@2
    iget-object v0, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1274
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$6;->val$finalFragment:Landroid/app/Fragment;

    #@8
    iget-object v0, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@a
    const/16 v1, 0x8

    #@c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@f
    .line 1272
    :cond_0
    return-void
.end method
