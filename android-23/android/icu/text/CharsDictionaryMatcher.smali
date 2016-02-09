.class Landroid/icu/text/CharsDictionaryMatcher;
.super Landroid/icu/text/DictionaryMatcher;
.source "CharsDictionaryMatcher.java"


# instance fields
.field private characters:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "chars"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/icu/text/DictionaryMatcher;-><init>()V

    #@3
    .line 18
    iput-object p1, p0, Landroid/icu/text/CharsDictionaryMatcher;->characters:Ljava/lang/CharSequence;

    #@5
    .line 17
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 64
    const/4 v0, 0x1

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
    .line 22
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    #@5
    move-result-object v4

    #@6
    .line 23
    .local v4, "text":Landroid/icu/text/UCharacterIterator;
    new-instance v5, Landroid/icu/util/CharsTrie;

    #@8
    iget-object v6, p0, Landroid/icu/text/CharsDictionaryMatcher;->characters:Ljava/lang/CharSequence;

    #@a
    invoke-direct {v5, v6, v7}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    #@d
    .line 24
    .local v5, "uct":Landroid/icu/util/CharsTrie;
    invoke-virtual {v4}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@10
    move-result v0

    #@11
    .line 25
    .local v0, "c":I
    if-ne v0, v8, :cond_0

    #@13
    .line 26
    return v7

    #@14
    .line 28
    :cond_0
    invoke-virtual {v5, v0}, Landroid/icu/util/CharsTrie;->firstForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    #@17
    move-result-object v3

    #@18
    .line 30
    .local v3, "result":Landroid/icu/util/BytesTrie$Result;
    const/4 v2, 0x1

    #@19
    .line 31
    .local v2, "numChars":I
    const/4 v1, 0x0

    #@1a
    .line 33
    .local v1, "count":I
    :goto_0
    invoke-virtual {v3}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_4

    #@20
    .line 34
    if-ge v1, p5, :cond_2

    #@22
    .line 35
    if-eqz p6, :cond_1

    #@24
    .line 36
    invoke-virtual {v5}, Landroid/icu/util/CharsTrie;->getValue()I

    #@27
    move-result v6

    #@28
    aput v6, p6, v1

    #@2a
    .line 38
    :cond_1
    aput v2, p3, v1

    #@2c
    .line 39
    add-int/lit8 v1, v1, 0x1

    #@2e
    .line 42
    :cond_2
    sget-object v6, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@30
    if-ne v3, v6, :cond_5

    #@32
    .line 59
    :cond_3
    aput v1, p4, v7

    #@34
    .line 60
    return v2

    #@35
    .line 45
    :cond_4
    sget-object v6, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@37
    if-eq v3, v6, :cond_3

    #@39
    .line 49
    :cond_5
    if-ge v2, p2, :cond_3

    #@3b
    .line 52
    invoke-virtual {v4}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@3e
    move-result v0

    #@3f
    .line 53
    if-eq v0, v8, :cond_3

    #@41
    .line 56
    add-int/lit8 v2, v2, 0x1

    #@43
    .line 57
    invoke-virtual {v5, v0}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    #@46
    move-result-object v3

    #@47
    goto :goto_0
.end method
