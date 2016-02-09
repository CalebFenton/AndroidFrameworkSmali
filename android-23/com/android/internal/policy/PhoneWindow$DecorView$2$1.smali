.class Lcom/android/internal/policy/PhoneWindow$DecorView$2$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/internal/policy/PhoneWindow$DecorView$2;

    #@0
    .prologue
    .line 3405
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$2;

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
    .line 3418
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 3413
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$2;

    #@2
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@4
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@7
    move-result-object v0

    #@8
    const/high16 v1, 0x3f800000    # 1.0f

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    #@d
    .line 3414
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$2;

    #@f
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-set0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    #@15
    .line 3412
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 3423
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 3408
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$2;

    #@2
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@4
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    #@c
    .line 3407
    return-void
.end method
