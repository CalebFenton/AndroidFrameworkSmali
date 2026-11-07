.class Lcom/android/internal/widget/ActionBarOverlayLayout$4;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarOverlayLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-$$Nest$mhaltActionBarHideOffsetAnimations(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-$$Nest$fgetmActionBarTop(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-$$Nest$fgetmActionBarTop(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-$$Nest$fgetmTopAnimatorListener(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-$$Nest$fputmCurrentActionBarTopAnimator(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)V

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-$$Nest$fgetmActionBarBottom(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-$$Nest$fgetmActionBarBottom(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6c

    .line 147
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-$$Nest$fgetmActionBarBottom(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-$$Nest$fgetmActionBarBottom(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-$$Nest$fgetmBottomAnimatorListener(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-$$Nest$fputmCurrentActionBarBottomAnimator(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)V

    .line 151
    :cond_6c
    return-void
.end method
