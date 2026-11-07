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
.field greylist-max-o mValue:F


# direct methods
.method constructor greylist-max-o <init>(F)V
    .registers 3
    .param p1, "fraction"    # F

    .line 358
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    .line 359
    iput p1, p0, Landroid/animation/Keyframe$FloatKeyframe;->mFraction:F

    .line 360
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValueType:Ljava/lang/Class;

    .line 361
    return-void
.end method

.method constructor greylist-max-o <init>(FF)V
    .registers 4
    .param p1, "fraction"    # F
    .param p2, "value"    # F

    .line 351
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    .line 352
    iput p1, p0, Landroid/animation/Keyframe$FloatKeyframe;->mFraction:F

    .line 353
    iput p2, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 354
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValueType:Ljava/lang/Class;

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    .line 356
    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/animation/Keyframe$FloatKeyframe;
    .registers 4

    .line 380
    iget-boolean v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    if-eqz v0, :cond_10

    .line 381
    new-instance v0, Landroid/animation/Keyframe$FloatKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v1

    iget v2, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValue:F

    invoke-direct {v0, v1, v2}, Landroid/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    goto :goto_19

    .line 382
    :cond_10
    new-instance v0, Landroid/animation/Keyframe$FloatKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/animation/Keyframe$FloatKeyframe;-><init>(F)V

    :goto_19
    nop

    .line 383
    .local v0, "kfClone":Landroid/animation/Keyframe$FloatKeyframe;
    invoke-virtual {p0}, Landroid/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe$FloatKeyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 384
    iget-boolean v1, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValueWasSetOnStart:Z

    iput-boolean v1, v0, Landroid/animation/Keyframe$FloatKeyframe;->mValueWasSetOnStart:Z

    .line 385
    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/animation/Keyframe;
    .registers 2

    .line 345
    invoke-virtual {p0}, Landroid/animation/Keyframe$FloatKeyframe;->clone()Landroid/animation/Keyframe$FloatKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Landroid/animation/Keyframe$FloatKeyframe;->clone()Landroid/animation/Keyframe$FloatKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getFloatValue()F
    .registers 2

    .line 364
    iget v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValue:F

    return v0
.end method

.method public whitelist getValue()Ljava/lang/Object;
    .registers 2

    .line 368
    iget v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setValue(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 372
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_16

    .line 373
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    .line 376
    :cond_16
    return-void
.end method
