.class public final Ljava/util/OptionalLong;
.super Ljava/lang/Object;
.source "OptionalLong.java"


# static fields
.field private static final greylist-max-o EMPTY:Ljava/util/OptionalLong;


# instance fields
.field private final greylist-max-o isPresent:Z

.field private final greylist-max-o value:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Ljava/util/OptionalLong;

    invoke-direct {v0}, Ljava/util/OptionalLong;-><init>()V

    sput-object v0, Ljava/util/OptionalLong;->EMPTY:Ljava/util/OptionalLong;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/OptionalLong;->value:J

    .line 80
    return-void
.end method

.method private constructor greylist-max-o <init>(J)V
    .registers 4
    .param p1, "value"    # J

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    .line 105
    iput-wide p1, p0, Ljava/util/OptionalLong;->value:J

    .line 106
    return-void
.end method

.method public static whitelist test-api empty()Ljava/util/OptionalLong;
    .registers 1

    .line 95
    sget-object v0, Ljava/util/OptionalLong;->EMPTY:Ljava/util/OptionalLong;

    return-object v0
.end method

.method public static whitelist test-api of(J)Ljava/util/OptionalLong;
    .registers 3
    .param p0, "value"    # J

    .line 115
    new-instance v0, Ljava/util/OptionalLong;

    invoke-direct {v0, p0, p1}, Ljava/util/OptionalLong;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 292
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 293
    return v0

    .line 297
    :cond_4
    instance-of v1, p1, Ljava/util/OptionalLong;

    if-eqz v1, :cond_23

    .line 296
    move-object v1, p1

    check-cast v1, Ljava/util/OptionalLong;

    .local v1, "other":Ljava/util/OptionalLong;
    iget-boolean v2, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v2, :cond_1c

    iget-boolean v2, v1, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v2, :cond_1c

    iget-wide v2, p0, Ljava/util/OptionalLong;->value:J

    iget-wide v4, v1, Ljava/util/OptionalLong;->value:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    goto :goto_22

    :cond_1c
    iget-boolean v2, p0, Ljava/util/OptionalLong;->isPresent:Z

    iget-boolean v3, v1, Ljava/util/OptionalLong;->isPresent:Z

    if-ne v2, v3, :cond_23

    :goto_22
    goto :goto_24

    .end local v1    # "other":Ljava/util/OptionalLong;
    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0
.end method

.method public whitelist test-api getAsLong()J
    .registers 3

    .line 129
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    .line 132
    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

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

    .line 311
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist test-api ifPresent(Ljava/util/function/LongConsumer;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 164
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_9

    .line 165
    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 167
    :cond_9
    return-void
.end method

.method public whitelist test-api ifPresentOrElse(Ljava/util/function/LongConsumer;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "action"    # Ljava/util/function/LongConsumer;
    .param p2, "emptyAction"    # Ljava/lang/Runnable;

    .line 182
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_a

    .line 183
    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

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
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api isPresent()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    return v0
.end method

.method public whitelist test-api orElse(J)J
    .registers 5
    .param p1, "other"    # J

    .line 220
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    goto :goto_8

    :cond_7
    move-wide v0, p1

    :goto_8
    return-wide v0
.end method

.method public whitelist test-api orElseGet(Ljava/util/function/LongSupplier;)J
    .registers 4
    .param p1, "supplier"    # Ljava/util/function/LongSupplier;

    .line 234
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public whitelist test-api orElseThrow()J
    .registers 3

    .line 246
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    .line 249
    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    return-wide v0

    .line 247
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api orElseThrow(Ljava/util/function/Supplier;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+TX;>;)J^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 270
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TX;>;"
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    .line 271
    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    return-wide v0

    .line 273
    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/LongStream;
    .registers 3

    .line 205
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_b

    .line 206
    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Ljava/util/stream/LongStream;->of(J)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 208
    :cond_b
    invoke-static {}, Ljava/util/stream/LongStream;->empty()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 328
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_20

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OptionalLong["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/util/OptionalLong;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 330
    :cond_20
    const-string v0, "OptionalLong.empty"

    .line 328
    :goto_22
    return-object v0
.end method
