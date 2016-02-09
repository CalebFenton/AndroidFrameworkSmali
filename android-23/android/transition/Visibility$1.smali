.class Landroid/transition/Visibility$1;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/Visibility;

.field final synthetic val$finalOverlayView:Landroid/view/View;

.field final synthetic val$finalSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/transition/Visibility;
    .param p2, "val$finalSceneRoot"    # Landroid/view/ViewGroup;
    .param p3, "val$finalOverlayView"    # Landroid/view/View;

    #@0
    .prologue
    .line 429
    iput-object p1, p0, Landroid/transition/Visibility$1;->this$0:Landroid/transition/Visibility;

    #@2
    iput-object p2, p0, Landroid/transition/Visibility$1;->val$finalSceneRoot:Landroid/view/ViewGroup;

    #@4
    iput-object p3, p0, Landroid/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    #@6
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 432
    iget-object v0, p0, Landroid/transition/Visibility$1;->val$finalSceneRoot:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    #@8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@b
    .line 431
    return-void
.end method
