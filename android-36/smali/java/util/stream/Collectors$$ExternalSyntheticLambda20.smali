.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/ToDoubleFunction;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda20;->f$0:Ljava/util/function/ToDoubleFunction;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda20;->f$0:Ljava/util/function/ToDoubleFunction;

    check-cast p1, Ljava/util/DoubleSummaryStatistics;

    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$summarizingDouble$74(Ljava/util/function/ToDoubleFunction;Ljava/util/DoubleSummaryStatistics;Ljava/lang/Object;)V

    return-void
.end method
