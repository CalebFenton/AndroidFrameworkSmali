.class public Landroid/view/animation/DecelerateInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "DecelerateInterpolator.java"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# instance fields
.field private mFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    #@7
    .line 37
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "factor"    # F

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    #@7
    .line 48
    iput p1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    #@9
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    #@b
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    #@2
    const/4 v2, 0x0

    #@3
    .line 56
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@6
    .line 79
    iput v3, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    #@8
    .line 58
    if-eqz p2, :cond_0

    #@a
    .line 59
    sget-object v1, Lcom/android/internal/R$styleable;->DecelerateInterpolator:[I

    #@c
    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@f
    move-result-object v0

    #@10
    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@13
    move-result v1

    #@14
    iput v1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    #@16
    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {p0, v1}, Landroid/view/animation/DecelerateInterpolator;->setChangingConfiguration(I)V

    #@1d
    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@20
    .line 56
    return-void

    #@21
    .line 61
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->DecelerateInterpolator:[I

    #@23
    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@26
    move-result-object v0

    #@27
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    #@0
    .prologue
    .line 84
    iget v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    #@2
    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createDecelerateInterpolator(F)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    #@0
    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    #@2
    .line 71
    iget v1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    #@4
    cmpl-float v1, v1, v3

    #@6
    if-nez v1, :cond_0

    #@8
    .line 72
    sub-float v1, v3, p1

    #@a
    sub-float v2, v3, p1

    #@c
    mul-float/2addr v1, v2

    #@d
    sub-float v0, v3, v1

    #@f
    .line 76
    .local v0, "result":F
    :goto_0
    return v0

    #@10
    .line 74
    .end local v0    # "result":F
    :cond_0
    sub-float v1, v3, p1

    #@12
    float-to-double v2, v1

    #@13
    iget v1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    #@15
    const/high16 v4, 0x40000000    # 2.0f

    #@17
    mul-float/2addr v1, v4

    #@18
    float-to-double v4, v1

    #@19
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    #@1c
    move-result-wide v2

    #@1d
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@1f
    sub-double v2, v4, v2

    #@21
    double-to-float v0, v2

    #@22
    .restart local v0    # "result":F
    goto :goto_0
.end method
