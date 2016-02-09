.class Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

.field final synthetic val$cling:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;
    .param p2, "val$cling"    # Landroid/view/View;

    #@0
    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@2
    iput-object p2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->val$cling:Landroid/view/View;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0xfa

    #@2
    const/4 v4, 0x0

    #@3
    .line 272
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->val$cling:Landroid/view/View;

    #@5
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@8
    move-result-object v0

    #@9
    .line 273
    const/high16 v1, 0x3f800000    # 1.0f

    #@b
    .line 272
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@e
    move-result-object v0

    #@f
    .line 274
    const/4 v1, 0x0

    #@10
    .line 272
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@17
    move-result-object v0

    #@18
    .line 276
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@1a
    invoke-static {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-get4(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/animation/Interpolator;

    #@1d
    move-result-object v1

    #@1e
    .line 272
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    #@29
    .line 280
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@2b
    new-instance v1, Landroid/animation/ArgbEvaluator;

    #@2d
    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    #@30
    const/4 v2, 0x2

    #@31
    new-array v2, v2, [Ljava/lang/Object;

    #@33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v3

    #@37
    aput-object v3, v2, v4

    #@39
    const/high16 v3, -0x80000000

    #@3b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v3

    #@3f
    const/4 v4, 0x1

    #@40
    aput-object v3, v2, v4

    #@42
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    #@45
    move-result-object v1

    #@46
    invoke-static {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-set0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    #@49
    .line 281
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@4b
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-get2(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;

    #@4e
    move-result-object v0

    #@4f
    new-instance v1, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5$1;

    #@51
    invoke-direct {v1, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5$1;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;)V

    #@54
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@57
    .line 288
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@59
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-get2(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@60
    .line 289
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@62
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-get2(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;

    #@65
    move-result-object v0

    #@66
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@68
    invoke-static {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-get4(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/animation/Interpolator;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@6f
    .line 290
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@71
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-get2(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    #@78
    .line 271
    return-void
.end method
