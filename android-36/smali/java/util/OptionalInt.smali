.class public final Ljava/util/OptionalInt;
.super Ljava/lang/Object;
.source "OptionalInt.java"


# static fields
.field private static final greylist-max-o EMPTY:Ljava/util/OptionalInt;


# instance fields
.field private final greylist-max-o isPresent:Z

.field private final greylist-max-o value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Ljava/util/OptionalInt;

    invoke-direct {v0}, Ljava/util/OptionalInt;-><init>()V

    sput-object v0, Ljava/util/OptionalInt;->EMPTY:Ljava/util/OptionalInt;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    .line 79
    iput v0, p0, Ljava/util/OptionalInt;->value:I

    .line 80
    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "value"    # I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    .line 105
    iput p1, p0, Ljava/util/OptionalInt;->value:I

    .line 106
    return-void
.end method

.method public static whitelist test-api empty()Ljava/util/OptionalInt;
    .registers 1

    .line 95
    sget-object v0, Ljava/util/OptionalInt;->EMPTY:Ljava/util/OptionalInt;

    return-object v0
.end method

.method public static whitelist test-api of(I)Ljava/util/OptionalInt;
    .registers 2
    .param p0, "value"    # I

    .line 115
    new-instance v0, Ljava/util/OptionalInt;

    invoke-direct {v0, p0}, Ljava/util/OptionalInt;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 292
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 293
    return v0

    .line 297
    :cond_4
    instance-of v1, p1, Ljava/util/OptionalInt;

    if-eqz v1, :cond_21

    .line 296
    move-object v1, p1

    check-cast v1, Ljava/util/OptionalInt;

    .local v1, "other":Ljava/util/OptionalInt;
    iget-boolean v2, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v2, :cond_1a

    iget-boolean v2, v1, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v2, :cond_1a

    iget v2, p0, Ljava/util/OptionalInt;->value:I

    iget v3, v1, Ljava/util/OptionalInt;->value:I

    if-ne v2, v3, :cond_21

    goto :goto_20

    :cond_1a
    iget-boolean v2, p0, Ljava/util/OptionalInt;->isPresent:Z

    iget-boolean v3, v1, Ljava/util/OptionalInt;->isPresent:Z

    if-ne v2, v3, :cond_21

    :goto_20
    goto :goto_22

    .end local v1    # "other":Ljava/util/OptionalInt;
    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method public whitelist test-api getAsInt()I
    .registers 3

    .line 129
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    .line 132
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    return v0

    .line 130
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 311
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_b

    iget v0, p0, Ljava/util/OptionalInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist test-api ifPresent(Ljava/util/function/IntConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 164
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_9

    .line 165
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 167
    :cond_9
    return-void
.end method

.method public whitelist test-api ifPresentOrElse(Ljava/util/function/IntConsumer;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/IntConsumer;
    .param p2, "emptyAction"    # Ljava/lang/Runnable;

    .line 182
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_a

    .line 183
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

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
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api isPresent()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    return v0
.end method

.method public whitelist test-api orElse(I)I
    .registers 3
    .param p1, "other"    # I

    .line 220
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljava/util/OptionalInt;->value:I

    goto :goto_8

    :cond_7
    move v0, p1

    :goto_8
    return v0
.end method

.method public whitelist test-api orElseGet(Ljava/util/function/IntSupplier;)I
    .registers 3
    .param p1, "supplier"    # Ljava/util/function/IntSupplier;

    .line 234
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljava/util/OptionalInt;->value:I

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    :goto_b
    return v0
.end method

.method public whitelist test-api orElseThrow()I
    .registers 3

    .line 246
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    .line 249
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    return v0

    .line 247
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api orElseThrow(Ljava/util/function/Supplier;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+TX;>;)I^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 270
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TX;>;"
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    .line 271
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    return v0

    .line 273
    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/IntStream;
    .registers 2

    .line 205
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_b

    .line 206
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    invoke-static {v0}, Ljava/util/stream/IntStream;->of(I)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 208
    :cond_b
    invoke-static {}, Ljava/util/stream/IntStream;->empty()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 328
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_20

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OptionalInt["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/OptionalInt;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 330
    :cond_20
    const-string v0, "OptionalInt.empty"

    .line 328
    :goto_22
    return-object v0
.end method
