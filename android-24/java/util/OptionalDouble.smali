.class public final Ljava/util/OptionalDouble;
.super Ljava/lang/Object;
.source "OptionalDouble.java"


# static fields
.field private static final EMPTY:Ljava/util/OptionalDouble;


# instance fields
.field private final isPresent:Z

.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    new-instance v0, Ljava/util/OptionalDouble;

    #@2
    invoke-direct {v0}, Ljava/util/OptionalDouble;-><init>()V

    #@5
    sput-object v0, Ljava/util/OptionalDouble;->EMPTY:Ljava/util/OptionalDouble;

    #@7
    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    #@6
    .line 64
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@8
    iput-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    #@a
    .line 62
    return-void
.end method

.method private constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    #@6
    .line 89
    iput-wide p1, p0, Ljava/util/OptionalDouble;->value:D

    #@8
    .line 87
    return-void
.end method

.method public static empty()Ljava/util/OptionalDouble;
    .locals 1

    #@0
    .prologue
    .line 79
    sget-object v0, Ljava/util/OptionalDouble;->EMPTY:Ljava/util/OptionalDouble;

    #@2
    return-object v0
.end method

.method public static of(D)Ljava/util/OptionalDouble;
    .locals 2
    .param p0, "value"    # D

    #@0
    .prologue
    .line 99
    new-instance v0, Ljava/util/OptionalDouble;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/OptionalDouble;-><init>(D)V

    #@5
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 203
    if-ne p0, p1, :cond_0

    #@4
    .line 204
    return v1

    #@5
    .line 207
    :cond_0
    instance-of v3, p1, Ljava/util/OptionalDouble;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 208
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 211
    nop

    #@c
    nop

    #@d
    .line 212
    .local v0, "other":Ljava/util/OptionalDouble;
    iget-boolean v3, p0, Ljava/util/OptionalDouble;->isPresent:Z

    #@f
    if-eqz v3, :cond_4

    #@11
    iget-boolean v3, v0, Ljava/util/OptionalDouble;->isPresent:Z

    #@13
    if-eqz v3, :cond_4

    #@15
    .line 213
    iget-wide v4, p0, Ljava/util/OptionalDouble;->value:D

    #@17
    iget-wide v6, v0, Ljava/util/OptionalDouble;->value:D

    #@19
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_3

    #@1f
    .line 212
    :cond_2
    :goto_0
    return v1

    #@20
    :cond_3
    move v1, v2

    #@21
    .line 213
    goto :goto_0

    #@22
    .line 214
    :cond_4
    iget-boolean v3, p0, Ljava/util/OptionalDouble;->isPresent:Z

    #@24
    iget-boolean v4, v0, Ljava/util/OptionalDouble;->isPresent:Z

    #@26
    if-eq v3, v4, :cond_2

    #@28
    move v1, v2

    #@29
    goto :goto_0
.end method

.method public getAsDouble()D
    .locals 2

    #@0
    .prologue
    .line 112
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 113
    new-instance v0, Ljava/util/NoSuchElementException;

    #@6
    const-string/jumbo v1, "No value present"

    #@9
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 115
    :cond_0
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    #@f
    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 225
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    #@6
    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public ifPresent(Ljava/util/function/DoubleConsumer;)V
    .locals 2
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 136
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 137
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    #@6
    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    #@9
    .line 135
    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    #@0
    .prologue
    .line 124
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    #@2
    return v0
.end method

.method public orElse(D)D
    .locals 1
    .param p1, "other"    # D

    #@0
    .prologue
    .line 147
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-wide p1, p0, Ljava/util/OptionalDouble;->value:D

    #@6
    .end local p1    # "other":D
    :cond_0
    return-wide p1
.end method

.method public orElseGet(Ljava/util/function/DoubleSupplier;)D
    .locals 2
    .param p1, "other"    # Ljava/util/function/DoubleSupplier;

    #@0
    .prologue
    .line 161
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    #@6
    :goto_0
    return-wide v0

    #@7
    :cond_0
    invoke-interface {p1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    #@a
    move-result-wide v0

    #@b
    goto :goto_0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TX;>;)D^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TX;>;"
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 182
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    #@6
    return-wide v0

    #@7
    .line 184
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/Throwable;

    #@d
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 243
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 244
    const-string/jumbo v0, "OptionalDouble[%s]"

    #@7
    const/4 v1, 0x1

    #@8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    iget-wide v2, p0, Ljava/util/OptionalDouble;->value:D

    #@c
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x0

    #@11
    aput-object v2, v1, v3

    #@13
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 243
    :goto_0
    return-object v0

    #@18
    .line 245
    :cond_0
    const-string/jumbo v0, "OptionalDouble.empty"

    #@1b
    goto :goto_0
.end method
