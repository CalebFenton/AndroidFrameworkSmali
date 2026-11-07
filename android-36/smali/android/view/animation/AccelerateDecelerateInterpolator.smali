.class public Landroid/view/animation/AccelerateDecelerateInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "AccelerateDecelerateInterpolator.java"

# interfaces
.implements Landroid/graphics/animation/NativeInterpolator;


# annotations
.annotation runtime Landroid/graphics/animation/HasNativeInterpolator;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 33
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public greylist-max-o createNativeInterpolator()J
    .registers 3

    .line 46
    invoke-static {}, Landroid/graphics/animation/NativeInterpolatorFactory;->createAccelerateDecelerateInterpolator()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInterpolation(F)F
    .registers 6
    .param p1, "input"    # F

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    return v0
.end method
