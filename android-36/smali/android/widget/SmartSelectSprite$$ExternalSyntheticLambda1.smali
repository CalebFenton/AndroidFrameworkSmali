.class public final synthetic Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    .line 0
    check-cast p1, Landroid/graphics/RectF;

    invoke-static {p1}, Landroid/widget/SmartSelectSprite;->lambda$static$1(Landroid/graphics/RectF;)D

    move-result-wide v0

    return-wide v0
.end method
