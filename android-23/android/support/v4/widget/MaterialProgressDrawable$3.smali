.class Landroid/support/v4/widget/MaterialProgressDrawable$3;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

.field final synthetic val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/MaterialProgressDrawable;
    .param p2, "val$ring"    # Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@0
    .prologue
    .line 419
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@2
    iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 427
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 433
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@3
    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->storeOriginals()V

    #@6
    .line 434
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@8
    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->goToNextColor()V

    #@b
    .line 435
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@d
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@f
    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getEndTrim()F

    #@12
    move-result v1

    #@13
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    #@16
    .line 436
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@18
    iget-boolean v0, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 439
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@1e
    iput-boolean v2, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    #@20
    .line 440
    const-wide/16 v0, 0x534

    #@22
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@25
    .line 441
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@27
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    #@2a
    .line 432
    :goto_0
    return-void

    #@2b
    .line 443
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@2d
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@2f
    invoke-static {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->-get1(Landroid/support/v4/widget/MaterialProgressDrawable;)F

    #@32
    move-result v1

    #@33
    const/high16 v2, 0x3f800000    # 1.0f

    #@35
    add-float/2addr v1, v2

    #@36
    const/high16 v2, 0x40a00000    # 5.0f

    #@38
    rem-float/2addr v1, v2

    #@39
    invoke-static {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->-set0(Landroid/support/v4/widget/MaterialProgressDrawable;F)F

    #@3c
    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->-set0(Landroid/support/v4/widget/MaterialProgressDrawable;F)F

    #@6
    .line 422
    return-void
.end method
