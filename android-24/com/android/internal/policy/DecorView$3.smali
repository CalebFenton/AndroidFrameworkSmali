.class Lcom/android/internal/policy/DecorView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/DecorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;

    #@0
    .prologue
    .line 1655
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$3;->this$0:Lcom/android/internal/policy/DecorView;

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
    .line 1663
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$3;->this$0:Lcom/android/internal/policy/DecorView;

    #@2
    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-get4(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@5
    move-result-object v0

    #@6
    const/high16 v1, 0x3f800000    # 1.0f

    #@8
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    #@b
    .line 1664
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$3;->this$0:Lcom/android/internal/policy/DecorView;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->-set0(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    #@11
    .line 1662
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 1658
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$3;->this$0:Lcom/android/internal/policy/DecorView;

    #@2
    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-get4(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    #@a
    .line 1657
    return-void
.end method
