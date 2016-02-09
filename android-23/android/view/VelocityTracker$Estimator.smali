.class public final Landroid/view/VelocityTracker$Estimator;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VelocityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Estimator"
.end annotation


# static fields
.field private static final MAX_DEGREE:I = 0x4


# instance fields
.field public confidence:F

.field public degree:I

.field public final xCoeff:[F

.field public final yCoeff:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x5

    #@1
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 238
    new-array v0, v1, [F

    #@6
    iput-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    #@8
    .line 243
    new-array v0, v1, [F

    #@a
    iput-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    #@c
    .line 231
    return-void
.end method

.method private estimate(F[F)F
    .locals 4
    .param p1, "time"    # F
    .param p2, "c"    # [F

    #@0
    .prologue
    .line 292
    const/4 v0, 0x0

    #@1
    .line 293
    .local v0, "a":F
    const/high16 v2, 0x3f800000    # 1.0f

    #@3
    .line 294
    .local v2, "scale":F
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    #@6
    if-gt v1, v3, :cond_0

    #@8
    .line 295
    aget v3, p2, v1

    #@a
    mul-float/2addr v3, v2

    #@b
    add-float/2addr v0, v3

    #@c
    .line 296
    mul-float/2addr v2, p1

    #@d
    .line 294
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 298
    :cond_0
    return v0
.end method


# virtual methods
.method public estimateX(F)F
    .locals 1
    .param p1, "time"    # F

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    #@2
    invoke-direct {p0, p1, v0}, Landroid/view/VelocityTracker$Estimator;->estimate(F[F)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public estimateY(F)F
    .locals 1
    .param p1, "time"    # F

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    #@2
    invoke-direct {p0, p1, v0}, Landroid/view/VelocityTracker$Estimator;->estimate(F[F)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getXCoeff(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 279
    iget v0, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    #@2
    if-gt p1, v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    #@6
    aget v0, v0, p1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public getYCoeff(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 288
    iget v0, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    #@2
    if-gt p1, v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    #@6
    aget v0, v0, p1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method
