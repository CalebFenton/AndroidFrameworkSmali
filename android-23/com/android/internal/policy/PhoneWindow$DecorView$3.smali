.class Lcom/android/internal/policy/PhoneWindow$DecorView$3;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@0
    .prologue
    .line 3463
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$3;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

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
    .line 3476
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 3471
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$3;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@5
    move-result-object v0

    #@6
    const/high16 v1, 0x3f800000    # 1.0f

    #@8
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    #@b
    .line 3472
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$3;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-set0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    #@11
    .line 3470
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 3481
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 3466
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$3;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    #@a
    .line 3465
    return-void
.end method
