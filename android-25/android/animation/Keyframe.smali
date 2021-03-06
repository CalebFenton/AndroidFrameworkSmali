.class public abstract Landroid/animation/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/Keyframe$FloatKeyframe;,
        Landroid/animation/Keyframe$IntKeyframe;,
        Landroid/animation/Keyframe$ObjectKeyframe;
    }
.end annotation


# instance fields
.field mFraction:F

.field mHasValue:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field mValueType:Ljava/lang/Class;

.field mValueWasSetOnStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/animation/Keyframe;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@6
    .line 36
    return-void
.end method

.method public static ofFloat(F)Landroid/animation/Keyframe;
    .locals 1
    .param p0, "fraction"    # F

    #@0
    .prologue
    .line 131
    new-instance v0, Landroid/animation/Keyframe$FloatKeyframe;

    #@2
    invoke-direct {v0, p0}, Landroid/animation/Keyframe$FloatKeyframe;-><init>(F)V

    #@5
    return-object v0
.end method

.method public static ofFloat(FF)Landroid/animation/Keyframe;
    .locals 1
    .param p0, "fraction"    # F
    .param p1, "value"    # F

    #@0
    .prologue
    .line 115
    new-instance v0, Landroid/animation/Keyframe$FloatKeyframe;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    #@5
    return-object v0
.end method

.method public static ofInt(F)Landroid/animation/Keyframe;
    .locals 1
    .param p0, "fraction"    # F

    #@0
    .prologue
    .line 99
    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    #@2
    invoke-direct {v0, p0}, Landroid/animation/Keyframe$IntKeyframe;-><init>(F)V

    #@5
    return-object v0
.end method

.method public static ofInt(FI)Landroid/animation/Keyframe;
    .locals 1
    .param p0, "fraction"    # F
    .param p1, "value"    # I

    #@0
    .prologue
    .line 83
    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/animation/Keyframe$IntKeyframe;-><init>(FI)V

    #@5
    return-object v0
.end method

.method public static ofObject(F)Landroid/animation/Keyframe;
    .locals 2
    .param p0, "fraction"    # F

    #@0
    .prologue
    .line 163
    new-instance v0, Landroid/animation/Keyframe$ObjectKeyframe;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    #@6
    return-object v0
.end method

.method public static ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;
    .locals 1
    .param p0, "fraction"    # F
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 147
    new-instance v0, Landroid/animation/Keyframe$ObjectKeyframe;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public abstract clone()Landroid/animation/Keyframe;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getFraction()F
    .locals 1

    #@0
    .prologue
    .line 212
    iget v0, p0, Landroid/animation/Keyframe;->mFraction:F

    #@2
    return v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Landroid/animation/Keyframe;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/animation/Keyframe;->mValueType:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public hasValue()Z
    .locals 1

    #@0
    .prologue
    .line 174
    iget-boolean v0, p0, Landroid/animation/Keyframe;->mHasValue:Z

    #@2
    return v0
.end method

.method public setFraction(F)V
    .locals 0
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 222
    iput p1, p0, Landroid/animation/Keyframe;->mFraction:F

    #@2
    .line 221
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    #@0
    .prologue
    .line 242
    iput-object p1, p0, Landroid/animation/Keyframe;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    .line 241
    return-void
.end method

.method public abstract setValue(Ljava/lang/Object;)V
.end method

.method setValueWasSetOnStart(Z)V
    .locals 0
    .param p1, "valueWasSetOnStart"    # Z

    #@0
    .prologue
    .line 188
    iput-boolean p1, p0, Landroid/animation/Keyframe;->mValueWasSetOnStart:Z

    #@2
    .line 187
    return-void
.end method

.method valueWasSetOnStart()Z
    .locals 1

    #@0
    .prologue
    .line 184
    iget-boolean v0, p0, Landroid/animation/Keyframe;->mValueWasSetOnStart:Z

    #@2
    return v0
.end method
