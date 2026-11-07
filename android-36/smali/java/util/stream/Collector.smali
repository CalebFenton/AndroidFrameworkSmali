.class public interface abstract Ljava/util/stream/Collector;
.super Ljava/lang/Object;
.source "Collector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Collector$Characteristics;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static varargs whitelist test-api of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .registers 12
    .param p4, "characteristics"    # [Ljava/util/stream/Collector$Characteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TA;>;",
            "Ljava/util/function/BiConsumer<",
            "TA;TT;>;",
            "Ljava/util/function/BinaryOperator<",
            "TA;>;",
            "Ljava/util/function/Function<",
            "TA;TR;>;[",
            "Ljava/util/stream/Collector$Characteristics;",
            ")",
            "Ljava/util/stream/Collector<",
            "TT;TA;TR;>;"
        }
    .end annotation

    .line 300
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local p1, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;TT;>;"
    .local p2, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    .local p3, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TR;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 306
    .local v0, "cs":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    array-length v1, p4

    if-lez v1, :cond_23

    .line 307
    const-class v1, Ljava/util/stream/Collector$Characteristics;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 308
    invoke-static {v0, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 309
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    move-object v6, v0

    goto :goto_24

    .line 306
    :cond_23
    move-object v6, v0

    .line 311
    .end local v0    # "cs":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    .local v6, "cs":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    :goto_24
    new-instance v1, Ljava/util/stream/Collectors$CollectorImpl;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p0    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .end local p1    # "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;TT;>;"
    .end local p2    # "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    .end local p3    # "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TR;>;"
    .local v2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local v3, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;TT;>;"
    .local v4, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    .local v5, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TR;>;"
    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v1
.end method

.method public static varargs whitelist test-api of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .registers 6
    .param p3, "characteristics"    # [Ljava/util/stream/Collector$Characteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TT;>;",
            "Ljava/util/function/BinaryOperator<",
            "TR;>;[",
            "Ljava/util/stream/Collector$Characteristics;",
            ")",
            "Ljava/util/stream/Collector<",
            "TT;TR;TR;>;"
        }
    .end annotation

    .line 268
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p1, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TT;>;"
    .local p2, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    array-length v0, p3

    if-nez v0, :cond_12

    .line 273
    sget-object v0, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    goto :goto_1c

    .line 274
    :cond_12
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, p3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_1c
    nop

    .line 276
    .local v0, "cs":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    new-instance v1, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-direct {v1, p0, p1, p2, v0}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method


# virtual methods
.method public abstract whitelist test-api accumulator()Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiConsumer<",
            "TA;TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api characteristics()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api combiner()Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BinaryOperator<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api finisher()Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "TA;TR;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api supplier()Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "TA;>;"
        }
    .end annotation
.end method
