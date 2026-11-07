.class final Landroid/icu/text/BreakTransliterator;
.super Landroid/icu/text/Transliterator;
.source "BreakTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
    }
.end annotation


# static fields
.field static final blacklist LETTER_OR_MARK_MASK:I = 0x1fe


# instance fields
.field private blacklist bi:Landroid/icu/text/BreakIterator;

.field private blacklist boundaries:[I

.field private blacklist boundaryCount:I

.field private blacklist insertion:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V
    .registers 5
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "filter"    # Landroid/icu/text/UnicodeFilter;

    .line 36
    const/4 v0, 0x0

    const-string v1, " "

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/BreakTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Landroid/icu/text/BreakIterator;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Landroid/icu/text/BreakIterator;Ljava/lang/String;)V
    .registers 6
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "filter"    # Landroid/icu/text/UnicodeFilter;
    .param p3, "bi"    # Landroid/icu/text/BreakIterator;
    .param p4, "insertion"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 26
    const/16 v0, 0x32

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    .line 31
    iput-object p3, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    .line 32
    iput-object p4, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static blacklist register()V
    .registers 3

    .line 146
    new-instance v0, Landroid/icu/text/BreakTransliterator;

    const-string v1, "Any-BreakInternal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/BreakTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 147
    .local v0, "trans":Landroid/icu/text/Transliterator;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerInstance(Landroid/icu/text/Transliterator;Z)V

    .line 155
    return-void
.end method


# virtual methods
.method public blacklist addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 6
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    .line 412
    invoke-virtual {p0, p1}, Landroid/icu/text/BreakTransliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 415
    .local v0, "myFilter":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v1

    if-eqz v1, :cond_f

    .line 416
    iget-object v1, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 418
    :cond_f
    return-void
.end method

.method public blacklist getBreakIterator()Landroid/icu/text/BreakIterator;
    .registers 3

    .line 56
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_11

    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "th_TH"

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    .line 57
    :cond_11
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    return-object v0
.end method

.method public blacklist getInsertion()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized blacklist handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .registers 11
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    monitor-enter p0

    .line 79
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "boundary":I
    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator;->getBreakIterator()Landroid/icu/text/BreakIterator;

    .line 82
    iget-object v2, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    new-instance v3, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v5, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-direct {v3, p1, v4, v5, v6}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;-><init>(Landroid/icu/text/Replaceable;III)V

    invoke-virtual {v2, v3}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 94
    iget-object v2, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    invoke-virtual {v2}, Landroid/icu/text/BreakIterator;->first()I

    move-result v2

    .end local v1    # "boundary":I
    .local v2, "boundary":I
    :goto_1e
    const/4 v1, -0x1

    const/4 v3, 0x1

    if-eq v2, v1, :cond_72

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ge v2, v1, :cond_72

    .line 95
    if-nez v2, :cond_29

    goto :goto_6a

    .line 98
    :cond_29
    add-int/lit8 v1, v2, -0x1

    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Landroid/icu/text/Replaceable;I)I

    move-result v1

    .line 99
    .local v1, "cp":I
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v4

    .line 101
    .local v4, "type":I
    shl-int v5, v3, v4

    and-int/lit16 v5, v5, 0x1fe

    if-nez v5, :cond_3a

    goto :goto_6a

    .line 103
    :cond_3a
    invoke-static {p1, v2}, Landroid/icu/text/UTF16;->charAt(Landroid/icu/text/Replaceable;I)I

    move-result v5

    .line 104
    .end local v1    # "cp":I
    .local v5, "cp":I
    invoke-static {v5}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v1

    .line 106
    .end local v4    # "type":I
    .local v1, "type":I
    shl-int/2addr v3, v1

    and-int/lit16 v3, v3, 0x1fe

    if-nez v3, :cond_48

    goto :goto_6a

    .line 108
    :cond_48
    iget v3, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    iget-object v4, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    array-length v4, v4

    if-lt v3, v4, :cond_60

    .line 109
    iget-object v3, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    .line 110
    .local v3, "temp":[I
    iget-object v4, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    array-length v6, v6

    invoke-static {v4, v0, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iput-object v3, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    .line 114
    .end local v3    # "temp":[I
    .end local p0    # "this":Landroid/icu/text/BreakTransliterator;
    :cond_60
    iget-object v3, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    iget v4, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    aput v2, v3, v4

    .line 94
    .end local v1    # "type":I
    .end local v5    # "cp":I
    :goto_6a
    iget-object v1, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    invoke-virtual {v1}, Landroid/icu/text/BreakIterator;->next()I

    move-result v1

    move v2, v1

    goto :goto_1e

    .line 118
    :cond_72
    const/4 v0, 0x0

    .line 119
    .local v0, "delta":I
    const/4 v1, 0x0

    .line 121
    .local v1, "lastBoundary":I
    iget v4, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    if-eqz v4, :cond_9e

    .line 122
    iget v4, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    iget-object v5, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int v0, v4, v5

    .line 123
    iget-object v4, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    iget v5, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    sub-int/2addr v5, v3

    aget v4, v4, v5

    move v1, v4

    .line 127
    :goto_8a
    iget v4, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    if-lez v4, :cond_9e

    .line 128
    iget-object v4, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    iget v5, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    sub-int/2addr v5, v3

    iput v5, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    aget v4, v4, v5

    move v2, v4

    .line 129
    iget-object v4, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    invoke-interface {p1, v2, v2, v4}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    goto :goto_8a

    .line 134
    :cond_9e
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v3, v0

    iput v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 135
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v3, v0

    iput v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 136
    if-eqz p3, :cond_ad

    add-int v3, v1, v0

    goto :goto_af

    :cond_ad
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    :goto_af
    iput v3, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_b1
    .catchall {:try_start_2 .. :try_end_b1} :catchall_b3

    .line 137
    monitor-exit p0

    return-void

    .line 78
    .end local v0    # "delta":I
    .end local v1    # "lastBoundary":I
    .end local v2    # "boundary":I
    .end local p1    # "text":Landroid/icu/text/Replaceable;
    .end local p2    # "pos":Landroid/icu/text/Transliterator$Position;
    .end local p3    # "incremental":Z
    :catchall_b3
    move-exception p1

    :try_start_b4
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw p1
.end method

.method public blacklist setBreakIterator(Landroid/icu/text/BreakIterator;)V
    .registers 2
    .param p1, "bi"    # Landroid/icu/text/BreakIterator;

    .line 63
    iput-object p1, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    .line 64
    return-void
.end method

.method public blacklist setInsertion(Ljava/lang/String;)V
    .registers 2
    .param p1, "insertion"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    .line 50
    return-void
.end method
