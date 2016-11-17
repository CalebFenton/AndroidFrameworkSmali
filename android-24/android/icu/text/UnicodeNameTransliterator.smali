.class Landroid/icu/text/UnicodeNameTransliterator;
.super Landroid/icu/text/Transliterator;
.source "UnicodeNameTransliterator.java"


# static fields
.field static final CLOSE_DELIM:C = '}'

.field static final OPEN_DELIM:Ljava/lang/String; = "\\N{"

.field static final OPEN_DELIM_LEN:I = 0x3

.field static final _ID:Ljava/lang/String; = "Any-Name"


# direct methods
.method public constructor <init>(Landroid/icu/text/UnicodeFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/icu/text/UnicodeFilter;

    #@0
    .prologue
    .line 37
    const-string/jumbo v0, "Any-Name"

    #@3
    invoke-direct {p0, v0, p1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@6
    .line 36
    return-void
.end method

.method static register()V
    .locals 2

    #@0
    .prologue
    .line 26
    const-string/jumbo v0, "Any-Name"

    #@3
    new-instance v1, Landroid/icu/text/UnicodeNameTransliterator$1;

    #@5
    invoke-direct {v1}, Landroid/icu/text/UnicodeNameTransliterator$1;-><init>()V

    #@8
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@b
    .line 25
    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 4
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 80
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@3
    move-result-object v0

    #@4
    .line 81
    .local v0, "myFilter":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->size()I

    #@7
    move-result v1

    #@8
    if-lez v1, :cond_0

    #@a
    .line 82
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@d
    .line 83
    const/16 v1, 0x30

    #@f
    const/16 v2, 0x39

    #@11
    invoke-virtual {p3, v1, v2}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    #@14
    move-result-object v1

    #@15
    .line 84
    const/16 v2, 0x41

    #@17
    const/16 v3, 0x5a

    #@19
    .line 83
    invoke-virtual {v1, v2, v3}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    #@1c
    move-result-object v1

    #@1d
    .line 85
    const/16 v2, 0x2d

    #@1f
    .line 83
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@22
    move-result-object v1

    #@23
    .line 86
    const/16 v2, 0x20

    #@25
    .line 83
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@28
    move-result-object v1

    #@29
    .line 87
    const-string/jumbo v2, "\\N{"

    #@2c
    .line 83
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@2f
    move-result-object v1

    #@30
    .line 88
    const/16 v2, 0x7d

    #@32
    .line 83
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@35
    move-result-object v1

    #@36
    .line 89
    const/16 v2, 0x61

    #@38
    const/16 v3, 0x7a

    #@3a
    .line 83
    invoke-virtual {v1, v2, v3}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    #@3d
    move-result-object v1

    #@3e
    .line 90
    const/16 v2, 0x3c

    #@40
    .line 83
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@43
    move-result-object v1

    #@44
    .line 90
    const/16 v2, 0x3e

    #@46
    .line 83
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@49
    move-result-object v1

    #@4a
    .line 91
    const/16 v2, 0x28

    #@4c
    .line 83
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@4f
    move-result-object v1

    #@50
    .line 91
    const/16 v2, 0x29

    #@52
    .line 83
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@55
    .line 79
    :cond_0
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 9
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offsets"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    #@0
    .prologue
    .line 45
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@2
    .line 46
    .local v2, "cursor":I
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@4
    .line 48
    .local v4, "limit":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 49
    .local v6, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "\\N{"

    #@c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 53
    :goto_0
    if-ge v2, v4, :cond_1

    #@11
    .line 54
    invoke-interface {p1, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@14
    move-result v0

    #@15
    .line 55
    .local v0, "c":I
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getExtendedName(I)Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_0

    #@1b
    .line 57
    const/4 v7, 0x3

    #@1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1f
    .line 58
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    const/16 v8, 0x7d

    #@25
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 60
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@2b
    move-result v1

    #@2c
    .line 61
    .local v1, "clen":I
    add-int v7, v2, v1

    #@2e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    invoke-interface {p1, v2, v7, v8}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@35
    .line 62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@38
    move-result v3

    #@39
    .line 63
    .local v3, "len":I
    add-int/2addr v2, v3

    #@3a
    .line 64
    sub-int v7, v3, v1

    #@3c
    add-int/2addr v4, v7

    #@3d
    goto :goto_0

    #@3e
    .line 66
    .end local v1    # "clen":I
    .end local v3    # "len":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_0

    #@41
    .line 70
    .end local v0    # "c":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    iget v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@43
    iget v8, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@45
    sub-int v8, v4, v8

    #@47
    add-int/2addr v7, v8

    #@48
    iput v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@4a
    .line 71
    iput v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@4c
    .line 72
    iput v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@4e
    .line 44
    return-void
.end method
