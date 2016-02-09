.class Landroid/widget/Scroller$ViscousFluidInterpolator;
.super Ljava/lang/Object;
.source "Scroller.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Scroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViscousFluidInterpolator"
.end annotation


# static fields
.field private static final VISCOUS_FLUID_NORMALIZE:F

.field private static final VISCOUS_FLUID_OFFSET:F

.field private static final VISCOUS_FLUID_SCALE:F = 8.0f


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    .line 571
    invoke-static {v2}, Landroid/widget/Scroller$ViscousFluidInterpolator;->viscousFluid(F)F

    #@5
    move-result v0

    #@6
    div-float v0, v2, v0

    #@8
    sput v0, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    #@a
    .line 573
    sget v0, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    #@c
    invoke-static {v2}, Landroid/widget/Scroller$ViscousFluidInterpolator;->viscousFluid(F)F

    #@f
    move-result v1

    #@10
    mul-float/2addr v0, v1

    #@11
    sub-float v0, v2, v0

    #@13
    sput v0, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    #@15
    .line 561
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static viscousFluid(F)F
    .locals 3
    .param p0, "x"    # F

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    .line 577
    const/high16 v0, 0x41000000    # 8.0f

    #@4
    mul-float/2addr p0, v0

    #@5
    .line 578
    cmpg-float v0, p0, v2

    #@7
    if-gez v0, :cond_0

    #@9
    .line 579
    neg-float v0, p0

    #@a
    float-to-double v0, v0

    #@b
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    #@e
    move-result-wide v0

    #@f
    double-to-float v0, v0

    #@10
    sub-float v0, v2, v0

    #@12
    sub-float/2addr p0, v0

    #@13
    .line 585
    :goto_0
    return p0

    #@14
    .line 582
    :cond_0
    sub-float v0, v2, p0

    #@16
    float-to-double v0, v0

    #@17
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    #@1a
    move-result-wide v0

    #@1b
    double-to-float v0, v0

    #@1c
    sub-float p0, v2, v0

    #@1e
    .line 583
    const v0, 0x3f21d2a7

    #@21
    mul-float/2addr v0, p0

    #@22
    .line 581
    const v1, 0x3ebc5ab2

    #@25
    .line 583
    add-float p0, v1, v0

    #@27
    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    #@0
    .prologue
    .line 590
    sget v1, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    #@2
    invoke-static {p1}, Landroid/widget/Scroller$ViscousFluidInterpolator;->viscousFluid(F)F

    #@5
    move-result v2

    #@6
    mul-float v0, v1, v2

    #@8
    .line 591
    .local v0, "interpolated":F
    const/4 v1, 0x0

    #@9
    cmpl-float v1, v0, v1

    #@b
    if-lez v1, :cond_0

    #@d
    .line 592
    sget v1, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    #@f
    add-float/2addr v1, v0

    #@10
    return v1

    #@11
    .line 594
    :cond_0
    return v0
.end method
