.class Ljava/math/SignedMutableBigInteger;
.super Ljava/math/MutableBigInteger;
.source "SignedMutableBigInteger.java"


# instance fields
.field blacklist sign:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/math/MutableBigInteger;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    .line 62
    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "val"    # I

    .line 69
    invoke-direct {p0, p1}, Ljava/math/MutableBigInteger;-><init>(I)V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    .line 70
    return-void
.end method

.method constructor blacklist <init>(Ljava/math/MutableBigInteger;)V
    .registers 3
    .param p1, "val"    # Ljava/math/MutableBigInteger;

    .line 77
    invoke-direct {p0, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    .line 78
    return-void
.end method


# virtual methods
.method blacklist signedAdd(Ljava/math/MutableBigInteger;)V
    .registers 4
    .param p1, "addend"    # Ljava/math/MutableBigInteger;

    .line 97
    iget v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 98
    invoke-virtual {p0, p1}, Ljava/math/SignedMutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    goto :goto_12

    .line 100
    :cond_9
    iget v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    invoke-virtual {p0, p1}, Ljava/math/SignedMutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    .line 102
    :goto_12
    return-void
.end method

.method blacklist signedAdd(Ljava/math/SignedMutableBigInteger;)V
    .registers 4
    .param p1, "addend"    # Ljava/math/SignedMutableBigInteger;

    .line 86
    iget v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    iget v1, p1, Ljava/math/SignedMutableBigInteger;->sign:I

    if-ne v0, v1, :cond_a

    .line 87
    invoke-virtual {p0, p1}, Ljava/math/SignedMutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    goto :goto_13

    .line 89
    :cond_a
    iget v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    invoke-virtual {p0, p1}, Ljava/math/SignedMutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    .line 91
    :goto_13
    return-void
.end method

.method blacklist signedSubtract(Ljava/math/MutableBigInteger;)V
    .registers 5
    .param p1, "addend"    # Ljava/math/MutableBigInteger;

    .line 119
    iget v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 120
    iget v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    invoke-virtual {p0, p1}, Ljava/math/SignedMutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    move-result v2

    mul-int/2addr v0, v2

    iput v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    goto :goto_12

    .line 122
    :cond_f
    invoke-virtual {p0, p1}, Ljava/math/SignedMutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 123
    :goto_12
    iget v0, p0, Ljava/math/SignedMutableBigInteger;->intLen:I

    if-nez v0, :cond_18

    .line 124
    iput v1, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    .line 125
    :cond_18
    return-void
.end method

.method blacklist signedSubtract(Ljava/math/SignedMutableBigInteger;)V
    .registers 4
    .param p1, "addend"    # Ljava/math/SignedMutableBigInteger;

    .line 108
    iget v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    iget v1, p1, Ljava/math/SignedMutableBigInteger;->sign:I

    if-ne v0, v1, :cond_10

    .line 109
    iget v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    invoke-virtual {p0, p1}, Ljava/math/SignedMutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    goto :goto_13

    .line 111
    :cond_10
    invoke-virtual {p0, p1}, Ljava/math/SignedMutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 113
    :goto_13
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 132
    iget v0, p0, Ljava/math/SignedMutableBigInteger;->sign:I

    invoke-virtual {p0, v0}, Ljava/math/SignedMutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
