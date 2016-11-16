.class public Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VectorDrawableAnimatorRT"
.end annotation


# static fields
.field private static final END_ANIMATION:I = 0x4

.field private static final MAX_SAMPLE_POINTS:I = 0x12c

.field private static final RESET_ANIMATION:I = 0x3

.field private static final REVERSE_ANIMATION:I = 0x2

.field private static final START_ANIMATION:I = 0x1


# instance fields
.field private mContainsSequentialAnimators:Z

.field private final mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mInitialized:Z

.field private mIsInfinite:Z

.field private mIsReversible:Z

.field private mLastListenerId:I

.field private mLastSeenTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/RenderNode;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private final mPendingAnimationActions:Landroid/util/IntArray;

.field private mSetPtr:J

.field private final mSetRefBasePtr:Lcom/android/internal/util/VirtualRefBasePtr;

.field private final mStartDelays:Landroid/util/LongArray;

.field private mStarted:Z

.field private mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/util/IntArray;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V
    .locals 0
    .param p1, "animatorSet"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->transferPendingActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1155
    iput-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@7
    .line 1156
    new-instance v0, Landroid/util/LongArray;

    #@9
    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    #@c
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    #@e
    .line 1158
    new-instance v0, Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@10
    invoke-direct {v0}, Landroid/animation/PropertyValuesHolder$PropertyValues;-><init>()V

    #@13
    .line 1157
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@15
    .line 1159
    const-wide/16 v0, 0x0

    #@17
    iput-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@19
    .line 1160
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    #@1b
    .line 1161
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    #@1d
    .line 1162
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@1f
    .line 1163
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    #@21
    .line 1164
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    #@23
    .line 1167
    iput-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    #@25
    .line 1168
    iput v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    #@27
    .line 1169
    new-instance v0, Landroid/util/IntArray;

    #@29
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    #@2c
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@2e
    .line 1173
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@30
    .line 1174
    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap1()J

    #@33
    move-result-wide v0

    #@34
    iput-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@36
    .line 1177
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    #@38
    iget-wide v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@3a
    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    #@3d
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetRefBasePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@3f
    .line 1172
    return-void
.end method

.method private addPendingAction(I)V
    .locals 1
    .param p1, "pendingAnimationAction"    # I

    #@0
    .prologue
    .line 1519
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    #@3
    .line 1520
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    #@8
    .line 1518
    return-void
.end method

.method private static callOnFinished(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .locals 0
    .param p0, "set"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p1, "id"    # I

    #@0
    .prologue
    .line 1698
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->onAnimationEnd(I)V

    #@3
    .line 1697
    return-void
.end method

.method private static createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F
    .locals 7
    .param p0, "dataSource"    # Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 1422
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->getFrameCount(J)I

    #@3
    move-result v3

    #@4
    .line 1423
    .local v3, "numAnimFrames":I
    new-array v4, v3, [F

    #@6
    .line 1424
    .local v4, "values":[F
    add-int/lit8 v5, v3, -0x1

    #@8
    int-to-float v2, v5

    #@9
    .line 1425
    .local v2, "lastFrame":F
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@c
    .line 1426
    int-to-float v5, v1

    #@d
    div-float v0, v5, v2

    #@f
    .line 1427
    .local v0, "fraction":F
    invoke-interface {p0, v0}, Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;->getValueAtFraction(F)Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Ljava/lang/Float;

    #@15
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    #@18
    move-result v5

    #@19
    aput v5, v4, v1

    #@1b
    .line 1425
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1429
    .end local v0    # "fraction":F
    :cond_0
    return-object v4
.end method

.method private static createIntDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[I
    .locals 7
    .param p0, "dataSource"    # Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 1434
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->getFrameCount(J)I

    #@3
    move-result v3

    #@4
    .line 1435
    .local v3, "numAnimFrames":I
    new-array v4, v3, [I

    #@6
    .line 1436
    .local v4, "values":[I
    add-int/lit8 v5, v3, -0x1

    #@8
    int-to-float v2, v5

    #@9
    .line 1437
    .local v2, "lastFrame":F
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@c
    .line 1438
    int-to-float v5, v1

    #@d
    div-float v0, v5, v2

    #@f
    .line 1439
    .local v0, "fraction":F
    invoke-interface {p0, v0}, Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;->getValueAtFraction(F)Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Ljava/lang/Integer;

    #@15
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@18
    move-result v5

    #@19
    aput v5, v4, v1

    #@1b
    .line 1437
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1441
    .end local v0    # "fraction":F
    :cond_0
    return-object v4
.end method

.method private createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V
    .locals 13
    .param p1, "propertyPtr"    # J
    .param p3, "extraDelay"    # J
    .param p5, "animator"    # Landroid/animation/ObjectAnimator;

    #@0
    .prologue
    .line 1446
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getDuration()J

    #@3
    move-result-wide v8

    #@4
    .line 1447
    .local v8, "duration":J
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getRepeatCount()I

    #@7
    move-result v10

    #@8
    .line 1448
    .local v10, "repeatCount":I
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getStartDelay()J

    #@b
    move-result-wide v0

    #@c
    add-long v6, p3, v0

    #@e
    .line 1449
    .local v6, "startDelay":J
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@11
    move-result-object v12

    #@12
    .line 1451
    .local v12, "interpolator":Landroid/animation/TimeInterpolator;
    invoke-static {v12, v8, v9}, Landroid/view/RenderNodeAnimatorSetHelper;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    #@15
    move-result-wide v4

    #@16
    .line 1453
    .local v4, "nativeInterpolator":J
    long-to-float v0, v6

    #@17
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    #@1a
    move-result v1

    #@1b
    mul-float/2addr v0, v1

    #@1c
    float-to-long v6, v0

    #@1d
    .line 1454
    long-to-float v0, v8

    #@1e
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    #@21
    move-result v1

    #@22
    mul-float/2addr v0, v1

    #@23
    float-to-long v8, v0

    #@24
    .line 1456
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    #@26
    invoke-virtual {v0, v6, v7}, Landroid/util/LongArray;->add(J)V

    #@29
    .line 1457
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@2b
    .line 1458
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getRepeatMode()I

    #@2e
    move-result v11

    #@2f
    move-wide v2, p1

    #@30
    .line 1457
    invoke-static/range {v0 .. v11}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap7(JJJJJII)V

    #@33
    .line 1445
    return-void
.end method

.method private createRTAnimator(Landroid/animation/ObjectAnimator;J)V
    .locals 8
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "startTime"    # J

    #@0
    .prologue
    .line 1235
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    #@3
    move-result-object v1

    #@4
    .line 1236
    .local v1, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    #@7
    move-result-object v7

    #@8
    .line 1237
    .local v7, "target":Ljava/lang/Object;
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@a
    if-eqz v0, :cond_1

    #@c
    move-object v3, v7

    #@d
    .line 1238
    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@f
    move-object v0, p0

    #@10
    move-object v2, p1

    #@11
    move-wide v4, p2

    #@12
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VGroup;J)V

    #@15
    .line 1234
    :cond_0
    :goto_0
    return-void

    #@16
    .line 1240
    :cond_1
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VPath;

    #@18
    if-eqz v0, :cond_5

    #@1a
    .line 1241
    const/4 v6, 0x0

    #@1b
    .local v6, "i":I
    :goto_1
    array-length v0, v1

    #@1c
    if-ge v6, v0, :cond_0

    #@1e
    .line 1242
    aget-object v0, v1, v6

    #@20
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@22
    invoke-virtual {v0, v2}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    #@25
    .line 1243
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@27
    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    #@29
    instance-of v0, v0, Landroid/util/PathParser$PathData;

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 1244
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@2f
    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    #@31
    const-string/jumbo v2, "pathData"

    #@34
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    .line 1243
    if-eqz v0, :cond_3

    #@3a
    move-object v0, v7

    #@3b
    .line 1245
    check-cast v0, Landroid/graphics/drawable/VectorDrawable$VPath;

    #@3d
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VPath;J)V

    #@40
    .line 1241
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@42
    goto :goto_1

    #@43
    .line 1247
    :cond_3
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@45
    if-eqz v0, :cond_4

    #@47
    move-object v0, v7

    #@48
    .line 1248
    check-cast v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@4a
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForFullPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VFullPath;J)V

    #@4d
    goto :goto_2

    #@4e
    .line 1250
    :cond_4
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@50
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@53
    move-result-object v0

    #@54
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    #@57
    move-result v0

    #@58
    if-nez v0, :cond_2

    #@5a
    .line 1251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5c
    const-string/jumbo v2, "ClipPath only supports PathData property"

    #@5f
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v0

    #@63
    .line 1256
    .end local v6    # "i":I
    :cond_5
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@65
    if-eqz v0, :cond_6

    #@67
    move-object v3, v7

    #@68
    .line 1258
    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@6a
    move-object v0, p0

    #@6b
    move-object v2, p1

    #@6c
    move-wide v4, p2

    #@6d
    .line 1257
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForRootGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;J)V

    #@70
    goto :goto_0

    #@71
    .line 1259
    :cond_6
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@73
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@76
    move-result-object v0

    #@77
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    #@7a
    move-result v0

    #@7b
    if-nez v0, :cond_0

    #@7d
    .line 1261
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@7f
    new-instance v0, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v3, "Target should be either VGroup, VPath, or ConstantState, "

    #@87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v0

    #@93
    if-nez v0, :cond_7

    #@95
    .line 1262
    const-string/jumbo v0, "Null target"

    #@98
    .line 1261
    :goto_3
    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v2

    #@9c
    .line 1262
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a4
    move-result-object v3

    #@a5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v0

    #@a9
    .line 1263
    const-string/jumbo v3, " is not supported"

    #@ac
    .line 1262
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v0

    #@b4
    goto :goto_3
.end method

.method private createRTAnimatorForFullPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VFullPath;J)V
    .locals 11
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "target"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;
    .param p3, "startTime"    # J

    #@0
    .prologue
    .line 1317
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@2
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    #@4
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPropertyIndex(Ljava/lang/String;)I

    #@7
    move-result v10

    #@8
    .line 1319
    .local v10, "propertyId":I
    invoke-virtual {p2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getNativePtr()J

    #@b
    move-result-wide v8

    #@c
    .line 1320
    .local v8, "nativePtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@e
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    #@10
    const-class v4, Ljava/lang/Float;

    #@12
    if-eq v1, v4, :cond_0

    #@14
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@16
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    #@18
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@1a
    if-ne v1, v4, :cond_4

    #@1c
    .line 1321
    :cond_0
    if-gez v10, :cond_2

    #@1e
    .line 1322
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@20
    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@23
    move-result-object v1

    #@24
    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 1323
    return-void

    #@2b
    .line 1325
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2d
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v5, "Property: "

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@3b
    iget-object v5, v5, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    .line 1326
    const-string/jumbo v5, " is not supported for FullPath"

    #@44
    .line 1325
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1

    #@50
    .line 1330
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@52
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    #@54
    check-cast v1, Ljava/lang/Float;

    #@56
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@59
    move-result v4

    #@5a
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@5c
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    #@5e
    check-cast v1, Ljava/lang/Float;

    #@60
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@63
    move-result v1

    #@64
    .line 1329
    invoke-static {v8, v9, v10, v4, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap5(JIFF)J

    #@67
    move-result-wide v2

    #@68
    .line 1331
    .local v2, "propertyPtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@6a
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    #@6c
    if-eqz v1, :cond_3

    #@6e
    .line 1333
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@70
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    #@72
    .line 1334
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getDuration()J

    #@75
    move-result-wide v4

    #@76
    .line 1333
    invoke-static {v1, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    #@79
    move-result-object v0

    #@7a
    .line 1335
    .local v0, "dataPoints":[F
    array-length v1, v0

    #@7b
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap11(J[FI)V

    #@7e
    .end local v0    # "dataPoints":[F
    :cond_3
    :goto_0
    move-object v1, p0

    #@7f
    move-wide v4, p3

    #@80
    move-object v6, p1

    #@81
    .line 1356
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    #@84
    .line 1315
    return-void

    #@85
    .line 1338
    .end local v2    # "propertyPtr":J
    :cond_4
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@87
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    #@89
    const-class v4, Ljava/lang/Integer;

    #@8b
    if-eq v1, v4, :cond_5

    #@8d
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@8f
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    #@91
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@93
    if-ne v1, v4, :cond_6

    #@95
    .line 1340
    :cond_5
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@97
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    #@99
    check-cast v1, Ljava/lang/Integer;

    #@9b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@9e
    move-result v4

    #@9f
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@a1
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    #@a3
    check-cast v1, Ljava/lang/Integer;

    #@a5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@a8
    move-result v1

    #@a9
    .line 1339
    invoke-static {v8, v9, v10, v4, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap3(JIII)J

    #@ac
    move-result-wide v2

    #@ad
    .line 1341
    .restart local v2    # "propertyPtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@af
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    #@b1
    if-eqz v1, :cond_3

    #@b3
    .line 1343
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@b5
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    #@b7
    .line 1344
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getDuration()J

    #@ba
    move-result-wide v4

    #@bb
    .line 1343
    invoke-static {v1, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createIntDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[I

    #@be
    move-result-object v7

    #@bf
    .line 1345
    .local v7, "dataPoints":[I
    array-length v1, v7

    #@c0
    invoke-static {v2, v3, v7, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap12(J[II)V

    #@c3
    goto :goto_0

    #@c4
    .line 1348
    .end local v2    # "propertyPtr":J
    .end local v7    # "dataPoints":[I
    :cond_6
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@c6
    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@c9
    move-result-object v1

    #@ca
    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    #@cd
    move-result v1

    #@ce
    if-eqz v1, :cond_7

    #@d0
    .line 1349
    return-void

    #@d1
    .line 1351
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@d3
    new-instance v4, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v5, "Unsupported type: "

    #@db
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v4

    #@df
    .line 1352
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@e1
    iget-object v5, v5, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    #@e3
    .line 1351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v4

    #@e7
    .line 1352
    const-string/jumbo v5, ". Only float, int or PathData value is "

    #@ea
    .line 1351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v4

    #@ee
    .line 1353
    const-string/jumbo v5, "supported for Paths."

    #@f1
    .line 1351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v4

    #@f5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v4

    #@f9
    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@fc
    throw v1
.end method

.method private createRTAnimatorForGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VGroup;J)V
    .locals 12
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;
    .param p2, "animator"    # Landroid/animation/ObjectAnimator;
    .param p3, "target"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p4, "startTime"    # J

    #@0
    .prologue
    .line 1271
    invoke-virtual {p3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativePtr()J

    #@3
    move-result-wide v8

    #@4
    .line 1273
    .local v8, "nativePtr":J
    const/4 v7, 0x0

    #@5
    .local v7, "i":I
    :goto_0
    array-length v1, p1

    #@6
    if-ge v7, v1, :cond_3

    #@8
    .line 1275
    aget-object v1, p1, v7

    #@a
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@c
    invoke-virtual {v1, v4}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    #@f
    .line 1276
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@11
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    #@13
    invoke-static {v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getPropertyIndex(Ljava/lang/String;)I

    #@16
    move-result v10

    #@17
    .line 1277
    .local v10, "propertyId":I
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@19
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    #@1b
    const-class v4, Ljava/lang/Float;

    #@1d
    if-eq v1, v4, :cond_1

    #@1f
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@21
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    #@23
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@25
    if-eq v1, v4, :cond_1

    #@27
    .line 1273
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1284
    :cond_1
    if-ltz v10, :cond_0

    #@2c
    .line 1292
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@2e
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    #@30
    check-cast v1, Ljava/lang/Float;

    #@32
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@35
    move-result v4

    #@36
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@38
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    #@3a
    check-cast v1, Ljava/lang/Float;

    #@3c
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@3f
    move-result v1

    #@40
    .line 1291
    invoke-static {v8, v9, v10, v4, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap2(JIFF)J

    #@43
    move-result-wide v2

    #@44
    .line 1293
    .local v2, "propertyPtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@46
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    #@48
    if-eqz v1, :cond_2

    #@4a
    .line 1294
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@4c
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    #@4e
    .line 1295
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->getDuration()J

    #@51
    move-result-wide v4

    #@52
    .line 1294
    invoke-static {v1, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    #@55
    move-result-object v0

    #@56
    .line 1296
    .local v0, "dataPoints":[F
    array-length v1, v0

    #@57
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap11(J[FI)V

    #@5a
    .end local v0    # "dataPoints":[F
    :cond_2
    move-object v1, p0

    #@5b
    move-wide/from16 v4, p4

    #@5d
    move-object v6, p2

    #@5e
    .line 1298
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    #@61
    goto :goto_1

    #@62
    .line 1269
    .end local v2    # "propertyPtr":J
    .end local v10    # "propertyId":I
    :cond_3
    return-void
.end method

.method private createRTAnimatorForPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VPath;J)V
    .locals 13
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "target"    # Landroid/graphics/drawable/VectorDrawable$VPath;
    .param p3, "startTime"    # J

    #@0
    .prologue
    .line 1304
    invoke-virtual {p2}, Landroid/graphics/drawable/VectorDrawable$VPath;->getNativePtr()J

    #@3
    move-result-wide v0

    #@4
    .line 1305
    .local v0, "nativePtr":J
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@6
    iget-object v6, v6, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    #@8
    check-cast v6, Landroid/util/PathParser$PathData;

    #@a
    invoke-virtual {v6}, Landroid/util/PathParser$PathData;->getNativePtr()J

    #@d
    move-result-wide v2

    #@e
    .line 1307
    .local v2, "startPathDataPtr":J
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@10
    iget-object v6, v6, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    #@12
    check-cast v6, Landroid/util/PathParser$PathData;

    #@14
    invoke-virtual {v6}, Landroid/util/PathParser$PathData;->getNativePtr()J

    #@17
    move-result-wide v4

    #@18
    .line 1309
    .local v4, "endPathDataPtr":J
    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap4(JJJ)J

    #@1b
    move-result-wide v8

    #@1c
    .local v8, "propertyPtr":J
    move-object v7, p0

    #@1d
    move-wide/from16 v10, p3

    #@1f
    move-object v12, p1

    #@20
    .line 1311
    invoke-direct/range {v7 .. v12}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    #@23
    .line 1302
    return-void
.end method

.method private createRTAnimatorForRootGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;J)V
    .locals 12
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;
    .param p2, "animator"    # Landroid/animation/ObjectAnimator;
    .param p3, "target"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p4, "startTime"    # J

    #@0
    .prologue
    .line 1362
    invoke-virtual {p3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    #@3
    move-result-wide v10

    #@4
    .line 1363
    .local v10, "nativePtr":J
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    const-string/jumbo v4, "alpha"

    #@b
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 1364
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@13
    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 1365
    return-void

    #@1e
    .line 1367
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@20
    const-string/jumbo v4, "Only alpha is supported for root group"

    #@23
    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 1371
    :cond_1
    const/4 v9, 0x0

    #@28
    .line 1372
    .local v9, "startValue":Ljava/lang/Float;
    const/4 v7, 0x0

    #@29
    .line 1373
    .local v7, "endValue":Ljava/lang/Float;
    const/4 v8, 0x0

    #@2a
    .local v8, "i":I
    :goto_0
    array-length v1, p1

    #@2b
    if-ge v8, v1, :cond_2

    #@2d
    .line 1374
    aget-object v1, p1, v8

    #@2f
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@31
    invoke-virtual {v1, v4}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    #@34
    .line 1375
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@36
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    #@38
    const-string/jumbo v4, "alpha"

    #@3b
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_3

    #@41
    .line 1376
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@43
    iget-object v9, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    #@45
    .end local v9    # "startValue":Ljava/lang/Float;
    check-cast v9, Ljava/lang/Float;

    #@47
    .line 1377
    .local v9, "startValue":Ljava/lang/Float;
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@49
    iget-object v7, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    #@4b
    .end local v7    # "endValue":Ljava/lang/Float;
    check-cast v7, Ljava/lang/Float;

    #@4d
    .line 1381
    .end local v9    # "startValue":Ljava/lang/Float;
    :cond_2
    if-nez v9, :cond_5

    #@4f
    if-nez v7, :cond_5

    #@51
    .line 1382
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@53
    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@56
    move-result-object v1

    #@57
    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_4

    #@5d
    .line 1383
    return-void

    #@5e
    .line 1373
    .restart local v7    # "endValue":Ljava/lang/Float;
    .local v9, "startValue":Ljava/lang/Float;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    #@60
    goto :goto_0

    #@61
    .line 1385
    .end local v7    # "endValue":Ljava/lang/Float;
    .end local v9    # "startValue":Ljava/lang/Float;
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@63
    const-string/jumbo v4, "No alpha values are specified"

    #@66
    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@69
    throw v1

    #@6a
    .line 1388
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    #@6d
    move-result v1

    #@6e
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    #@71
    move-result v4

    #@72
    invoke-static {v10, v11, v1, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap6(JFF)J

    #@75
    move-result-wide v2

    #@76
    .line 1389
    .local v2, "propertyPtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@78
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    #@7a
    if-eqz v1, :cond_6

    #@7c
    .line 1391
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@7e
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    #@80
    .line 1392
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->getDuration()J

    #@83
    move-result-wide v4

    #@84
    .line 1391
    invoke-static {v1, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    #@87
    move-result-object v0

    #@88
    .line 1393
    .local v0, "dataPoints":[F
    array-length v1, v0

    #@89
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap11(J[FI)V

    #@8c
    .end local v0    # "dataPoints":[F
    :cond_6
    move-object v1, p0

    #@8d
    move-wide/from16 v4, p4

    #@8f
    move-object v6, p2

    #@90
    .line 1395
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    #@93
    .line 1361
    return-void
.end method

.method private endAnimation()V
    .locals 2

    #@0
    .prologue
    .line 1606
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap8(J)V

    #@5
    .line 1607
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    #@8
    .line 1599
    return-void
.end method

.method private static getFrameCount(J)I
    .locals 8
    .param p0, "duration"    # J

    #@0
    .prologue
    .line 1402
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {v4}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    #@7
    move-result-wide v2

    #@8
    .line 1403
    .local v2, "frameIntervalNanos":J
    const-wide/32 v4, 0xf4240

    #@b
    div-long v4, v2, v4

    #@d
    long-to-int v0, v4

    #@e
    .line 1404
    .local v0, "animIntervalMs":I
    long-to-double v4, p0

    #@f
    int-to-double v6, v0

    #@10
    div-double/2addr v4, v6

    #@11
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@14
    move-result-wide v4

    #@15
    double-to-int v1, v4

    #@16
    .line 1406
    .local v1, "numAnimFrames":I
    const/4 v4, 0x2

    #@17
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    #@1a
    move-result v1

    #@1b
    .line 1407
    const/16 v4, 0x12c

    #@1d
    if-le v1, v4, :cond_0

    #@1f
    .line 1408
    const-string/jumbo v4, "AnimatedVectorDrawable"

    #@22
    new-instance v5, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v6, "Duration for the animation is too long :"

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    .line 1409
    const-string/jumbo v6, ", the animation will subsample the keyframe or path data."

    #@35
    .line 1408
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 1410
    const/16 v1, 0x12c

    #@42
    .line 1412
    :cond_0
    return v1
.end method

.method private handlePendingAction(I)V
    .locals 3
    .param p1, "pendingAnimationAction"    # I

    #@0
    .prologue
    .line 1484
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 1485
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->startAnimation()V

    #@6
    .line 1483
    :goto_0
    return-void

    #@7
    .line 1486
    :cond_0
    const/4 v0, 0x2

    #@8
    if-ne p1, v0, :cond_1

    #@a
    .line 1487
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->reverseAnimation()V

    #@d
    goto :goto_0

    #@e
    .line 1488
    :cond_1
    const/4 v0, 0x3

    #@f
    if-ne p1, v0, :cond_2

    #@11
    .line 1489
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->resetAnimation()V

    #@14
    goto :goto_0

    #@15
    .line 1490
    :cond_2
    const/4 v0, 0x4

    #@16
    if-ne p1, v0, :cond_3

    #@18
    .line 1491
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->endAnimation()V

    #@1b
    goto :goto_0

    #@1c
    .line 1493
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Animation action "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 1494
    const-string/jumbo v2, "is not supported"

    #@31
    .line 1493
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0
.end method

.method private invalidateOwningView()V
    .locals 1

    #@0
    .prologue
    .line 1515
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->invalidateSelf()V

    #@5
    .line 1514
    return-void
.end method

.method private onAnimationEnd(I)V
    .locals 2
    .param p1, "listenerId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1681
    iget v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 1682
    return-void

    #@6
    .line 1687
    :cond_0
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    #@9
    .line 1690
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    #@c
    .line 1691
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1692
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@12
    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    #@15
    .line 1680
    :cond_1
    return-void
.end method

.method private parseAnimatorSet(Landroid/animation/AnimatorSet;J)V
    .locals 6
    .param p1, "set"    # Landroid/animation/AnimatorSet;
    .param p2, "startTime"    # J

    #@0
    .prologue
    .line 1210
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    #@3
    move-result-object v1

    #@4
    .line 1212
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->shouldPlayTogether()Z

    #@7
    move-result v3

    #@8
    .line 1214
    .local v3, "playTogether":Z
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v4

    #@d
    if-ge v2, v4, :cond_3

    #@f
    .line 1215
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/animation/Animator;

    #@15
    .line 1217
    .local v0, "animator":Landroid/animation/Animator;
    instance-of v4, v0, Landroid/animation/AnimatorSet;

    #@17
    if-eqz v4, :cond_2

    #@19
    move-object v4, v0

    #@1a
    .line 1218
    check-cast v4, Landroid/animation/AnimatorSet;

    #@1c
    invoke-direct {p0, v4, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->parseAnimatorSet(Landroid/animation/AnimatorSet;J)V

    #@1f
    .line 1224
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    #@21
    .line 1226
    invoke-virtual {v0}, Landroid/animation/Animator;->getTotalDuration()J

    #@24
    move-result-wide v4

    #@25
    add-long/2addr p2, v4

    #@26
    .line 1227
    const/4 v4, 0x1

    #@27
    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    #@29
    .line 1214
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1219
    :cond_2
    instance-of v4, v0, Landroid/animation/ObjectAnimator;

    #@2e
    if-eqz v4, :cond_0

    #@30
    move-object v4, v0

    #@31
    .line 1220
    check-cast v4, Landroid/animation/ObjectAnimator;

    #@33
    invoke-direct {p0, v4, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimator(Landroid/animation/ObjectAnimator;J)V

    #@36
    goto :goto_1

    #@37
    .line 1209
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_3
    return-void
.end method

.method private resetAnimation()V
    .locals 2

    #@0
    .prologue
    .line 1612
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap9(J)V

    #@5
    .line 1613
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    #@8
    .line 1611
    return-void
.end method

.method private reverseAnimation()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1618
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    #@4
    .line 1619
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@6
    iget v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    #@8
    add-int/lit8 v2, v2, 0x1

    #@a
    iput v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    #@c
    invoke-static {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap10(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    #@f
    .line 1620
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    #@12
    .line 1621
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 1622
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@18
    invoke-interface {v0, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    #@1b
    .line 1617
    :cond_0
    return-void
.end method

.method private startAnimation()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1590
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    #@4
    .line 1591
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@6
    iget v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    #@8
    add-int/lit8 v2, v2, 0x1

    #@a
    iput v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    #@c
    invoke-static {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap14(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    #@f
    .line 1592
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    #@12
    .line 1593
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 1594
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@18
    invoke-interface {v0, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    #@1b
    .line 1583
    :cond_0
    return-void
.end method

.method private transferPendingActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V
    .locals 5
    .param p1, "animatorSet"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@0
    .prologue
    .line 1702
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@3
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_4

    #@9
    .line 1703
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    #@e
    move-result v1

    #@f
    .line 1704
    .local v1, "pendingAction":I
    const/4 v2, 0x1

    #@10
    if-ne v1, v2, :cond_0

    #@12
    .line 1705
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->start()V

    #@15
    .line 1702
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1706
    :cond_0
    const/4 v2, 0x4

    #@19
    if-ne v1, v2, :cond_1

    #@1b
    .line 1707
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->end()V

    #@1e
    goto :goto_1

    #@1f
    .line 1708
    :cond_1
    const/4 v2, 0x2

    #@20
    if-ne v1, v2, :cond_2

    #@22
    .line 1709
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reverse()V

    #@25
    goto :goto_1

    #@26
    .line 1710
    :cond_2
    const/4 v2, 0x3

    #@27
    if-ne v1, v2, :cond_3

    #@29
    .line 1711
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reset()V

    #@2c
    goto :goto_1

    #@2d
    .line 1713
    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@2f
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "Animation action "

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    .line 1714
    const-string/jumbo v4, "is not supported"

    #@42
    .line 1713
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v2

    #@4e
    .line 1717
    .end local v1    # "pendingAction":I
    :cond_4
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@50
    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    #@53
    .line 1701
    return-void
.end method

.method private useLastSeenTarget()Z
    .locals 2

    #@0
    .prologue
    .line 1499
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1500
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    #@6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/RenderNode;

    #@c
    .line 1501
    .local v0, "target":Landroid/view/RenderNode;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useTarget(Landroid/view/RenderNode;)Z

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 1503
    .end local v0    # "target":Landroid/view/RenderNode;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method private useTarget(Landroid/view/RenderNode;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/RenderNode;

    #@0
    .prologue
    .line 1507
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/view/RenderNode;->isAttached()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1508
    invoke-virtual {p1, p0}, Landroid/view/RenderNode;->registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V

    #@b
    .line 1509
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 1511
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    #@0
    .prologue
    .line 1632
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    #@2
    return v0
.end method

.method public end()V
    .locals 1

    #@0
    .prologue
    .line 1541
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1542
    return-void

    #@5
    .line 1545
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1546
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->endAnimation()V

    #@e
    .line 1540
    :goto_0
    return-void

    #@f
    .line 1548
    :cond_1
    const/4 v0, 0x4

    #@10
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    #@13
    goto :goto_0
.end method

.method public getAnimatorNativePtr()J
    .locals 2

    #@0
    .prologue
    .line 1627
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@2
    return-wide v0
.end method

.method public init(Landroid/animation/AnimatorSet;)V
    .locals 12
    .param p1, "set"    # Landroid/animation/AnimatorSet;

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 1182
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1184
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@a
    const-string/jumbo v4, "VectorDrawableAnimator cannot be re-initialized"

    #@d
    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 1187
    :cond_0
    invoke-direct {p0, p1, v10, v11}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->parseAnimatorSet(Landroid/animation/AnimatorSet;J)V

    #@14
    .line 1188
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@16
    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@19
    move-result-object v1

    #@1a
    iget-object v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@1c
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable;->getNativeTree()J

    #@1f
    move-result-wide v2

    #@20
    .line 1190
    .local v2, "vectorDrawableTreePtr":J
    iget-wide v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@22
    invoke-static {v6, v7, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap13(JJ)V

    #@25
    .line 1191
    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@27
    .line 1192
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    #@2a
    move-result-wide v6

    #@2b
    const-wide/16 v8, -0x1

    #@2d
    cmp-long v1, v6, v8

    #@2f
    if-nez v1, :cond_2

    #@31
    move v1, v4

    #@32
    :goto_0
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    #@34
    .line 1195
    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    #@36
    .line 1196
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 1197
    iput-boolean v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    #@3c
    .line 1181
    :cond_1
    return-void

    #@3d
    :cond_2
    move v1, v5

    #@3e
    .line 1192
    goto :goto_0

    #@3f
    .line 1200
    :cond_3
    const/4 v0, 0x0

    #@40
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    #@42
    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    #@45
    move-result v1

    #@46
    if-ge v0, v1, :cond_1

    #@48
    .line 1201
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    #@4a
    invoke-virtual {v1, v0}, Landroid/util/LongArray;->get(I)J

    #@4d
    move-result-wide v6

    #@4e
    cmp-long v1, v6, v10

    #@50
    if-lez v1, :cond_4

    #@52
    .line 1202
    iput-boolean v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    #@54
    .line 1203
    return-void

    #@55
    .line 1200
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_1
.end method

.method public isInfinite()Z
    .locals 1

    #@0
    .prologue
    .line 1667
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    #@2
    return v0
.end method

.method public isRunning()Z
    .locals 1

    #@0
    .prologue
    .line 1642
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1643
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 1645
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    #@8
    return v0
.end method

.method public isStarted()Z
    .locals 1

    #@0
    .prologue
    .line 1637
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    #@2
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1660
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1661
    check-cast p1, Landroid/view/DisplayListCanvas;

    #@8
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->recordLastSeenTarget(Landroid/view/DisplayListCanvas;)V

    #@b
    .line 1659
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    #@0
    .prologue
    .line 1671
    return-void
.end method

.method protected recordLastSeenTarget(Landroid/view/DisplayListCanvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    #@0
    .prologue
    .line 1467
    invoke-static {p1}, Landroid/view/RenderNodeAnimatorSetHelper;->getTarget(Landroid/view/DisplayListCanvas;)Landroid/view/RenderNode;

    #@3
    move-result-object v1

    #@4
    .line 1468
    .local v1, "node":Landroid/view/RenderNode;
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@6
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@9
    iput-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    #@b
    .line 1470
    iget-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@d
    if-nez v2, :cond_0

    #@f
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@11
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    #@14
    move-result v2

    #@15
    if-lez v2, :cond_2

    #@17
    .line 1471
    :cond_0
    invoke-direct {p0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useTarget(Landroid/view/RenderNode;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 1475
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@20
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    #@23
    move-result v2

    #@24
    if-ge v0, v2, :cond_1

    #@26
    .line 1476
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@28
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    #@2b
    move-result v2

    #@2c
    invoke-direct {p0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->handlePendingAction(I)V

    #@2f
    .line 1475
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1478
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@34
    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    #@37
    .line 1466
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    #@0
    .prologue
    .line 1655
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@3
    .line 1654
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 1554
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1555
    return-void

    #@5
    .line 1558
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1559
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->resetAnimation()V

    #@e
    .line 1553
    :goto_0
    return-void

    #@f
    .line 1561
    :cond_1
    const/4 v0, 0x3

    #@10
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    #@13
    goto :goto_0
.end method

.method public resume()V
    .locals 0

    #@0
    .prologue
    .line 1676
    return-void
.end method

.method public reverse()V
    .locals 1

    #@0
    .prologue
    .line 1569
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1572
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1576
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->reverseAnimation()V

    #@11
    .line 1568
    :goto_0
    return-void

    #@12
    .line 1570
    :cond_0
    return-void

    #@13
    .line 1578
    :cond_1
    const/4 v0, 0x2

    #@14
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    #@17
    goto :goto_0
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    #@0
    .prologue
    .line 1650
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@2
    .line 1649
    return-void
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 1525
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1526
    return-void

    #@5
    .line 1529
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1533
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->startAnimation()V

    #@e
    .line 1524
    :goto_0
    return-void

    #@f
    .line 1535
    :cond_1
    const/4 v0, 0x1

    #@10
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    #@13
    goto :goto_0
.end method
