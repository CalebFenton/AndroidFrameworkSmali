.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda66;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/ToLongFunction;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda66;->f$0:Ljava/util/function/ToLongFunction;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda66;->f$0:Ljava/util/function/ToLongFunction;

    check-cast p1, Ljava/util/LongSummaryStatistics;

    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$summarizingLong$72(Ljava/util/function/ToLongFunction;Ljava/util/LongSummaryStatistics;Ljava/lang/Object;)V

    return-void
.end method
