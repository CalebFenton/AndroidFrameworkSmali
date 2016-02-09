.class Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->onDestroyActionMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    #@0
    .prologue
    .line 3574
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 3591
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3582
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    #@3
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@5
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@8
    move-result-object v0

    #@9
    const/16 v1, 0x8

    #@b
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    #@e
    .line 3583
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    #@10
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@12
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get4(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    #@15
    move-result-object v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 3584
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    #@1a
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@1c
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get4(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    #@23
    .line 3586
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    #@25
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@27
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->removeAllViews()V

    #@2e
    .line 3587
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    #@30
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@32
    invoke-static {v0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-set0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    #@35
    .line 3581
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 3596
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 3576
    return-void
.end method
