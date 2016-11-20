.class Landroid/animation/Keyframe$FloatKeyframe;
.super Landroid/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatKeyframe"
.end annotation


# instance fields
.field mValue:F


# direct methods
.method constructor <init>(F)V
    .locals 1
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 358
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    #@3
    .line 359
    iput p1, p0, Landroid/animation/Keyframe$FloatKeyframe;->mFraction:F

    #@5
    .line 360
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@7
    iput-object v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValueType:Ljava/lang/Class;

    #@9
    .line 358
    return-void
.end method

.method constructor <init>(FF)V
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "value"    # F

    #@0
    .prologue
    .line 351
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    #@3
    .line 352
    iput p1, p0, Landroid/animation/Keyframe$FloatKeyframe;->mFraction:F

    #@5
    .line 353
    iput p2, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValue:F

    #@7
    .line 354
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@9
    iput-object v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValueType:Ljava/lang/Class;

    #@b
    .line 355
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    #@e
    .line 351
    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframe$FloatKeyframe;
    .locals 3

    #@0
    .prologue
    .line 380
    iget-boolean v1, p0, Landroid/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 381
    new-instance v0, Landroid/animation/Keyframe$FloatKeyframe;

    #@6
    invoke-virtual {p0}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    #@9
    move-result v1

    #@a
    iget v2, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValue:F

    #@c
    invoke-direct {v0, v1, v2}, Landroid/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    #@f
    .line 383
    .local v0, "kfClone":Landroid/animation/Keyframe$FloatKeyframe;
    :goto_0
    invoke-virtual {p0}, Landroid/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Landroid/animation/Keyframe$FloatKeyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@16
    .line 384
    iget-boolean v1, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValueWasSetOnStart:Z

    #@18
    iput-boolean v1, v0, Landroid/animation/Keyframe$FloatKeyframe;->mValueWasSetOnStart:Z

    #@1a
    .line 385
    return-object v0

    #@1b
    .line 382
    .end local v0    # "kfClone":Landroid/animation/Keyframe$FloatKeyframe;
    :cond_0
    new-instance v0, Landroid/animation/Keyframe$FloatKeyframe;

    #@1d
    invoke-virtual {p0}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    #@20
    move-result v1

    #@21
    invoke-direct {v0, v1}, Landroid/animation/Keyframe$FloatKeyframe;-><init>(F)V

    #@24
    .restart local v0    # "kfClone":Landroid/animation/Keyframe$FloatKeyframe;
    goto :goto_0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframe;
    .locals 1

    #@0
    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/animation/Keyframe$FloatKeyframe;->clone()Landroid/animation/Keyframe$FloatKeyframe;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getFloatValue()F
    .locals 1

    #@0
    .prologue
    .line 364
    iget v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValue:F

    #@2
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 368
    iget v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValue:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 372
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    const-class v1, Ljava/lang/Float;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 373
    check-cast p1, Ljava/lang/Float;

    #@c
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValue:F

    #@12
    .line 374
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    #@15
    .line 371
    :cond_0
    return-void
.end method
