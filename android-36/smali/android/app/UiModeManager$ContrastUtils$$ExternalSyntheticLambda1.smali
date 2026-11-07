.class public final synthetic Landroid/app/UiModeManager$ContrastUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic blacklist f$0:F


# direct methods
.method public synthetic constructor blacklist <init>(F)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/UiModeManager$ContrastUtils$$ExternalSyntheticLambda1;->f$0:F

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    .line 0
    iget v0, p0, Landroid/app/UiModeManager$ContrastUtils$$ExternalSyntheticLambda1;->f$0:F

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Landroid/app/UiModeManager$ContrastUtils;->lambda$toContrastLevel$0(FLjava/lang/Integer;)D

    move-result-wide v0

    return-wide v0
.end method
