.class public final synthetic Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntBinaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(II)I
    .registers 3

    .line 0
    invoke-static {p1, p2}, Ljava/lang/Integer;->sum(II)I

    move-result p1

    return p1
.end method
