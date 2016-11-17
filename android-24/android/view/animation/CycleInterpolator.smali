.class public Landroid/view/animation/CycleInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "CycleInterpolator.java"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# instance fields
.field private mCycles:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "cycles"    # F

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    .line 38
    iput p1, p0, Landroid/view/animation/CycleInterpolator;->mCycles:F

    #@5
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    #@b
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 46
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@4
    .line 48
    if-eqz p2, :cond_0

    #@6
    .line 49
    sget-object v1, Lcom/android/internal/R$styleable;->CycleInterpolator:[I

    #@8
    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 54
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    #@e
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@11
    move-result v1

    #@12
    iput v1, p0, Landroid/view/animation/CycleInterpolator;->mCycles:F

    #@14
    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@17
    move-result v1

    #@18
    invoke-virtual {p0, v1}, Landroid/view/animation/CycleInterpolator;->setChangingConfiguration(I)V

    #@1b
    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    .line 46
    return-void

    #@1f
    .line 51
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->CycleInterpolator:[I

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
    .line 68
    iget v0, p0, Landroid/view/animation/CycleInterpolator;->mCycles:F

    #@2
    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createCycleInterpolator(F)J

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
    .line 60
    iget v0, p0, Landroid/view/animation/CycleInterpolator;->mCycles:F

    #@2
    const/high16 v1, 0x40000000    # 2.0f

    #@4
    mul-float/2addr v0, v1

    #@5
    float-to-double v0, v0

    #@6
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    #@b
    mul-double/2addr v0, v2

    #@c
    float-to-double v2, p1

    #@d
    mul-double/2addr v0, v2

    #@e
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@11
    move-result-wide v0

    #@12
    double-to-float v0, v0

    #@13
    return v0
.end method
