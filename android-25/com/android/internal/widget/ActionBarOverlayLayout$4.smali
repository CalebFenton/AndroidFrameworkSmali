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
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@0
    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@2
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-wrap0(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    #@5
    .line 135
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@7
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@9
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-get1(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    #@10
    move-result-object v1

    #@11
    .line 136
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@13
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-get1(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    #@1a
    move-result v2

    #@1b
    neg-int v2, v2

    #@1c
    int-to-float v2, v2

    #@1d
    .line 135
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    #@20
    move-result-object v1

    #@21
    .line 137
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@23
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-get3(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    #@26
    move-result-object v2

    #@27
    .line 135
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@2a
    move-result-object v1

    #@2b
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-set2(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    #@2e
    .line 138
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@30
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-get0(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    #@33
    move-result-object v0

    #@34
    if-eqz v0, :cond_0

    #@36
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@38
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-get0(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    #@3f
    move-result v0

    #@40
    const/16 v1, 0x8

    #@42
    if-eq v0, v1, :cond_0

    #@44
    .line 139
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@46
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@48
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-get0(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    #@4f
    move-result-object v1

    #@50
    .line 140
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@52
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-get0(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    #@59
    move-result v2

    #@5a
    int-to-float v2, v2

    #@5b
    .line 139
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    #@5e
    move-result-object v1

    #@5f
    .line 141
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@61
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-get2(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    #@64
    move-result-object v2

    #@65
    .line 139
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@68
    move-result-object v1

    #@69
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-set1(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    #@6c
    .line 133
    :cond_0
    return-void
.end method
