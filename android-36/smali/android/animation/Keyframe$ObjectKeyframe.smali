.class Landroid/animation/Keyframe$ObjectKeyframe;
.super Landroid/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectKeyframe"
.end annotation


# instance fields
.field greylist-max-o mValue:Ljava/lang/Object;


# direct methods
.method constructor greylist-max-o <init>(FLjava/lang/Object;)V
    .registers 4
    .param p1, "fraction"    # F
    .param p2, "value"    # Ljava/lang/Object;

    .line 269
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    .line 270
    iput p1, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mFraction:F

    .line 271
    iput-object p2, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    .line 272
    if-eqz p2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    .line 273
    iget-boolean v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    if-eqz v0, :cond_17

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_19

    :cond_17
    const-class v0, Ljava/lang/Object;

    :goto_19
    iput-object v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValueType:Ljava/lang/Class;

    .line 274
    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/animation/Keyframe$ObjectKeyframe;
    .registers 4

    .line 287
    new-instance v0, Landroid/animation/Keyframe$ObjectKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->getFraction()F

    move-result v1

    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-direct {v0, v1, v2}, Landroid/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    .line 288
    .local v0, "kfClone":Landroid/animation/Keyframe$ObjectKeyframe;
    iget-boolean v1, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValueWasSetOnStart:Z

    iput-boolean v1, v0, Landroid/animation/Keyframe$ObjectKeyframe;->mValueWasSetOnStart:Z

    .line 289
    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe$ObjectKeyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 290
    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/animation/Keyframe;
    .registers 2

    .line 262
    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->clone()Landroid/animation/Keyframe$ObjectKeyframe;

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

    .line 262
    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->clone()Landroid/animation/Keyframe$ObjectKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getValue()Ljava/lang/Object;
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist setValue(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 281
    iput-object p1, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    .line 282
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    .line 283
    return-void
.end method
