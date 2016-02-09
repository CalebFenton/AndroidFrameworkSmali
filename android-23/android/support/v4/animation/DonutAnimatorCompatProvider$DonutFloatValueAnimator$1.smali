.class Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;
.super Ljava/lang/Object;
.source "DonutAnimatorCompatProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;


# direct methods
.method constructor <init>(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    #@0
    .prologue
    .line 54
    iput-object p1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$1:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

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
    const/high16 v8, 0x3f800000    # 1.0f

    #@2
    .line 57
    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$1:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    #@4
    invoke-static {v3}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->-wrap0(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J

    #@7
    move-result-wide v4

    #@8
    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$1:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    #@a
    invoke-static {v3}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->-get3(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J

    #@d
    move-result-wide v6

    #@e
    sub-long v0, v4, v6

    #@10
    .line 58
    .local v0, "dt":J
    long-to-float v3, v0

    #@11
    mul-float/2addr v3, v8

    #@12
    iget-object v4, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$1:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    #@14
    invoke-static {v4}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->-get0(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J

    #@17
    move-result-wide v4

    #@18
    long-to-float v4, v4

    #@19
    div-float v2, v3, v4

    #@1b
    .line 59
    .local v2, "fraction":F
    cmpl-float v3, v2, v8

    #@1d
    if-gtz v3, :cond_0

    #@1f
    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$1:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    #@21
    iget-object v3, v3, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    #@23
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@26
    move-result-object v3

    #@27
    if-nez v3, :cond_1

    #@29
    .line 60
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    #@2b
    .line 62
    :cond_1
    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$1:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    #@2d
    invoke-static {v3, v2}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->-set0(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;F)F

    #@30
    .line 63
    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$1:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    #@32
    invoke-static {v3}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->-wrap2(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V

    #@35
    .line 64
    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$1:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    #@37
    invoke-static {v3}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->-get1(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)F

    #@3a
    move-result v3

    #@3b
    cmpl-float v3, v3, v8

    #@3d
    if-ltz v3, :cond_2

    #@3f
    .line 65
    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$1:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    #@41
    invoke-static {v3}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->-wrap1(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V

    #@44
    .line 56
    :goto_0
    return-void

    #@45
    .line 67
    :cond_2
    iget-object v3, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$1:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    #@47
    iget-object v3, v3, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    #@49
    iget-object v4, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$1:Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    #@4b
    invoke-static {v4}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->-get2(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)Ljava/lang/Runnable;

    #@4e
    move-result-object v4

    #@4f
    const-wide/16 v6, 0x10

    #@51
    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@54
    goto :goto_0
.end method
