.class Landroid/icu/text/BytesDictionaryMatcher;
.super Landroid/icu/text/DictionaryMatcher;
.source "BytesDictionaryMatcher.java"


# instance fields
.field private final characters:[B

.field private final transform:I


# direct methods
.method public constructor <init>([BI)V
    .locals 2
    .param p1, "chars"    # [B
    .param p2, "transform"    # I

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/icu/text/DictionaryMatcher;-><init>()V

    #@3
    .line 20
    iput-object p1, p0, Landroid/icu/text/BytesDictionaryMatcher;->characters:[B

    #@5
    .line 21
    const/high16 v0, 0x7f000000

    #@7
    and-int/2addr v0, p2

    #@8
    const/high16 v1, 0x1000000

    #@a
    if-ne v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    invoke-static {v0}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@10
    .line 25
    iput p2, p0, Landroid/icu/text/BytesDictionaryMatcher;->transform:I

    #@12
    .line 19
    return-void

    #@13
    .line 21
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method private transform(I)I
    .locals 3
    .param p1, "c"    # I

    #@0
    .prologue
    .line 29
    const/16 v1, 0x200d

    #@2
    if-ne p1, v1, :cond_0

    #@4
    .line 30
    const/16 v1, 0xff

    #@6
    return v1

    #@7
    .line 31
    :cond_0
    const/16 v1, 0x200c

    #@9
    if-ne p1, v1, :cond_1

    #@b
    .line 32
    const/16 v1, 0xfe

    #@d
    return v1

    #@e
    .line 35
    :cond_1
    iget v1, p0, Landroid/icu/text/BytesDictionaryMatcher;->transform:I

    #@10
    const v2, 0x1fffff

    #@13
    and-int/2addr v1, v2

    #@14
    sub-int v0, p1, v1

    #@16
    .line 36
    .local v0, "delta":I
    if-ltz v0, :cond_2

    #@18
    const/16 v1, 0xfd

    #@1a
    if-ge v1, v0, :cond_3

    #@1c
    .line 37
    :cond_2
    const/4 v1, -0x1

    #@1d
    return v1

    #@1e
    .line 39
    :cond_3
    return v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 85
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public matches(Ljava/text/CharacterIterator;I[I[II[I)I
    .locals 9
    .param p1, "text_"    # Ljava/text/CharacterIterator;
    .param p2, "maxLength"    # I
    .param p3, "lengths"    # [I
    .param p4, "count_"    # [I
    .param p5, "limit"    # I
    .param p6, "values"    # [I

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 43
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    #@5
    move-result-object v5

    #@6
    .line 44
    .local v5, "text":Landroid/icu/text/UCharacterIterator;
    new-instance v0, Landroid/icu/util/BytesTrie;

    #@8
    iget-object v6, p0, Landroid/icu/text/BytesDictionaryMatcher;->characters:[B

    #@a
    invoke-direct {v0, v6, v7}, Landroid/icu/util/BytesTrie;-><init>([BI)V

    #@d
    .line 45
    .local v0, "bt":Landroid/icu/util/BytesTrie;
    invoke-virtual {v5}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@10
    move-result v1

    #@11
    .line 46
    .local v1, "c":I
    if-ne v1, v8, :cond_0

    #@13
    .line 47
    return v7

    #@14
    .line 49
    :cond_0
    invoke-direct {p0, v1}, Landroid/icu/text/BytesDictionaryMatcher;->transform(I)I

    #@17
    move-result v6

    #@18
    invoke-virtual {v0, v6}, Landroid/icu/util/BytesTrie;->first(I)Landroid/icu/util/BytesTrie$Result;

    #@1b
    move-result-object v4

    #@1c
    .line 51
    .local v4, "result":Landroid/icu/util/BytesTrie$Result;
    const/4 v3, 0x1

    #@1d
    .line 52
    .local v3, "numChars":I
    const/4 v2, 0x0

    #@1e
    .line 54
    .local v2, "count":I
    :goto_0
    invoke-virtual {v4}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_4

    #@24
    .line 55
    if-ge v2, p5, :cond_2

    #@26
    .line 56
    if-eqz p6, :cond_1

    #@28
    .line 57
    invoke-virtual {v0}, Landroid/icu/util/BytesTrie;->getValue()I

    #@2b
    move-result v6

    #@2c
    aput v6, p6, v2

    #@2e
    .line 59
    :cond_1
    aput v3, p3, v2

    #@30
    .line 60
    add-int/lit8 v2, v2, 0x1

    #@32
    .line 62
    :cond_2
    sget-object v6, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@34
    if-ne v4, v6, :cond_5

    #@36
    .line 80
    :cond_3
    aput v2, p4, v7

    #@38
    .line 81
    return v3

    #@39
    .line 65
    :cond_4
    sget-object v6, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@3b
    if-eq v4, v6, :cond_3

    #@3d
    .line 69
    :cond_5
    if-ge v3, p2, :cond_3

    #@3f
    .line 73
    invoke-virtual {v5}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@42
    move-result v1

    #@43
    .line 74
    if-eq v1, v8, :cond_3

    #@45
    .line 77
    add-int/lit8 v3, v3, 0x1

    #@47
    .line 78
    invoke-direct {p0, v1}, Landroid/icu/text/BytesDictionaryMatcher;->transform(I)I

    #@4a
    move-result v6

    #@4b
    invoke-virtual {v0, v6}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    #@4e
    move-result-object v4

    #@4f
    goto :goto_0
.end method
