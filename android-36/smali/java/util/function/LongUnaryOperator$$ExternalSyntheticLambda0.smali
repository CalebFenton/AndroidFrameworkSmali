.class public final synthetic Ljava/util/function/LongUnaryOperator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsLong(J)J
    .registers 3

    .line 0
    invoke-static {p1, p2}, Ljava/util/function/LongUnaryOperator;->lambda$identity$2(J)J

    move-result-wide p1

    return-wide p1
.end method
