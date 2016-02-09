.class public Landroid/view/animation/AnimationSet;
.super Landroid/view/animation/Animation;
.source "AnimationSet.java"


# static fields
.field private static final PROPERTY_CHANGE_BOUNDS_MASK:I = 0x80

.field private static final PROPERTY_DURATION_MASK:I = 0x20

.field private static final PROPERTY_FILL_AFTER_MASK:I = 0x1

.field private static final PROPERTY_FILL_BEFORE_MASK:I = 0x2

.field private static final PROPERTY_MORPH_MATRIX_MASK:I = 0x40

.field private static final PROPERTY_REPEAT_MODE_MASK:I = 0x4

.field private static final PROPERTY_SHARE_INTERPOLATOR_MASK:I = 0x10

.field private static final PROPERTY_START_OFFSET_MASK:I = 0x8


# instance fields
.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mDirty:Z

.field private mFlags:I

.field private mHasAlpha:Z

.field private mLastEnd:J

.field private mStoredOffsets:[J

.field private mTempTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    .line 62
    iput v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@7
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    #@9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@e
    .line 68
    new-instance v1, Landroid/view/animation/Transformation;

    #@10
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@13
    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    #@15
    .line 84
    sget-object v1, Lcom/android/internal/R$styleable;->AnimationSet:[I

    #@17
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1a
    move-result-object v0

    #@1b
    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1e
    move-result v1

    #@1f
    .line 86
    const/16 v2, 0x10

    #@21
    invoke-direct {p0, v2, v1}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    #@24
    .line 88
    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    #@27
    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2a
    move-result-object v1

    #@2b
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@2d
    .line 91
    const/16 v2, 0xe

    #@2f
    .line 90
    if-lt v1, v2, :cond_4

    #@31
    .line 92
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_0

    #@37
    .line 93
    iget v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@39
    or-int/lit8 v1, v1, 0x20

    #@3b
    iput v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@3d
    .line 95
    :cond_0
    const/4 v1, 0x2

    #@3e
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_1

    #@44
    .line 96
    iget v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@46
    or-int/lit8 v1, v1, 0x2

    #@48
    iput v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@4a
    .line 98
    :cond_1
    const/4 v1, 0x3

    #@4b
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_2

    #@51
    .line 99
    iget v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@53
    or-int/lit8 v1, v1, 0x1

    #@55
    iput v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@57
    .line 101
    :cond_2
    const/4 v1, 0x5

    #@58
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_3

    #@5e
    .line 102
    iget v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@60
    or-int/lit8 v1, v1, 0x4

    #@62
    iput v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@64
    .line 104
    :cond_3
    const/4 v1, 0x4

    #@65
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@68
    move-result v1

    #@69
    if-eqz v1, :cond_4

    #@6b
    .line 105
    iget v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@6d
    or-int/lit8 v1, v1, 0x8

    #@6f
    iput v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@71
    .line 109
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@74
    .line 80
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "shareInterpolator"    # Z

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@3
    .line 62
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@6
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@d
    .line 68
    new-instance v0, Landroid/view/animation/Transformation;

    #@f
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@12
    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    #@14
    .line 121
    const/16 v0, 0x10

    #@16
    invoke-direct {p0, v0, p1}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    #@19
    .line 122
    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    #@1c
    .line 120
    return-void
.end method

.method private init()V
    .locals 2

    #@0
    .prologue
    .line 150
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartTime:J

    #@4
    .line 149
    return-void
.end method

.method private setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 142
    if-eqz p2, :cond_0

    #@2
    .line 143
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@4
    or-int/2addr v0, p1

    #@5
    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@7
    .line 141
    :goto_0
    return-void

    #@8
    .line 145
    :cond_0
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@a
    not-int v1, p1

    #@b
    and-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@e
    goto :goto_0
.end method


# virtual methods
.method public addAnimation(Landroid/view/animation/Animation;)V
    .locals 9
    .param p1, "a"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 219
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6
    .line 221
    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@8
    and-int/lit8 v2, v2, 0x40

    #@a
    if-nez v2, :cond_2

    #@c
    const/4 v1, 0x1

    #@d
    .line 222
    .local v1, "noMatrix":Z
    :goto_0
    if-eqz v1, :cond_0

    #@f
    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 223
    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@17
    or-int/lit8 v2, v2, 0x40

    #@19
    iput v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@1b
    .line 226
    :cond_0
    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@1d
    and-int/lit16 v2, v2, 0x80

    #@1f
    if-nez v2, :cond_3

    #@21
    const/4 v0, 0x1

    #@22
    .line 229
    .local v0, "changeBounds":Z
    :goto_1
    if-eqz v0, :cond_1

    #@24
    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeBounds()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 230
    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@2c
    or-int/lit16 v2, v2, 0x80

    #@2e
    iput v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@30
    .line 233
    :cond_1
    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@32
    and-int/lit8 v2, v2, 0x20

    #@34
    const/16 v3, 0x20

    #@36
    if-ne v2, v3, :cond_4

    #@38
    .line 234
    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    #@3a
    iget-wide v4, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    #@3c
    add-long/2addr v2, v4

    #@3d
    iput-wide v2, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    #@3f
    .line 245
    :goto_2
    iput-boolean v8, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    #@41
    .line 218
    return-void

    #@42
    .line 221
    .end local v0    # "changeBounds":Z
    .end local v1    # "noMatrix":Z
    :cond_2
    const/4 v1, 0x0

    #@43
    .restart local v1    # "noMatrix":Z
    goto :goto_0

    #@44
    .line 226
    :cond_3
    const/4 v0, 0x0

    #@45
    .restart local v0    # "changeBounds":Z
    goto :goto_1

    #@46
    .line 236
    :cond_4
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@4b
    move-result v2

    #@4c
    if-ne v2, v8, :cond_5

    #@4e
    .line 237
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    #@51
    move-result-wide v2

    #@52
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    #@55
    move-result-wide v4

    #@56
    add-long/2addr v2, v4

    #@57
    iput-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    #@59
    .line 238
    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    #@5b
    iget-wide v4, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    #@5d
    add-long/2addr v2, v4

    #@5e
    iput-wide v2, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    #@60
    goto :goto_2

    #@61
    .line 240
    :cond_5
    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    #@63
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    #@66
    move-result-wide v4

    #@67
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    #@6a
    move-result-wide v6

    #@6b
    add-long/2addr v4, v6

    #@6c
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@6f
    move-result-wide v2

    #@70
    iput-wide v2, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    #@72
    .line 241
    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    #@74
    iget-wide v4, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    #@76
    sub-long/2addr v2, v4

    #@77
    iput-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    #@79
    goto :goto_2
.end method

.method protected bridge synthetic clone()Landroid/view/animation/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected clone()Landroid/view/animation/AnimationSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    invoke-super {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/animation/AnimationSet;

    #@6
    .line 128
    .local v0, "animation":Landroid/view/animation/AnimationSet;
    new-instance v4, Landroid/view/animation/Transformation;

    #@8
    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    #@b
    iput-object v4, v0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    #@d
    .line 129
    new-instance v4, Ljava/util/ArrayList;

    #@f
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v4, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@14
    .line 131
    iget-object v4, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v2

    #@1a
    .line 132
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@1c
    .line 134
    .local v1, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v3, 0x0

    #@1d
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@1f
    .line 135
    iget-object v5, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Landroid/view/animation/Animation;

    #@27
    invoke-virtual {v4}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    .line 134
    add-int/lit8 v3, v3, 0x1

    #@30
    goto :goto_0

    #@31
    .line 138
    :cond_0
    return-object v0
.end method

.method public computeDurationHint()J
    .locals 8

    #@0
    .prologue
    .line 324
    const-wide/16 v4, 0x0

    #@2
    .line 325
    .local v4, "duration":J
    iget-object v7, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    .line 326
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@a
    .line 327
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    add-int/lit8 v6, v1, -0x1

    #@c
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    #@e
    .line 328
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v7

    #@12
    check-cast v7, Landroid/view/animation/Animation;

    #@14
    invoke-virtual {v7}, Landroid/view/animation/Animation;->computeDurationHint()J

    #@17
    move-result-wide v2

    #@18
    .line 329
    .local v2, "d":J
    cmp-long v7, v2, v4

    #@1a
    if-lez v7, :cond_0

    #@1c
    move-wide v4, v2

    #@1d
    .line 327
    :cond_0
    add-int/lit8 v6, v6, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 331
    .end local v2    # "d":J
    :cond_1
    return-wide v4
.end method

.method public getAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 512
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getDuration()J
    .locals 8

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@2
    .line 302
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 303
    .local v1, "count":I
    const-wide/16 v2, 0x0

    #@8
    .line 305
    .local v2, "duration":J
    iget v6, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@a
    and-int/lit8 v6, v6, 0x20

    #@c
    const/16 v7, 0x20

    #@e
    if-ne v6, v7, :cond_1

    #@10
    const/4 v4, 0x1

    #@11
    .line 306
    .local v4, "durationSet":Z
    :goto_0
    if-eqz v4, :cond_2

    #@13
    .line 307
    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    #@15
    .line 314
    :cond_0
    return-wide v2

    #@16
    .line 305
    .end local v4    # "durationSet":Z
    :cond_1
    const/4 v4, 0x0

    #@17
    .restart local v4    # "durationSet":Z
    goto :goto_0

    #@18
    .line 309
    :cond_2
    const/4 v5, 0x0

    #@19
    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_0

    #@1b
    .line 310
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    check-cast v6, Landroid/view/animation/Animation;

    #@21
    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    #@24
    move-result-wide v6

    #@25
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@28
    move-result-wide v2

    #@29
    .line 309
    add-int/lit8 v5, v5, 0x1

    #@2b
    goto :goto_1
.end method

.method public getStartTime()J
    .locals 8

    #@0
    .prologue
    .line 268
    const-wide v4, 0x7fffffffffffffffL

    #@5
    .line 270
    .local v4, "startTime":J
    iget-object v6, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    .line 271
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@d
    .line 273
    .local v1, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v3, 0x0

    #@e
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@10
    .line 274
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/view/animation/Animation;

    #@16
    .line 275
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartTime()J

    #@19
    move-result-wide v6

    #@1a
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    #@1d
    move-result-wide v4

    #@1e
    .line 273
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 278
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    return-wide v4
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 9
    .param p1, "currentTime"    # J
    .param p3, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 370
    iget-object v8, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 371
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@8
    .line 372
    .local v1, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    iget-object v7, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    #@a
    .line 374
    .local v7, "temp":Landroid/view/animation/Transformation;
    const/4 v5, 0x0

    #@b
    .line 375
    .local v5, "more":Z
    const/4 v6, 0x0

    #@c
    .line 376
    .local v6, "started":Z
    const/4 v3, 0x1

    #@d
    .line 378
    .local v3, "ended":Z
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->clear()V

    #@10
    .line 380
    add-int/lit8 v4, v2, -0x1

    #@12
    .end local v6    # "started":Z
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    #@14
    .line 381
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/view/animation/Animation;

    #@1a
    .line 383
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {v7}, Landroid/view/animation/Transformation;->clear()V

    #@1d
    .line 384
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getScaleFactor()F

    #@20
    move-result v8

    #@21
    invoke-virtual {v0, p1, p2, v7, v8}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    #@24
    move-result v8

    #@25
    if-nez v8, :cond_0

    #@27
    .line 385
    :goto_1
    invoke-virtual {p3, v7}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    #@2a
    .line 387
    if-nez v6, :cond_1

    #@2c
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    #@2f
    move-result v6

    #@30
    .line 388
    :goto_2
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    #@33
    move-result v8

    #@34
    if-eqz v8, :cond_2

    #@36
    .line 380
    :goto_3
    add-int/lit8 v4, v4, -0x1

    #@38
    goto :goto_0

    #@39
    .line 384
    :cond_0
    const/4 v5, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 387
    :cond_1
    const/4 v6, 0x1

    #@3c
    .restart local v6    # "started":Z
    goto :goto_2

    #@3d
    .line 388
    .end local v6    # "started":Z
    :cond_2
    const/4 v3, 0x0

    #@3e
    goto :goto_3

    #@3f
    .line 391
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_3
    if-eqz v6, :cond_4

    #@41
    iget-boolean v8, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    #@43
    if-eqz v8, :cond_7

    #@45
    .line 398
    :cond_4
    :goto_4
    iget-boolean v8, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    #@47
    if-eq v3, v8, :cond_6

    #@49
    .line 399
    iget-object v8, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@4b
    if-eqz v8, :cond_5

    #@4d
    .line 400
    iget-object v8, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@4f
    invoke-interface {v8, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    #@52
    .line 402
    :cond_5
    iput-boolean v3, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    #@54
    .line 405
    :cond_6
    return v5

    #@55
    .line 392
    :cond_7
    iget-object v8, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@57
    if-eqz v8, :cond_8

    #@59
    .line 393
    iget-object v8, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@5b
    invoke-interface {v8, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    #@5e
    .line 395
    :cond_8
    const/4 v8, 0x1

    #@5f
    iput-boolean v8, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    #@61
    goto :goto_4
.end method

.method public hasAlpha()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 182
    iget-boolean v3, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 183
    iput-boolean v4, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    #@7
    iput-boolean v4, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    #@9
    .line 185
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v1

    #@f
    .line 186
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@11
    .line 188
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v2, 0x0

    #@12
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@14
    .line 189
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Landroid/view/animation/Animation;

    #@1a
    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasAlpha()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 190
    const/4 v3, 0x1

    #@21
    iput-boolean v3, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    #@23
    .line 196
    .end local v0    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    iget-boolean v3, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    #@25
    return v3

    #@26
    .line 188
    .restart local v0    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 28
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    #@0
    .prologue
    .line 425
    invoke-super/range {p0 .. p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@3
    .line 427
    move-object/from16 v0, p0

    #@5
    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@7
    move/from16 v25, v0

    #@9
    and-int/lit8 v25, v25, 0x20

    #@b
    const/16 v26, 0x20

    #@d
    move/from16 v0, v25

    #@f
    move/from16 v1, v26

    #@11
    if-ne v0, v1, :cond_9

    #@13
    const/4 v7, 0x1

    #@14
    .line 428
    .local v7, "durationSet":Z
    :goto_0
    move-object/from16 v0, p0

    #@16
    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@18
    move/from16 v25, v0

    #@1a
    and-int/lit8 v25, v25, 0x1

    #@1c
    const/16 v26, 0x1

    #@1e
    move/from16 v0, v25

    #@20
    move/from16 v1, v26

    #@22
    if-ne v0, v1, :cond_a

    #@24
    const/4 v11, 0x1

    #@25
    .line 429
    .local v11, "fillAfterSet":Z
    :goto_1
    move-object/from16 v0, p0

    #@27
    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@29
    move/from16 v25, v0

    #@2b
    and-int/lit8 v25, v25, 0x2

    #@2d
    const/16 v26, 0x2

    #@2f
    move/from16 v0, v25

    #@31
    move/from16 v1, v26

    #@33
    if-ne v0, v1, :cond_b

    #@35
    const/4 v13, 0x1

    #@36
    .line 430
    .local v13, "fillBeforeSet":Z
    :goto_2
    move-object/from16 v0, p0

    #@38
    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@3a
    move/from16 v25, v0

    #@3c
    and-int/lit8 v25, v25, 0x4

    #@3e
    const/16 v26, 0x4

    #@40
    move/from16 v0, v25

    #@42
    move/from16 v1, v26

    #@44
    if-ne v0, v1, :cond_c

    #@46
    const/16 v19, 0x1

    #@48
    .line 431
    .local v19, "repeatModeSet":Z
    :goto_3
    move-object/from16 v0, p0

    #@4a
    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@4c
    move/from16 v25, v0

    #@4e
    and-int/lit8 v25, v25, 0x10

    #@50
    .line 432
    const/16 v26, 0x10

    #@52
    .line 431
    move/from16 v0, v25

    #@54
    move/from16 v1, v26

    #@56
    if-ne v0, v1, :cond_d

    #@58
    const/16 v20, 0x1

    #@5a
    .line 433
    .local v20, "shareInterpolator":Z
    :goto_4
    move-object/from16 v0, p0

    #@5c
    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@5e
    move/from16 v25, v0

    #@60
    and-int/lit8 v25, v25, 0x8

    #@62
    .line 434
    const/16 v26, 0x8

    #@64
    .line 433
    move/from16 v0, v25

    #@66
    move/from16 v1, v26

    #@68
    if-ne v0, v1, :cond_e

    #@6a
    const/16 v21, 0x1

    #@6c
    .line 436
    .local v21, "startOffsetSet":Z
    :goto_5
    if-eqz v20, :cond_0

    #@6e
    .line 437
    invoke-virtual/range {p0 .. p0}, Landroid/view/animation/AnimationSet;->ensureInterpolator()V

    #@71
    .line 440
    :cond_0
    move-object/from16 v0, p0

    #@73
    iget-object v5, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@75
    .line 441
    .local v5, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@78
    move-result v6

    #@79
    .line 443
    .local v6, "count":I
    move-object/from16 v0, p0

    #@7b
    iget-wide v8, v0, Landroid/view/animation/AnimationSet;->mDuration:J

    #@7d
    .line 444
    .local v8, "duration":J
    move-object/from16 v0, p0

    #@7f
    iget-boolean v10, v0, Landroid/view/animation/AnimationSet;->mFillAfter:Z

    #@81
    .line 445
    .local v10, "fillAfter":Z
    move-object/from16 v0, p0

    #@83
    iget-boolean v12, v0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    #@85
    .line 446
    .local v12, "fillBefore":Z
    move-object/from16 v0, p0

    #@87
    iget v0, v0, Landroid/view/animation/AnimationSet;->mRepeatMode:I

    #@89
    move/from16 v18, v0

    #@8b
    .line 447
    .local v18, "repeatMode":I
    move-object/from16 v0, p0

    #@8d
    iget-object v15, v0, Landroid/view/animation/AnimationSet;->mInterpolator:Landroid/view/animation/Interpolator;

    #@8f
    .line 448
    .local v15, "interpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v0, p0

    #@91
    iget-wide v0, v0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    #@93
    move-wide/from16 v22, v0

    #@95
    .line 451
    .local v22, "startOffset":J
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    #@99
    move-object/from16 v24, v0

    #@9b
    .line 452
    .local v24, "storedOffsets":[J
    if-eqz v21, :cond_f

    #@9d
    .line 453
    if-eqz v24, :cond_1

    #@9f
    move-object/from16 v0, v24

    #@a1
    array-length v0, v0

    #@a2
    move/from16 v25, v0

    #@a4
    move/from16 v0, v25

    #@a6
    if-eq v0, v6, :cond_2

    #@a8
    .line 454
    :cond_1
    new-array v0, v6, [J

    #@aa
    move-object/from16 v24, v0

    #@ac
    .end local v24    # "storedOffsets":[J
    move-object/from16 v0, v24

    #@ae
    move-object/from16 v1, p0

    #@b0
    iput-object v0, v1, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    #@b2
    .line 460
    :cond_2
    :goto_6
    const/4 v14, 0x0

    #@b3
    .local v14, "i":I
    :goto_7
    if-ge v14, v6, :cond_10

    #@b5
    .line 461
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b8
    move-result-object v4

    #@b9
    check-cast v4, Landroid/view/animation/Animation;

    #@bb
    .line 462
    .local v4, "a":Landroid/view/animation/Animation;
    if-eqz v7, :cond_3

    #@bd
    .line 463
    invoke-virtual {v4, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    #@c0
    .line 465
    :cond_3
    if-eqz v11, :cond_4

    #@c2
    .line 466
    invoke-virtual {v4, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@c5
    .line 468
    :cond_4
    if-eqz v13, :cond_5

    #@c7
    .line 469
    invoke-virtual {v4, v12}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    #@ca
    .line 471
    :cond_5
    if-eqz v19, :cond_6

    #@cc
    .line 472
    move/from16 v0, v18

    #@ce
    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    #@d1
    .line 474
    :cond_6
    if-eqz v20, :cond_7

    #@d3
    .line 475
    invoke-virtual {v4, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@d6
    .line 477
    :cond_7
    if-eqz v21, :cond_8

    #@d8
    .line 478
    invoke-virtual {v4}, Landroid/view/animation/Animation;->getStartOffset()J

    #@db
    move-result-wide v16

    #@dc
    .line 479
    .local v16, "offset":J
    add-long v26, v16, v22

    #@de
    move-wide/from16 v0, v26

    #@e0
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    #@e3
    .line 480
    aput-wide v16, v24, v14

    #@e5
    .line 482
    .end local v16    # "offset":J
    :cond_8
    move/from16 v0, p1

    #@e7
    move/from16 v1, p2

    #@e9
    move/from16 v2, p3

    #@eb
    move/from16 v3, p4

    #@ed
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@f0
    .line 460
    add-int/lit8 v14, v14, 0x1

    #@f2
    goto :goto_7

    #@f3
    .line 427
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v5    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .end local v6    # "count":I
    .end local v7    # "durationSet":Z
    .end local v8    # "duration":J
    .end local v10    # "fillAfter":Z
    .end local v11    # "fillAfterSet":Z
    .end local v12    # "fillBefore":Z
    .end local v13    # "fillBeforeSet":Z
    .end local v14    # "i":I
    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v18    # "repeatMode":I
    .end local v19    # "repeatModeSet":Z
    .end local v20    # "shareInterpolator":Z
    .end local v21    # "startOffsetSet":Z
    .end local v22    # "startOffset":J
    :cond_9
    const/4 v7, 0x0

    #@f4
    .restart local v7    # "durationSet":Z
    goto/16 :goto_0

    #@f6
    .line 428
    :cond_a
    const/4 v11, 0x0

    #@f7
    .restart local v11    # "fillAfterSet":Z
    goto/16 :goto_1

    #@f9
    .line 429
    :cond_b
    const/4 v13, 0x0

    #@fa
    .restart local v13    # "fillBeforeSet":Z
    goto/16 :goto_2

    #@fc
    .line 430
    :cond_c
    const/16 v19, 0x0

    #@fe
    .restart local v19    # "repeatModeSet":Z
    goto/16 :goto_3

    #@100
    .line 431
    :cond_d
    const/16 v20, 0x0

    #@102
    .restart local v20    # "shareInterpolator":Z
    goto/16 :goto_4

    #@104
    .line 433
    :cond_e
    const/16 v21, 0x0

    #@106
    .restart local v21    # "startOffsetSet":Z
    goto/16 :goto_5

    #@108
    .line 456
    .restart local v5    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .restart local v6    # "count":I
    .restart local v8    # "duration":J
    .restart local v10    # "fillAfter":Z
    .restart local v12    # "fillBefore":Z
    .restart local v15    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v18    # "repeatMode":I
    .restart local v22    # "startOffset":J
    .restart local v24    # "storedOffsets":[J
    :cond_f
    if-eqz v24, :cond_2

    #@10a
    .line 457
    const/16 v25, 0x0

    #@10c
    move-object/from16 v0, v25

    #@10e
    move-object/from16 v1, p0

    #@110
    iput-object v0, v1, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    #@112
    const/16 v24, 0x0

    #@114
    .local v24, "storedOffsets":[J
    goto :goto_6

    #@115
    .line 424
    .end local v24    # "storedOffsets":[J
    .restart local v14    # "i":I
    :cond_10
    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .locals 14
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 338
    iget-object v8, p0, Landroid/view/animation/AnimationSet;->mPreviousRegion:Landroid/graphics/RectF;

    #@2
    .line 339
    .local v8, "region":Landroid/graphics/RectF;
    int-to-float v10, p1

    #@3
    move/from16 v0, p2

    #@5
    int-to-float v11, v0

    #@6
    move/from16 v0, p3

    #@8
    int-to-float v12, v0

    #@9
    move/from16 v0, p4

    #@b
    int-to-float v13, v0

    #@c
    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    #@f
    .line 340
    const/high16 v10, -0x40800000    # -1.0f

    #@11
    const/high16 v11, -0x40800000    # -1.0f

    #@13
    invoke-virtual {v8, v10, v11}, Landroid/graphics/RectF;->inset(FF)V

    #@16
    .line 342
    iget-boolean v10, p0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    #@18
    if-eqz v10, :cond_3

    #@1a
    .line 343
    iget-object v10, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v4

    #@20
    .line 344
    .local v4, "count":I
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@22
    .line 345
    .local v3, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    iget-object v9, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    #@24
    .line 347
    .local v9, "temp":Landroid/view/animation/Transformation;
    iget-object v7, p0, Landroid/view/animation/AnimationSet;->mPreviousTransformation:Landroid/view/animation/Transformation;

    #@26
    .line 349
    .local v7, "previousTransformation":Landroid/view/animation/Transformation;
    add-int/lit8 v5, v4, -0x1

    #@28
    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_3

    #@2a
    .line 350
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Landroid/view/animation/Animation;

    #@30
    .line 351
    .local v2, "a":Landroid/view/animation/Animation;
    invoke-virtual {v2}, Landroid/view/animation/Animation;->isFillEnabled()Z

    #@33
    move-result v10

    #@34
    if-eqz v10, :cond_0

    #@36
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getFillBefore()Z

    #@39
    move-result v10

    #@3a
    if-nez v10, :cond_0

    #@3c
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    #@3f
    move-result-wide v10

    #@40
    const-wide/16 v12, 0x0

    #@42
    cmp-long v10, v10, v12

    #@44
    if-nez v10, :cond_1

    #@46
    .line 352
    :cond_0
    invoke-virtual {v9}, Landroid/view/animation/Transformation;->clear()V

    #@49
    .line 353
    iget-object v6, v2, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    #@4b
    .line 354
    .local v6, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v6, :cond_2

    #@4d
    const/4 v10, 0x0

    #@4e
    invoke-interface {v6, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@51
    move-result v10

    #@52
    :goto_1
    invoke-virtual {v2, v10, v9}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    #@55
    .line 356
    invoke-virtual {v7, v9}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    #@58
    .line 349
    .end local v6    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    add-int/lit8 v5, v5, -0x1

    #@5a
    goto :goto_0

    #@5b
    .line 355
    .restart local v6    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_2
    const/4 v10, 0x0

    #@5c
    goto :goto_1

    #@5d
    .line 337
    .end local v2    # "a":Landroid/view/animation/Animation;
    .end local v3    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .end local v4    # "count":I
    .end local v5    # "i":I
    .end local v6    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v7    # "previousTransformation":Landroid/view/animation/Transformation;
    .end local v9    # "temp":Landroid/view/animation/Transformation;
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 488
    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    #@3
    .line 489
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->restoreChildrenStartOffset()V

    #@6
    .line 487
    return-void
.end method

.method restoreChildrenStartOffset()V
    .locals 8

    #@0
    .prologue
    .line 496
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    #@2
    .line 497
    .local v3, "offsets":[J
    if-nez v3, :cond_0

    #@4
    return-void

    #@5
    .line 499
    :cond_0
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@7
    .line 500
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    .line 502
    .local v1, "count":I
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@e
    .line 503
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    check-cast v4, Landroid/view/animation/Animation;

    #@14
    aget-wide v6, v3, v2

    #@16
    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    #@19
    .line 502
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 495
    :cond_1
    return-void
.end method

.method public restrictDuration(J)V
    .locals 5
    .param p1, "durationMillis"    # J

    #@0
    .prologue
    .line 283
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    #@3
    .line 285
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@5
    .line 286
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    .line 288
    .local v1, "count":I
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@c
    .line 289
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/view/animation/Animation;

    #@12
    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    #@15
    .line 288
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 282
    :cond_0
    return-void
.end method

.method public scaleCurrentDuration(F)V
    .locals 4
    .param p1, "scale"    # F

    #@0
    .prologue
    .line 413
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@2
    .line 414
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 415
    .local v1, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@9
    .line 416
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Landroid/view/animation/Animation;

    #@f
    invoke-virtual {v3, p1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    #@12
    .line 415
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 412
    :cond_0
    return-void
.end method

.method public setDuration(J)V
    .locals 5
    .param p1, "durationMillis"    # J

    #@0
    .prologue
    .line 207
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@2
    or-int/lit8 v0, v0, 0x20

    #@4
    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@6
    .line 208
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    #@9
    .line 209
    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    #@b
    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    #@d
    add-long/2addr v0, v2

    #@e
    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    #@10
    .line 206
    return-void
.end method

.method public setFillAfter(Z)V
    .locals 1
    .param p1, "fillAfter"    # Z

    #@0
    .prologue
    .line 155
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@2
    or-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@6
    .line 156
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@9
    .line 154
    return-void
.end method

.method public setFillBefore(Z)V
    .locals 1
    .param p1, "fillBefore"    # Z

    #@0
    .prologue
    .line 161
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@2
    or-int/lit8 v0, v0, 0x2

    #@4
    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@6
    .line 162
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    #@9
    .line 160
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    #@0
    .prologue
    .line 167
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@2
    or-int/lit8 v0, v0, 0x4

    #@4
    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@6
    .line 168
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    #@9
    .line 166
    return-void
.end method

.method public setStartOffset(J)V
    .locals 1
    .param p1, "startOffset"    # J

    #@0
    .prologue
    .line 173
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@2
    or-int/lit8 v0, v0, 0x8

    #@4
    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@6
    .line 174
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    #@9
    .line 172
    return-void
.end method

.method public setStartTime(J)V
    .locals 5
    .param p1, "startTimeMillis"    # J

    #@0
    .prologue
    .line 255
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@3
    .line 257
    iget-object v4, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v2

    #@9
    .line 258
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    #@b
    .line 260
    .local v1, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v3, 0x0

    #@c
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@e
    .line 261
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/view/animation/Animation;

    #@14
    .line 262
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@17
    .line 260
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 254
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public willChangeBounds()Z
    .locals 2

    #@0
    .prologue
    .line 522
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@2
    and-int/lit16 v0, v0, 0x80

    #@4
    const/16 v1, 0x80

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 2

    #@0
    .prologue
    .line 517
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0x40

    #@4
    const/16 v1, 0x40

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
