.class public final synthetic Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist calculateContrast(III)D
    .registers 5

    .line 0
    iget v0, p0, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda1;->f$0:I

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/graphics/ColorUtils;->lambda$calculateMinimumBackgroundAlpha$0(IIII)D

    move-result-wide p1

    return-wide p1
.end method
