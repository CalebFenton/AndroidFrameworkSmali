.class public Landroid/view/animation/AccelerateInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "AccelerateInterpolator.java"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# instance fields
.field private final mDoubleFactor:D

.field private final mFactor:F


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    iput v0, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    #@7
    .line 42
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    #@9
    iput-wide v0, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    #@b
    .line 40
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "factor"    # F

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    .line 54
    iput p1, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    #@5
    .line 55
    iget v0, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    #@7
    const/high16 v1, 0x40000000    # 2.0f

    #@9
    mul-float/2addr v0, v1

    #@a
    float-to-double v0, v0

    #@b
    iput-wide v0, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    #@d
    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    #@b
    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 63
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@4
    .line 65
    if-eqz p2, :cond_0

    #@6
    .line 66
    sget-object v1, Lcom/android/internal/R$styleable;->AccelerateInterpolator:[I

    #@8
    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 71
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    #@e
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@11
    move-result v1

    #@12
    iput v1, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    #@14
    .line 72
    iget v1, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    #@16
    const/high16 v2, 0x40000000    # 2.0f

    #@18
    mul-float/2addr v1, v2

    #@19
    float-to-double v2, v1

    #@1a
    iput-wide v2, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    #@1c
    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {p0, v1}, Landroid/view/animation/AccelerateInterpolator;->setChangingConfiguration(I)V

    #@23
    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@26
    .line 63
    return-void

    #@27
    .line 68
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->AccelerateInterpolator:[I

    #@29
    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2c
    move-result-object v0

    #@2d
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    #@0
    .prologue
    .line 88
    iget v0, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    #@2
    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createAccelerateInterpolator(F)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    #@0
    .prologue
    .line 78
    iget v0, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    #@2
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    cmpl-float v0, v0, v1

    #@6
    if-nez v0, :cond_0

    #@8
    .line 79
    mul-float v0, p1, p1

    #@a
    return v0

    #@b
    .line 81
    :cond_0
    float-to-double v0, p1

    #@c
    iget-wide v2, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    #@e
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@11
    move-result-wide v0

    #@12
    double-to-float v0, v0

    #@13
    return v0
.end method
