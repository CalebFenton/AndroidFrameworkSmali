.class public final synthetic Ljava/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsDouble(D)D
    .registers 3

    .line 0
    invoke-static {p1, p2}, Ljava/util/function/DoubleUnaryOperator;->lambda$identity$2(D)D

    move-result-wide p1

    return-wide p1
.end method
