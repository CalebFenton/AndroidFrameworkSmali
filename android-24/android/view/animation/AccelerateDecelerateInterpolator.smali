.class public Landroid/view/animation/AccelerateDecelerateInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "AccelerateDecelerateInterpolator.java"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    #@0
    .prologue
    .line 47
    invoke-static {}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createAccelerateDecelerateInterpolator()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    #@0
    .prologue
    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    add-float/2addr v0, p1

    #@3
    float-to-double v0, v0

    #@4
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    #@9
    mul-double/2addr v0, v2

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@d
    move-result-wide v0

    #@e
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    #@10
    div-double/2addr v0, v2

    #@11
    double-to-float v0, v0

    #@12
    const/high16 v1, 0x3f000000    # 0.5f

    #@14
    add-float/2addr v0, v1

    #@15
    return v0
.end method
