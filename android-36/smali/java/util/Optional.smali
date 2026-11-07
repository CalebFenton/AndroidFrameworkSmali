.class public final Ljava/util/Optional;
.super Ljava/lang/Object;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final greylist-max-o EMPTY:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 66
    new-instance v0, Ljava/util/Optional;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Optional;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ljava/util/Optional;->EMPTY:Ljava/util/Optional;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public static whitelist test-api empty()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 88
    sget-object v0, Ljava/util/Optional;->EMPTY:Ljava/util/Optional;

    .line 89
    .local v0, "t":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 113
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Optional;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Optional;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api ofNullable(Ljava/lang/Object;)Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 127
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_5

    sget-object v0, Ljava/util/Optional;->EMPTY:Ljava/util/Optional;

    goto :goto_a

    .line 128
    :cond_5
    new-instance v0, Ljava/util/Optional;

    invoke-direct {v0, p0}, Ljava/util/Optional;-><init>(Ljava/lang/Object;)V

    .line 127
    :goto_a
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 422
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    if-ne p0, p1, :cond_4

    .line 423
    const/4 v0, 0x1

    return v0

    .line 426
    :cond_4
    instance-of v0, p1, Ljava/util/Optional;

    if-nez v0, :cond_a

    .line 427
    const/4 v0, 0x0

    return v0

    .line 430
    :cond_a
    move-object v0, p1

    check-cast v0, Ljava/util/Optional;

    .line 431
    .local v0, "other":Ljava/util/Optional;, "Ljava/util/Optional<*>;"
    iget-object v1, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    iget-object v2, v0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api filter(Ljava/util/function/Predicate;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 214
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual {p0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 216
    return-object p0

    .line 218
    :cond_a
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, p0

    goto :goto_18

    :cond_14
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    :goto_18
    return-object v0
.end method

.method public whitelist test-api flatMap(Ljava/util/function/Function;)Ljava/util/Optional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/Optional<",
            "+TU;>;>;)",
            "Ljava/util/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 284
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/Optional<+TU;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {p0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 286
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 289
    :cond_e
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    .line 290
    .local v0, "r":Ljava/util/Optional;, "Ljava/util/Optional<TU;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    return-object v1
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 142
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 145
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    return-object v0

    .line 143
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 443
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api ifPresent(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 178
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 180
    :cond_9
    return-void
.end method

.method public whitelist test-api ifPresentOrElse(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .registers 4
    .param p2, "emptyAction"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 195
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 196
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_d

    .line 198
    :cond_a
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 200
    :goto_d
    return-void
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 165
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api isPresent()Z
    .registers 2

    .line 154
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api map(Ljava/util/function/Function;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 256
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-virtual {p0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 258
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 260
    :cond_e
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api or(Ljava/util/function/Supplier;)Ljava/util/Optional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Optional<",
            "+TT;>;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 308
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Optional<+TT;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 310
    return-object p0

    .line 313
    :cond_a
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    .line 314
    .local v0, "r":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    return-object v1
.end method

.method public whitelist test-api orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 350
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    return-object v0
.end method

.method public whitelist test-api orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 364
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public whitelist test-api orElseThrow()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 376
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 379
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    return-object v0

    .line 377
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+TX;>;)TT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 400
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TX;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 401
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    return-object v0

    .line 403
    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 334
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    invoke-virtual {p0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 335
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 337
    :cond_b
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 460
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_20

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Optional["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 462
    :cond_20
    const-string v0, "Optional.empty"

    .line 460
    :goto_22
    return-object v0
.end method
