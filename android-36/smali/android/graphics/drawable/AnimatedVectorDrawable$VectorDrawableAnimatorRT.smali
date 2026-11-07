.class public Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;
.implements Landroid/view/NativeVectorDrawableAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VectorDrawableAnimatorRT"
.end annotation


# static fields
.field private static final greylist-max-o END_ANIMATION:I = 0x4

.field private static final greylist-max-o MAX_SAMPLE_POINTS:I = 0x12c

.field private static final greylist-max-o RESET_ANIMATION:I = 0x3

.field private static final greylist-max-o REVERSE_ANIMATION:I = 0x2

.field private static final greylist-max-o START_ANIMATION:I = 0x1


# instance fields
.field private greylist-max-o mContainsSequentialAnimators:Z

.field private final greylist-max-o mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private blacklist mHandler:Landroid/os/Handler;

.field private greylist-max-o mInitialized:Z

.field private greylist-max-o mIsInfinite:Z

.field private greylist-max-o mIsReversible:Z

.field private greylist-max-o mLastListenerId:I

.field private greylist-max-o mLastSeenTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mListener:Landroid/animation/Animator$AnimatorListener;

.field private final greylist-max-o mPendingAnimationActions:Landroid/util/IntArray;

.field private greylist-max-o mSetPtr:J

.field private final greylist-max-o mSetRefBasePtr:Lcom/android/internal/util/VirtualRefBasePtr;

.field private final greylist-max-o mStartDelays:Landroid/util/LongArray;

.field private greylist-max-o mStarted:Z

.field private blacklist mThreadedRendererAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private greylist-max-o mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

.field private blacklist mTotalDuration:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/animation/Animator$AnimatorListener;
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingAnimationActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mtransferPendingActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->transferPendingActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 1271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1253
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 1254
    new-instance v1, Landroid/util/LongArray;

    invoke-direct {v1}, Landroid/util/LongArray;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    .line 1255
    new-instance v1, Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-direct {v1}, Landroid/animation/PropertyValuesHolder$PropertyValues;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    .line 1257
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    .line 1258
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    .line 1259
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1260
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    .line 1261
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1262
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    .line 1264
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    .line 1265
    iput v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    .line 1266
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    .line 1272
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 1273
    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnCreateAnimatorSet()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    .line 1276
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    iget-wide v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetRefBasePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1277
    return-void
.end method

.method private greylist-max-o addPendingAction(I)V
    .registers 3
    .param p1, "pendingAnimationAction"    # I

    .line 1613
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1614
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 1615
    return-void
.end method

.method private static greylist-max-r callOnFinished(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .registers 4
    .param p0, "set"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p1, "id"    # I

    .line 1811
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1812
    return-void
.end method

.method private static greylist-max-o createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F
    .registers 9
    .param p0, "dataSource"    # Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;
    .param p1, "duration"    # J

    .line 1516
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->getFrameCount(J)I

    move-result v0

    .line 1517
    .local v0, "numAnimFrames":I
    new-array v1, v0, [F

    .line 1518
    .local v1, "values":[F
    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    .line 1519
    .local v2, "lastFrame":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v0, :cond_1d

    .line 1520
    int-to-float v4, v3

    div-float/2addr v4, v2

    .line 1521
    .local v4, "fraction":F
    invoke-interface {p0, v4}, Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;->getValueAtFraction(F)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v1, v3

    .line 1519
    .end local v4    # "fraction":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1523
    .end local v3    # "i":I
    :cond_1d
    return-object v1
.end method

.method private static greylist-max-o createIntDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[I
    .registers 9
    .param p0, "dataSource"    # Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;
    .param p1, "duration"    # J

    .line 1528
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->getFrameCount(J)I

    move-result v0

    .line 1529
    .local v0, "numAnimFrames":I
    new-array v1, v0, [I

    .line 1530
    .local v1, "values":[I
    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    .line 1531
    .local v2, "lastFrame":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v0, :cond_1d

    .line 1532
    int-to-float v4, v3

    div-float/2addr v4, v2

    .line 1533
    .local v4, "fraction":F
    invoke-interface {p0, v4}, Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;->getValueAtFraction(F)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v3

    .line 1531
    .end local v4    # "fraction":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1535
    .end local v3    # "i":I
    :cond_1d
    return-object v1
.end method

.method private greylist-max-o createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V
    .registers 22
    .param p1, "propertyPtr"    # J
    .param p3, "extraDelay"    # J
    .param p5, "animator"    # Landroid/animation/ObjectAnimator;

    .line 1540
    move-object/from16 v0, p0

    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v1

    .line 1541
    .local v1, "duration":J
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getRepeatCount()I

    move-result v13

    .line 1542
    .local v13, "repeatCount":I
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getStartDelay()J

    move-result-wide v3

    add-long v3, p3, v3

    .line 1543
    .local v3, "startDelay":J
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v15

    .line 1544
    .local v15, "interpolator":Landroid/animation/TimeInterpolator;
    nop

    .line 1545
    invoke-static {v15, v1, v2}, Landroid/graphics/animation/NativeInterpolatorFactory;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    move-result-wide v7

    .line 1547
    .local v7, "nativeInterpolator":J
    long-to-float v5, v3

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-long v9, v5

    .line 1548
    .end local v3    # "startDelay":J
    .local v9, "startDelay":J
    long-to-float v3, v1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-long v11, v3

    .line 1550
    .end local v1    # "duration":J
    .local v11, "duration":J
    iget-object v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    invoke-virtual {v1, v9, v10}, Landroid/util/LongArray;->add(J)V

    .line 1551
    iget-wide v3, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    .line 1552
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getRepeatMode()I

    move-result v14

    .line 1551
    move-wide/from16 v5, p1

    invoke-static/range {v3 .. v14}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnAddAnimator(JJJJJII)V

    .line 1553
    return-void
.end method

.method private greylist-max-o createRTAnimator(Landroid/animation/ObjectAnimator;J)V
    .registers 11
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "startTime"    # J

    .line 1335
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1336
    .local v1, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v6

    .line 1337
    .local v6, "target":Ljava/lang/Object;
    instance-of v0, v6, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_16

    .line 1338
    move-object v3, v6

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    .end local p1    # "animator":Landroid/animation/ObjectAnimator;
    .end local p2    # "startTime":J
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    .local v4, "startTime":J
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VGroup;J)V

    goto :goto_71

    .line 1340
    .end local v2    # "animator":Landroid/animation/ObjectAnimator;
    .end local v4    # "startTime":J
    .restart local p1    # "animator":Landroid/animation/ObjectAnimator;
    .restart local p2    # "startTime":J
    :cond_16
    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    .end local p1    # "animator":Landroid/animation/ObjectAnimator;
    .end local p2    # "startTime":J
    .restart local v2    # "animator":Landroid/animation/ObjectAnimator;
    .restart local v4    # "startTime":J
    instance-of p1, v6, Landroid/graphics/drawable/VectorDrawable$VPath;

    if-eqz p1, :cond_67

    .line 1341
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_1e
    array-length p2, v1

    if-ge p1, p2, :cond_66

    .line 1342
    aget-object p2, v1, p1

    iget-object p3, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-virtual {p2, p3}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    .line 1343
    iget-object p2, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object p2, p2, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    instance-of p2, p2, Landroid/util/PathParser$PathData;

    if-eqz p2, :cond_44

    iget-object p2, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object p2, p2, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    .line 1344
    const-string/jumbo p3, "pathData"

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_44

    .line 1345
    move-object p2, v6

    check-cast p2, Landroid/graphics/drawable/VectorDrawable$VPath;

    invoke-direct {p0, v2, p2, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VPath;J)V

    goto :goto_5b

    .line 1347
    :cond_44
    instance-of p2, v6, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz p2, :cond_4f

    .line 1348
    move-object p2, v6

    check-cast p2, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {p0, v2, p2, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForFullPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VFullPath;J)V

    goto :goto_5b

    .line 1350
    :cond_4f
    iget-object p2, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimatedVectorState(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-$$Nest$fgetmShouldIgnoreInvalidAnim(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result p2

    if-eqz p2, :cond_5e

    .line 1341
    :goto_5b
    add-int/lit8 p1, p1, 0x1

    goto :goto_1e

    .line 1351
    :cond_5e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "ClipPath only supports PathData property"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1341
    .end local p1    # "i":I
    :cond_66
    goto :goto_71

    .line 1355
    :cond_67
    instance-of p1, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz p1, :cond_71

    .line 1356
    move-object v3, v6

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForRootGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;J)V

    .line 1359
    :cond_71
    :goto_71
    return-void
.end method

.method private greylist-max-o createRTAnimatorForFullPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VFullPath;J)V
    .registers 14
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "target"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;
    .param p3, "startTime"    # J

    .line 1411
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPropertyIndex(Ljava/lang/String;)I

    move-result v6

    .line 1413
    .local v6, "propertyId":I
    invoke-virtual {p2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getNativePtr()J

    move-result-wide v7

    .line 1414
    .local v7, "nativePtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    if-eq v1, v2, :cond_8d

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1d

    goto :goto_8d

    .line 1432
    :cond_1d
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    if-eq v1, v2, :cond_5e

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2e

    goto :goto_5e

    .line 1442
    :cond_2e
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimatedVectorState(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-$$Nest$fgetmShouldIgnoreInvalidAnim(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1443
    return-void

    .line 1445
    :cond_3b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v3, v3, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Only float, int or PathData value is supported for Paths."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1433
    :cond_5e
    :goto_5e
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 1434
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1433
    invoke-static {v7, v8, v6, v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnCreatePathColorPropertyHolder(JIII)J

    move-result-wide v1

    .line 1435
    .local v1, "propertyPtr":J
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v3, v3, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v3, :cond_ee

    .line 1437
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v3, v3, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1438
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v4

    .line 1437
    invoke-static {v3, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createIntDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[I

    move-result-object v3

    .line 1439
    .local v3, "dataPoints":[I
    array-length v4, v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnSetPropertyHolderData(J[II)V

    .line 1440
    .end local v3    # "dataPoints":[I
    goto :goto_ee

    .line 1415
    .end local v1    # "propertyPtr":J
    :cond_8d
    :goto_8d
    if-gez v6, :cond_bf

    .line 1416
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimatedVectorState(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-$$Nest$fgetmShouldIgnoreInvalidAnim(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 1417
    return-void

    .line 1419
    :cond_9c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v3, v3, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported for FullPath"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1423
    :cond_bf
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    .line 1424
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1423
    invoke-static {v7, v8, v6, v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnCreatePathPropertyHolder(JIFF)J

    move-result-wide v1

    .line 1425
    .restart local v1    # "propertyPtr":J
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v3, v3, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v3, :cond_ee

    .line 1427
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v3, v3, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1428
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v4

    .line 1427
    invoke-static {v3, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    move-result-object v3

    .line 1429
    .local v3, "dataPoints":[F
    array-length v4, v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnSetPropertyHolderData(J[FI)V

    .line 1430
    .end local v3    # "dataPoints":[F
    nop

    .line 1450
    :cond_ee
    :goto_ee
    move-object v0, p0

    move-object v5, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1451
    return-void
.end method

.method private greylist-max-o createRTAnimatorForGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VGroup;J)V
    .registers 16
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;
    .param p2, "animator"    # Landroid/animation/ObjectAnimator;
    .param p3, "target"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p4, "startTime"    # J

    .line 1365
    invoke-virtual {p3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativePtr()J

    move-result-wide v6

    .line 1367
    .local v6, "nativePtr":J
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_6
    array-length v1, p1

    if-ge v8, v1, :cond_63

    .line 1369
    aget-object v1, p1, v8

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-virtual {v1, v2}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    .line 1370
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getPropertyIndex(Ljava/lang/String;)I

    move-result v9

    .line 1371
    .local v9, "propertyId":I
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    if-eq v1, v2, :cond_29

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_29

    .line 1376
    goto :goto_60

    .line 1378
    :cond_29
    if-gez v9, :cond_2c

    .line 1383
    goto :goto_60

    .line 1385
    :cond_2c
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    .line 1386
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1385
    invoke-static {v6, v7, v9, v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnCreateGroupPropertyHolder(JIFF)J

    move-result-wide v1

    .line 1387
    .local v1, "propertyPtr":J
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v3, v3, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v3, :cond_5a

    .line 1388
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v3, v3, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1389
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v4

    .line 1388
    invoke-static {v3, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    move-result-object v3

    .line 1390
    .local v3, "dataPoints":[F
    array-length v4, v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnSetPropertyHolderData(J[FI)V

    .line 1392
    .end local v3    # "dataPoints":[F
    :cond_5a
    move-object v0, p0

    move-object v5, p2

    move-wide v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1367
    .end local v1    # "propertyPtr":J
    :goto_60
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1394
    .end local v8    # "i":I
    .end local v9    # "propertyId":I
    :cond_63
    return-void
.end method

.method private greylist-max-o createRTAnimatorForPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VPath;J)V
    .registers 17
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "target"    # Landroid/graphics/drawable/VectorDrawable$VPath;
    .param p3, "startTime"    # J

    .line 1398
    invoke-virtual {p2}, Landroid/graphics/drawable/VectorDrawable$VPath;->getNativePtr()J

    move-result-wide v0

    .line 1399
    .local v0, "nativePtr":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v2, Landroid/util/PathParser$PathData;

    .line 1400
    invoke-virtual {v2}, Landroid/util/PathParser$PathData;->getNativePtr()J

    move-result-wide v2

    .line 1401
    .local v2, "startPathDataPtr":J
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v4, v4, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v4, Landroid/util/PathParser$PathData;

    .line 1402
    invoke-virtual {v4}, Landroid/util/PathParser$PathData;->getNativePtr()J

    move-result-wide v4

    .line 1403
    .local v4, "endPathDataPtr":J
    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnCreatePathDataPropertyHolder(JJJ)J

    move-result-wide v7

    .line 1405
    .local v7, "propertyPtr":J
    move-object v6, p0

    move-object v11, p1

    move-wide v9, p3

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1406
    return-void
.end method

.method private greylist-max-o createRTAnimatorForRootGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;J)V
    .registers 16
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;
    .param p2, "animator"    # Landroid/animation/ObjectAnimator;
    .param p3, "target"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p4, "startTime"    # J

    .line 1456
    invoke-virtual {p3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v6

    .line 1457
    .local v6, "nativePtr":J
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alpha"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1458
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimatedVectorState(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-$$Nest$fgetmShouldIgnoreInvalidAnim(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1459
    return-void

    .line 1461
    :cond_1d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Only alpha is supported for root group"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1465
    :cond_25
    const/4 v1, 0x0

    .line 1466
    .local v1, "startValue":Ljava/lang/Float;
    const/4 v3, 0x0

    .line 1467
    .local v3, "endValue":Ljava/lang/Float;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    array-length v5, p1

    if-ge v4, v5, :cond_50

    .line 1468
    aget-object v5, p1, v4

    iget-object v8, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-virtual {v5, v8}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    .line 1469
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v5, v5, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 1470
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Ljava/lang/Float;

    .line 1471
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/lang/Float;

    .line 1472
    move-object v8, v1

    move-object v9, v3

    goto :goto_52

    .line 1467
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_50
    move-object v8, v1

    move-object v9, v3

    .line 1475
    .end local v1    # "startValue":Ljava/lang/Float;
    .end local v3    # "endValue":Ljava/lang/Float;
    .end local v4    # "i":I
    .local v8, "startValue":Ljava/lang/Float;
    .local v9, "endValue":Ljava/lang/Float;
    :goto_52
    if-nez v8, :cond_6b

    if-nez v9, :cond_6b

    .line 1476
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimatedVectorState(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-$$Nest$fgetmShouldIgnoreInvalidAnim(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1477
    return-void

    .line 1479
    :cond_63
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "No alpha values are specified"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1482
    :cond_6b
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v6, v7, v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnCreateRootAlphaPropertyHolder(JFF)J

    move-result-wide v1

    .line 1483
    .local v1, "propertyPtr":J
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v3, v3, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v3, :cond_8d

    .line 1485
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v3, v3, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1486
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v4

    .line 1485
    invoke-static {v3, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    move-result-object v3

    .line 1487
    .local v3, "dataPoints":[F
    array-length v4, v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnSetPropertyHolderData(J[FI)V

    .line 1489
    .end local v3    # "dataPoints":[F
    :cond_8d
    move-object v0, p0

    move-object v5, p2

    move-wide v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1490
    return-void
.end method

.method private greylist-max-o endAnimation()V
    .registers 3

    .line 1706
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnEnd(J)V

    .line 1707
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1708
    return-void
.end method

.method private static greylist-max-o getFrameCount(J)I
    .registers 9
    .param p0, "duration"    # J

    .line 1496
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    .line 1497
    .local v0, "frameIntervalNanos":J
    const-wide/32 v2, 0xf4240

    div-long v2, v0, v2

    long-to-int v2, v2

    .line 1498
    .local v2, "animIntervalMs":I
    long-to-double v3, p0

    int-to-double v5, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 1500
    .local v3, "numAnimFrames":I
    const/4 v4, 0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1501
    const/16 v4, 0x12c

    if-le v3, v4, :cond_3f

    .line 1502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duration for the animation is too long :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", the animation will subsample the keyframe or path data."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AnimatedVectorDrawable"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const/16 v3, 0x12c

    .line 1506
    :cond_3f
    return v3
.end method

.method private greylist-max-o handlePendingAction(I)V
    .registers 5
    .param p1, "pendingAnimationAction"    # I

    .line 1578
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 1579
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->startAnimation()V

    goto :goto_1b

    .line 1580
    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    .line 1581
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->reverseAnimation()V

    goto :goto_1b

    .line 1582
    :cond_e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_15

    .line 1583
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->resetAnimation()V

    goto :goto_1b

    .line 1584
    :cond_15
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1c

    .line 1585
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->endAnimation()V

    .line 1590
    :goto_1b
    return-void

    .line 1587
    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animation action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o invalidateOwningView()V
    .registers 2

    .line 1609
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->invalidateSelf()V

    .line 1610
    return-void
.end method

.method static synthetic blacklist lambda$callOnFinished$0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .registers 2
    .param p0, "set"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p1, "id"    # I

    .line 1811
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->onAnimationEnd(I)V

    return-void
.end method

.method private greylist-max-o onAnimationEnd(I)V
    .registers 4
    .param p1, "listenerId"    # I

    .line 1790
    iget v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    if-eq p1, v0, :cond_5

    .line 1791
    return-void

    .line 1796
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1799
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1800
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1801
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1803
    :cond_15
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mThreadedRendererAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_1e

    .line 1804
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mThreadedRendererAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1806
    :cond_1e
    return-void
.end method

.method private greylist-max-o parseAnimatorSet(Landroid/animation/AnimatorSet;J)V
    .registers 10
    .param p1, "set"    # Landroid/animation/AnimatorSet;
    .param p2, "startTime"    # J

    .line 1310
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 1312
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->shouldPlayTogether()Z

    move-result v1

    .line 1314
    .local v1, "playTogether":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 1315
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 1317
    .local v3, "animator":Landroid/animation/Animator;
    instance-of v4, v3, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_20

    .line 1318
    move-object v4, v3

    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-direct {p0, v4, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->parseAnimatorSet(Landroid/animation/AnimatorSet;J)V

    goto :goto_2a

    .line 1319
    :cond_20
    instance-of v4, v3, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_2a

    .line 1320
    move-object v4, v3

    check-cast v4, Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v4, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimator(Landroid/animation/ObjectAnimator;J)V

    .line 1324
    :cond_2a
    :goto_2a
    if-nez v1, :cond_34

    .line 1326
    invoke-virtual {v3}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v4

    add-long/2addr p2, v4

    .line 1327
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    .line 1314
    .end local v3    # "animator":Landroid/animation/Animator;
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1330
    .end local v2    # "i":I
    :cond_37
    return-void
.end method

.method private greylist-max-o resetAnimation()V
    .registers 3

    .line 1712
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnReset(J)V

    .line 1713
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1714
    return-void
.end method

.method private greylist-max-o reverseAnimation()V
    .registers 5

    .line 1718
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1719
    iget-wide v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    iget v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    invoke-static {v1, v2, p0, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnReverse(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    .line 1720
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1721
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 1722
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1724
    :cond_1a
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mThreadedRendererAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_23

    .line 1725
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mThreadedRendererAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1727
    :cond_23
    return-void
.end method

.method private greylist-max-o startAnimation()V
    .registers 5

    .line 1684
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1685
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_e

    .line 1686
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mHandler:Landroid/os/Handler;

    .line 1688
    :cond_e
    iget-wide v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    iget v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    invoke-static {v1, v2, p0, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnStart(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    .line 1689
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1690
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 1691
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1693
    :cond_25
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mThreadedRendererAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_2e

    .line 1694
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mThreadedRendererAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1696
    :cond_2e
    return-void
.end method

.method private greylist-max-o transferPendingActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V
    .registers 7
    .param p1, "animatorSet"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    .line 1815
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4d

    .line 1816
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    .line 1817
    .local v1, "pendingAction":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 1818
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->start()V

    goto :goto_2a

    .line 1819
    :cond_16
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1d

    .line 1820
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->end()V

    goto :goto_2a

    .line 1821
    :cond_1d
    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 1822
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reverse()V

    goto :goto_2a

    .line 1823
    :cond_24
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2d

    .line 1824
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reset()V

    .line 1815
    .end local v1    # "pendingAction":I
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1826
    .restart local v1    # "pendingAction":I
    :cond_2d
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animation action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1830
    .end local v0    # "i":I
    .end local v1    # "pendingAction":I
    :cond_4d
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1831
    return-void
.end method

.method private greylist-max-o useLastSeenTarget()Z
    .registers 3

    .line 1593
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    .line 1594
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RenderNode;

    .line 1595
    .local v0, "target":Landroid/graphics/RenderNode;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useTarget(Landroid/graphics/RenderNode;)Z

    move-result v1

    return v1

    .line 1597
    .end local v0    # "target":Landroid/graphics/RenderNode;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist useTarget(Landroid/graphics/RenderNode;)Z
    .registers 3
    .param p1, "target"    # Landroid/graphics/RenderNode;

    .line 1601
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1602
    invoke-virtual {p1, p0}, Landroid/graphics/RenderNode;->registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V

    .line 1603
    const/4 v0, 0x1

    return v0

    .line 1605
    :cond_d
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist-max-o canReverse()Z
    .registers 2

    .line 1741
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    return v0
.end method

.method public greylist-max-o end()V
    .registers 2

    .line 1635
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_5

    .line 1636
    return-void

    .line 1639
    :cond_5
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1640
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->endAnimation()V

    goto :goto_13

    .line 1642
    :cond_f
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    .line 1644
    :goto_13
    return-void
.end method

.method public greylist-max-o getAnimatorNativePtr()J
    .registers 3

    .line 1731
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    return-wide v0
.end method

.method public blacklist getTotalDuration()J
    .registers 3

    .line 1835
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTotalDuration:J

    return-wide v0
.end method

.method public greylist-max-o init(Landroid/animation/AnimatorSet;)V
    .registers 11
    .param p1, "set"    # Landroid/animation/AnimatorSet;

    .line 1281
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_54

    .line 1286
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->parseAnimatorSet(Landroid/animation/AnimatorSet;J)V

    .line 1287
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimatedVectorState(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v2

    iget-object v2, v2, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 1288
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable;->getNativeTree()J

    move-result-wide v2

    .line 1289
    .local v2, "vectorDrawableTreePtr":J
    iget-wide v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-static {v4, v5, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnSetVectorDrawableTarget(JJ)V

    .line 1290
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    .line 1291
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTotalDuration:J

    .line 1292
    iget-wide v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTotalDuration:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    if-nez v5, :cond_2e

    move v5, v4

    goto :goto_2f

    :cond_2e
    move v5, v6

    :goto_2f
    iput-boolean v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    .line 1295
    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1296
    iget-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    if-eqz v4, :cond_3a

    .line 1297
    iput-boolean v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    goto :goto_53

    .line 1300
    :cond_3a
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3b
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    invoke-virtual {v5}, Landroid/util/LongArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_53

    .line 1301
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    invoke-virtual {v5, v4}, Landroid/util/LongArray;->get(I)J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-lez v5, :cond_50

    .line 1302
    iput-boolean v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1303
    return-void

    .line 1300
    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 1307
    .end local v4    # "i":I
    :cond_53
    :goto_53
    return-void

    .line 1283
    .end local v2    # "vectorDrawableTreePtr":J
    :cond_54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VectorDrawableAnimator cannot be re-initialized"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o isInfinite()Z
    .registers 2

    .line 1776
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    return v0
.end method

.method public greylist-max-o isRunning()Z
    .registers 2

    .line 1751
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_6

    .line 1752
    const/4 v0, 0x0

    return v0

    .line 1754
    :cond_6
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    return v0
.end method

.method public greylist-max-o isStarted()Z
    .registers 2

    .line 1746
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    return v0
.end method

.method public greylist-max-o onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1769
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1770
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->recordLastSeenTarget(Landroid/graphics/RecordingCanvas;)V

    .line 1772
    :cond_c
    return-void
.end method

.method public greylist-max-o pause()V
    .registers 1

    .line 1782
    return-void
.end method

.method protected blacklist recordLastSeenTarget(Landroid/graphics/RecordingCanvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 1561
    iget-object v0, p1, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    .line 1562
    .local v0, "node":Landroid/graphics/RenderNode;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    .line 1564
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 1565
    :cond_15
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useTarget(Landroid/graphics/RenderNode;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1569
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 1570
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->handlePendingAction(I)V

    .line 1569
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1572
    .end local v1    # "i":I
    :cond_30
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 1575
    :cond_35
    return-void
.end method

.method public greylist-max-o removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1764
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 1765
    return-void
.end method

.method public greylist-max-o reset()V
    .registers 2

    .line 1648
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_5

    .line 1649
    return-void

    .line 1652
    :cond_5
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1653
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->resetAnimation()V

    goto :goto_13

    .line 1655
    :cond_f
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    .line 1657
    :goto_13
    return-void
.end method

.method public greylist-max-o resume()V
    .registers 1

    .line 1787
    return-void
.end method

.method public greylist-max-o reverse()V
    .registers 2

    .line 1663
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_9

    goto :goto_18

    .line 1666
    :cond_9
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1670
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->reverseAnimation()V

    goto :goto_17

    .line 1672
    :cond_13
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    .line 1674
    :goto_17
    return-void

    .line 1664
    :cond_18
    :goto_18
    return-void
.end method

.method public greylist-max-o setListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1759
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 1760
    return-void
.end method

.method public blacklist setThreadedRendererAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2
    .param p1, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1736
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mThreadedRendererAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1737
    return-void
.end method

.method public greylist-max-o start()V
    .registers 2

    .line 1619
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_5

    .line 1620
    return-void

    .line 1623
    :cond_5
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1627
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->startAnimation()V

    goto :goto_13

    .line 1629
    :cond_f
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    .line 1631
    :goto_13
    return-void
.end method
