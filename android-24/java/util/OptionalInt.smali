.class public final Ljava/util/OptionalInt;
.super Ljava/lang/Object;
.source "OptionalInt.java"


# static fields
.field private static final EMPTY:Ljava/util/OptionalInt;


# instance fields
.field private final isPresent:Z

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    new-instance v0, Ljava/util/OptionalInt;

    #@2
    invoke-direct {v0}, Ljava/util/OptionalInt;-><init>()V

    #@5
    sput-object v0, Ljava/util/OptionalInt;->EMPTY:Ljava/util/OptionalInt;

    #@7
    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 63
    iput-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    #@6
    .line 64
    iput v0, p0, Ljava/util/OptionalInt;->value:I

    #@8
    .line 62
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    #@6
    .line 90
    iput p1, p0, Ljava/util/OptionalInt;->value:I

    #@8
    .line 87
    return-void
.end method

.method public static empty()Ljava/util/OptionalInt;
    .locals 1

    #@0
    .prologue
    .line 79
    sget-object v0, Ljava/util/OptionalInt;->EMPTY:Ljava/util/OptionalInt;

    #@2
    return-object v0
.end method

.method public static of(I)Ljava/util/OptionalInt;
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 100
    new-instance v0, Ljava/util/OptionalInt;

    #@2
    invoke-direct {v0, p0}, Ljava/util/OptionalInt;-><init>(I)V

    #@5
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 204
    if-ne p0, p1, :cond_0

    #@4
    .line 205
    return v1

    #@5
    .line 208
    :cond_0
    instance-of v3, p1, Ljava/util/OptionalInt;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 209
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 212
    nop

    #@c
    nop

    #@d
    .line 213
    .local v0, "other":Ljava/util/OptionalInt;
    iget-boolean v3, p0, Ljava/util/OptionalInt;->isPresent:Z

    #@f
    if-eqz v3, :cond_4

    #@11
    iget-boolean v3, v0, Ljava/util/OptionalInt;->isPresent:Z

    #@13
    if-eqz v3, :cond_4

    #@15
    .line 214
    iget v3, p0, Ljava/util/OptionalInt;->value:I

    #@17
    iget v4, v0, Ljava/util/OptionalInt;->value:I

    #@19
    if-ne v3, v4, :cond_3

    #@1b
    .line 213
    :cond_2
    :goto_0
    return v1

    #@1c
    :cond_3
    move v1, v2

    #@1d
    .line 214
    goto :goto_0

    #@1e
    .line 215
    :cond_4
    iget-boolean v3, p0, Ljava/util/OptionalInt;->isPresent:Z

    #@20
    iget-boolean v4, v0, Ljava/util/OptionalInt;->isPresent:Z

    #@22
    if-eq v3, v4, :cond_2

    #@24
    move v1, v2

    #@25
    goto :goto_0
.end method

.method public getAsInt()I
    .locals 2

    #@0
    .prologue
    .line 113
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 114
    new-instance v0, Ljava/util/NoSuchElementException;

    #@6
    const-string/jumbo v1, "No value present"

    #@9
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 116
    :cond_0
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    #@f
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 226
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    #@6
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

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

.method public ifPresent(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 137
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 138
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    #@6
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    #@9
    .line 136
    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    #@0
    .prologue
    .line 125
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    #@2
    return v0
.end method

.method public orElse(I)I
    .locals 1
    .param p1, "other"    # I

    #@0
    .prologue
    .line 148
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget p1, p0, Ljava/util/OptionalInt;->value:I

    #@6
    .end local p1    # "other":I
    :cond_0
    return p1
.end method

.method public orElseGet(Ljava/util/function/IntSupplier;)I
    .locals 1
    .param p1, "other"    # Ljava/util/function/IntSupplier;

    #@0
    .prologue
    .line 162
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TX;>;)I^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TX;>;"
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 183
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    #@6
    return v0

    #@7
    .line 185
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
    .line 244
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 245
    const-string/jumbo v0, "OptionalInt[%s]"

    #@7
    const/4 v1, 0x1

    #@8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    iget v2, p0, Ljava/util/OptionalInt;->value:I

    #@c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 244
    :goto_0
    return-object v0

    #@18
    .line 246
    :cond_0
    const-string/jumbo v0, "OptionalInt.empty"

    #@1b
    goto :goto_0
.end method
