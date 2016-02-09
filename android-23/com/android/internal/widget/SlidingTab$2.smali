.class Lcom/android/internal/widget/SlidingTab$2;
.super Ljava/lang/Object;
.source "SlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SlidingTab;->startAnimating(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SlidingTab;

.field final synthetic val$dx:I

.field final synthetic val$dy:I

.field final synthetic val$holdAfter:Z


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SlidingTab;ZII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/SlidingTab;
    .param p2, "val$holdAfter"    # Z
    .param p3, "val$dx"    # I
    .param p4, "val$dy"    # I

    #@0
    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    #@2
    iput-boolean p2, p0, Lcom/android/internal/widget/SlidingTab$2;->val$holdAfter:Z

    #@4
    iput p3, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dx:I

    #@6
    iput p4, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dy:I

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 681
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTab$2;->val$holdAfter:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 682
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    #@6
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dx:I

    #@8
    int-to-float v1, v1

    #@9
    iget v2, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dx:I

    #@b
    int-to-float v2, v2

    #@c
    iget v3, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dy:I

    #@e
    int-to-float v3, v3

    #@f
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dy:I

    #@11
    int-to-float v4, v4

    #@12
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@15
    .line 683
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    #@17
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@1a
    .line 684
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    #@1c
    const/4 v2, 0x0

    #@1d
    invoke-static {v1, v2}, Lcom/android/internal/widget/SlidingTab;->-set0(Lcom/android/internal/widget/SlidingTab;Z)Z

    #@20
    .line 690
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    #@22
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab;->-get0(Lcom/android/internal/widget/SlidingTab;)Landroid/view/animation/Animation$AnimationListener;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@29
    .line 693
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    #@2b
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab;->-get1(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, v0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    #@32
    .line 694
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    #@34
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab;->-get2(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, v0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    #@3b
    .line 679
    return-void

    #@3c
    .line 686
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    #@3e
    const/high16 v1, 0x3f000000    # 0.5f

    #@40
    const/high16 v2, 0x3f800000    # 1.0f

    #@42
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@45
    .line 687
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xfa

    #@47
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@4a
    .line 688
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    #@4c
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab;->-wrap1(Lcom/android/internal/widget/SlidingTab;)V

    #@4f
    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 697
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 701
    return-void
.end method
