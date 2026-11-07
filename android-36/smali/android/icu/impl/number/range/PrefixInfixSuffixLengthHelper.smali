.class public Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;
.super Ljava/lang/Object;
.source "PrefixInfixSuffixLengthHelper.java"


# instance fields
.field public blacklist length1:I

.field public blacklist length2:I

.field public blacklist lengthInfix:I

.field public blacklist lengthPrefix:I

.field public blacklist lengthSuffix:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    .line 12
    iput v0, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    .line 13
    iput v0, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    .line 14
    iput v0, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    .line 15
    iput v0, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    return-void
.end method


# virtual methods
.method public blacklist index0()I
    .registers 2

    .line 18
    iget v0, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    return v0
.end method

.method public blacklist index1()I
    .registers 3

    .line 22
    iget v0, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    iget v1, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist index2()I
    .registers 3

    .line 26
    iget v0, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    iget v1, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist index3()I
    .registers 3

    .line 30
    iget v0, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    iget v1, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist index4()I
    .registers 3

    .line 34
    iget v0, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    iget v1, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    add-int/2addr v0, v1

    return v0
.end method
