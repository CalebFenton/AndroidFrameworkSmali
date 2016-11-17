.class Landroid/animation/Keyframe$IntKeyframe;
.super Landroid/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntKeyframe"
.end annotation


# instance fields
.field mValue:I


# direct methods
.method constructor <init>(F)V
    .locals 1
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 311
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    #@3
    .line 312
    iput p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mFraction:F

    #@5
    .line 313
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@7
    iput-object v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    #@9
    .line 311
    return-void
.end method

.method constructor <init>(FI)V
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "value"    # I

    #@0
    .prologue
    .line 304
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    #@3
    .line 305
    iput p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mFraction:F

    #@5
    .line 306
    iput p2, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    #@7
    .line 307
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@9
    iput-object v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    #@b
    .line 308
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mHasValue:Z

    #@e
    .line 304
    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframe$IntKeyframe;
    .locals 3

    #@0
    .prologue
    .line 333
    iget-boolean v1, p0, Landroid/animation/Keyframe$IntKeyframe;->mHasValue:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 334
    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    #@6
    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    #@9
    move-result v1

    #@a
    iget v2, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    #@c
    invoke-direct {v0, v1, v2}, Landroid/animation/Keyframe$IntKeyframe;-><init>(FI)V

    #@f
    .line 336
    .local v0, "kfClone":Landroid/animation/Keyframe$IntKeyframe;
    :goto_0
    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Landroid/animation/Keyframe$IntKeyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@16
    .line 337
    iget-boolean v1, p0, Landroid/animation/Keyframe$IntKeyframe;->mValueWasSetOnStart:Z

    #@18
    iput-boolean v1, v0, Landroid/animation/Keyframe$IntKeyframe;->mValueWasSetOnStart:Z

    #@1a
    .line 338
    return-object v0

    #@1b
    .line 335
    .end local v0    # "kfClone":Landroid/animation/Keyframe$IntKeyframe;
    :cond_0
    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    #@1d
    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    #@20
    move-result v1

    #@21
    invoke-direct {v0, v1}, Landroid/animation/Keyframe$IntKeyframe;-><init>(F)V

    #@24
    .restart local v0    # "kfClone":Landroid/animation/Keyframe$IntKeyframe;
    goto :goto_0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframe;
    .locals 1

    #@0
    .prologue
    .line 332
    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->clone()Landroid/animation/Keyframe$IntKeyframe;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    #@0
    .prologue
    .line 317
    iget v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    #@2
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 321
    iget v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 325
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    const-class v1, Ljava/lang/Integer;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 326
    check-cast p1, Ljava/lang/Integer;

    #@c
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    #@12
    .line 327
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mHasValue:Z

    #@15
    .line 324
    :cond_0
    return-void
.end method
