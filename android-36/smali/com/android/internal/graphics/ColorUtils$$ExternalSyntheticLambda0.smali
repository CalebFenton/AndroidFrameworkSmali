.class public final synthetic Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist calculateContrast(III)D
    .registers 4

    .line 0
    invoke-static {p1, p2, p3}, Lcom/android/internal/graphics/ColorUtils;->lambda$calculateMinimumAlpha$1(III)D

    move-result-wide p1

    return-wide p1
.end method
