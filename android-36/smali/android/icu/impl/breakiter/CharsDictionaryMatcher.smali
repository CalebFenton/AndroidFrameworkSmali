.class Landroid/icu/impl/breakiter/CharsDictionaryMatcher;
.super Landroid/icu/impl/breakiter/DictionaryMatcher;
.source "CharsDictionaryMatcher.java"


# instance fields
.field private blacklist characters:Ljava/lang/CharSequence;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .line 21
    invoke-direct {p0}, Landroid/icu/impl/breakiter/DictionaryMatcher;-><init>()V

    .line 22
    iput-object p1, p0, Landroid/icu/impl/breakiter/CharsDictionaryMatcher;->characters:Ljava/lang/CharSequence;

    .line 23
    return-void
.end method


# virtual methods
.method public blacklist getType()I
    .registers 2

    .line 70
    const/4 v0, 0x1

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

    .line 27
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    .line 28
    .local v0, "text":Landroid/icu/text/UCharacterIterator;
    new-instance v1, Landroid/icu/util/CharsTrie;

    iget-object v2, p0, Landroid/icu/impl/breakiter/CharsDictionaryMatcher;->characters:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    .line 29
    .local v1, "uct":Landroid/icu/util/CharsTrie;
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v2

    .line 30
    .local v2, "c":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_14

    .line 31
    return v3

    .line 33
    :cond_14
    invoke-virtual {v1, v2}, Landroid/icu/util/CharsTrie;->firstForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v5

    .line 35
    .local v5, "result":Landroid/icu/util/BytesTrie$Result;
    const/4 v6, 0x1

    .line 36
    .local v6, "numChars":I
    const/4 v7, 0x0

    .line 38
    .local v7, "count":I
    :goto_1a
    invoke-virtual {v5}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v8

    if-eqz v8, :cond_33

    .line 39
    if-ge v7, p5, :cond_2e

    .line 40
    if-eqz p6, :cond_2a

    .line 41
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result v8

    aput v8, p6, v7

    .line 43
    :cond_2a
    aput v6, p3, v7

    .line 44
    add-int/lit8 v7, v7, 0x1

    .line 47
    :cond_2e
    sget-object v8, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne v5, v8, :cond_38

    .line 48
    goto :goto_42

    .line 50
    :cond_33
    sget-object v8, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-ne v5, v8, :cond_38

    .line 51
    goto :goto_42

    .line 54
    :cond_38
    if-lt v6, p2, :cond_3b

    .line 55
    goto :goto_42

    .line 57
    :cond_3b
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v2

    .line 58
    if-ne v2, v4, :cond_45

    .line 59
    nop

    .line 64
    :goto_42
    aput v7, p4, v3

    .line 65
    return v6

    .line 61
    :cond_45
    add-int/lit8 v6, v6, 0x1

    .line 62
    invoke-virtual {v1, v2}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v5

    goto :goto_1a
.end method
