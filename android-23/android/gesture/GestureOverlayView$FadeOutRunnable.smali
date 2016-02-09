.class Landroid/gesture/GestureOverlayView$FadeOutRunnable;
.super Ljava/lang/Object;
.source "GestureOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/GestureOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutRunnable"
.end annotation


# instance fields
.field fireActionPerformed:Z

.field resetMultipleStrokes:Z

.field final synthetic this$0:Landroid/gesture/GestureOverlayView;


# direct methods
.method private constructor <init>(Landroid/gesture/GestureOverlayView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/gesture/GestureOverlayView;

    #@0
    .prologue
    .line 741
    iput-object p1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$FadeOutRunnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/gesture/GestureOverlayView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/16 v11, 0xff

    #@3
    const/4 v10, 0x1

    #@4
    const/high16 v9, 0x3f800000    # 1.0f

    #@6
    const/4 v8, 0x0

    #@7
    .line 746
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@9
    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->-get4(Landroid/gesture/GestureOverlayView;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_2

    #@f
    .line 747
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@12
    move-result-wide v4

    #@13
    .line 748
    .local v4, "now":J
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@15
    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->-get2(Landroid/gesture/GestureOverlayView;)J

    #@18
    move-result-wide v6

    #@19
    sub-long v0, v4, v6

    #@1b
    .line 750
    .local v0, "duration":J
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@1d
    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->-get0(Landroid/gesture/GestureOverlayView;)J

    #@20
    move-result-wide v6

    #@21
    cmp-long v3, v0, v6

    #@23
    if-lez v3, :cond_1

    #@25
    .line 751
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    #@27
    if-eqz v3, :cond_0

    #@29
    .line 752
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@2b
    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->-wrap0(Landroid/gesture/GestureOverlayView;)V

    #@2e
    .line 755
    :cond_0
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@30
    invoke-static {v3, v8}, Landroid/gesture/GestureOverlayView;->-set4(Landroid/gesture/GestureOverlayView;Z)Z

    #@33
    .line 756
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@35
    invoke-static {v3, v8}, Landroid/gesture/GestureOverlayView;->-set3(Landroid/gesture/GestureOverlayView;Z)Z

    #@38
    .line 757
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@3a
    invoke-static {v3, v8}, Landroid/gesture/GestureOverlayView;->-set2(Landroid/gesture/GestureOverlayView;Z)Z

    #@3d
    .line 758
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@3f
    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->-get5(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    #@46
    .line 759
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@48
    invoke-static {v3, v12}, Landroid/gesture/GestureOverlayView;->-set0(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    #@4b
    .line 760
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@4d
    invoke-static {v3, v11}, Landroid/gesture/GestureOverlayView;->-wrap1(Landroid/gesture/GestureOverlayView;I)V

    #@50
    .line 781
    .end local v0    # "duration":J
    .end local v4    # "now":J
    :goto_0
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@52
    invoke-virtual {v3}, Landroid/gesture/GestureOverlayView;->invalidate()V

    #@55
    .line 745
    return-void

    #@56
    .line 762
    .restart local v0    # "duration":J
    .restart local v4    # "now":J
    :cond_1
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@58
    invoke-static {v3, v10}, Landroid/gesture/GestureOverlayView;->-set2(Landroid/gesture/GestureOverlayView;Z)Z

    #@5b
    .line 764
    long-to-float v3, v0

    #@5c
    iget-object v6, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@5e
    invoke-static {v6}, Landroid/gesture/GestureOverlayView;->-get0(Landroid/gesture/GestureOverlayView;)J

    #@61
    move-result-wide v6

    #@62
    long-to-float v6, v6

    #@63
    div-float/2addr v3, v6

    #@64
    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    #@67
    move-result v3

    #@68
    .line 763
    const/4 v6, 0x0

    #@69
    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    #@6c
    move-result v2

    #@6d
    .line 765
    .local v2, "interpolatedTime":F
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@6f
    iget-object v6, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@71
    invoke-static {v6}, Landroid/gesture/GestureOverlayView;->-get3(Landroid/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {v6, v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    #@78
    move-result v6

    #@79
    sub-float v6, v9, v6

    #@7b
    invoke-static {v3, v6}, Landroid/gesture/GestureOverlayView;->-set1(Landroid/gesture/GestureOverlayView;F)F

    #@7e
    .line 766
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@80
    iget-object v6, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@82
    invoke-static {v6}, Landroid/gesture/GestureOverlayView;->-get1(Landroid/gesture/GestureOverlayView;)F

    #@85
    move-result v6

    #@86
    const/high16 v7, 0x437f0000    # 255.0f

    #@88
    mul-float/2addr v6, v7

    #@89
    float-to-int v6, v6

    #@8a
    invoke-static {v3, v6}, Landroid/gesture/GestureOverlayView;->-wrap1(Landroid/gesture/GestureOverlayView;I)V

    #@8d
    .line 767
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@8f
    const-wide/16 v6, 0x10

    #@91
    invoke-virtual {v3, p0, v6, v7}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@94
    goto :goto_0

    #@95
    .line 769
    .end local v0    # "duration":J
    .end local v2    # "interpolatedTime":F
    .end local v4    # "now":J
    :cond_2
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    #@97
    if-eqz v3, :cond_3

    #@99
    .line 770
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@9b
    invoke-static {v3, v10}, Landroid/gesture/GestureOverlayView;->-set5(Landroid/gesture/GestureOverlayView;Z)Z

    #@9e
    goto :goto_0

    #@9f
    .line 772
    :cond_3
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@a1
    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->-wrap0(Landroid/gesture/GestureOverlayView;)V

    #@a4
    .line 774
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@a6
    invoke-static {v3, v8}, Landroid/gesture/GestureOverlayView;->-set2(Landroid/gesture/GestureOverlayView;Z)Z

    #@a9
    .line 775
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@ab
    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->-get5(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    #@ae
    move-result-object v3

    #@af
    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    #@b2
    .line 776
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@b4
    invoke-static {v3, v12}, Landroid/gesture/GestureOverlayView;->-set0(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    #@b7
    .line 777
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@b9
    invoke-static {v3, v8}, Landroid/gesture/GestureOverlayView;->-set4(Landroid/gesture/GestureOverlayView;Z)Z

    #@bc
    .line 778
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    #@be
    invoke-static {v3, v11}, Landroid/gesture/GestureOverlayView;->-wrap1(Landroid/gesture/GestureOverlayView;I)V

    #@c1
    goto :goto_0
.end method
