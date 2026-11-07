.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Function;

.field public final synthetic blacklist f$1:Ljava/util/function/Supplier;

.field public final synthetic blacklist f$2:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda12;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda12;->f$1:Ljava/util/function/Supplier;

    iput-object p3, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda12;->f$2:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda12;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda12;->f$1:Ljava/util/function/Supplier;

    iget-object v2, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda12;->f$2:Ljava/util/function/BiConsumer;

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1, v2, p1, p2}, Ljava/util/stream/Collectors;->lambda$groupingByConcurrent$59(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V

    return-void
.end method
