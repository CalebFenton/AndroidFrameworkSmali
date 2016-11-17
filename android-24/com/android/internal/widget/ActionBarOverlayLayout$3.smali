.class Lcom/android/internal/widget/ActionBarOverlayLayout$3;
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
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@0
    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 122
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@3
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-wrap0(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    #@6
    .line 123
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@8
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@a
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-get1(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    #@15
    move-result-object v1

    #@16
    .line 124
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@18
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-get3(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    #@1b
    move-result-object v2

    #@1c
    .line 123
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-set2(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    #@23
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@25
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-get0(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    #@28
    move-result-object v0

    #@29
    if-eqz v0, :cond_0

    #@2b
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@2d
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-get0(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    #@34
    move-result v0

    #@35
    const/16 v1, 0x8

    #@37
    if-eq v0, v1, :cond_0

    #@39
    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@3b
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@3d
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-get0(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    #@48
    move-result-object v1

    #@49
    .line 127
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@4b
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-get2(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    #@4e
    move-result-object v2

    #@4f
    .line 126
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@52
    move-result-object v1

    #@53
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-set1(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    #@56
    .line 121
    :cond_0
    return-void
.end method
