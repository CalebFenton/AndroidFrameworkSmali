.class Landroid/support/v4/widget/MaterialProgressDrawable$2;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


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
    .line 364
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@2
    iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@4
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 13
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 367
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@2
    iget-boolean v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    #@4
    if-eqz v10, :cond_0

    #@6
    .line 368
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@8
    iget-object v11, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@a
    invoke-static {v10, p1, v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->-wrap1(Landroid/support/v4/widget/MaterialProgressDrawable;FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    #@d
    .line 366
    :goto_0
    return-void

    #@e
    .line 372
    :cond_0
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@10
    iget-object v11, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@12
    invoke-static {v10, v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->-wrap0(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F

    #@15
    move-result v3

    #@16
    .line 373
    .local v3, "minProgressArc":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@18
    invoke-virtual {v10}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    #@1b
    move-result v7

    #@1c
    .line 374
    .local v7, "startingEndTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@1e
    invoke-virtual {v10}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    #@21
    move-result v9

    #@22
    .line 375
    .local v9, "startingTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@24
    invoke-virtual {v10}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    #@27
    move-result v8

    #@28
    .line 377
    .local v8, "startingRotation":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@2a
    iget-object v11, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@2c
    invoke-static {v10, p1, v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->-wrap2(Landroid/support/v4/widget/MaterialProgressDrawable;FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    #@2f
    .line 381
    const/high16 v10, 0x3f000000    # 0.5f

    #@31
    cmpg-float v10, p1, v10

    #@33
    if-gtz v10, :cond_1

    #@35
    .line 386
    const/high16 v10, 0x3f000000    # 0.5f

    #@37
    .line 385
    div-float v5, p1, v10

    #@39
    .line 388
    .local v5, "scaledTime":F
    const v10, 0x3f4ccccd    # 0.8f

    #@3c
    sub-float/2addr v10, v3

    #@3d
    invoke-static {}, Landroid/support/v4/widget/MaterialProgressDrawable;->-get0()Landroid/view/animation/Interpolator;

    #@40
    move-result-object v11

    #@41
    invoke-interface {v11, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@44
    move-result v11

    #@45
    mul-float/2addr v10, v11

    #@46
    .line 387
    add-float v6, v9, v10

    #@48
    .line 390
    .local v6, "startTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@4a
    invoke-virtual {v10, v6}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    #@4d
    .line 395
    .end local v5    # "scaledTime":F
    .end local v6    # "startTrim":F
    :cond_1
    const/high16 v10, 0x3f000000    # 0.5f

    #@4f
    cmpl-float v10, p1, v10

    #@51
    if-lez v10, :cond_2

    #@53
    .line 399
    const v10, 0x3f4ccccd    # 0.8f

    #@56
    sub-float v2, v10, v3

    #@58
    .line 400
    .local v2, "minArc":F
    const/high16 v10, 0x3f000000    # 0.5f

    #@5a
    sub-float v10, p1, v10

    #@5c
    .line 401
    const/high16 v11, 0x3f000000    # 0.5f

    #@5e
    .line 400
    div-float v5, v10, v11

    #@60
    .line 403
    .restart local v5    # "scaledTime":F
    invoke-static {}, Landroid/support/v4/widget/MaterialProgressDrawable;->-get0()Landroid/view/animation/Interpolator;

    #@63
    move-result-object v10

    #@64
    invoke-interface {v10, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@67
    move-result v10

    #@68
    mul-float/2addr v10, v2

    #@69
    .line 402
    add-float v0, v7, v10

    #@6b
    .line 404
    .local v0, "endTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@6d
    invoke-virtual {v10, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    #@70
    .line 407
    .end local v0    # "endTrim":F
    .end local v2    # "minArc":F
    .end local v5    # "scaledTime":F
    :cond_2
    const/high16 v10, 0x3e800000    # 0.25f

    #@72
    mul-float/2addr v10, p1

    #@73
    add-float v4, v8, v10

    #@75
    .line 408
    .local v4, "rotation":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@77
    invoke-virtual {v10, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    #@7a
    .line 410
    const/high16 v10, 0x43580000    # 216.0f

    #@7c
    mul-float/2addr v10, p1

    #@7d
    .line 411
    iget-object v11, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@7f
    invoke-static {v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->-get1(Landroid/support/v4/widget/MaterialProgressDrawable;)F

    #@82
    move-result v11

    #@83
    const/high16 v12, 0x40a00000    # 5.0f

    #@85
    div-float/2addr v11, v12

    #@86
    const/high16 v12, 0x44870000    # 1080.0f

    #@88
    mul-float/2addr v11, v12

    #@89
    .line 410
    add-float v1, v10, v11

    #@8b
    .line 412
    .local v1, "groupRotation":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@8d
    invoke-virtual {v10, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    #@90
    goto/16 :goto_0
.end method
