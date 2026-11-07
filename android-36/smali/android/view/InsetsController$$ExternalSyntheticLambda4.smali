.class public final synthetic Landroid/view/InsetsController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    check-cast p2, Landroid/graphics/Insets;

    check-cast p3, Landroid/graphics/Insets;

    invoke-static {p1, p2, p3}, Landroid/view/InsetsController;->lambda$static$1(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1
.end method
