.class public Landroid/view/animation/AnticipateInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "AnticipateInterpolator.java"

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
    .line 37
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    .line 38
    const/high16 v0, 0x40000000    # 2.0f

    #@5
    iput v0, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    #@7
    .line 37
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "tension"    # F

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    .line 47
    iput p1, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    #@5
    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    #@b
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 55
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@4
    .line 57
    if-eqz p2, :cond_0

    #@6
    .line 58
    sget-object v1, Lcom/android/internal/R$styleable;->AnticipateInterpolator:[I

    #@8
    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    #@e
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@11
    move-result v1

    #@12
    iput v1, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    #@14
    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@17
    move-result v1

    #@18
    invoke-virtual {p0, v1}, Landroid/view/animation/AnticipateInterpolator;->setChangingConfiguration(I)V

    #@1b
    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    .line 55
    return-void

    #@1f
    .line 60
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->AnticipateInterpolator:[I

    #@21
    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@24
    move-result-object v0

    #@25
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    #@2
    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createAnticipateInterpolator(F)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 3
    .param p1, "t"    # F

    #@0
    .prologue
    .line 70
    mul-float v0, p1, p1

    #@2
    iget v1, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    #@4
    const/high16 v2, 0x3f800000    # 1.0f

    #@6
    add-float/2addr v1, v2

    #@7
    mul-float/2addr v1, p1

    #@8
    iget v2, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    #@a
    sub-float/2addr v1, v2

    #@b
    mul-float/2addr v0, v1

    #@c
    return v0
.end method
