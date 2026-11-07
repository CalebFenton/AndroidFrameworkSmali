.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Ljava/util/IntSummaryStatistics;

    check-cast p2, Ljava/util/IntSummaryStatistics;

    invoke-static {p1, p2}, Ljava/util/stream/Collectors;->lambda$summarizingInt$71(Ljava/util/IntSummaryStatistics;Ljava/util/IntSummaryStatistics;)Ljava/util/IntSummaryStatistics;

    move-result-object p1

    return-object p1
.end method
