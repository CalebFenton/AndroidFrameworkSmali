.class Lcom/android/internal/widget/ActionBarOverlayLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarOverlayLayout.java"


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
    .line 106
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-set1(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    #@6
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-set0(Lcom/android/internal/widget/ActionBarOverlayLayout;Z)Z

    #@c
    .line 114
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-set1(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    #@6
    .line 110
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-set0(Lcom/android/internal/widget/ActionBarOverlayLayout;Z)Z

    #@c
    .line 108
    return-void
.end method
