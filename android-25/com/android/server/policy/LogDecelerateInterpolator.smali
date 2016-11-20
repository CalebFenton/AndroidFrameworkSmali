.class public Lcom/android/server/policy/LogDecelerateInterpolator;
.super Ljava/lang/Object;
.source "LogDecelerateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mBase:I

.field private mDrift:I

.field private final mLogScale:F


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "base"    # I
    .param p2, "drift"    # I

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 28
    iput p1, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mBase:I

    #@7
    .line 29
    iput p2, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mDrift:I

    #@9
    .line 31
    iget v0, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mBase:I

    #@b
    iget v1, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mDrift:I

    #@d
    invoke-static {v2, v0, v1}, Lcom/android/server/policy/LogDecelerateInterpolator;->computeLog(FII)F

    #@10
    move-result v0

    #@11
    div-float v0, v2, v0

    #@13
    iput v0, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mLogScale:F

    #@15
    .line 27
    return-void
.end method

.method private static computeLog(FII)F
    .locals 4
    .param p0, "t"    # F
    .param p1, "base"    # I
    .param p2, "drift"    # I

    #@0
    .prologue
    .line 35
    int-to-double v0, p1

    #@1
    neg-float v2, p0

    #@2
    float-to-double v2, v2

    #@3
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@6
    move-result-wide v0

    #@7
    neg-double v0, v0

    #@8
    double-to-float v0, v0

    #@9
    const/high16 v1, 0x3f800000    # 1.0f

    #@b
    add-float/2addr v0, v1

    #@c
    int-to-float v1, p2

    #@d
    mul-float/2addr v1, p0

    #@e
    add-float/2addr v0, v1

    #@f
    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    #@0
    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mBase:I

    #@2
    iget v1, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mDrift:I

    #@4
    invoke-static {p1, v0, v1}, Lcom/android/server/policy/LogDecelerateInterpolator;->computeLog(FII)F

    #@7
    move-result v0

    #@8
    iget v1, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mLogScale:F

    #@a
    mul-float/2addr v0, v1

    #@b
    return v0
.end method
