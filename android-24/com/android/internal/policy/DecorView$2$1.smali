.class Lcom/android/internal/policy/DecorView$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/DecorView$2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/DecorView$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/policy/DecorView$2;

    #@0
    .prologue
    .line 1602
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$2$1;->this$1:Lcom/android/internal/policy/DecorView$2;

    #@2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 1610
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$2$1;->this$1:Lcom/android/internal/policy/DecorView$2;

    #@2
    iget-object v0, v0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    #@4
    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-get4(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@7
    move-result-object v0

    #@8
    const/high16 v1, 0x3f800000    # 1.0f

    #@a
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    #@d
    .line 1611
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$2$1;->this$1:Lcom/android/internal/policy/DecorView$2;

    #@f
    iget-object v0, v0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->-set0(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    #@15
    .line 1609
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$2$1;->this$1:Lcom/android/internal/policy/DecorView$2;

    #@2
    iget-object v0, v0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    #@4
    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-get4(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    #@c
    .line 1604
    return-void
.end method
