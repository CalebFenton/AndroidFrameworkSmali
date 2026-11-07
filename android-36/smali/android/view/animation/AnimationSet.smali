.class public Landroid/view/animation/AnimationSet;
.super Landroid/view/animation/Animation;
.source "AnimationSet.java"


# static fields
.field private static final greylist-max-o PROPERTY_CHANGE_BOUNDS_MASK:I = 0x80

.field private static final greylist-max-o PROPERTY_DURATION_MASK:I = 0x20

.field private static final greylist-max-o PROPERTY_FILL_AFTER_MASK:I = 0x1

.field private static final greylist-max-o PROPERTY_FILL_BEFORE_MASK:I = 0x2

.field private static final greylist-max-o PROPERTY_MORPH_MATRIX_MASK:I = 0x40

.field private static final greylist-max-o PROPERTY_REPEAT_MODE_MASK:I = 0x4

.field private static final greylist-max-o PROPERTY_SHARE_INTERPOLATOR_MASK:I = 0x10

.field private static final greylist-max-o PROPERTY_START_OFFSET_MASK:I = 0x8


# instance fields
.field private greylist-max-o mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDirty:Z

.field private greylist-max-o mFlags:I

.field private greylist-max-o mHasAlpha:Z

.field private greylist-max-o mLastEnd:J

.field private greylist-max-o mStoredOffsets:[J

.field private greylist-max-o mTempTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 69
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 84
    sget-object v1, Lcom/android/internal/R$styleable;->AnimationSet:[I

    .line 85
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 87
    .local v1, "a":Landroid/content/res/TypedArray;
    nop

    .line 88
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 87
    const/16 v4, 0x10

    invoke-direct {p0, v4, v3}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    .line 89
    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_6f

    .line 93
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 94
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 96
    :cond_3e
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 97
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, v3

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 99
    :cond_4a
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 100
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 102
    :cond_56
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_63

    .line 103
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 105
    :cond_63
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 106
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 110
    :cond_6f
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .registers 3
    .param p1, "shareInterpolator"    # Z

    .line 121
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 122
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    .line 123
    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    .line 124
    return-void
.end method

.method private greylist-max-o init()V
    .registers 3

    .line 151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartTime:J

    .line 152
    return-void
.end method

.method private greylist-max-o setFlag(IZ)V
    .registers 5
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 143
    if-eqz p2, :cond_8

    .line 144
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    goto :goto_e

    .line 146
    :cond_8
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 148
    :goto_e
    return-void
.end method


# virtual methods
.method public whitelist addAnimation(Landroid/view/animation/Animation;)V
    .registers 11
    .param p1, "a"    # Landroid/view/animation/Animation;

    .line 220
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    .line 223
    .local v0, "noMatrix":Z
    :goto_10
    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 224
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 227
    :cond_1e
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_25

    move v1, v2

    .line 230
    .local v1, "changeBounds":Z
    :cond_25
    if-eqz v1, :cond_33

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 231
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 234
    :cond_33
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_42

    .line 235
    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    goto :goto_78

    .line 237
    :cond_42
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_5d

    .line 238
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    .line 239
    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    goto :goto_78

    .line 241
    :cond_5d
    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    .line 242
    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    .line 246
    :goto_78
    iput-boolean v2, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    .line 247
    return-void
.end method

.method protected bridge synthetic whitelist clone()Landroid/view/animation/Animation;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist clone()Landroid/view/animation/AnimationSet;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 128
    invoke-super {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 129
    .local v0, "animation":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 132
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 133
    .local v1, "count":I
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 135
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v1, :cond_31

    .line 136
    iget-object v4, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 139
    .end local v3    # "i":I
    :cond_31
    return-object v0
.end method

.method protected bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist computeDurationHint()J
    .registers 9

    .line 325
    const-wide/16 v0, 0x0

    .line 326
    .local v0, "duration":J
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 327
    .local v2, "count":I
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 328
    .local v3, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_c
    if-ltz v4, :cond_20

    .line 329
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v5

    .line 330
    .local v5, "d":J
    cmp-long v7, v5, v0

    if-lez v7, :cond_1d

    move-wide v0, v5

    .line 328
    .end local v5    # "d":J
    :cond_1d
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    .line 332
    .end local v4    # "i":I
    :cond_20
    return-wide v0
.end method

.method public whitelist getAnimations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getDuration()J
    .registers 9

    .line 302
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 303
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 304
    .local v1, "count":I
    const-wide/16 v2, 0x0

    .line 306
    .local v2, "duration":J
    iget v4, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_11

    const/4 v4, 0x1

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    .line 307
    .local v4, "durationSet":Z
    :goto_12
    if-eqz v4, :cond_17

    .line 308
    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    goto :goto_2b

    .line 310
    :cond_17
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v1, :cond_2b

    .line 311
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 310
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 315
    .end local v5    # "i":I
    :cond_2b
    :goto_2b
    return-wide v2
.end method

.method public blacklist getExtensionEdges()I
    .registers 5

    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "edge":I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    .line 548
    .local v2, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getExtensionEdges()I

    move-result v3

    or-int/2addr v0, v3

    .line 549
    .end local v2    # "animation":Landroid/view/animation/Animation;
    goto :goto_7

    .line 550
    :cond_19
    return v0
.end method

.method public whitelist getStartTime()J
    .registers 9

    .line 269
    const-wide v0, 0x7fffffffffffffffL

    .line 271
    .local v0, "startTime":J
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 272
    .local v2, "count":I
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 274
    .local v3, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v2, :cond_21

    .line 275
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    .line 276
    .local v5, "a":Landroid/view/animation/Animation;
    invoke-virtual {v5}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 274
    .end local v5    # "a":Landroid/view/animation/Animation;
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 279
    .end local v4    # "i":I
    :cond_21
    return-wide v0
.end method

.method public whitelist getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 15
    .param p1, "currentTime"    # J
    .param p3, "t"    # Landroid/view/animation/Transformation;

    .line 391
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 392
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 393
    .local v1, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 395
    .local v2, "temp":Landroid/view/animation/Transformation;
    const/4 v3, 0x0

    .line 396
    .local v3, "more":Z
    const/4 v4, 0x0

    .line 397
    .local v4, "started":Z
    const/4 v5, 0x1

    .line 399
    .local v5, "ended":Z
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->clear()V

    .line 401
    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_12
    const/4 v7, 0x1

    if-ltz v6, :cond_4e

    .line 402
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/animation/Animation;

    .line 404
    .local v8, "a":Landroid/view/animation/Animation;
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 405
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getScaleFactor()F

    move-result v9

    invoke-virtual {v8, p1, p2, v2, v9}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_2e

    if-eqz v3, :cond_2c

    goto :goto_2e

    :cond_2c
    move v9, v10

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v9, v7

    :goto_2f
    move v3, v9

    .line 406
    invoke-virtual {p3, v2}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 408
    if-nez v4, :cond_3e

    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v9

    if-eqz v9, :cond_3c

    goto :goto_3e

    :cond_3c
    move v9, v10

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v9, v7

    :goto_3f
    move v4, v9

    .line 409
    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v9

    if-eqz v9, :cond_49

    if-eqz v5, :cond_49

    goto :goto_4a

    :cond_49
    move v7, v10

    :goto_4a
    move v5, v7

    .line 401
    .end local v8    # "a":Landroid/view/animation/Animation;
    add-int/lit8 v6, v6, -0x1

    goto :goto_12

    .line 412
    .end local v6    # "i":I
    :cond_4e
    if-eqz v4, :cond_59

    iget-boolean v6, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    if-nez v6, :cond_59

    .line 413
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->dispatchAnimationStart()V

    .line 414
    iput-boolean v7, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    .line 417
    :cond_59
    iget-boolean v6, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    if-eq v5, v6, :cond_62

    .line 418
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->dispatchAnimationEnd()V

    .line 419
    iput-boolean v5, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    .line 422
    :cond_62
    return v3
.end method

.method public blacklist getTransformationAt(FLandroid/view/animation/Transformation;)V
    .registers 6
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 372
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 374
    .local v0, "temp":Landroid/view/animation/Transformation;
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_20

    .line 375
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    .line 377
    .local v2, "a":Landroid/view/animation/Animation;
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 378
    invoke-virtual {v2, p1, v0}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 379
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 374
    .end local v2    # "a":Landroid/view/animation/Animation;
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 381
    .end local v1    # "i":I
    :cond_20
    return-void
.end method

.method public greylist-max-o hasAlpha()Z
    .registers 5

    .line 183
    iget-boolean v0, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    if-eqz v0, :cond_27

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    .line 186
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 187
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 189
    .local v1, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_27

    .line 190
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 191
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    .line 192
    goto :goto_27

    .line 189
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 197
    .end local v0    # "count":I
    .end local v1    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .end local v2    # "i":I
    :cond_27
    :goto_27
    iget-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    return v0
.end method

.method public whitelist initialize(IIII)V
    .registers 28
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .line 442
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 444
    iget v1, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_10

    move v1, v4

    goto :goto_11

    :cond_10
    move v1, v3

    .line 445
    .local v1, "durationSet":Z
    :goto_11
    iget v2, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_18

    move v2, v4

    goto :goto_19

    :cond_18
    move v2, v3

    .line 446
    .local v2, "fillAfterSet":Z
    :goto_19
    iget v5, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_21

    move v5, v4

    goto :goto_22

    :cond_21
    move v5, v3

    .line 447
    .local v5, "fillBeforeSet":Z
    :goto_22
    iget v6, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/4 v7, 0x4

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_2a

    move v6, v4

    goto :goto_2b

    :cond_2a
    move v6, v3

    .line 448
    .local v6, "repeatModeSet":Z
    :goto_2b
    iget v7, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v8, 0x10

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_34

    move v7, v4

    goto :goto_35

    :cond_34
    move v7, v3

    .line 450
    .local v7, "shareInterpolator":Z
    :goto_35
    iget v8, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v9, 0x8

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_3d

    move v3, v4

    .line 453
    .local v3, "startOffsetSet":Z
    :cond_3d
    if-eqz v7, :cond_42

    .line 454
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->ensureInterpolator()V

    .line 457
    :cond_42
    iget-object v4, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 458
    .local v4, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 460
    .local v8, "count":I
    iget-wide v9, v0, Landroid/view/animation/AnimationSet;->mDuration:J

    .line 461
    .local v9, "duration":J
    iget-boolean v11, v0, Landroid/view/animation/AnimationSet;->mFillAfter:Z

    .line 462
    .local v11, "fillAfter":Z
    iget-boolean v12, v0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    .line 463
    .local v12, "fillBefore":Z
    iget v13, v0, Landroid/view/animation/AnimationSet;->mRepeatMode:I

    .line 464
    .local v13, "repeatMode":I
    iget-object v14, v0, Landroid/view/animation/AnimationSet;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 465
    .local v14, "interpolator":Landroid/view/animation/Interpolator;
    move v15, v1

    move/from16 v16, v2

    .end local v1    # "durationSet":Z
    .end local v2    # "fillAfterSet":Z
    .local v15, "durationSet":Z
    .local v16, "fillAfterSet":Z
    iget-wide v1, v0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    .line 468
    .local v1, "startOffset":J
    move-wide/from16 v17, v1

    .end local v1    # "startOffset":J
    .local v17, "startOffset":J
    iget-object v1, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    .line 469
    .local v1, "storedOffsets":[J
    if-eqz v3, :cond_68

    .line 470
    if-eqz v1, :cond_62

    array-length v2, v1

    if-eq v2, v8, :cond_6e

    .line 471
    :cond_62
    new-array v2, v8, [J

    iput-object v2, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    move-object v1, v2

    goto :goto_6e

    .line 473
    :cond_68
    if-eqz v1, :cond_6e

    .line 474
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    move-object v1, v2

    .line 477
    :cond_6e
    :goto_6e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6f
    if-ge v2, v8, :cond_c3

    .line 478
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Landroid/view/animation/Animation;

    .line 479
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz v15, :cond_7e

    .line 480
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 482
    :cond_7e
    if-eqz v16, :cond_83

    .line 483
    invoke-virtual {v0, v11}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 485
    :cond_83
    if-eqz v5, :cond_88

    .line 486
    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 488
    :cond_88
    if-eqz v6, :cond_8d

    .line 489
    invoke-virtual {v0, v13}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 491
    :cond_8d
    if-eqz v7, :cond_92

    .line 492
    invoke-virtual {v0, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 494
    :cond_92
    if-eqz v3, :cond_a4

    .line 495
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v19

    .line 496
    .local v19, "offset":J
    move-object/from16 v21, v1

    move/from16 v22, v2

    .end local v1    # "storedOffsets":[J
    .end local v2    # "i":I
    .local v21, "storedOffsets":[J
    .local v22, "i":I
    add-long v1, v19, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 497
    aput-wide v19, v21, v22

    goto :goto_a8

    .line 494
    .end local v19    # "offset":J
    .end local v21    # "storedOffsets":[J
    .end local v22    # "i":I
    .restart local v1    # "storedOffsets":[J
    .restart local v2    # "i":I
    :cond_a4
    move-object/from16 v21, v1

    move/from16 v22, v2

    .line 499
    .end local v1    # "storedOffsets":[J
    .end local v2    # "i":I
    .restart local v21    # "storedOffsets":[J
    .restart local v22    # "i":I
    :goto_a8
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v3, p3

    move/from16 v4, p4

    .end local v3    # "startOffsetSet":Z
    .end local v4    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .local v19, "startOffsetSet":Z
    .local v20, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 477
    .end local v0    # "a":Landroid/view/animation/Animation;
    add-int/lit8 v0, v22, 0x1

    move v2, v0

    move/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v1, v21

    move-object/from16 v0, p0

    .end local v22    # "i":I
    .local v0, "i":I
    goto :goto_6f

    .line 501
    .end local v0    # "i":I
    .end local v19    # "startOffsetSet":Z
    .end local v20    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .end local v21    # "storedOffsets":[J
    .restart local v1    # "storedOffsets":[J
    .restart local v3    # "startOffsetSet":Z
    .restart local v4    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    :cond_c3
    return-void
.end method

.method public greylist-max-o initializeInvalidateRegion(IIII)V
    .registers 16
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 339
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mPreviousRegion:Landroid/graphics/RectF;

    .line 340
    .local v0, "region":Landroid/graphics/RectF;
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 341
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 343
    iget-boolean v1, p0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    if-eqz v1, :cond_55

    .line 344
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 345
    .local v1, "count":I
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 346
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 348
    .local v3, "temp":Landroid/view/animation/Transformation;
    iget-object v4, p0, Landroid/view/animation/AnimationSet;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 350
    .local v4, "previousTransformation":Landroid/view/animation/Transformation;
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_20
    if-ltz v5, :cond_55

    .line 351
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/animation/Animation;

    .line 352
    .local v6, "a":Landroid/view/animation/Animation;
    invoke-virtual {v6}, Landroid/view/animation/Animation;->isFillEnabled()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getFillBefore()Z

    move-result v7

    if-nez v7, :cond_3e

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_52

    .line 353
    :cond_3e
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 354
    iget-object v7, v6, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 355
    .local v7, "interpolator":Landroid/view/animation/Interpolator;
    const/4 v8, 0x0

    if-eqz v7, :cond_4b

    invoke-interface {v7, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    goto :goto_4c

    .line 356
    :cond_4b
    nop

    .line 355
    :goto_4c
    invoke-virtual {v6, v8, v3}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 357
    invoke-virtual {v4, v3}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 350
    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v7    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_52
    add-int/lit8 v5, v5, -0x1

    goto :goto_20

    .line 361
    .end local v1    # "count":I
    .end local v2    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .end local v3    # "temp":Landroid/view/animation/Transformation;
    .end local v4    # "previousTransformation":Landroid/view/animation/Transformation;
    .end local v5    # "i":I
    :cond_55
    return-void
.end method

.method public whitelist reset()V
    .registers 1

    .line 505
    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    .line 506
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->restoreChildrenStartOffset()V

    .line 507
    return-void
.end method

.method greylist-max-o restoreChildrenStartOffset()V
    .registers 8

    .line 513
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    .line 514
    .local v0, "offsets":[J
    if-nez v0, :cond_5

    return-void

    .line 516
    :cond_5
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 517
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 519
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_1c

    .line 520
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    aget-wide v5, v0, v3

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 519
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 522
    .end local v3    # "i":I
    :cond_1c
    return-void
.end method

.method public whitelist restrictDuration(J)V
    .registers 7
    .param p1, "durationMillis"    # J

    .line 284
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 286
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 287
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 289
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_18

    .line 290
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 292
    .end local v2    # "i":I
    :cond_18
    return-void
.end method

.method public whitelist scaleCurrentDuration(F)V
    .registers 6
    .param p1, "scale"    # F

    .line 430
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 431
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 432
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_15

    .line 433
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, p1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 435
    .end local v2    # "i":I
    :cond_15
    return-void
.end method

.method public whitelist setDuration(J)V
    .registers 7
    .param p1, "durationMillis"    # J

    .line 208
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 209
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 210
    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    .line 211
    return-void
.end method

.method public whitelist setFillAfter(Z)V
    .registers 3
    .param p1, "fillAfter"    # Z

    .line 156
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 157
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 158
    return-void
.end method

.method public whitelist setFillBefore(Z)V
    .registers 3
    .param p1, "fillBefore"    # Z

    .line 162
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 163
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 164
    return-void
.end method

.method public whitelist setRepeatMode(I)V
    .registers 3
    .param p1, "repeatMode"    # I

    .line 168
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 169
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 170
    return-void
.end method

.method public whitelist setStartOffset(J)V
    .registers 4
    .param p1, "startOffset"    # J

    .line 174
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 175
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 176
    return-void
.end method

.method public whitelist setStartTime(J)V
    .registers 7
    .param p1, "startTimeMillis"    # J

    .line 256
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 258
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 259
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 261
    .local v1, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_1a

    .line 262
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    .line 263
    .local v3, "a":Landroid/view/animation/Animation;
    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 261
    .end local v3    # "a":Landroid/view/animation/Animation;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 265
    .end local v2    # "i":I
    :cond_1a
    return-void
.end method

.method public whitelist willChangeBounds()Z
    .registers 3

    .line 539
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist willChangeTransformationMatrix()Z
    .registers 3

    .line 534
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
