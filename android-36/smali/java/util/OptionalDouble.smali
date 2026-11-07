.class public final Ljava/util/OptionalDouble;
.super Ljava/lang/Object;
.source "OptionalDouble.java"


# static fields
.field private static final greylist-max-o EMPTY:Ljava/util/OptionalDouble;


# instance fields
.field private final greylist-max-o isPresent:Z

.field private final greylist-max-o value:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Ljava/util/OptionalDouble;

    invoke-direct {v0}, Ljava/util/OptionalDouble;-><init>()V

    sput-object v0, Ljava/util/OptionalDouble;->EMPTY:Ljava/util/OptionalDouble;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    .line 79
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    .line 80
    return-void
.end method

.method private constructor greylist-max-o <init>(D)V
    .registers 4
    .param p1, "value"    # D

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    .line 105
    iput-wide p1, p0, Ljava/util/OptionalDouble;->value:D

    .line 106
    return-void
.end method

.method public static whitelist test-api empty()Ljava/util/OptionalDouble;
    .registers 1

    .line 95
    sget-object v0, Ljava/util/OptionalDouble;->EMPTY:Ljava/util/OptionalDouble;

    return-object v0
.end method

.method public static whitelist test-api of(D)Ljava/util/OptionalDouble;
    .registers 3
    .param p0, "value"    # D

    .line 115
    new-instance v0, Ljava/util/OptionalDouble;

    invoke-direct {v0, p0, p1}, Ljava/util/OptionalDouble;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 294
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 295
    return v0

    .line 299
    :cond_4
    instance-of v1, p1, Ljava/util/OptionalDouble;

    if-eqz v1, :cond_25

    .line 298
    move-object v1, p1

    check-cast v1, Ljava/util/OptionalDouble;

    .local v1, "other":Ljava/util/OptionalDouble;
    iget-boolean v2, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v2, :cond_1e

    iget-boolean v2, v1, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v2, :cond_1e

    iget-wide v2, p0, Ljava/util/OptionalDouble;->value:D

    iget-wide v4, v1, Ljava/util/OptionalDouble;->value:D

    .line 300
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_25

    goto :goto_24

    :cond_1e
    iget-boolean v2, p0, Ljava/util/OptionalDouble;->isPresent:Z

    iget-boolean v3, v1, Ljava/util/OptionalDouble;->isPresent:Z

    if-ne v2, v3, :cond_25

    :goto_24
    goto :goto_26

    .end local v1    # "other":Ljava/util/OptionalDouble;
    :cond_25
    const/4 v0, 0x0

    .line 298
    :goto_26
    return v0
.end method

.method public whitelist test-api getAsDouble()D
    .registers 3

    .line 129
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    .line 132
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    return-wide v0

    .line 130
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 313
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist test-api ifPresent(Ljava/util/function/DoubleConsumer;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 164
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_9

    .line 165
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 167
    :cond_9
    return-void
.end method

.method public whitelist test-api ifPresentOrElse(Ljava/util/function/DoubleConsumer;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;
    .param p2, "emptyAction"    # Ljava/lang/Runnable;

    .line 182
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_a

    .line 183
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    goto :goto_d

    .line 185
    :cond_a
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 187
    :goto_d
    return-void
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 152
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api isPresent()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    return v0
.end method

.method public whitelist test-api orElse(D)D
    .registers 5
    .param p1, "other"    # D

    .line 221
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    goto :goto_8

    :cond_7
    move-wide v0, p1

    :goto_8
    return-wide v0
.end method

.method public whitelist test-api orElseGet(Ljava/util/function/DoubleSupplier;)D
    .registers 4
    .param p1, "supplier"    # Ljava/util/function/DoubleSupplier;

    .line 235
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public whitelist test-api orElseThrow()D
    .registers 3

    .line 247
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    .line 250
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    return-wide v0

    .line 248
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api orElseThrow(Ljava/util/function/Supplier;)D
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+TX;>;)D^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 271
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TX;>;"
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    .line 272
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    return-wide v0

    .line 274
    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/DoubleStream;
    .registers 3

    .line 206
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_b

    .line 207
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Ljava/util/stream/DoubleStream;->of(D)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    .line 209
    :cond_b
    invoke-static {}, Ljava/util/stream/DoubleStream;->empty()Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 330
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_20

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OptionalDouble["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/util/OptionalDouble;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 332
    :cond_20
    const-string v0, "OptionalDouble.empty"

    .line 330
    :goto_22
    return-object v0
.end method
