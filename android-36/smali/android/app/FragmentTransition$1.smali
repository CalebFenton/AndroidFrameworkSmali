.class Landroid/app/FragmentTransition$1;
.super Landroid/transition/TransitionListenerAdapter;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentTransition;->replaceHide(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$exitingViews:Ljava/util/ArrayList;

.field final synthetic blacklist val$fragmentView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 3

    .line 337
    iput-object p1, p0, Landroid/app/FragmentTransition$1;->val$fragmentView:Landroid/view/View;

    iput-object p2, p0, Landroid/app/FragmentTransition$1;->val$exitingViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 340
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 341
    iget-object v0, p0, Landroid/app/FragmentTransition$1;->val$fragmentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Landroid/app/FragmentTransition$1;->val$exitingViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/FragmentTransition;->-$$Nest$smsetViewVisibility(Ljava/util/ArrayList;I)V

    .line 343
    return-void
.end method
