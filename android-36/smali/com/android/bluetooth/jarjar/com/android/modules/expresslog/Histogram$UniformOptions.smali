.class public final Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/Histogram$UniformOptions;
.super Ljava/lang/Object;
.source "Histogram.java"

# interfaces
.implements Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/Histogram$BinOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/Histogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UniformOptions"
.end annotation


# instance fields
.field private final blacklist mBinCount:I

.field private final blacklist mBinSize:F

.field private final blacklist mExclusiveMaxValue:F

.field private final blacklist mMinValue:F


# direct methods
.method public constructor blacklist <init>(IFF)V
    .registers 6
    .param p1, "binCount"    # I
    .param p2, "minValue"    # F
    .param p3, "exclusiveMaxValue"    # F

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x1

    if-lt p1, v0, :cond_22

    .line 117
    cmpg-float v0, p3, p2

    if-lez v0, :cond_1a

    .line 121
    iput p2, p0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/Histogram$UniformOptions;->mMinValue:F

    .line 122
    iput p3, p0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/Histogram$UniformOptions;->mExclusiveMaxValue:F

    .line 123
    iget v0, p0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/Histogram$UniformOptions;->mExclusiveMaxValue:F

    sub-float/2addr v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/Histogram$UniformOptions;->mBinSize:F

    .line 126
    add-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/Histogram$UniformOptions;->mBinCount:I

    .line 127
    return-void

    .line 118
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bins range invalid (maxValue < minValue)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bin count should be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getBinForSample(F)I
    .registers 4
    .param p1, "sample"    # F

    .line 136
    iget v0, p0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/Histogram$UniformOptions;->mMinValue:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    .line 138
    const/4 v0, 0x0

    return v0

    .line 139
    :cond_8
    iget v0, p0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/Histogram$UniformOptions;->mExclusiveMaxValue:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_13

    .line 141
    iget v0, p0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/Histogram$UniformOptions;->mBinCount:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 143
    :cond_13
    iget v0, p0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/Histogram$UniformOptions;->mMinValue:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/Histogram$UniformOptions;->mBinSize:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public blacklist getBinsCount()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/Histogram$UniformOptions;->mBinCount:I

    return v0
.end method
