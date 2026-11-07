.class public Lcom/android/internal/graphics/palette/Target$Builder;
.super Ljava/lang/Object;
.source "Target.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mTarget:Lcom/android/internal/graphics/palette/Target;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lcom/android/internal/graphics/palette/Target;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Target;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    .line 164
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/graphics/palette/Target;)V
    .registers 3
    .param p1, "target"    # Lcom/android/internal/graphics/palette/Target;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/android/internal/graphics/palette/Target;

    invoke-direct {v0, p1}, Lcom/android/internal/graphics/palette/Target;-><init>(Lcom/android/internal/graphics/palette/Target;)V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    .line 169
    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/graphics/palette/Target;
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    return-object v0
.end method

.method public blacklist setChromaWeight(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3
    .param p1, "weight"    # F

    .line 246
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmChromaWeight(Lcom/android/internal/graphics/palette/Target;F)V

    .line 247
    return-object p0
.end method

.method public blacklist setContrastRatio(FF)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 7
    .param p1, "value"    # F
    .param p2, "relativeLuminance"    # F

    .line 221
    move v0, p2

    .line 222
    .local v0, "counterpartY":F
    invoke-static {v0}, Lcom/android/internal/graphics/palette/Contrast;->yToLstar(F)F

    move-result v1

    .line 225
    .local v1, "lstar":F
    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_10

    .line 226
    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Contrast;->lighterY(FF)F

    move-result v2

    .local v2, "targetY":F
    goto :goto_14

    .line 228
    .end local v2    # "targetY":F
    :cond_10
    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Contrast;->darkerY(FF)F

    move-result v2

    .line 230
    .restart local v2    # "targetY":F
    :goto_14
    iget-object v3, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v3, v2}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmTargetRelativeLuminance(Lcom/android/internal/graphics/palette/Target;F)V

    .line 231
    return-object p0
.end method

.method public blacklist setLightnessWeight(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3
    .param p1, "weight"    # F

    .line 262
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmRelativeLuminanceWeight(Lcom/android/internal/graphics/palette/Target;F)V

    .line 263
    return-object p0
.end method

.method public blacklist setMaximumChroma(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3
    .param p1, "value"    # F

    .line 188
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmChromaMax(Lcom/android/internal/graphics/palette/Target;F)V

    .line 189
    return-object p0
.end method

.method public blacklist setMinimumChroma(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3
    .param p1, "value"    # F

    .line 174
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmChromaMin(Lcom/android/internal/graphics/palette/Target;F)V

    .line 175
    return-object p0
.end method

.method public blacklist setPopulationWeight(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3
    .param p1, "weight"    # F

    .line 279
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmPopulationWeight(Lcom/android/internal/graphics/palette/Target;F)V

    .line 280
    return-object p0
.end method

.method public blacklist setTargetChroma(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3
    .param p1, "value"    # F

    .line 181
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmChromaTarget(Lcom/android/internal/graphics/palette/Target;F)V

    .line 182
    return-object p0
.end method

.method public blacklist setTargetHue(I)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 4
    .param p1, "hue"    # I

    .line 212
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmTargetHue(Lcom/android/internal/graphics/palette/Target;F)V

    .line 213
    return-object p0
.end method

.method public blacklist setTargetPerceptualLuminance(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 4
    .param p1, "value"    # F

    .line 202
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {p1}, Lcom/android/internal/graphics/palette/Contrast;->lstarToY(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmTargetRelativeLuminance(Lcom/android/internal/graphics/palette/Target;F)V

    .line 203
    return-object p0
.end method

.method public blacklist setTargetRelativeLuminance(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3
    .param p1, "value"    # F

    .line 195
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmTargetRelativeLuminance(Lcom/android/internal/graphics/palette/Target;F)V

    .line 196
    return-object p0
.end method
