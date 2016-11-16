.class Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    #@0
    .prologue
    .line 131
    .local p1, "this$0":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    .line 134
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@2
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get1(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    #@5
    move-result-object v6

    #@6
    invoke-virtual {v6}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    #@9
    move-result-wide v2

    #@a
    .line 135
    .local v2, "frameTimeNanos":J
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@c
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get3(Lcom/android/server/display/RampAnimator;)J

    #@f
    move-result-wide v6

    #@10
    sub-long v6, v2, v6

    #@12
    long-to-float v6, v6

    #@13
    .line 136
    const v7, 0x3089705f    # 1.0E-9f

    #@16
    .line 135
    mul-float v5, v6, v7

    #@18
    .line 137
    .local v5, "timeDelta":F
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@1a
    invoke-static {v6, v2, v3}, Lcom/android/server/display/RampAnimator;->-set3(Lcom/android/server/display/RampAnimator;J)J

    #@1d
    .line 143
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    #@20
    move-result v4

    #@21
    .line 144
    .local v4, "scale":F
    const/4 v6, 0x0

    #@22
    cmpl-float v6, v4, v6

    #@24
    if-nez v6, :cond_2

    #@26
    .line 146
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@28
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@2a
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)I

    #@2d
    move-result v7

    #@2e
    int-to-float v7, v7

    #@2f
    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->-set0(Lcom/android/server/display/RampAnimator;F)F

    #@32
    .line 155
    :goto_0
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@34
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    #@37
    move-result v1

    #@38
    .line 156
    .local v1, "oldCurrentValue":I
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@3a
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@3c
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get0(Lcom/android/server/display/RampAnimator;)F

    #@3f
    move-result v7

    #@40
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    #@43
    move-result v7

    #@44
    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->-set2(Lcom/android/server/display/RampAnimator;I)I

    #@47
    .line 158
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@49
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    #@4c
    move-result v6

    #@4d
    if-eq v1, v6, :cond_0

    #@4f
    .line 159
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@51
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get6(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;

    #@54
    move-result-object v6

    #@55
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@57
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get5(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;

    #@5a
    move-result-object v7

    #@5b
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@5d
    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    #@60
    move-result v8

    #@61
    invoke-virtual {v6, v7, v8}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    #@64
    .line 162
    :cond_0
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@66
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)I

    #@69
    move-result v6

    #@6a
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@6c
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    #@6f
    move-result v7

    #@70
    if-eq v6, v7, :cond_4

    #@72
    .line 163
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@74
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-wrap0(Lcom/android/server/display/RampAnimator;)V

    #@77
    .line 133
    :cond_1
    :goto_1
    return-void

    #@78
    .line 148
    .end local v1    # "oldCurrentValue":I
    :cond_2
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@7a
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get7(Lcom/android/server/display/RampAnimator;)I

    #@7d
    move-result v6

    #@7e
    int-to-float v6, v6

    #@7f
    mul-float/2addr v6, v5

    #@80
    div-float v0, v6, v4

    #@82
    .line 149
    .local v0, "amount":F
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@84
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)I

    #@87
    move-result v6

    #@88
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@8a
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    #@8d
    move-result v7

    #@8e
    if-le v6, v7, :cond_3

    #@90
    .line 150
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@92
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@94
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get0(Lcom/android/server/display/RampAnimator;)F

    #@97
    move-result v7

    #@98
    add-float/2addr v7, v0

    #@99
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@9b
    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)I

    #@9e
    move-result v8

    #@9f
    int-to-float v8, v8

    #@a0
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    #@a3
    move-result v7

    #@a4
    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->-set0(Lcom/android/server/display/RampAnimator;F)F

    #@a7
    goto :goto_0

    #@a8
    .line 152
    :cond_3
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@aa
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@ac
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get0(Lcom/android/server/display/RampAnimator;)F

    #@af
    move-result v7

    #@b0
    sub-float/2addr v7, v0

    #@b1
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@b3
    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)I

    #@b6
    move-result v8

    #@b7
    int-to-float v8, v8

    #@b8
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    #@bb
    move-result v7

    #@bc
    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->-set0(Lcom/android/server/display/RampAnimator;F)F

    #@bf
    goto/16 :goto_0

    #@c1
    .line 165
    .end local v0    # "amount":F
    .restart local v1    # "oldCurrentValue":I
    :cond_4
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@c3
    const/4 v7, 0x0

    #@c4
    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->-set1(Lcom/android/server/display/RampAnimator;Z)Z

    #@c7
    .line 166
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@c9
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get4(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    #@cc
    move-result-object v6

    #@cd
    if-eqz v6, :cond_1

    #@cf
    .line 167
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    #@d1
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get4(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    #@d4
    move-result-object v6

    #@d5
    invoke-interface {v6}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    #@d8
    goto :goto_1
.end method
