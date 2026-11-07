.class Landroid/icu/text/UnicodeNameTransliterator;
.super Landroid/icu/text/Transliterator;
.source "UnicodeNameTransliterator.java"


# static fields
.field static final blacklist CLOSE_DELIM:C = '}'

.field static final blacklist OPEN_DELIM:Ljava/lang/String; = "\\N{"

.field static final blacklist OPEN_DELIM_LEN:I = 0x3

.field static final blacklist _ID:Ljava/lang/String; = "Any-Name"


# direct methods
.method public constructor blacklist <init>(Landroid/icu/text/UnicodeFilter;)V
    .registers 3
    .param p1, "filter"    # Landroid/icu/text/UnicodeFilter;

    .line 40
    const-string v0, "Any-Name"

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 41
    return-void
.end method

.method static blacklist register()V
    .registers 2

    .line 28
    new-instance v0, Landroid/icu/text/UnicodeNameTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/UnicodeNameTransliterator$1;-><init>()V

    const-string v1, "Any-Name"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 8
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    .line 84
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeNameTransliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 85
    .local v0, "myFilter":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v1

    if-lez v1, :cond_54

    .line 86
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 87
    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {p3, v1, v2}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 88
    const/16 v2, 0x41

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 89
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 90
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 91
    const-string v2, "\\N{"

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 92
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 93
    const/16 v2, 0x61

    const/16 v3, 0x7a

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 94
    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 95
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 98
    :cond_54
    return-void
.end method

.method protected blacklist handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .registers 12
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offsets"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    .line 49
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 50
    .local v0, "cursor":I
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 52
    .local v1, "limit":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v2, "str":Ljava/lang/StringBuilder;
    const-string v3, "\\N{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :goto_e
    if-ge v0, v1, :cond_41

    .line 58
    invoke-interface {p1, v0}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v3

    .line 59
    .local v3, "c":I
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->getExtendedName(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "name":Ljava/lang/String;
    if-eqz v4, :cond_3e

    .line 61
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 62
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x7d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    .line 65
    .local v4, "clen":I
    add-int v6, v0, v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v0, v6, v7}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 67
    .local v6, "len":I
    add-int/2addr v0, v6

    .line 68
    sub-int v7, v6, v4

    add-int/2addr v1, v7

    .line 69
    .end local v4    # "clen":I
    goto :goto_40

    .line 70
    .end local v6    # "len":I
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    .line 72
    .end local v3    # "c":I
    :goto_40
    goto :goto_e

    .line 74
    .end local v5    # "name":Ljava/lang/String;
    :cond_41
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int v4, v1, v4

    add-int/2addr v3, v4

    iput v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 75
    iput v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 76
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 77
    return-void
.end method
