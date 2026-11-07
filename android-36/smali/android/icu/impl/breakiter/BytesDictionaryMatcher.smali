.class Landroid/icu/impl/breakiter/BytesDictionaryMatcher;
.super Landroid/icu/impl/breakiter/DictionaryMatcher;
.source "BytesDictionaryMatcher.java"


# instance fields
.field private final blacklist characters:[B

.field private final blacklist transform:I


# direct methods
.method public constructor blacklist <init>([BI)V
    .registers 5
    .param p1, "chars"    # [B
    .param p2, "transform"    # I

    .line 23
    invoke-direct {p0}, Landroid/icu/impl/breakiter/DictionaryMatcher;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/icu/impl/breakiter/BytesDictionaryMatcher;->characters:[B

    .line 25
    const/high16 v0, 0x7f000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 29
    iput p2, p0, Landroid/icu/impl/breakiter/BytesDictionaryMatcher;->transform:I

    .line 30
    return-void
.end method

.method private blacklist transform(I)I
    .registers 4
    .param p1, "c"    # I

    .line 33
    const/16 v0, 0x200d

    if-ne p1, v0, :cond_7

    .line 34
    const/16 v0, 0xff

    return v0

    .line 35
    :cond_7
    const/16 v0, 0x200c

    if-ne p1, v0, :cond_e

    .line 36
    const/16 v0, 0xfe

    return v0

    .line 39
    :cond_e
    iget v0, p0, Landroid/icu/impl/breakiter/BytesDictionaryMatcher;->transform:I

    const v1, 0x1fffff

    and-int/2addr v0, v1

    sub-int v0, p1, v0

    .line 40
    .local v0, "delta":I
    if-ltz v0, :cond_1e

    const/16 v1, 0xfd

    if-ge v1, v0, :cond_1d

    goto :goto_1e

    .line 43
    :cond_1d
    return v0

    .line 41
    :cond_1e
    :goto_1e
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public blacklist getType()I
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist matches(Ljava/text/CharacterIterator;I[I[II[I)I
    .registers 16
    .param p1, "text_"    # Ljava/text/CharacterIterator;
    .param p2, "maxLength"    # I
    .param p3, "lengths"    # [I
    .param p4, "count_"    # [I
    .param p5, "limit"    # I
    .param p6, "values"    # [I

    .line 48
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    .line 49
    .local v0, "text":Landroid/icu/text/UCharacterIterator;
    new-instance v1, Landroid/icu/util/BytesTrie;

    iget-object v2, p0, Landroid/icu/impl/breakiter/BytesDictionaryMatcher;->characters:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/icu/util/BytesTrie;-><init>([BI)V

    .line 50
    .local v1, "bt":Landroid/icu/util/BytesTrie;
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v2

    .line 51
    .local v2, "c":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_14

    .line 52
    return v3

    .line 54
    :cond_14
    invoke-direct {p0, v2}, Landroid/icu/impl/breakiter/BytesDictionaryMatcher;->transform(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/icu/util/BytesTrie;->first(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v5

    .line 56
    .local v5, "result":Landroid/icu/util/BytesTrie$Result;
    const/4 v6, 0x1

    .line 57
    .local v6, "numChars":I
    const/4 v7, 0x0

    .line 59
    .local v7, "count":I
    :goto_1e
    invoke-virtual {v5}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v8

    if-eqz v8, :cond_37

    .line 60
    if-ge v7, p5, :cond_32

    .line 61
    if-eqz p6, :cond_2e

    .line 62
    invoke-virtual {v1}, Landroid/icu/util/BytesTrie;->getValue()I

    move-result v8

    aput v8, p6, v7

    .line 64
    :cond_2e
    aput v6, p3, v7

    .line 65
    add-int/lit8 v7, v7, 0x1

    .line 67
    :cond_32
    sget-object v8, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne v5, v8, :cond_3c

    .line 68
    goto :goto_46

    .line 70
    :cond_37
    sget-object v8, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-ne v5, v8, :cond_3c

    .line 71
    goto :goto_46

    .line 74
    :cond_3c
    if-lt v6, p2, :cond_3f

    .line 75
    goto :goto_46

    .line 78
    :cond_3f
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v2

    .line 79
    if-ne v2, v4, :cond_49

    .line 80
    nop

    .line 85
    :goto_46
    aput v7, p4, v3

    .line 86
    return v6

    .line 82
    :cond_49
    add-int/lit8 v6, v6, 0x1

    .line 83
    invoke-direct {p0, v2}, Landroid/icu/impl/breakiter/BytesDictionaryMatcher;->transform(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v5

    goto :goto_1e
.end method
