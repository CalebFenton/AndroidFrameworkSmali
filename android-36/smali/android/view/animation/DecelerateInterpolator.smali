.class public Landroid/view/animation/DecelerateInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "DecelerateInterpolator.java"

# interfaces
.implements Landroid/graphics/animation/NativeInterpolator;


# annotations
.annotation runtime Landroid/graphics/animation/HasNativeInterpolator;
.end annotation


# instance fields
.field private greylist-max-o mFactor:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 38
    return-void
.end method

.method public constructor whitelist <init>(F)V
    .registers 3
    .param p1, "factor"    # F

    .line 47
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 48
    iput p1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 49
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 58
    const/4 v1, 0x0

    if-eqz p2, :cond_11

    .line 59
    sget-object v2, Lcom/android/internal/R$styleable;->DecelerateInterpolator:[I

    invoke-virtual {p2, p3, v2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .local v2, "a":Landroid/content/res/TypedArray;
    goto :goto_17

    .line 61
    .end local v2    # "a":Landroid/content/res/TypedArray;
    :cond_11
    sget-object v2, Lcom/android/internal/R$styleable;->DecelerateInterpolator:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 64
    .restart local v2    # "a":Landroid/content/res/TypedArray;
    :goto_17
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 65
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/animation/DecelerateInterpolator;->setChangingConfiguration(I)V

    .line 66
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method


# virtual methods
.method public greylist-max-o createNativeInterpolator()J
    .registers 3

    .line 84
    iget v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    invoke-static {v0}, Landroid/graphics/animation/NativeInterpolatorFactory;->createDecelerateInterpolator(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInterpolation(F)F
    .registers 6
    .param p1, "input"    # F

    .line 71
    iget v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    .line 72
    sub-float v0, v1, p1

    sub-float v2, v1, p1

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    .local v1, "result":F
    goto :goto_1f

    .line 74
    .end local v1    # "result":F
    :cond_f
    sub-float/2addr v1, p1

    float-to-double v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    mul-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float v1, v2

    .line 76
    .restart local v1    # "result":F
    :goto_1f
    return v1
.end method
