.class public final Ljava/util/stream/Collectors;
.super Ljava/lang/Object;
.source "Collectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Collectors$CollectorImpl;,
        Ljava/util/stream/Collectors$Partition;
    }
.end annotation


# static fields
.field static final greylist-max-o CH_CONCURRENT_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o CH_CONCURRENT_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o CH_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o CH_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o CH_UNORDERED_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist CH_UNORDERED_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcastingIdentity()Ljava/util/function/Function;
    .registers 1

    invoke-static {}, Ljava/util/stream/Collectors;->castingIdentity()Ljava/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 108
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    sget-object v2, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    .line 109
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    .line 112
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    .line 113
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    .line 115
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    .line 116
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    .line 117
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    .line 118
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    .line 120
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 121
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    .line 122
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_UNORDERED_NOID:Ljava/util/Set;

    .line 121
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api averagingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 868
    .local p0, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda36;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda36;-><init>()V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda37;-><init>(Ljava/util/function/ToDoubleFunction;)V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda38;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda38;-><init>()V

    new-instance v4, Ljava/util/stream/Collectors$$ExternalSyntheticLambda39;

    invoke-direct {v4}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda39;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist test-api averagingInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 811
    .local p0, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda40;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda40;-><init>()V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda41;

    invoke-direct {v2, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda41;-><init>(Ljava/util/function/ToIntFunction;)V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda42;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda42;-><init>()V

    new-instance v4, Ljava/util/stream/Collectors$$ExternalSyntheticLambda43;

    invoke-direct {v4}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda43;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist test-api averagingLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 830
    .local p0, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda90;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda90;-><init>()V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda91;

    invoke-direct {v2, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda91;-><init>(Ljava/util/function/ToLongFunction;)V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda92;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda92;-><init>()V

    new-instance v4, Ljava/util/stream/Collectors$$ExternalSyntheticLambda93;

    invoke-direct {v4}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda93;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method private static greylist-max-o boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/function/Supplier<",
            "[TT;>;"
        }
    .end annotation

    .line 914
    .local p0, "identity":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda22;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static greylist-max-o castingIdentity()Ljava/util/function/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Function<",
            "TI;TR;>;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda69;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "RR:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "TT;TA;TR;>;",
            "Ljava/util/function/Function<",
            "TR;TRR;>;)",
            "Ljava/util/stream/Collector<",
            "TT;TA;TRR;>;"
        }
    .end annotation

    .line 615
    .local p0, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<TT;TA;TR;>;"
    .local p1, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TR;TRR;>;"
    invoke-interface {p0}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    .line 616
    .local v0, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    sget-object v1, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 617
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 618
    sget-object v0, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v6, v0

    goto :goto_27

    .line 620
    :cond_17
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 621
    sget-object v1, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 622
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    move-object v6, v0

    goto :goto_27

    .line 616
    :cond_26
    move-object v6, v0

    .line 625
    .end local v0    # "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    .local v6, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    :goto_27
    new-instance v1, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-interface {p0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    .line 626
    invoke-interface {p0}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v3

    .line 627
    invoke-interface {p0}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    .line 628
    invoke-interface {p0}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 625
    return-object v1
.end method

.method static greylist-max-o computeFinalSum([D)D
    .registers 6
    .param p0, "summands"    # [D

    .line 791
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    sub-double/2addr v0, v3

    .line 792
    .local v0, "tmp":D
    array-length v3, p0

    sub-int/2addr v3, v2

    aget-wide v2, p0, v3

    .line 793
    .local v2, "simpleSum":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 794
    return-wide v2

    .line 796
    :cond_18
    return-wide v0
.end method

.method public static whitelist test-api counting()Ljava/util/stream/Collector;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 648
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda79;-><init>()V

    invoke-static {v0}, Ljava/util/stream/Collectors;->summingLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;
    .registers 6
    .param p0, "k"    # Ljava/lang/Object;
    .param p1, "u"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Duplicate key %s (attempted merging values %s and %s)"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist test-api filtering(Ljava/util/function/Predicate;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "-TT;>;",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TR;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 583
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p1, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TR;>;"
    invoke-interface {p1}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    .line 584
    .local v0, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    new-instance v1, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda71;

    invoke-direct {v3, p0, v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda71;-><init>(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    .line 590
    invoke-interface {p1}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v5

    .line 591
    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 584
    return-object v1
.end method

.method public static whitelist test-api flatMapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TU;>;>;",
            "Ljava/util/stream/Collector<",
            "-TU;TA;TR;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 533
    .local p0, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/stream/Stream<+TU;>;>;"
    .local p1, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TU;TA;TR;>;"
    invoke-interface {p1}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    .line 534
    .local v0, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TU;>;"
    new-instance v1, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda81;

    invoke-direct {v3, p0, v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda81;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;)V

    .line 541
    invoke-interface {p1}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v5

    .line 542
    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 534
    return-object v1
.end method

.method public static whitelist test-api groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1056
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TD;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1160
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "mapFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    .local p2, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    invoke-interface {p2}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    .line 1161
    .local v0, "downstreamSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    invoke-interface {p2}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v1

    .line 1162
    .local v1, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda63;

    invoke-direct {v2, p0, v0, v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda63;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    move-object v5, v2

    .line 1167
    .local v5, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/Map<TK;TA;>;TT;>;"
    invoke-interface {p2}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v2

    invoke-static {v2}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v6

    .line 1169
    .local v6, "merger":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/util/Map<TK;TA;>;>;"
    move-object v4, p1

    .line 1171
    .local v4, "mangledFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Map<TK;TA;>;>;"
    invoke-interface {p2}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1172
    new-instance v2, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v3, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v2, v4, v5, v6, v3}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v2

    .line 1176
    :cond_2b
    invoke-interface {p2}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v2

    .line 1177
    .local v2, "downstreamFinisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TA;>;"
    new-instance v7, Ljava/util/stream/Collectors$$ExternalSyntheticLambda64;

    invoke-direct {v7, v2}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda64;-><init>(Ljava/util/function/Function;)V

    .line 1183
    .local v7, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map<TK;TA;>;TM;>;"
    new-instance v3, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v8, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v3 .. v8}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v3
.end method

.method public static whitelist test-api groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TD;>;>;"
        }
    .end annotation

    .line 1106
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda80;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda80;-><init>()V

    invoke-static {p0, v0, p1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api groupingByConcurrent(Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1223
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TD;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1318
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "mapFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    .local p2, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    invoke-interface {p2}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    .line 1319
    .local v0, "downstreamSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    invoke-interface {p2}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v1

    .line 1320
    .local v1, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    invoke-interface {p2}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v2

    invoke-static {v2}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v6

    .line 1322
    .local v6, "merger":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;>;"
    move-object v4, p1

    .line 1324
    .local v4, "mangledFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;>;"
    invoke-interface {p2}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1325
    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0, v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda11;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    move-object v5, v2

    .local v2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    goto :goto_2a

    .line 1332
    .end local v2    # "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    :cond_24
    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0, v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda12;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    move-object v5, v2

    .line 1341
    .local v5, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    :goto_2a
    invoke-interface {p2}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1342
    new-instance v2, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v3, Ljava/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v2, v4, v5, v6, v3}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v2

    .line 1346
    :cond_3e
    invoke-interface {p2}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v2

    .line 1347
    .local v2, "downstreamFinisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TA;>;"
    new-instance v7, Ljava/util/stream/Collectors$$ExternalSyntheticLambda13;

    invoke-direct {v7, v2}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda13;-><init>(Ljava/util/function/Function;)V

    .line 1353
    .local v7, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TM;>;"
    new-instance v3, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v8, Ljava/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    invoke-direct/range {v3 .. v8}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v3
.end method

.method public static whitelist test-api groupingByConcurrent(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TD;>;>;"
        }
    .end annotation

    .line 1269
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0, p1}, Ljava/util/stream/Collectors;->groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api joining()Ljava/util/stream/Collector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda95;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda95;-><init>()V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda96;

    invoke-direct {v2}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda96;-><init>()V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda97;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda97;-><init>()V

    new-instance v4, Ljava/util/stream/Collectors$$ExternalSyntheticLambda98;

    invoke-direct {v4}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda98;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist test-api joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;
    .registers 2
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 412
    const-string v0, ""

    invoke-static {p0, v0, v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;
    .registers 9
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "suffix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda72;

    invoke-direct {v1, p0, p1, p2}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda72;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda73;

    invoke-direct {v2}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda73;-><init>()V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda74;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda74;-><init>()V

    new-instance v4, Ljava/util/stream/Collectors$$ExternalSyntheticLambda75;

    invoke-direct {v4}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda75;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$averagingDouble$38()[D
    .registers 1

    .line 869
    const/4 v0, 0x4

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic blacklist lambda$averagingDouble$39(Ljava/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .registers 10
    .param p0, "mapper"    # Ljava/util/function/ToDoubleFunction;
    .param p1, "a"    # [D
    .param p2, "t"    # Ljava/lang/Object;

    .line 870
    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .local v0, "val":D
    invoke-static {p1, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v2, 0x2

    aget-wide v3, p1, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    const/4 v2, 0x3

    aget-wide v3, p1, v2

    add-double/2addr v3, v0

    aput-wide v3, p1, v2

    return-void
.end method

.method static synthetic blacklist lambda$averagingDouble$40([D[D)[D
    .registers 7
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 872
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 874
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    neg-double v0, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 875
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 876
    return-object p0
.end method

.method static synthetic blacklist lambda$averagingDouble$41([D)Ljava/lang/Double;
    .registers 6
    .param p0, "a"    # [D

    .line 878
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_a

    goto :goto_12

    :cond_a
    invoke-static {p0}, Ljava/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v1

    aget-wide v3, p0, v0

    div-double v3, v1, v3

    :goto_12
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$averagingInt$30()[J
    .registers 1

    .line 812
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic blacklist lambda$averagingInt$31(Ljava/util/function/ToIntFunction;[JLjava/lang/Object;)V
    .registers 8
    .param p0, "mapper"    # Ljava/util/function/ToIntFunction;
    .param p1, "a"    # [J
    .param p2, "t"    # Ljava/lang/Object;

    .line 813
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic blacklist lambda$averagingInt$32([J[J)[J
    .registers 7
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 814
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic blacklist lambda$averagingInt$33([J)Ljava/lang/Double;
    .registers 6
    .param p0, "a"    # [J

    .line 815
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_c

    const-wide/16 v0, 0x0

    goto :goto_15

    :cond_c
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    long-to-double v1, v1

    aget-wide v3, p0, v0

    long-to-double v3, v3

    div-double v0, v1, v3

    :goto_15
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$averagingLong$34()[J
    .registers 1

    .line 831
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic blacklist lambda$averagingLong$35(Ljava/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .registers 8
    .param p0, "mapper"    # Ljava/util/function/ToLongFunction;
    .param p1, "a"    # [J
    .param p2, "t"    # Ljava/lang/Object;

    .line 832
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic blacklist lambda$averagingLong$36([J[J)[J
    .registers 7
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 833
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic blacklist lambda$averagingLong$37([J)Ljava/lang/Double;
    .registers 6
    .param p0, "a"    # [J

    .line 834
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_c

    const-wide/16 v0, 0x0

    goto :goto_15

    :cond_c
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    long-to-double v1, v1

    aget-wide v3, p0, v0

    long-to-double v3, v3

    div-double v0, v1, v3

    :goto_15
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$boxSupplier$45(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .param p0, "identity"    # Ljava/lang/Object;

    .line 914
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$castingIdentity$2(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0, "i"    # Ljava/lang/Object;

    .line 188
    return-object p0
.end method

.method static synthetic blacklist lambda$counting$17(Ljava/lang/Object;)J
    .registers 3
    .param p0, "e"    # Ljava/lang/Object;

    .line 648
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method static synthetic blacklist lambda$filtering$16(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "predicate"    # Ljava/util/function/Predicate;
    .param p1, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 586
    invoke-interface {p0, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 587
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 589
    :cond_9
    return-void
.end method

.method static synthetic blacklist lambda$flatMapping$14(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "u"    # Ljava/lang/Object;

    .line 538
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$flatMapping$15(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p0, "mapper"    # Ljava/util/function/Function;
    .param p1, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 536
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    .line 537
    .local v0, "result":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TU;>;"
    if-eqz v0, :cond_23

    .line 538
    :try_start_8
    invoke-interface {v0}, Ljava/util/stream/Stream;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Stream;

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda18;

    invoke-direct {v2, p1, p2}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda18;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_17

    goto :goto_23

    .line 536
    :catchall_17
    move-exception v1

    if-eqz v0, :cond_22

    :try_start_1a
    invoke-interface {v0}, Ljava/util/stream/Stream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    throw v1

    .line 539
    :cond_23
    :goto_23
    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/util/stream/Stream;->close()V

    .line 540
    .end local v0    # "result":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TU;>;"
    :cond_28
    return-void
.end method

.method static synthetic blacklist lambda$groupingBy$52(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p1, "k"    # Ljava/lang/Object;

    .line 1164
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$groupingBy$53(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/Map;Ljava/lang/Object;)V
    .registers 7
    .param p0, "classifier"    # Ljava/util/function/Function;
    .param p1, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p2, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p3, "m"    # Ljava/util/Map;
    .param p4, "t"    # Ljava/lang/Object;

    .line 1163
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1164
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda70;

    invoke-direct {v1, p1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda70;-><init>(Ljava/util/function/Supplier;)V

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 1165
    .local v1, "container":Ljava/lang/Object;, "TA;"
    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1166
    return-void
.end method

.method static synthetic blacklist lambda$groupingBy$54(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "downstreamFinisher"    # Ljava/util/function/Function;
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 1178
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$groupingBy$55(Ljava/util/function/Function;Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .param p0, "downstreamFinisher"    # Ljava/util/function/Function;
    .param p1, "intermediate"    # Ljava/util/Map;

    .line 1178
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda46;-><init>(Ljava/util/function/Function;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 1180
    move-object v0, p1

    .line 1181
    .local v0, "castResult":Ljava/util/Map;, "TM;"
    return-object v0
.end method

.method static synthetic blacklist lambda$groupingByConcurrent$56(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p1, "k"    # Ljava/lang/Object;

    .line 1327
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$groupingByConcurrent$57(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .registers 7
    .param p0, "classifier"    # Ljava/util/function/Function;
    .param p1, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p2, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p3, "m"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "t"    # Ljava/lang/Object;

    .line 1326
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1327
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Supplier;)V

    invoke-interface {p3, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 1328
    .local v1, "resultContainer":Ljava/lang/Object;, "TA;"
    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1329
    return-void
.end method

.method static synthetic blacklist lambda$groupingByConcurrent$58(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p1, "k"    # Ljava/lang/Object;

    .line 1334
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$groupingByConcurrent$59(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .registers 8
    .param p0, "classifier"    # Ljava/util/function/Function;
    .param p1, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p2, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p3, "m"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "t"    # Ljava/lang/Object;

    .line 1333
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1334
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda34;

    invoke-direct {v1, p1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda34;-><init>(Ljava/util/function/Supplier;)V

    invoke-interface {p3, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 1335
    .local v1, "resultContainer":Ljava/lang/Object;, "TA;"
    monitor-enter v1

    .line 1336
    :try_start_14
    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1337
    monitor-exit v1

    .line 1338
    return-void

    .line 1337
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method static synthetic blacklist lambda$groupingByConcurrent$60(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "downstreamFinisher"    # Ljava/util/function/Function;
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 1348
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$groupingByConcurrent$61(Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentMap;)Ljava/util/concurrent/ConcurrentMap;
    .registers 3
    .param p0, "downstreamFinisher"    # Ljava/util/function/Function;
    .param p1, "intermediate"    # Ljava/util/concurrent/ConcurrentMap;

    .line 1348
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda51;

    invoke-direct {v0, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda51;-><init>(Ljava/util/function/Function;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 1350
    move-object v0, p1

    .line 1351
    .local v0, "castResult":Ljava/util/concurrent/ConcurrentMap;, "TM;"
    return-object v0
.end method

.method static synthetic blacklist lambda$joining$10(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 2
    .param p0, "r1"    # Ljava/lang/StringBuilder;
    .param p1, "r2"    # Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic blacklist lambda$joining$11(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    .registers 4
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "suffix"    # Ljava/lang/CharSequence;

    .line 432
    new-instance v0, Ljava/util/StringJoiner;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$mapMerger$12(Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .param p0, "mergeFunction"    # Ljava/util/function/BinaryOperator;
    .param p1, "m1"    # Ljava/util/Map;
    .param p2, "m2"    # Ljava/util/Map;

    .line 452
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 453
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3, p0}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_8

    .line 454
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_20
    return-object p1
.end method

.method static synthetic blacklist lambda$mapping$13(Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p1, "mapper"    # Ljava/util/function/Function;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 490
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$partitioningBy$62(Ljava/util/function/BiConsumer;Ljava/util/function/Predicate;Ljava/util/stream/Collectors$Partition;Ljava/lang/Object;)V
    .registers 5
    .param p0, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p1, "predicate"    # Ljava/util/function/Predicate;
    .param p2, "result"    # Ljava/util/stream/Collectors$Partition;
    .param p3, "t"    # Ljava/lang/Object;

    .line 1417
    invoke-interface {p1, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p2, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    goto :goto_b

    :cond_9
    iget-object v0, p2, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    :goto_b
    invoke-interface {p0, v0, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$partitioningBy$63(Ljava/util/function/BinaryOperator;Ljava/util/stream/Collectors$Partition;Ljava/util/stream/Collectors$Partition;)Ljava/util/stream/Collectors$Partition;
    .registers 7
    .param p0, "op"    # Ljava/util/function/BinaryOperator;
    .param p1, "left"    # Ljava/util/stream/Collectors$Partition;
    .param p2, "right"    # Ljava/util/stream/Collectors$Partition;

    .line 1420
    new-instance v0, Ljava/util/stream/Collectors$Partition;

    iget-object v1, p1, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    iget-object v2, p2, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    iget-object v3, p2, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    .line 1421
    invoke-interface {p0, v2, v3}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1420
    return-object v0
.end method

.method static synthetic blacklist lambda$partitioningBy$64(Ljava/util/stream/Collector;)Ljava/util/stream/Collectors$Partition;
    .registers 4
    .param p0, "downstream"    # Ljava/util/stream/Collector;

    .line 1423
    new-instance v0, Ljava/util/stream/Collectors$Partition;

    invoke-interface {p0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1424
    invoke-interface {p0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1423
    return-object v0
.end method

.method static synthetic blacklist lambda$partitioningBy$65(Ljava/util/stream/Collector;Ljava/util/stream/Collectors$Partition;)Ljava/util/Map;
    .registers 6
    .param p0, "downstream"    # Ljava/util/stream/Collector;
    .param p1, "par"    # Ljava/util/stream/Collectors$Partition;

    .line 1430
    new-instance v0, Ljava/util/stream/Collectors$Partition;

    invoke-interface {p0}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v1

    iget-object v2, p1, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1431
    invoke-interface {p0}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v2

    iget-object v3, p1, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1430
    return-object v0
.end method

.method static synthetic blacklist lambda$reducing$42(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "op"    # Ljava/util/function/BinaryOperator;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Object;

    .line 906
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-interface {p0, v1, p2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    return-void
.end method

.method static synthetic blacklist lambda$reducing$43(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .param p0, "op"    # Ljava/util/function/BinaryOperator;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "b"    # [Ljava/lang/Object;

    .line 907
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    return-object p1
.end method

.method static synthetic blacklist lambda$reducing$44([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "a"    # [Ljava/lang/Object;

    .line 908
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic blacklist lambda$reducing$46(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collectors$1OptionalBox;
    .registers 2
    .param p0, "op"    # Ljava/util/function/BinaryOperator;

    .line 964
    new-instance v0, Ljava/util/stream/Collectors$1OptionalBox;

    invoke-direct {v0, p0}, Ljava/util/stream/Collectors$1OptionalBox;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$reducing$47(Ljava/util/stream/Collectors$1OptionalBox;Ljava/util/stream/Collectors$1OptionalBox;)Ljava/util/stream/Collectors$1OptionalBox;
    .registers 3
    .param p0, "a"    # Ljava/util/stream/Collectors$1OptionalBox;
    .param p1, "b"    # Ljava/util/stream/Collectors$1OptionalBox;

    .line 965
    iget-boolean v0, p1, Ljava/util/stream/Collectors$1OptionalBox;->present:Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/stream/Collectors$1OptionalBox;->accept(Ljava/lang/Object;)V

    :cond_9
    return-object p0
.end method

.method static synthetic blacklist lambda$reducing$48(Ljava/util/stream/Collectors$1OptionalBox;)Ljava/util/Optional;
    .registers 2
    .param p0, "a"    # Ljava/util/stream/Collectors$1OptionalBox;

    .line 966
    iget-object v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$reducing$49(Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p0, "op"    # Ljava/util/function/BinaryOperator;
    .param p1, "mapper"    # Ljava/util/function/Function;
    .param p2, "a"    # [Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 1012
    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    return-void
.end method

.method static synthetic blacklist lambda$reducing$50(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .param p0, "op"    # Ljava/util/function/BinaryOperator;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "b"    # [Ljava/lang/Object;

    .line 1013
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    return-object p1
.end method

.method static synthetic blacklist lambda$reducing$51([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "a"    # [Ljava/lang/Object;

    .line 1014
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic blacklist lambda$summarizingDouble$74(Ljava/util/function/ToDoubleFunction;Ljava/util/DoubleSummaryStatistics;Ljava/lang/Object;)V
    .registers 5
    .param p0, "mapper"    # Ljava/util/function/ToDoubleFunction;
    .param p1, "r"    # Ljava/util/DoubleSummaryStatistics;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1919
    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/DoubleSummaryStatistics;->accept(D)V

    return-void
.end method

.method static synthetic blacklist lambda$summarizingDouble$75(Ljava/util/DoubleSummaryStatistics;Ljava/util/DoubleSummaryStatistics;)Ljava/util/DoubleSummaryStatistics;
    .registers 2
    .param p0, "l"    # Ljava/util/DoubleSummaryStatistics;
    .param p1, "r"    # Ljava/util/DoubleSummaryStatistics;

    .line 1920
    invoke-virtual {p0, p1}, Ljava/util/DoubleSummaryStatistics;->combine(Ljava/util/DoubleSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic blacklist lambda$summarizingInt$70(Ljava/util/function/ToIntFunction;Ljava/util/IntSummaryStatistics;Ljava/lang/Object;)V
    .registers 4
    .param p0, "mapper"    # Ljava/util/function/ToIntFunction;
    .param p1, "r"    # Ljava/util/IntSummaryStatistics;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1879
    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/IntSummaryStatistics;->accept(I)V

    return-void
.end method

.method static synthetic blacklist lambda$summarizingInt$71(Ljava/util/IntSummaryStatistics;Ljava/util/IntSummaryStatistics;)Ljava/util/IntSummaryStatistics;
    .registers 2
    .param p0, "l"    # Ljava/util/IntSummaryStatistics;
    .param p1, "r"    # Ljava/util/IntSummaryStatistics;

    .line 1880
    invoke-virtual {p0, p1}, Ljava/util/IntSummaryStatistics;->combine(Ljava/util/IntSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic blacklist lambda$summarizingLong$72(Ljava/util/function/ToLongFunction;Ljava/util/LongSummaryStatistics;Ljava/lang/Object;)V
    .registers 5
    .param p0, "mapper"    # Ljava/util/function/ToLongFunction;
    .param p1, "r"    # Ljava/util/LongSummaryStatistics;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1899
    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/LongSummaryStatistics;->accept(J)V

    return-void
.end method

.method static synthetic blacklist lambda$summarizingLong$73(Ljava/util/LongSummaryStatistics;Ljava/util/LongSummaryStatistics;)Ljava/util/LongSummaryStatistics;
    .registers 2
    .param p0, "l"    # Ljava/util/LongSummaryStatistics;
    .param p1, "r"    # Ljava/util/LongSummaryStatistics;

    .line 1900
    invoke-virtual {p0, p1}, Ljava/util/LongSummaryStatistics;->combine(Ljava/util/LongSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic blacklist lambda$summingDouble$26()[D
    .registers 1

    .line 752
    const/4 v0, 0x3

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic blacklist lambda$summingDouble$27(Ljava/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .registers 8
    .param p0, "mapper"    # Ljava/util/function/ToDoubleFunction;
    .param p1, "a"    # [D
    .param p2, "t"    # Ljava/lang/Object;

    .line 753
    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 754
    .local v0, "val":D
    invoke-static {p1, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 755
    const/4 v2, 0x2

    aget-wide v3, p1, v2

    add-double/2addr v3, v0

    aput-wide v3, p1, v2

    return-void
.end method

.method static synthetic blacklist lambda$summingDouble$28([D[D)[D
    .registers 7
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 756
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 757
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 759
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    neg-double v0, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$summingDouble$29([D)Ljava/lang/Double;
    .registers 3
    .param p0, "a"    # [D

    .line 760
    invoke-static {p0}, Ljava/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$summingInt$18()[I
    .registers 1

    .line 701
    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0
.end method

.method static synthetic blacklist lambda$summingInt$19(Ljava/util/function/ToIntFunction;[ILjava/lang/Object;)V
    .registers 6
    .param p0, "mapper"    # Ljava/util/function/ToIntFunction;
    .param p1, "a"    # [I
    .param p2, "t"    # Ljava/lang/Object;

    .line 702
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

.method static synthetic blacklist lambda$summingInt$20([I[I)[I
    .registers 5
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 703
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    return-object p0
.end method

.method static synthetic blacklist lambda$summingInt$21([I)Ljava/lang/Integer;
    .registers 2
    .param p0, "a"    # [I

    .line 704
    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$summingLong$22()[J
    .registers 1

    .line 719
    const/4 v0, 0x1

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic blacklist lambda$summingLong$23(Ljava/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .registers 8
    .param p0, "mapper"    # Ljava/util/function/ToLongFunction;
    .param p1, "a"    # [J
    .param p2, "t"    # Ljava/lang/Object;

    .line 720
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic blacklist lambda$summingLong$24([J[J)[J
    .registers 7
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 721
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic blacklist lambda$summingLong$25([J)Ljava/lang/Long;
    .registers 3
    .param p0, "a"    # [J

    .line 722
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$teeing0$76(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/util/stream/Collectors$1PairBox;
    .registers 19
    .param p0, "c1Supplier"    # Ljava/util/function/Supplier;
    .param p1, "c2Supplier"    # Ljava/util/function/Supplier;
    .param p2, "c1Accumulator"    # Ljava/util/function/BiConsumer;
    .param p3, "c2Accumulator"    # Ljava/util/function/BiConsumer;
    .param p4, "c1Combiner"    # Ljava/util/function/BinaryOperator;
    .param p5, "c2Combiner"    # Ljava/util/function/BinaryOperator;
    .param p6, "c1Finisher"    # Ljava/util/function/Function;
    .param p7, "c2Finisher"    # Ljava/util/function/Function;
    .param p8, "merger"    # Ljava/util/function/BiFunction;

    .line 2016
    new-instance v0, Ljava/util/stream/Collectors$1PairBox;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Ljava/util/stream/Collectors$1PairBox;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$toCollection$3(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .param p0, "r1"    # Ljava/util/Collection;
    .param p1, "r2"    # Ljava/util/Collection;

    .line 284
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic blacklist lambda$toConcurrentMap$69(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .registers 7
    .param p0, "keyMapper"    # Ljava/util/function/Function;
    .param p1, "valueMapper"    # Ljava/util/function/Function;
    .param p2, "mergeFunction"    # Ljava/util/function/BinaryOperator;
    .param p3, "map"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "element"    # Ljava/lang/Object;

    .line 1858
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1859
    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1858
    invoke-interface {p3, v0, v1, p2}, Ljava/util/concurrent/ConcurrentMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic blacklist lambda$toList$4(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "left"    # Ljava/util/ArrayList;
    .param p1, "right"    # Ljava/util/ArrayList;

    .line 301
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic blacklist lambda$toMap$68(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/lang/Object;)V
    .registers 7
    .param p0, "keyMapper"    # Ljava/util/function/Function;
    .param p1, "valueMapper"    # Ljava/util/function/Function;
    .param p2, "mergeFunction"    # Ljava/util/function/BinaryOperator;
    .param p3, "map"    # Ljava/util/Map;
    .param p4, "element"    # Ljava/lang/Object;

    .line 1694
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1695
    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1694
    invoke-interface {p3, v0, v1, p2}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic blacklist lambda$toSet$7(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 4
    .param p0, "left"    # Ljava/util/HashSet;
    .param p1, "right"    # Ljava/util/HashSet;

    .line 350
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 351
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 353
    :cond_e
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic blacklist lambda$toUnmodifiableList$5(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "left"    # Ljava/util/ArrayList;
    .param p1, "right"    # Ljava/util/ArrayList;

    .line 320
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic blacklist lambda$toUnmodifiableList$6(Ljava/util/ArrayList;)Ljava/util/List;
    .registers 3
    .param p0, "list"    # Ljava/util/ArrayList;

    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_15

    .line 323
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaUtilCollectionAccess()Ljdk/internal/access/JavaUtilCollectionAccess;

    move-result-object v0

    .line 324
    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljdk/internal/access/JavaUtilCollectionAccess;->listFromTrustedArray([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 323
    return-object v0

    .line 326
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic blacklist lambda$toUnmodifiableMap$66(Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .param p0, "map"    # Ljava/util/Map;

    .line 1537
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$toUnmodifiableMap$67(Ljava/util/HashMap;)Ljava/util/Map;
    .registers 3
    .param p0, "map"    # Ljava/util/HashMap;

    .line 1645
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$toUnmodifiableSet$8(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 4
    .param p0, "left"    # Ljava/util/HashSet;
    .param p1, "right"    # Ljava/util/HashSet;

    .line 379
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 380
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 382
    :cond_e
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic blacklist lambda$toUnmodifiableSet$9(Ljava/util/HashSet;)Ljava/util/Set;
    .registers 2
    .param p0, "set"    # Ljava/util/HashSet;

    .line 385
    invoke-virtual {p0}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$uniqKeysMapAccumulator$1(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/Map;Ljava/lang/Object;)V
    .registers 8
    .param p0, "keyMapper"    # Ljava/util/function/Function;
    .param p1, "valueMapper"    # Ljava/util/function/Function;
    .param p2, "map"    # Ljava/util/Map;
    .param p3, "element"    # Ljava/lang/Object;

    .line 179
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 180
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 181
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 182
    .local v2, "u":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_13

    .line 183
    return-void

    .line 182
    :cond_13
    invoke-static {v0, v2, v1}, Ljava/util/stream/Collectors;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v3

    throw v3
.end method

.method static synthetic blacklist lambda$uniqKeysMapMerger$0(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .param p0, "m1"    # Ljava/util/Map;
    .param p1, "m2"    # Ljava/util/Map;

    .line 153
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 154
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 155
    .local v2, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 156
    .local v3, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 157
    .local v4, "u":Ljava/lang/Object;, "TV;"
    if-nez v4, :cond_27

    .line 158
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "u":Ljava/lang/Object;, "TV;"
    goto :goto_8

    .line 157
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v2    # "k":Ljava/lang/Object;, "TK;"
    .restart local v3    # "v":Ljava/lang/Object;, "TV;"
    .restart local v4    # "u":Ljava/lang/Object;, "TV;"
    :cond_27
    invoke-static {v2, v4, v3}, Ljava/util/stream/Collectors;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    .line 159
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "u":Ljava/lang/Object;, "TV;"
    :cond_2c
    return-object p0
.end method

.method private static greylist-max-o mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>(",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/function/BinaryOperator<",
            "TM;>;"
        }
    .end annotation

    .line 451
    .local p0, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda94;

    invoke-direct {v0, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda94;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public static whitelist test-api mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/stream/Collector<",
            "-TU;TA;TR;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 488
    .local p0, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p1, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TU;TA;TR;>;"
    invoke-interface {p1}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    .line 489
    .local v0, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TU;>;"
    new-instance v1, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda45;

    invoke-direct {v3, v0, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda45;-><init>(Ljava/util/function/BiConsumer;Ljava/util/function/Function;)V

    .line 491
    invoke-interface {p1}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v5

    .line 492
    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 489
    return-object v1
.end method

.method public static whitelist test-api maxBy(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 686
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Ljava/util/function/BinaryOperator;->maxBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Collectors;->reducing(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api minBy(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 667
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Ljava/util/function/BinaryOperator;->minBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Collectors;->reducing(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api partitioningBy(Ljava/util/function/Predicate;)Ljava/util/stream/Collector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1380
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/stream/Collectors;->partitioningBy(Ljava/util/function/Predicate;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api partitioningBy(Ljava/util/function/Predicate;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "-TT;>;",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "TD;>;>;"
        }
    .end annotation

    .line 1415
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p1, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    invoke-interface {p1}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    .line 1416
    .local v0, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda52;

    invoke-direct {v1, v0, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda52;-><init>(Ljava/util/function/BiConsumer;Ljava/util/function/Predicate;)V

    move-object v4, v1

    .line 1418
    .local v4, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/stream/Collectors$Partition<TA;>;TT;>;"
    invoke-interface {p1}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v1

    .line 1419
    .local v1, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    new-instance v5, Ljava/util/stream/Collectors$$ExternalSyntheticLambda53;

    invoke-direct {v5, v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda53;-><init>(Ljava/util/function/BinaryOperator;)V

    .line 1422
    .local v5, "merger":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/util/stream/Collectors$Partition<TA;>;>;"
    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda54;

    invoke-direct {v3, p1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda54;-><init>(Ljava/util/stream/Collector;)V

    .line 1425
    .local v3, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/stream/Collectors$Partition<TA;>;>;"
    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v6, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1426
    new-instance v2, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v6, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v2

    .line 1429
    :cond_2c
    new-instance v6, Ljava/util/stream/Collectors$$ExternalSyntheticLambda55;

    invoke-direct {v6, p1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda55;-><init>(Ljava/util/stream/Collector;)V

    .line 1432
    .local v6, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/stream/Collectors$Partition<TA;>;Ljava/util/Map<Ljava/lang/Boolean;TD;>;>;"
    new-instance v2, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v7, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v2
.end method

.method public static whitelist test-api reducing(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TT;>;"
        }
    .end annotation

    .line 904
    .local p0, "identity":Ljava/lang/Object;, "TT;"
    .local p1, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    .line 905
    invoke-static {p0}, Ljava/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object v1

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda56;

    invoke-direct {v2, p1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda56;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda57;

    invoke-direct {v3, p1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda57;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v4, Ljava/util/stream/Collectors$$ExternalSyntheticLambda58;

    invoke-direct {v4}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda58;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 904
    return-object v0
.end method

.method public static whitelist test-api reducing(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TU;>;"
        }
    .end annotation

    .line 1010
    .local p0, "identity":Ljava/lang/Object;, "TU;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    .line 1011
    invoke-static {p0}, Ljava/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object v1

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2, p1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/BinaryOperator;Ljava/util/function/Function;)V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda5;

    invoke-direct {v3, p2}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v4, Ljava/util/stream/Collectors$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda6;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 1010
    return-object v0
.end method

.method public static whitelist test-api reducing(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 963
    .local p0, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda86;

    invoke-direct {v1, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda86;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda87;

    invoke-direct {v2}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda87;-><init>()V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda88;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda88;-><init>()V

    new-instance v4, Ljava/util/stream/Collectors$$ExternalSyntheticLambda89;

    invoke-direct {v4}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda89;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method static greylist-max-o sumWithCompensation([DD)[D
    .registers 13
    .param p0, "intermediateSum"    # [D
    .param p1, "value"    # D

    .line 776
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    sub-double v1, p1, v1

    .line 777
    .local v1, "tmp":D
    const/4 v3, 0x0

    aget-wide v4, p0, v3

    .line 778
    .local v4, "sum":D
    add-double v6, v4, v1

    .line 779
    .local v6, "velvel":D
    sub-double v8, v6, v4

    sub-double/2addr v8, v1

    aput-wide v8, p0, v0

    .line 780
    aput-wide v6, p0, v3

    .line 781
    return-object p0
.end method

.method public static whitelist test-api summarizingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/Collector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/DoubleSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1917
    .local p0, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda19;-><init>()V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda20;-><init>(Ljava/util/function/ToDoubleFunction;)V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda21;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda21;-><init>()V

    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist test-api summarizingInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/IntSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1877
    .local p0, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda31;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda31;-><init>()V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda32;

    invoke-direct {v2, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda32;-><init>(Ljava/util/function/ToIntFunction;)V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda33;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda33;-><init>()V

    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist test-api summarizingLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/Collector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/LongSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1897
    .local p0, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda65;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda65;-><init>()V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda66;

    invoke-direct {v2, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda66;-><init>(Ljava/util/function/ToLongFunction;)V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda67;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda67;-><init>()V

    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist test-api summingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 751
    .local p0, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda59;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda59;-><init>()V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda60;

    invoke-direct {v2, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda60;-><init>(Ljava/util/function/ToDoubleFunction;)V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda61;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda61;-><init>()V

    new-instance v4, Ljava/util/stream/Collectors$$ExternalSyntheticLambda62;

    invoke-direct {v4}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda62;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist test-api summingInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 700
    .local p0, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda14;-><init>()V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda15;-><init>(Ljava/util/function/ToIntFunction;)V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda16;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda16;-><init>()V

    new-instance v4, Ljava/util/stream/Collectors$$ExternalSyntheticLambda17;

    invoke-direct {v4}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda17;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist test-api summingLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 718
    .local p0, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda82;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda82;-><init>()V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda83;

    invoke-direct {v2, p0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda83;-><init>(Ljava/util/function/ToLongFunction;)V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda84;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda84;-><init>()V

    new-instance v4, Ljava/util/stream/Collectors$$ExternalSyntheticLambda85;

    invoke-direct {v4}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda85;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist test-api teeing(Ljava/util/stream/Collector;Ljava/util/stream/Collector;Ljava/util/function/BiFunction;)Ljava/util/stream/Collector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R1:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "-TT;*TR1;>;",
            "Ljava/util/stream/Collector<",
            "-TT;*TR2;>;",
            "Ljava/util/function/BiFunction<",
            "-TR1;-TR2;TR;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 1959
    .local p0, "downstream1":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;*TR1;>;"
    .local p1, "downstream2":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;*TR2;>;"
    .local p2, "merger":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TR1;-TR2;TR;>;"
    invoke-static {p0, p1, p2}, Ljava/util/stream/Collectors;->teeing0(Ljava/util/stream/Collector;Ljava/util/stream/Collector;Ljava/util/function/BiFunction;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist teeing0(Ljava/util/stream/Collector;Ljava/util/stream/Collector;Ljava/util/function/BiFunction;)Ljava/util/stream/Collector;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            "R1:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "-TT;TA1;TR1;>;",
            "Ljava/util/stream/Collector<",
            "-TT;TA2;TR2;>;",
            "Ljava/util/function/BiFunction<",
            "-TR1;-TR2;TR;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 1966
    .local p0, "downstream1":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA1;TR1;>;"
    .local p1, "downstream2":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA2;TR2;>;"
    .local p2, "merger":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TR1;-TR2;TR;>;"
    const-string v0, "downstream1"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1967
    const-string v0, "downstream2"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1968
    const-string v0, "merger"

    move-object/from16 v12, p2

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1970
    invoke-interface {v1}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    const-string v3, "downstream1 supplier"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/function/Supplier;

    .line 1971
    .local v4, "c1Supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA1;>;"
    invoke-interface {v2}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    const-string v3, "downstream2 supplier"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/function/Supplier;

    .line 1972
    .local v5, "c2Supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA2;>;"
    nop

    .line 1973
    invoke-interface {v1}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    const-string v3, "downstream1 accumulator"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/function/BiConsumer;

    .line 1974
    .local v6, "c1Accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA1;-TT;>;"
    nop

    .line 1975
    invoke-interface {v2}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    const-string v3, "downstream2 accumulator"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/function/BiConsumer;

    .line 1976
    .local v7, "c2Accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA2;-TT;>;"
    invoke-interface {v1}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v0

    const-string v3, "downstream1 combiner"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/function/BinaryOperator;

    .line 1977
    .local v8, "c1Combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA1;>;"
    invoke-interface {v2}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v0

    const-string v3, "downstream2 combiner"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/function/BinaryOperator;

    .line 1978
    .local v9, "c2Combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA2;>;"
    invoke-interface {v1}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v0

    const-string v3, "downstream1 finisher"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/function/Function;

    .line 1979
    .local v10, "c1Finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA1;TR1;>;"
    invoke-interface {v2}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v0

    const-string v3, "downstream2 finisher"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/function/Function;

    .line 1982
    .local v11, "c2Finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA2;TR2;>;"
    invoke-interface {v1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    .line 1983
    .local v0, "c1Characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    invoke-interface {v2}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v13

    .line 1984
    .local v13, "c2Characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    sget-object v3, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_b0

    sget-object v3, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-interface {v3, v13}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_98

    goto :goto_b0

    .line 1987
    :cond_98
    const-class v3, Ljava/util/stream/Collector$Characteristics;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    .line 1988
    .local v3, "c":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava/util/stream/Collector$Characteristics;>;"
    invoke-virtual {v3, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 1989
    invoke-virtual {v3, v13}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    .line 1990
    sget-object v14, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-virtual {v3, v14}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 1991
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v14

    move-object/from16 v20, v14

    .local v14, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    goto :goto_b4

    .line 1985
    .end local v3    # "c":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava/util/stream/Collector$Characteristics;>;"
    .end local v14    # "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    :cond_b0
    :goto_b0
    sget-object v14, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object/from16 v20, v14

    .line 2016
    .local v20, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    :goto_b4
    new-instance v15, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v16, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;

    move-object/from16 v3, v16

    invoke-direct/range {v3 .. v12}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    new-instance v17, Ljava/util/stream/Collectors$$ExternalSyntheticLambda8;

    invoke-direct/range {v17 .. v17}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda8;-><init>()V

    new-instance v18, Ljava/util/stream/Collectors$$ExternalSyntheticLambda9;

    invoke-direct/range {v18 .. v18}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda9;-><init>()V

    new-instance v19, Ljava/util/stream/Collectors$$ExternalSyntheticLambda10;

    invoke-direct/range {v19 .. v19}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda10;-><init>()V

    invoke-direct/range {v15 .. v20}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v15
.end method

.method public static whitelist test-api toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TT;>;>(",
            "Ljava/util/function/Supplier<",
            "TC;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TC;>;"
        }
    .end annotation

    .line 283
    .local p0, "collectionFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TC;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda23;-><init>()V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda24;

    invoke-direct {v2}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda24;-><init>()V

    sget-object v3, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist test-api toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1754
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda44;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda44;-><init>()V

    .line 1755
    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->uniqKeysMapAccumulator(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/BiConsumer;

    move-result-object v2

    .line 1756
    invoke-static {}, Ljava/util/stream/Collectors;->uniqKeysMapMerger()Ljava/util/function/BinaryOperator;

    move-result-object v3

    sget-object v4, Ljava/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    .line 1754
    return-object v0
.end method

.method public static whitelist test-api toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1815
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, p1, p2, v0}, Ljava/util/stream/Collectors;->toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1857
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    .local p3, "mapFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda29;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    .line 1860
    .local v0, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TM;TT;>;"
    new-instance v1, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljava/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static whitelist test-api toList()Ljava/util/stream/Collector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda25;-><init>()V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda26;

    invoke-direct {v2}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda26;-><init>()V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda68;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda68;-><init>()V

    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist test-api toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1495
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda80;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda80;-><init>()V

    .line 1496
    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->uniqKeysMapAccumulator(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/BiConsumer;

    move-result-object v2

    .line 1497
    invoke-static {}, Ljava/util/stream/Collectors;->uniqKeysMapMerger()Ljava/util/function/BinaryOperator;

    move-result-object v3

    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    .line 1495
    return-object v0
.end method

.method public static whitelist test-api toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1600
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda80;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda80;-><init>()V

    invoke-static {p0, p1, p2, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TU;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1693
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    .local p3, "mapFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda30;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    .line 1696
    .local v0, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TM;TT;>;"
    new-instance v1, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static whitelist test-api toSet()Ljava/util/stream/Collector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda47;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda47;-><init>()V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda48;

    invoke-direct {v2}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda48;-><init>()V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda76;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda76;-><init>()V

    sget-object v4, Ljava/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist test-api toUnmodifiableList()Ljava/util/stream/Collector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda25;-><init>()V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda26;

    invoke-direct {v2}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda26;-><init>()V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda27;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda27;-><init>()V

    new-instance v4, Ljava/util/stream/Collectors$$ExternalSyntheticLambda28;

    invoke-direct {v4}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda28;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist test-api toUnmodifiableMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1533
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    const-string v0, "keyMapper"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1534
    const-string v0, "valueMapper"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1535
    nop

    .line 1536
    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda35;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda35;-><init>()V

    .line 1535
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toUnmodifiableMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1640
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    const-string v0, "keyMapper"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1641
    const-string v0, "valueMapper"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1642
    const-string v0, "mergeFunction"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1643
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda77;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda77;-><init>()V

    .line 1644
    invoke-static {p0, p1, p2, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda78;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda78;-><init>()V

    .line 1643
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toUnmodifiableSet()Ljava/util/stream/Collector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/Collectors$$ExternalSyntheticLambda47;

    invoke-direct {v1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda47;-><init>()V

    new-instance v2, Ljava/util/stream/Collectors$$ExternalSyntheticLambda48;

    invoke-direct {v2}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda48;-><init>()V

    new-instance v3, Ljava/util/stream/Collectors$$ExternalSyntheticLambda49;

    invoke-direct {v3}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda49;-><init>()V

    new-instance v4, Ljava/util/stream/Collectors$$ExternalSyntheticLambda50;

    invoke-direct {v4}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda50;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_UNORDERED_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method private static blacklist uniqKeysMapAccumulator(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/BiConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/Map<",
            "TK;TV;>;TT;>;"
        }
    .end annotation

    .line 178
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-object v0
.end method

.method private static blacklist uniqKeysMapMerger()Ljava/util/function/BinaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>()",
            "Ljava/util/function/BinaryOperator<",
            "TM;>;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method
