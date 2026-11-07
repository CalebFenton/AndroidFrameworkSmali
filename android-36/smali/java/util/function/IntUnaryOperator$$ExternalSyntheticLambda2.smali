.class public final synthetic Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(I)I
    .registers 2

    .line 0
    invoke-static {p1}, Ljava/util/function/IntUnaryOperator;->lambda$identity$2(I)I

    move-result p1

    return p1
.end method
