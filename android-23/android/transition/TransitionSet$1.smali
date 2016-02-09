.class Landroid/transition/TransitionSet$1;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/TransitionSet;->runAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/TransitionSet;

.field final synthetic val$nextTransition:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/transition/TransitionSet;Landroid/transition/Transition;)V
    .locals 0
    .param p1, "this$0"    # Landroid/transition/TransitionSet;
    .param p2, "val$nextTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 428
    iput-object p1, p0, Landroid/transition/TransitionSet$1;->this$0:Landroid/transition/TransitionSet;

    #@2
    iput-object p2, p0, Landroid/transition/TransitionSet$1;->val$nextTransition:Landroid/transition/Transition;

    #@4
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 431
    iget-object v0, p0, Landroid/transition/TransitionSet$1;->val$nextTransition:Landroid/transition/Transition;

    #@2
    invoke-virtual {v0}, Landroid/transition/Transition;->runAnimators()V

    #@5
    .line 432
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@8
    .line 430
    return-void
.end method
