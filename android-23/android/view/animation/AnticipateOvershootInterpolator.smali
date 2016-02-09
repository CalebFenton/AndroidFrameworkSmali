.class public Landroid/view/animation/AnticipateOvershootInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "AnticipateOvershootInterpolator.java"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# instance fields
.field private final mTension:F


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    .line 43
    const/high16 v0, 0x40400000    # 3.0f

    #@5
    iput v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    #@7
    .line 42
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "tension"    # F

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    .line 52
    const/high16 v0, 0x3fc00000    # 1.5f

    #@5
    mul-float/2addr v0, p1

    #@6
    iput v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    #@8
    .line 51
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "tension"    # F
    .param p2, "extraTension"    # F

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    .line 64
    mul-float v0, p1, p2

    #@5
    iput v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    #@7
    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    #@b
    .line 67
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
    .line 72
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@4
    .line 74
    if-eqz p2, :cond_0

    #@6
    .line 75
    sget-object v1, Lcom/android/internal/R$styleable;->AnticipateOvershootInterpolator:[I

    #@8
    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    #@e
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@11
    move-result v1

    #@12
    .line 81
    const/4 v2, 0x1

    #@13
    const/high16 v3, 0x3fc00000    # 1.5f

    #@15
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@18
    move-result v2

    #@19
    .line 80
    mul-float/2addr v1, v2

    #@1a
    iput v1, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    #@1c
    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {p0, v1}, Landroid/view/animation/AnticipateOvershootInterpolator;->setChangingConfiguration(I)V

    #@23
    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@26
    .line 72
    return-void

    #@27
    .line 77
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->AnticipateOvershootInterpolator:[I

    #@29
    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2c
    move-result-object v0

    #@2d
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0
.end method

.method private static a(FF)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "s"    # F

    #@0
    .prologue
    .line 87
    mul-float v0, p0, p0

    #@2
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    add-float/2addr v1, p1

    #@5
    mul-float/2addr v1, p0

    #@6
    sub-float/2addr v1, p1

    #@7
    mul-float/2addr v0, v1

    #@8
    return v0
.end method

.method private static o(FF)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "s"    # F

    #@0
    .prologue
    .line 91
    mul-float v0, p0, p0

    #@2
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    add-float/2addr v1, p1

    #@5
    mul-float/2addr v1, p0

    #@6
    add-float/2addr v1, p1

    #@7
    mul-float/2addr v0, v1

    #@8
    return v0
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    #@0
    .prologue
    .line 106
    iget v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    #@2
    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createAnticipateOvershootInterpolator(F)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 4
    .param p1, "t"    # F

    #@0
    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    #@2
    const/high16 v2, 0x40000000    # 2.0f

    #@4
    .line 99
    cmpg-float v0, p1, v3

    #@6
    if-gez v0, :cond_0

    #@8
    mul-float v0, p1, v2

    #@a
    iget v1, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    #@c
    invoke-static {v0, v1}, Landroid/view/animation/AnticipateOvershootInterpolator;->a(FF)F

    #@f
    move-result v0

    #@10
    mul-float/2addr v0, v3

    #@11
    return v0

    #@12
    .line 100
    :cond_0
    mul-float v0, p1, v2

    #@14
    sub-float/2addr v0, v2

    #@15
    iget v1, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    #@17
    invoke-static {v0, v1}, Landroid/view/animation/AnticipateOvershootInterpolator;->o(FF)F

    #@1a
    move-result v0

    #@1b
    add-float/2addr v0, v2

    #@1c
    mul-float/2addr v0, v3

    #@1d
    return v0
.end method
