.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "StepCurve.java"


# instance fields
.field private final blacklist mCurveFit:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;


# direct methods
.method public constructor blacklist <init>([FII)V
    .registers 5
    .param p1, "params"    # [F
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 36
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    .line 37
    invoke-static {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;->genSpline([FII)Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;->mCurveFit:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    .line 38
    return-void
.end method

.method private static blacklist genSpline([FII)Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;
    .registers 21
    .param p0, "values"    # [F
    .param p1, "off"    # I
    .param p2, "arrayLen"    # I

    .line 42
    move/from16 v0, p2

    mul-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    .line 43
    .local v1, "length":I
    add-int/lit8 v3, v0, -0x1

    .line 44
    .local v3, "len":I
    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v4, v6, v4

    .line 45
    .local v4, "gap":D
    new-array v2, v2, [I

    const/4 v8, 0x1

    aput v8, v2, v8

    const/4 v8, 0x0

    aput v1, v2, v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 46
    .local v2, "points":[[D
    new-array v9, v1, [D

    .line 47
    .local v9, "time":[D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_20
    if-ge v10, v0, :cond_5d

    .line 48
    add-int v11, v10, p1

    aget v11, p0, v11

    float-to-double v11, v11

    .line 49
    .local v11, "v":D
    add-int v13, v10, v3

    aget-object v13, v2, v13

    aput-wide v11, v13, v8

    .line 50
    add-int v13, v10, v3

    int-to-double v14, v10

    mul-double/2addr v14, v4

    aput-wide v14, v9, v13

    .line 51
    if-lez v10, :cond_5a

    .line 52
    mul-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v10

    aget-object v13, v2, v13

    add-double v14, v11, v6

    aput-wide v14, v13, v8

    .line 53
    mul-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v10

    int-to-double v14, v10

    mul-double/2addr v14, v4

    add-double/2addr v14, v6

    aput-wide v14, v9, v13

    .line 55
    add-int/lit8 v13, v10, -0x1

    aget-object v13, v2, v13

    sub-double v14, v11, v6

    sub-double/2addr v14, v4

    aput-wide v14, v13, v8

    .line 56
    add-int/lit8 v13, v10, -0x1

    int-to-double v14, v10

    mul-double/2addr v14, v4

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    add-double v14, v14, v16

    sub-double/2addr v14, v4

    aput-wide v14, v9, v13

    .line 47
    .end local v11    # "v":D
    :cond_5a
    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    .line 60
    .end local v10    # "i":I
    :cond_5d
    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    invoke-direct {v6, v9, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;-><init>([D[[D)V

    .line 62
    .local v6, "ms":Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;
    return-object v6
.end method


# virtual methods
.method public blacklist get(F)F
    .registers 6
    .param p1, "x"    # F

    .line 74
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    return v0

    .line 75
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_d

    return v0

    .line 77
    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;->mCurveFit:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    float-to-double v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getPos(DI)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public blacklist getDiff(F)F
    .registers 6
    .param p1, "x"    # F

    .line 67
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    return v0

    .line 68
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_d

    return v0

    .line 69
    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;->mCurveFit:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    float-to-double v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
