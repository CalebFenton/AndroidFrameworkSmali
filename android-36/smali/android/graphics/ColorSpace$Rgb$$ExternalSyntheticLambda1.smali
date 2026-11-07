.class public final synthetic Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic blacklist f$0:D


# direct methods
.method public synthetic constructor blacklist <init>(D)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda1;->f$0:D

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsDouble(D)D
    .registers 5

    .line 0
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda1;->f$0:D

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$new$9(DD)D

    move-result-wide p1

    return-wide p1
.end method
