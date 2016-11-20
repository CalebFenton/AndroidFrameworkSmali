.class Landroid/widget/PopupWindow$PopupDecorView$3;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/transition/Transition$TransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/PopupWindow$PopupDecorView;

.field final synthetic val$anchorRoot:Landroid/view/View;

.field final synthetic val$listener:Landroid/transition/Transition$TransitionListener;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/View;Landroid/transition/Transition$TransitionListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/PopupWindow$PopupDecorView;
    .param p2, "val$anchorRoot"    # Landroid/view/View;
    .param p3, "val$listener"    # Landroid/transition/Transition$TransitionListener;

    #@0
    .prologue
    .line 2355
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    #@2
    iput-object p2, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->val$anchorRoot:Landroid/view/View;

    #@4
    iput-object p3, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->val$listener:Landroid/transition/Transition$TransitionListener;

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
    .line 2358
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->val$anchorRoot:Landroid/view/View;

    #@2
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    #@4
    invoke-static {v1}, Landroid/widget/PopupWindow$PopupDecorView;->-get0(Landroid/widget/PopupWindow$PopupDecorView;)Landroid/view/View$OnAttachStateChangeListener;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@b
    .line 2359
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->val$listener:Landroid/transition/Transition$TransitionListener;

    #@d
    invoke-interface {v0, p1}, Landroid/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    #@10
    .line 2362
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-static {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->-set0(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListenerAdapter;)Landroid/transition/Transition$TransitionListenerAdapter;

    #@16
    .line 2357
    return-void
.end method
