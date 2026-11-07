.class public abstract Landroid/animation/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/Keyframe$IntKeyframe;,
        Landroid/animation/Keyframe$FloatKeyframe;,
        Landroid/animation/Keyframe$ObjectKeyframe;
    }
.end annotation


# instance fields
.field greylist-max-o mFraction:F

.field greylist-max-o mHasValue:Z

.field private greylist-max-o mInterpolator:Landroid/animation/TimeInterpolator;

.field greylist-max-o mValueType:Ljava/lang/Class;

.field greylist-max-o mValueWasSetOnStart:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Keyframe;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static whitelist ofFloat(F)Landroid/animation/Keyframe;
    .registers 2
    .param p0, "fraction"    # F

    .line 131
    new-instance v0, Landroid/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0}, Landroid/animation/Keyframe$FloatKeyframe;-><init>(F)V

    return-object v0
.end method

.method public static whitelist ofFloat(FF)Landroid/animation/Keyframe;
    .registers 3
    .param p0, "fraction"    # F
    .param p1, "value"    # F

    .line 115
    new-instance v0, Landroid/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0, p1}, Landroid/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    return-object v0
.end method

.method public static whitelist ofInt(F)Landroid/animation/Keyframe;
    .registers 2
    .param p0, "fraction"    # F

    .line 99
    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0}, Landroid/animation/Keyframe$IntKeyframe;-><init>(F)V

    return-object v0
.end method

.method public static whitelist ofInt(FI)Landroid/animation/Keyframe;
    .registers 3
    .param p0, "fraction"    # F
    .param p1, "value"    # I

    .line 83
    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0, p1}, Landroid/animation/Keyframe$IntKeyframe;-><init>(FI)V

    return-object v0
.end method

.method public static whitelist ofObject(F)Landroid/animation/Keyframe;
    .registers 3
    .param p0, "fraction"    # F

    .line 163
    new-instance v0, Landroid/animation/Keyframe$ObjectKeyframe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;
    .registers 3
    .param p0, "fraction"    # F
    .param p1, "value"    # Ljava/lang/Object;

    .line 147
    new-instance v0, Landroid/animation/Keyframe$ObjectKeyframe;

    invoke-direct {v0, p0, p1}, Landroid/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract whitelist clone()Landroid/animation/Keyframe;
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFraction()F
    .registers 2

    .line 212
    iget v0, p0, Landroid/animation/Keyframe;->mFraction:F

    return v0
.end method

.method public whitelist getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/animation/Keyframe;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public whitelist getType()Ljava/lang/Class;
    .registers 2

    .line 253
    iget-object v0, p0, Landroid/animation/Keyframe;->mValueType:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract whitelist getValue()Ljava/lang/Object;
.end method

.method public whitelist hasValue()Z
    .registers 2

    .line 174
    iget-boolean v0, p0, Landroid/animation/Keyframe;->mHasValue:Z

    return v0
.end method

.method public whitelist setFraction(F)V
    .registers 2
    .param p1, "fraction"    # F

    .line 222
    iput p1, p0, Landroid/animation/Keyframe;->mFraction:F

    .line 223
    return-void
.end method

.method public whitelist setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 242
    iput-object p1, p0, Landroid/animation/Keyframe;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 243
    return-void
.end method

.method public abstract whitelist setValue(Ljava/lang/Object;)V
.end method

.method greylist-max-o setValueWasSetOnStart(Z)V
    .registers 2
    .param p1, "valueWasSetOnStart"    # Z

    .line 188
    iput-boolean p1, p0, Landroid/animation/Keyframe;->mValueWasSetOnStart:Z

    .line 189
    return-void
.end method

.method greylist-max-o valueWasSetOnStart()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Landroid/animation/Keyframe;->mValueWasSetOnStart:Z

    return v0
.end method
