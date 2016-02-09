.class final Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;
.super Ljava/lang/Object;
.source "RippleForeground.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogDecelerateInterpolator"
.end annotation


# instance fields
.field private final mBase:F

.field private final mDrift:F

.field private final mOutputScale:F

.field private final mTimeScale:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 2
    .param p1, "base"    # F
    .param p2, "timeScale"    # F
    .param p3, "drift"    # F

    #@0
    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 366
    iput p1, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mBase:F

    #@7
    .line 367
    iput p3, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mDrift:F

    #@9
    .line 368
    div-float v0, v1, p2

    #@b
    iput v0, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mTimeScale:F

    #@d
    .line 370
    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->computeLog(F)F

    #@10
    move-result v0

    #@11
    div-float v0, v1, v0

    #@13
    iput v0, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mOutputScale:F

    #@15
    .line 365
    return-void
.end method

.method private computeLog(F)F
    .locals 4
    .param p1, "t"    # F

    #@0
    .prologue
    .line 374
    iget v0, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mBase:F

    #@2
    float-to-double v0, v0

    #@3
    neg-float v2, p1

    #@4
    iget v3, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mTimeScale:F

    #@6
    mul-float/2addr v2, v3

    #@7
    float-to-double v2, v2

    #@8
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@b
    move-result-wide v0

    #@c
    double-to-float v0, v0

    #@d
    const/high16 v1, 0x3f800000    # 1.0f

    #@f
    sub-float v0, v1, v0

    #@11
    iget v1, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mDrift:F

    #@13
    mul-float/2addr v1, p1

    #@14
    add-float/2addr v0, v1

    #@15
    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    #@0
    .prologue
    .line 379
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->computeLog(F)F

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mOutputScale:F

    #@6
    mul-float/2addr v0, v1

    #@7
    return v0
.end method
