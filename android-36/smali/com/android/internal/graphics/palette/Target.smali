.class public final Lcom/android/internal/graphics/palette/Target;
.super Ljava/lang/Object;
.source "Target.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/Target$Builder;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_CHROMA_MAX:F = 130.0f

.field private static final blacklist DEFAULT_CHROMA_MIN:F = 0.0f

.field private static final blacklist DEFAULT_CHROMA_TARGET:F = 30.0f

.field private static final blacklist WEIGHT_CHROMA:F = 0.5f

.field private static final blacklist WEIGHT_HUE:F = 0.2f

.field private static final blacklist WEIGHT_POPULATION:F = 0.3f

.field private static final blacklist WEIGHT_RELATIVE_LUMINANCE:F = 0.5f


# instance fields
.field private blacklist mChromaMax:F

.field private blacklist mChromaMin:F

.field private blacklist mChromaTarget:F

.field private blacklist mChromaWeight:F

.field private blacklist mHueWeight:F

.field private blacklist mPopulationWeight:F

.field private blacklist mRelativeLuminanceWeight:F

.field private blacklist mTargetHue:F

.field private blacklist mTargetRelativeLuminance:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmChromaMax(Lcom/android/internal/graphics/palette/Target;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/graphics/palette/Target;->mChromaMax:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChromaMin(Lcom/android/internal/graphics/palette/Target;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/graphics/palette/Target;->mChromaMin:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChromaTarget(Lcom/android/internal/graphics/palette/Target;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/graphics/palette/Target;->mChromaTarget:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChromaWeight(Lcom/android/internal/graphics/palette/Target;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/graphics/palette/Target;->mChromaWeight:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPopulationWeight(Lcom/android/internal/graphics/palette/Target;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/graphics/palette/Target;->mPopulationWeight:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRelativeLuminanceWeight(Lcom/android/internal/graphics/palette/Target;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/graphics/palette/Target;->mRelativeLuminanceWeight:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTargetHue(Lcom/android/internal/graphics/palette/Target;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/graphics/palette/Target;->mTargetHue:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTargetRelativeLuminance(Lcom/android/internal/graphics/palette/Target;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/graphics/palette/Target;->mTargetRelativeLuminance:F

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mTargetRelativeLuminance:F

    .line 51
    const/high16 v0, 0x43020000    # 130.0f

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mChromaMax:F

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mChromaMin:F

    .line 53
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mChromaTarget:F

    .line 54
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mChromaWeight:F

    .line 55
    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mRelativeLuminanceWeight:F

    .line 56
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mPopulationWeight:F

    .line 57
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mHueWeight:F

    .line 58
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/graphics/palette/Target;)V
    .registers 3
    .param p1, "from"    # Lcom/android/internal/graphics/palette/Target;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mTargetRelativeLuminance:F

    .line 61
    iget v0, p1, Lcom/android/internal/graphics/palette/Target;->mTargetRelativeLuminance:F

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mTargetRelativeLuminance:F

    .line 62
    iget v0, p1, Lcom/android/internal/graphics/palette/Target;->mChromaWeight:F

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mChromaWeight:F

    .line 63
    iget v0, p1, Lcom/android/internal/graphics/palette/Target;->mRelativeLuminanceWeight:F

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mRelativeLuminanceWeight:F

    .line 64
    iget v0, p1, Lcom/android/internal/graphics/palette/Target;->mPopulationWeight:F

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mPopulationWeight:F

    .line 65
    iget v0, p1, Lcom/android/internal/graphics/palette/Target;->mHueWeight:F

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mHueWeight:F

    .line 66
    iget v0, p1, Lcom/android/internal/graphics/palette/Target;->mChromaTarget:F

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mChromaTarget:F

    .line 67
    iget v0, p1, Lcom/android/internal/graphics/palette/Target;->mChromaMin:F

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mChromaMin:F

    .line 68
    iget v0, p1, Lcom/android/internal/graphics/palette/Target;->mChromaMax:F

    iput v0, p0, Lcom/android/internal/graphics/palette/Target;->mChromaMax:F

    .line 69
    return-void
.end method


# virtual methods
.method public blacklist getChromaWeight()F
    .registers 2

    .line 118
    iget v0, p0, Lcom/android/internal/graphics/palette/Target;->mChromaWeight:F

    return v0
.end method

.method public blacklist getHueWeight()F
    .registers 2

    .line 153
    iget v0, p0, Lcom/android/internal/graphics/palette/Target;->mHueWeight:F

    return v0
.end method

.method public blacklist getLightnessWeight()F
    .registers 2

    .line 132
    iget v0, p0, Lcom/android/internal/graphics/palette/Target;->mRelativeLuminanceWeight:F

    return v0
.end method

.method public blacklist getMaximumChroma()F
    .registers 2

    .line 98
    iget v0, p0, Lcom/android/internal/graphics/palette/Target;->mChromaMax:F

    return v0
.end method

.method public blacklist getMinimumChroma()F
    .registers 2

    .line 86
    iget v0, p0, Lcom/android/internal/graphics/palette/Target;->mChromaMin:F

    return v0
.end method

.method public blacklist getPopulationWeight()F
    .registers 2

    .line 143
    iget v0, p0, Lcom/android/internal/graphics/palette/Target;->mPopulationWeight:F

    return v0
.end method

.method public blacklist getTargetChroma()F
    .registers 2

    .line 92
    iget v0, p0, Lcom/android/internal/graphics/palette/Target;->mChromaTarget:F

    return v0
.end method

.method public blacklist getTargetHue()F
    .registers 2

    .line 104
    iget v0, p0, Lcom/android/internal/graphics/palette/Target;->mTargetHue:F

    return v0
.end method

.method public blacklist getTargetPerceptualLuminance()F
    .registers 2

    .line 80
    iget v0, p0, Lcom/android/internal/graphics/palette/Target;->mTargetRelativeLuminance:F

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Contrast;->yToLstar(F)F

    move-result v0

    return v0
.end method

.method public blacklist getTargetRelativeLuminance()F
    .registers 2

    .line 74
    iget v0, p0, Lcom/android/internal/graphics/palette/Target;->mTargetRelativeLuminance:F

    return v0
.end method
