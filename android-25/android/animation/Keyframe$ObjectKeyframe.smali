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
.field mValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(FLjava/lang/Object;)V
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 269
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    #@3
    .line 270
    iput p1, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mFraction:F

    #@5
    .line 271
    iput-object p2, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    #@7
    .line 272
    if-eqz p2, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    iput-boolean v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    #@c
    .line 273
    iget-boolean v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v0

    #@14
    :goto_1
    iput-object v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValueType:Ljava/lang/Class;

    #@16
    .line 269
    return-void

    #@17
    .line 272
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0

    #@19
    .line 273
    :cond_1
    const-class v0, Ljava/lang/Object;

    #@1b
    goto :goto_1
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframe$ObjectKeyframe;
    .locals 3

    #@0
    .prologue
    .line 287
    new-instance v0, Landroid/animation/Keyframe$ObjectKeyframe;

    #@2
    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->getFraction()F

    #@5
    move-result v2

    #@6
    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->hasValue()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    iget-object v1, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    #@e
    :goto_0
    invoke-direct {v0, v2, v1}, Landroid/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    #@11
    .line 288
    .local v0, "kfClone":Landroid/animation/Keyframe$ObjectKeyframe;
    iget-boolean v1, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValueWasSetOnStart:Z

    #@13
    iput-boolean v1, v0, Landroid/animation/Keyframe$ObjectKeyframe;->mValueWasSetOnStart:Z

    #@15
    .line 289
    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Landroid/animation/Keyframe$ObjectKeyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@1c
    .line 290
    return-object v0

    #@1d
    .line 287
    .end local v0    # "kfClone":Landroid/animation/Keyframe$ObjectKeyframe;
    :cond_0
    const/4 v1, 0x0

    #@1e
    goto :goto_0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframe;
    .locals 1

    #@0
    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->clone()Landroid/animation/Keyframe$ObjectKeyframe;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 281
    iput-object p1, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    #@2
    .line 282
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    iput-boolean v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    #@7
    .line 280
    return-void

    #@8
    .line 282
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method
