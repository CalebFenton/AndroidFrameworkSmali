.class Landroid/widget/PopupWindow$PopupDecorView$2;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/transition/Transition$TransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/PopupWindow$PopupDecorView;

.field final synthetic val$listener:Landroid/transition/Transition$TransitionListener;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/PopupWindow$PopupDecorView;
    .param p2, "val$listener"    # Landroid/transition/Transition$TransitionListener;

    #@0
    .prologue
    .line 2051
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    #@2
    iput-object p2, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->val$listener:Landroid/transition/Transition$TransitionListener;

    #@4
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 2054
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->val$listener:Landroid/transition/Transition$TransitionListener;

    #@2
    invoke-interface {v0, p1}, Landroid/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    #@5
    .line 2057
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-static {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->-set0(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListenerAdapter;)Landroid/transition/Transition$TransitionListenerAdapter;

    #@b
    .line 2053
    return-void
.end method
