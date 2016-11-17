.class public Landroid/view/animation/BounceInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "BounceInterpolator.java"

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
    .line 31
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
    .line 35
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    return-void
.end method

.method private static bounce(F)F
    .locals 2
    .param p0, "t"    # F

    #@0
    .prologue
    .line 39
    mul-float v0, p0, p0

    #@2
    const/high16 v1, 0x41000000    # 8.0f

    #@4
    mul-float/2addr v0, v1

    #@5
    return v0
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    #@0
    .prologue
    .line 59
    invoke-static {}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createBounceInterpolator()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    #@0
    .prologue
    .line 49
    const v0, 0x3f8fb15b    # 1.1226f

    #@3
    mul-float/2addr p1, v0

    #@4
    .line 50
    const v0, 0x3eb4fdf4    # 0.3535f

    #@7
    cmpg-float v0, p1, v0

    #@9
    if-gez v0, :cond_0

    #@b
    invoke-static {p1}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 51
    :cond_0
    const v0, 0x3f3da512    # 0.7408f

    #@13
    cmpg-float v0, p1, v0

    #@15
    if-gez v0, :cond_1

    #@17
    const v0, 0x3f0c14a5

    #@1a
    sub-float v0, p1, v0

    #@1c
    invoke-static {v0}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    #@1f
    move-result v0

    #@20
    const v1, 0x3f333333    # 0.7f

    #@23
    add-float/2addr v0, v1

    #@24
    return v0

    #@25
    .line 52
    :cond_1
    const v0, 0x3f76e2eb    # 0.9644f

    #@28
    cmpg-float v0, p1, v0

    #@2a
    if-gez v0, :cond_2

    #@2c
    const v0, 0x3f5a43fe    # 0.8526f

    #@2f
    sub-float v0, p1, v0

    #@31
    invoke-static {v0}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    #@34
    move-result v0

    #@35
    const v1, 0x3f666666    # 0.9f

    #@38
    add-float/2addr v0, v1

    #@39
    return v0

    #@3a
    .line 53
    :cond_2
    const v0, 0x3f859168    # 1.0435f

    #@3d
    sub-float v0, p1, v0

    #@3f
    invoke-static {v0}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    #@42
    move-result v0

    #@43
    const v1, 0x3f733333    # 0.95f

    #@46
    add-float/2addr v0, v1

    #@47
    return v0
.end method
