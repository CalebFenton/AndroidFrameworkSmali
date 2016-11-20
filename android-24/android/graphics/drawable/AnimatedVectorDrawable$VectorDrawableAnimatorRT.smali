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

.field private static final RESET_ANIMATION:I = 0x3

.field private static final REVERSE_ANIMATION:I = 0x2

.field private static final START_ANIMATION:I = 0x1


# instance fields
.field private mContainsSequentialAnimators:Z

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

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

.field private mShouldIgnoreInvalidAnim:Z

.field private final mStartDelays:Landroid/util/LongArray;

.field private mStarted:Z

.field private mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 985
    iput-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@7
    .line 986
    new-instance v0, Landroid/util/LongArray;

    #@9
    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    #@c
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    #@e
    .line 988
    new-instance v0, Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@10
    invoke-direct {v0}, Landroid/animation/PropertyValuesHolder$PropertyValues;-><init>()V

    #@13
    .line 987
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@15
    .line 989
    const-wide/16 v0, 0x0

    #@17
    iput-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@19
    .line 990
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    #@1b
    .line 991
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    #@1d
    .line 992
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@1f
    .line 993
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    #@21
    .line 994
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    #@23
    .line 999
    iput-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    #@25
    .line 1000
    iput v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    #@27
    .line 1001
    new-instance v0, Landroid/util/IntArray;

    #@29
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    #@2c
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@2e
    .line 1005
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@30
    .line 1006
    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap1()J

    #@33
    move-result-wide v0

    #@34
    iput-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@36
    .line 1009
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    #@38
    iget-wide v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@3a
    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    #@3d
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetRefBasePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@3f
    .line 1004
    return-void
.end method

.method private addPendingAction(I)V
    .locals 1
    .param p1, "pendingAnimationAction"    # I

    #@0
    .prologue
    .line 1301
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    #@3
    .line 1302
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    #@8
    .line 1300
    return-void
.end method

.method private static callOnFinished(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .locals 0
    .param p0, "set"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p1, "id"    # I

    #@0
    .prologue
    .line 1481
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->onAnimationEnd(I)V

    #@3
    .line 1480
    return-void
.end method

.method private static createDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F
    .locals 13
    .param p0, "dataSource"    # Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 1222
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@3
    move-result-object v8

    #@4
    invoke-virtual {v8}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    #@7
    move-result-wide v2

    #@8
    .line 1223
    .local v2, "frameIntervalNanos":J
    const-wide/32 v8, 0xf4240

    #@b
    div-long v8, v2, v8

    #@d
    long-to-int v0, v8

    #@e
    .line 1224
    .local v0, "animIntervalMs":I
    long-to-double v8, p1

    #@f
    int-to-double v10, v0

    #@10
    div-double/2addr v8, v10

    #@11
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    #@14
    move-result-wide v8

    #@15
    double-to-int v6, v8

    #@16
    .line 1225
    .local v6, "numAnimFrames":I
    new-array v7, v6, [F

    #@18
    .line 1226
    .local v7, "values":[F
    add-int/lit8 v8, v6, -0x1

    #@1a
    int-to-float v5, v8

    #@1b
    .line 1227
    .local v5, "lastFrame":F
    const/4 v4, 0x0

    #@1c
    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_0

    #@1e
    .line 1228
    int-to-float v8, v4

    #@1f
    div-float v1, v8, v5

    #@21
    .line 1229
    .local v1, "fraction":F
    invoke-interface {p0, v1}, Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;->getValueAtFraction(F)Ljava/lang/Object;

    #@24
    move-result-object v8

    #@25
    check-cast v8, Ljava/lang/Float;

    #@27
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    #@2a
    move-result v8

    #@2b
    aput v8, v7, v4

    #@2d
    .line 1227
    add-int/lit8 v4, v4, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 1231
    .end local v1    # "fraction":F
    :cond_0
    return-object v7
.end method

.method private createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V
    .locals 13
    .param p1, "propertyPtr"    # J
    .param p3, "extraDelay"    # J
    .param p5, "animator"    # Landroid/animation/ObjectAnimator;

    #@0
    .prologue
    .line 1236
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getDuration()J

    #@3
    move-result-wide v8

    #@4
    .line 1237
    .local v8, "duration":J
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getRepeatCount()I

    #@7
    move-result v10

    #@8
    .line 1238
    .local v10, "repeatCount":I
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getStartDelay()J

    #@b
    move-result-wide v0

    #@c
    add-long v6, p3, v0

    #@e
    .line 1239
    .local v6, "startDelay":J
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@11
    move-result-object v11

    #@12
    .line 1241
    .local v11, "interpolator":Landroid/animation/TimeInterpolator;
    invoke-static {v11, v8, v9}, Landroid/view/RenderNodeAnimatorSetHelper;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    #@15
    move-result-wide v4

    #@16
    .line 1243
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
    .line 1244
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
    .line 1246
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    #@26
    invoke-virtual {v0, v6, v7}, Landroid/util/LongArray;->add(J)V

    #@29
    .line 1247
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@2b
    move-wide v2, p1

    #@2c
    invoke-static/range {v0 .. v10}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap7(JJJJJI)V

    #@2f
    .line 1235
    return-void
.end method

.method private createRTAnimator(Landroid/animation/ObjectAnimator;J)V
    .locals 8
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "startTime"    # J

    #@0
    .prologue
    .line 1065
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    #@3
    move-result-object v1

    #@4
    .line 1066
    .local v1, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    #@7
    move-result-object v7

    #@8
    .line 1067
    .local v7, "target":Ljava/lang/Object;
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@a
    if-eqz v0, :cond_1

    #@c
    move-object v3, v7

    #@d
    .line 1068
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
    .line 1064
    :cond_0
    :goto_0
    return-void

    #@16
    .line 1070
    :cond_1
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VPath;

    #@18
    if-eqz v0, :cond_5

    #@1a
    .line 1071
    const/4 v6, 0x0

    #@1b
    .local v6, "i":I
    :goto_1
    array-length v0, v1

    #@1c
    if-ge v6, v0, :cond_0

    #@1e
    .line 1072
    aget-object v0, v1, v6

    #@20
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@22
    invoke-virtual {v0, v2}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    #@25
    .line 1073
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@27
    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    #@29
    instance-of v0, v0, Landroid/util/PathParser$PathData;

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 1074
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
    .line 1073
    if-eqz v0, :cond_3

    #@3a
    move-object v0, v7

    #@3b
    .line 1075
    check-cast v0, Landroid/graphics/drawable/VectorDrawable$VPath;

    #@3d
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VPath;J)V

    #@40
    .line 1071
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@42
    goto :goto_1

    #@43
    .line 1077
    :cond_3
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@45
    if-eqz v0, :cond_4

    #@47
    move-object v0, v7

    #@48
    .line 1078
    check-cast v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@4a
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForFullPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VFullPath;J)V

    #@4d
    goto :goto_2

    #@4e
    .line 1080
    :cond_4
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mShouldIgnoreInvalidAnim:Z

    #@50
    if-nez v0, :cond_2

    #@52
    .line 1081
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@54
    const-string/jumbo v2, "ClipPath only supports PathData property"

    #@57
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v0

    #@5b
    .line 1086
    .end local v6    # "i":I
    :cond_5
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@5d
    if-eqz v0, :cond_6

    #@5f
    move-object v3, v7

    #@60
    .line 1088
    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@62
    move-object v0, p0

    #@63
    move-object v2, p1

    #@64
    move-wide v4, p2

    #@65
    .line 1087
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForRootGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;J)V

    #@68
    goto :goto_0

    #@69
    .line 1089
    :cond_6
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mShouldIgnoreInvalidAnim:Z

    #@6b
    if-nez v0, :cond_0

    #@6d
    .line 1091
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@6f
    new-instance v0, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v3, "Target should be either VGroup, VPath, or ConstantState, "

    #@77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    if-nez v0, :cond_7

    #@85
    .line 1092
    const-string/jumbo v0, "Null target"

    #@88
    .line 1091
    :goto_3
    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8b
    throw v2

    #@8c
    .line 1092
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@94
    move-result-object v3

    #@95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v0

    #@99
    .line 1093
    const-string/jumbo v3, " is not supported"

    #@9c
    .line 1092
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v0

    #@a0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v0

    #@a4
    goto :goto_3
.end method

.method private createRTAnimatorForFullPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VFullPath;J)V
    .locals 11
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "target"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;
    .param p3, "startTime"    # J

    #@0
    .prologue
    .line 1147
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@2
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    #@4
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPropertyIndex(Ljava/lang/String;)I

    #@7
    move-result v7

    #@8
    .line 1149
    .local v7, "propertyId":I
    invoke-virtual {p2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getNativePtr()J

    #@b
    move-result-wide v8

    #@c
    .line 1150
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
    .line 1151
    :cond_0
    if-gez v7, :cond_2

    #@1e
    .line 1152
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mShouldIgnoreInvalidAnim:Z

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 1153
    return-void

    #@23
    .line 1155
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@25
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v5, "Property: "

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@33
    iget-object v5, v5, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    .line 1156
    const-string/jumbo v5, " is not supported for FullPath"

    #@3c
    .line 1155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v1

    #@48
    .line 1160
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@4a
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    #@4c
    check-cast v1, Ljava/lang/Float;

    #@4e
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@51
    move-result v4

    #@52
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@54
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    #@56
    check-cast v1, Ljava/lang/Float;

    #@58
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@5b
    move-result v1

    #@5c
    .line 1159
    invoke-static {v8, v9, v7, v4, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap5(JIFF)J

    #@5f
    move-result-wide v2

    #@60
    .line 1174
    .local v2, "propertyPtr":J
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@62
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    #@64
    if-eqz v1, :cond_3

    #@66
    .line 1175
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@68
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    #@6a
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getDuration()J

    #@6d
    move-result-wide v4

    #@6e
    invoke-static {v1, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    #@71
    move-result-object v0

    #@72
    .line 1177
    .local v0, "dataPoints":[F
    array-length v1, v0

    #@73
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap11(J[FI)V

    #@76
    .end local v0    # "dataPoints":[F
    :cond_3
    move-object v1, p0

    #@77
    move-wide v4, p3

    #@78
    move-object v6, p1

    #@79
    .line 1179
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    #@7c
    .line 1145
    return-void

    #@7d
    .line 1162
    .end local v2    # "propertyPtr":J
    :cond_4
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@7f
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    #@81
    const-class v4, Ljava/lang/Integer;

    #@83
    if-eq v1, v4, :cond_5

    #@85
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@87
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    #@89
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@8b
    if-ne v1, v4, :cond_6

    #@8d
    .line 1164
    :cond_5
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@8f
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    #@91
    check-cast v1, Ljava/lang/Integer;

    #@93
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@96
    move-result v4

    #@97
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@99
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    #@9b
    check-cast v1, Ljava/lang/Integer;

    #@9d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@a0
    move-result v1

    #@a1
    .line 1163
    invoke-static {v8, v9, v7, v4, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap3(JIII)J

    #@a4
    move-result-wide v2

    #@a5
    .restart local v2    # "propertyPtr":J
    goto :goto_0

    #@a6
    .line 1166
    .end local v2    # "propertyPtr":J
    :cond_6
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mShouldIgnoreInvalidAnim:Z

    #@a8
    if-eqz v1, :cond_7

    #@aa
    .line 1167
    return-void

    #@ab
    .line 1169
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@ad
    new-instance v4, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v5, "Unsupported type: "

    #@b5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v4

    #@b9
    .line 1170
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@bb
    iget-object v5, v5, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    #@bd
    .line 1169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v4

    #@c1
    .line 1170
    const-string/jumbo v5, ". Only float, int or PathData value is "

    #@c4
    .line 1169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v4

    #@c8
    .line 1171
    const-string/jumbo v5, "supported for Paths."

    #@cb
    .line 1169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v4

    #@cf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v4

    #@d3
    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@d6
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
    .line 1101
    invoke-virtual {p3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativePtr()J

    #@3
    move-result-wide v8

    #@4
    .line 1103
    .local v8, "nativePtr":J
    const/4 v7, 0x0

    #@5
    .local v7, "i":I
    :goto_0
    array-length v1, p1

    #@6
    if-ge v7, v1, :cond_3

    #@8
    .line 1105
    aget-object v1, p1, v7

    #@a
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@c
    invoke-virtual {v1, v4}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    #@f
    .line 1106
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@11
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    #@13
    invoke-static {v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getPropertyIndex(Ljava/lang/String;)I

    #@16
    move-result v10

    #@17
    .line 1107
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
    .line 1103
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1114
    :cond_1
    if-ltz v10, :cond_0

    #@2c
    .line 1122
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
    .line 1121
    invoke-static {v8, v9, v10, v4, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap2(JIFF)J

    #@43
    move-result-wide v2

    #@44
    .line 1123
    .local v2, "propertyPtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@46
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    #@48
    if-eqz v1, :cond_2

    #@4a
    .line 1124
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@4c
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    #@4e
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->getDuration()J

    #@51
    move-result-wide v4

    #@52
    invoke-static {v1, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    #@55
    move-result-object v0

    #@56
    .line 1126
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
    .line 1128
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    #@61
    goto :goto_1

    #@62
    .line 1099
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
    .line 1134
    invoke-virtual {p2}, Landroid/graphics/drawable/VectorDrawable$VPath;->getNativePtr()J

    #@3
    move-result-wide v0

    #@4
    .line 1135
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
    .line 1137
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
    .line 1139
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
    .line 1141
    invoke-direct/range {v7 .. v12}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    #@23
    .line 1132
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
    .line 1185
    invoke-virtual {p3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    #@3
    move-result-wide v8

    #@4
    .line 1186
    .local v8, "nativePtr":J
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
    .line 1187
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mShouldIgnoreInvalidAnim:Z

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 1188
    return-void

    #@16
    .line 1190
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@18
    const-string/jumbo v4, "Only alpha is supported for root group"

    #@1b
    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 1194
    :cond_1
    const/4 v10, 0x0

    #@20
    .line 1195
    .local v10, "startValue":Ljava/lang/Float;
    const/4 v0, 0x0

    #@21
    .line 1196
    .local v0, "endValue":Ljava/lang/Float;
    const/4 v7, 0x0

    #@22
    .local v7, "i":I
    :goto_0
    array-length v1, p1

    #@23
    if-ge v7, v1, :cond_2

    #@25
    .line 1197
    aget-object v1, p1, v7

    #@27
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@29
    invoke-virtual {v1, v4}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    #@2c
    .line 1198
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@2e
    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    #@30
    const-string/jumbo v4, "alpha"

    #@33
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_3

    #@39
    .line 1199
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@3b
    iget-object v10, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    #@3d
    .end local v10    # "startValue":Ljava/lang/Float;
    check-cast v10, Ljava/lang/Float;

    #@3f
    .line 1200
    .local v10, "startValue":Ljava/lang/Float;
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    #@41
    iget-object v0, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    #@43
    .end local v0    # "endValue":Ljava/lang/Float;
    check-cast v0, Ljava/lang/Float;

    #@45
    .line 1204
    .end local v10    # "startValue":Ljava/lang/Float;
    :cond_2
    if-nez v10, :cond_5

    #@47
    if-nez v0, :cond_5

    #@49
    .line 1205
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mShouldIgnoreInvalidAnim:Z

    #@4b
    if-eqz v1, :cond_4

    #@4d
    .line 1206
    return-void

    #@4e
    .line 1196
    .restart local v0    # "endValue":Ljava/lang/Float;
    .local v10, "startValue":Ljava/lang/Float;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@50
    goto :goto_0

    #@51
    .line 1208
    .end local v0    # "endValue":Ljava/lang/Float;
    .end local v10    # "startValue":Ljava/lang/Float;
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@53
    const-string/jumbo v4, "No alpha values are specified"

    #@56
    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@59
    throw v1

    #@5a
    .line 1211
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    #@5d
    move-result v1

    #@5e
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@61
    move-result v4

    #@62
    invoke-static {v8, v9, v1, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap6(JFF)J

    #@65
    move-result-wide v2

    #@66
    .local v2, "propertyPtr":J
    move-object v1, p0

    #@67
    move-wide/from16 v4, p4

    #@69
    move-object v6, p2

    #@6a
    .line 1212
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    #@6d
    .line 1184
    return-void
.end method

.method private endAnimation()V
    .locals 2

    #@0
    .prologue
    .line 1389
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap8(J)V

    #@5
    .line 1390
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    #@8
    .line 1382
    return-void
.end method

.method private handlePendingAction(I)V
    .locals 3
    .param p1, "pendingAnimationAction"    # I

    #@0
    .prologue
    .line 1271
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 1272
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->startAnimation()V

    #@6
    .line 1270
    :goto_0
    return-void

    #@7
    .line 1273
    :cond_0
    const/4 v0, 0x2

    #@8
    if-ne p1, v0, :cond_1

    #@a
    .line 1274
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->reverseAnimation()V

    #@d
    goto :goto_0

    #@e
    .line 1275
    :cond_1
    const/4 v0, 0x3

    #@f
    if-ne p1, v0, :cond_2

    #@11
    .line 1276
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->resetAnimation()V

    #@14
    goto :goto_0

    #@15
    .line 1277
    :cond_2
    const/4 v0, 0x4

    #@16
    if-ne p1, v0, :cond_3

    #@18
    .line 1278
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->endAnimation()V

    #@1b
    goto :goto_0

    #@1c
    .line 1280
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
    .line 1281
    const-string/jumbo v2, "is not supported"

    #@31
    .line 1280
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
    .line 1297
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    #@5
    .line 1296
    return-void
.end method

.method private onAnimationEnd(I)V
    .locals 2
    .param p1, "listenerId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1464
    iget v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 1465
    return-void

    #@6
    .line 1470
    :cond_0
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    #@9
    .line 1473
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    #@c
    .line 1474
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1475
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@12
    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    #@15
    .line 1463
    :cond_1
    return-void
.end method

.method private parseAnimatorSet(Landroid/animation/AnimatorSet;J)V
    .locals 6
    .param p1, "set"    # Landroid/animation/AnimatorSet;
    .param p2, "startTime"    # J

    #@0
    .prologue
    .line 1040
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    #@3
    move-result-object v1

    #@4
    .line 1042
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->shouldPlayTogether()Z

    #@7
    move-result v3

    #@8
    .line 1044
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
    .line 1045
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/animation/Animator;

    #@15
    .line 1047
    .local v0, "animator":Landroid/animation/Animator;
    instance-of v4, v0, Landroid/animation/AnimatorSet;

    #@17
    if-eqz v4, :cond_2

    #@19
    move-object v4, v0

    #@1a
    .line 1048
    check-cast v4, Landroid/animation/AnimatorSet;

    #@1c
    invoke-direct {p0, v4, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->parseAnimatorSet(Landroid/animation/AnimatorSet;J)V

    #@1f
    .line 1054
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    #@21
    .line 1056
    invoke-virtual {v0}, Landroid/animation/Animator;->getTotalDuration()J

    #@24
    move-result-wide v4

    #@25
    add-long/2addr p2, v4

    #@26
    .line 1057
    const/4 v4, 0x1

    #@27
    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    #@29
    .line 1044
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1049
    :cond_2
    instance-of v4, v0, Landroid/animation/ObjectAnimator;

    #@2e
    if-eqz v4, :cond_0

    #@30
    move-object v4, v0

    #@31
    .line 1050
    check-cast v4, Landroid/animation/ObjectAnimator;

    #@33
    invoke-direct {p0, v4, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimator(Landroid/animation/ObjectAnimator;J)V

    #@36
    goto :goto_1

    #@37
    .line 1039
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_3
    return-void
.end method

.method private resetAnimation()V
    .locals 2

    #@0
    .prologue
    .line 1395
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap9(J)V

    #@5
    .line 1396
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    #@8
    .line 1394
    return-void
.end method

.method private reverseAnimation()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1401
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    #@4
    .line 1402
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
    .line 1403
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    #@12
    .line 1404
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 1405
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@18
    invoke-interface {v0, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    #@1b
    .line 1400
    :cond_0
    return-void
.end method

.method private startAnimation()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1373
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    #@4
    .line 1374
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@6
    iget v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    #@8
    add-int/lit8 v2, v2, 0x1

    #@a
    iput v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    #@c
    invoke-static {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap12(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    #@f
    .line 1375
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    #@12
    .line 1376
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 1377
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@18
    invoke-interface {v0, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    #@1b
    .line 1366
    :cond_0
    return-void
.end method

.method private useLastSeenTarget()Z
    .locals 2

    #@0
    .prologue
    .line 1286
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1287
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    #@6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/RenderNode;

    #@c
    .line 1288
    .local v0, "target":Landroid/view/RenderNode;
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {v0}, Landroid/view/RenderNode;->isAttached()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 1289
    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->addAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V

    #@17
    .line 1290
    const/4 v1, 0x1

    #@18
    return v1

    #@19
    .line 1293
    .end local v0    # "target":Landroid/view/RenderNode;
    :cond_0
    const/4 v1, 0x0

    #@1a
    return v1
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    #@0
    .prologue
    .line 1415
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    #@2
    return v0
.end method

.method public end()V
    .locals 1

    #@0
    .prologue
    .line 1324
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1325
    return-void

    #@5
    .line 1328
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1329
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->endAnimation()V

    #@e
    .line 1323
    :goto_0
    return-void

    #@f
    .line 1331
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
    .line 1410
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    #@2
    return-wide v0
.end method

.method public init(Landroid/animation/AnimatorSet;)V
    .locals 10
    .param p1, "set"    # Landroid/animation/AnimatorSet;

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 1014
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1016
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@a
    const-string/jumbo v2, "VectorDrawableAnimator cannot be re-initialized"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 1019
    :cond_0
    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap0()Z

    #@14
    move-result v1

    #@15
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mShouldIgnoreInvalidAnim:Z

    #@17
    .line 1020
    invoke-direct {p0, p1, v8, v9}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->parseAnimatorSet(Landroid/animation/AnimatorSet;J)V

    #@1a
    .line 1021
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@1c
    .line 1022
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    #@1f
    move-result-wide v4

    #@20
    const-wide/16 v6, -0x1

    #@22
    cmp-long v1, v4, v6

    #@24
    if-nez v1, :cond_2

    #@26
    move v1, v2

    #@27
    :goto_0
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    #@29
    .line 1025
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    #@2b
    .line 1026
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    #@2d
    if-eqz v1, :cond_3

    #@2f
    .line 1027
    iput-boolean v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    #@31
    .line 1013
    :cond_1
    return-void

    #@32
    :cond_2
    move v1, v3

    #@33
    .line 1022
    goto :goto_0

    #@34
    .line 1030
    :cond_3
    const/4 v0, 0x0

    #@35
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    #@37
    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    #@3a
    move-result v1

    #@3b
    if-ge v0, v1, :cond_1

    #@3d
    .line 1031
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    #@3f
    invoke-virtual {v1, v0}, Landroid/util/LongArray;->get(I)J

    #@42
    move-result-wide v4

    #@43
    cmp-long v1, v4, v8

    #@45
    if-lez v1, :cond_4

    #@47
    .line 1032
    iput-boolean v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    #@49
    .line 1033
    return-void

    #@4a
    .line 1030
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@4c
    goto :goto_1
.end method

.method public isInfinite()Z
    .locals 1

    #@0
    .prologue
    .line 1450
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    #@2
    return v0
.end method

.method public isRunning()Z
    .locals 1

    #@0
    .prologue
    .line 1425
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1426
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 1428
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    #@8
    return v0
.end method

.method public isStarted()Z
    .locals 1

    #@0
    .prologue
    .line 1420
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    #@2
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1443
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1444
    check-cast p1, Landroid/view/DisplayListCanvas;

    #@8
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->recordLastSeenTarget(Landroid/view/DisplayListCanvas;)V

    #@b
    .line 1442
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    #@0
    .prologue
    .line 1454
    return-void
.end method

.method protected recordLastSeenTarget(Landroid/view/DisplayListCanvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    #@0
    .prologue
    .line 1257
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@2
    .line 1258
    invoke-static {p1}, Landroid/view/RenderNodeAnimatorSetHelper;->getTarget(Landroid/view/DisplayListCanvas;)Landroid/view/RenderNode;

    #@5
    move-result-object v2

    #@6
    .line 1257
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@9
    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    #@b
    .line 1259
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@d
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    #@10
    move-result v1

    #@11
    if-lez v1, :cond_1

    #@13
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 1263
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@1c
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    #@1f
    move-result v1

    #@20
    if-ge v0, v1, :cond_0

    #@22
    .line 1264
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@24
    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    #@27
    move-result v1

    #@28
    invoke-direct {p0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->handlePendingAction(I)V

    #@2b
    .line 1263
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 1266
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    #@30
    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    #@33
    .line 1256
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    #@0
    .prologue
    .line 1438
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@3
    .line 1437
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 1337
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1338
    return-void

    #@5
    .line 1341
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1342
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->resetAnimation()V

    #@e
    .line 1336
    :goto_0
    return-void

    #@f
    .line 1344
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
    .line 1459
    return-void
.end method

.method public reverse()V
    .locals 1

    #@0
    .prologue
    .line 1352
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1355
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1359
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->reverseAnimation()V

    #@11
    .line 1351
    :goto_0
    return-void

    #@12
    .line 1353
    :cond_0
    return-void

    #@13
    .line 1361
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
    .line 1433
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@2
    .line 1432
    return-void
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 1307
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1308
    return-void

    #@5
    .line 1311
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1315
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->startAnimation()V

    #@e
    .line 1306
    :goto_0
    return-void

    #@f
    .line 1317
    :cond_1
    const/4 v0, 0x1

    #@10
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    #@13
    goto :goto_0
.end method
