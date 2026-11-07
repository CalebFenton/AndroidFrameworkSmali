.class public Landroid/view/animation/AnticipateOvershootInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "AnticipateOvershootInterpolator.java"

# interfaces
.implements Landroid/graphics/animation/NativeInterpolator;


# annotations
.annotation runtime Landroid/graphics/animation/HasNativeInterpolator;
.end annotation


# instance fields
.field private final greylist-max-o mTension:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 43
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    .line 44
    return-void
.end method

.method public constructor whitelist <init>(F)V
    .registers 3
    .param p1, "tension"    # F

    .line 51
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 52
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    .line 53
    return-void
.end method

.method public constructor whitelist <init>(FF)V
    .registers 4
    .param p1, "tension"    # F
    .param p2, "extraTension"    # F

    .line 63
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 64
    mul-float v0, p1, p2

    iput v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    .line 65
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 72
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 74
    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 75
    sget-object v1, Lcom/android/internal/R$styleable;->AnticipateOvershootInterpolator:[I

    invoke-virtual {p2, p3, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "a":Landroid/content/res/TypedArray;
    goto :goto_13

    .line 77
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_d
    sget-object v1, Lcom/android/internal/R$styleable;->AnticipateOvershootInterpolator:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 80
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :goto_13
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 81
    const/4 v2, 0x1

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    mul-float/2addr v0, v2

    iput v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    .line 82
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/animation/AnticipateOvershootInterpolator;->setChangingConfiguration(I)V

    .line 83
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method

.method private static greylist-max-o a(FF)F
    .registers 4
    .param p0, "t"    # F
    .param p1, "s"    # F

    .line 87
    mul-float v0, p0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    mul-float/2addr v1, p0

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    return v0
.end method

.method private static greylist-max-o o(FF)F
    .registers 4
    .param p0, "t"    # F
    .param p1, "s"    # F

    .line 91
    mul-float v0, p0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    mul-float/2addr v1, p0

    add-float/2addr v1, p1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public greylist-max-o createNativeInterpolator()J
    .registers 3

    .line 106
    iget v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    invoke-static {v0}, Landroid/graphics/animation/NativeInterpolatorFactory;->createAnticipateOvershootInterpolator(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInterpolation(F)F
    .registers 6
    .param p1, "t"    # F

    .line 99
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v1, :cond_11

    mul-float/2addr v2, p1

    iget v1, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    invoke-static {v2, v1}, Landroid/view/animation/AnticipateOvershootInterpolator;->a(FF)F

    move-result v1

    mul-float/2addr v1, v0

    return v1

    .line 100
    :cond_11
    mul-float v1, p1, v2

    sub-float/2addr v1, v2

    iget v3, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    invoke-static {v1, v3}, Landroid/view/animation/AnticipateOvershootInterpolator;->o(FF)F

    move-result v1

    add-float/2addr v1, v2

    mul-float/2addr v1, v0

    return v1
.end method
