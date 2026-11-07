.class public final Landroid/icu/impl/CaseMapImpl;
.super Ljava/lang/Object;
.source "CaseMapImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;,
        Landroid/icu/impl/CaseMapImpl$StringContextIterator;,
        Landroid/icu/impl/CaseMapImpl$GreekUpper;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist ACUTE:C = '\u0301'

.field private static final blacklist CASE_TRIE:Landroid/icu/impl/Trie2_16;

.field private static final blacklist LNS:I = 0xf020e2e

.field public static final blacklist OMIT_UNCHANGED_TEXT:I = 0x4000

.field private static final blacklist TITLECASE_ADJUSTMENT_MASK:I = 0x600

.field public static final blacklist TITLECASE_ADJUST_TO_CASED:I = 0x400

.field private static final blacklist TITLECASE_ITERATOR_MASK:I = 0xe0

.field public static final blacklist TITLECASE_SENTENCES:I = 0x40

.field public static final blacklist TITLECASE_WHOLE_STRING:I = 0x20

.field private static final blacklist U_GC_M_MASK:I = 0x1c0


# direct methods
.method static bridge synthetic blacklist -$$Nest$smappendResult(ILjava/lang/Appendable;IILandroid/icu/text/Edits;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILandroid/icu/text/Edits;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    nop

    .line 439
    invoke-static {}, Landroid/icu/impl/UCaseProps;->getTrie()Landroid/icu/impl/Trie2_16;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/CaseMapImpl;->CASE_TRIE:Landroid/icu/impl/Trie2_16;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addTitleAdjustmentOption(II)I
    .registers 5
    .param p0, "options"    # I
    .param p1, "newOption"    # I

    .line 194
    and-int/lit16 v0, p0, 0x600

    .line 195
    .local v0, "adjOptions":I
    if-eqz v0, :cond_f

    if-ne v0, p1, :cond_7

    goto :goto_f

    .line 196
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "multiple titlecasing index adjustment options"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_f
    :goto_f
    or-int v1, p0, p1

    return v1
.end method

.method public static blacklist addTitleIteratorOption(II)I
    .registers 5
    .param p0, "options"    # I
    .param p1, "newOption"    # I

    .line 237
    and-int/lit16 v0, p0, 0xe0

    .line 238
    .local v0, "iterOptions":I
    if-eqz v0, :cond_f

    if-ne v0, p1, :cond_7

    goto :goto_f

    .line 239
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "multiple titlecasing iterator options"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_f
    :goto_f
    or-int v1, p0, p1

    return v1
.end method

.method private static blacklist appendCodePoint(Ljava/lang/Appendable;I)I
    .registers 4
    .param p0, "a"    # Ljava/lang/Appendable;
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    const v0, 0xffff

    if-gt p1, v0, :cond_b

    .line 370
    int-to-char v0, p1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 371
    const/4 v0, 0x1

    return v0

    .line 373
    :cond_b
    shr-int/lit8 v0, p1, 0xa

    const v1, 0xd7c0

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 374
    and-int/lit16 v0, p1, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 375
    const/4 v0, 0x2

    return v0
.end method

.method private static blacklist appendResult(ILjava/lang/Appendable;IILandroid/icu/text/Edits;)V
    .registers 6
    .param p0, "result"    # I
    .param p1, "dest"    # Ljava/lang/Appendable;
    .param p2, "cpLength"    # I
    .param p3, "options"    # I
    .param p4, "edits"    # Landroid/icu/text/Edits;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    if-gez p0, :cond_11

    .line 388
    if-eqz p4, :cond_7

    .line 389
    invoke-virtual {p4, p2}, Landroid/icu/text/Edits;->addUnchanged(I)V

    .line 391
    :cond_7
    and-int/lit16 v0, p3, 0x4000

    if-eqz v0, :cond_c

    .line 392
    return-void

    .line 394
    :cond_c
    not-int v0, p0

    invoke-static {p1, v0}, Landroid/icu/impl/CaseMapImpl;->appendCodePoint(Ljava/lang/Appendable;I)I

    goto :goto_24

    .line 395
    :cond_11
    const/16 v0, 0x1f

    if-gt p0, v0, :cond_1b

    .line 397
    if-eqz p4, :cond_24

    .line 398
    invoke-virtual {p4, p2, p0}, Landroid/icu/text/Edits;->addReplace(II)V

    goto :goto_24

    .line 402
    :cond_1b
    invoke-static {p1, p0}, Landroid/icu/impl/CaseMapImpl;->appendCodePoint(Ljava/lang/Appendable;I)I

    move-result v0

    .line 403
    .local v0, "length":I
    if-eqz p4, :cond_24

    .line 404
    invoke-virtual {p4, p2, v0}, Landroid/icu/text/Edits;->addReplace(II)V

    .line 407
    .end local v0    # "length":I
    :cond_24
    :goto_24
    return-void
.end method

.method private static final blacklist appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILandroid/icu/text/Edits;)V
    .registers 7
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "dest"    # Ljava/lang/Appendable;
    .param p4, "options"    # I
    .param p5, "edits"    # Landroid/icu/text/Edits;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    if-lez p2, :cond_11

    .line 412
    if-eqz p5, :cond_7

    .line 413
    invoke-virtual {p5, p2}, Landroid/icu/text/Edits;->addUnchanged(I)V

    .line 415
    :cond_7
    and-int/lit16 v0, p4, 0x4000

    if-eqz v0, :cond_c

    .line 416
    return-void

    .line 418
    :cond_c
    add-int v0, p1, p2

    invoke-interface {p3, p0, p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 420
    :cond_11
    return-void
.end method

.method private static blacklist applyEdits(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/Edits;)Ljava/lang/String;
    .registers 7
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "replacementChars"    # Ljava/lang/StringBuilder;
    .param p2, "edits"    # Landroid/icu/text/Edits;

    .line 423
    invoke-virtual {p2}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_b

    .line 424
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 426
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p2}, Landroid/icu/text/Edits;->lengthDelta()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 427
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Landroid/icu/text/Edits;->getCoarseIterator()Landroid/icu/text/Edits$Iterator;

    move-result-object v1

    .local v1, "ei":Landroid/icu/text/Edits$Iterator;
    :goto_1d
    invoke-virtual {v1}, Landroid/icu/text/Edits$Iterator;->next()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 428
    invoke-virtual {v1}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 429
    invoke-virtual {v1}, Landroid/icu/text/Edits$Iterator;->replacementIndex()I

    move-result v2

    .line 430
    .local v2, "i":I
    invoke-virtual {v1}, Landroid/icu/text/Edits$Iterator;->newLength()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, p1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 431
    .end local v2    # "i":I
    goto :goto_1d

    .line 432
    :cond_36
    invoke-virtual {v1}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v2

    .line 433
    .restart local v2    # "i":I
    invoke-virtual {v1}, Landroid/icu/text/Edits$Iterator;->oldLength()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 434
    .end local v2    # "i":I
    goto :goto_1d

    .line 436
    .end local v1    # "ei":Landroid/icu/text/Edits$Iterator;
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .registers 13
    .param p0, "options"    # I
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p3, "edits"    # Landroid/icu/text/Edits;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(I",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Landroid/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .line 886
    .local p2, "dest":Ljava/lang/Appendable;, "TA;"
    if-eqz p3, :cond_c

    .line 887
    :try_start_2
    invoke-virtual {p3}, Landroid/icu/text/Edits;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_c

    .line 891
    :catch_6
    move-exception v0

    move v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v8, p3

    goto :goto_22

    .line 889
    :cond_c
    :goto_c
    :try_start_c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_1d

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x0

    move v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v8, p3

    .end local p0    # "options":I
    .end local p1    # "src":Ljava/lang/CharSequence;
    .end local p2    # "dest":Ljava/lang/Appendable;, "TA;"
    .end local p3    # "edits":Landroid/icu/text/Edits;
    .local v2, "options":I
    .local v3, "src":Ljava/lang/CharSequence;
    .local v7, "dest":Ljava/lang/Appendable;, "TA;"
    .local v8, "edits":Landroid/icu/text/Edits;
    :try_start_17
    invoke-static/range {v1 .. v8}, Landroid/icu/impl/CaseMapImpl;->internalToLower(IILjava/lang/CharSequence;IILandroid/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Landroid/icu/text/Edits;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 890
    return-object v7

    .line 891
    :catch_1b
    move-exception v0

    goto :goto_22

    .end local v2    # "options":I
    .end local v3    # "src":Ljava/lang/CharSequence;
    .end local v7    # "dest":Ljava/lang/Appendable;, "TA;"
    .end local v8    # "edits":Landroid/icu/text/Edits;
    .restart local p0    # "options":I
    .restart local p1    # "src":Ljava/lang/CharSequence;
    .restart local p2    # "dest":Ljava/lang/Appendable;, "TA;"
    .restart local p3    # "edits":Landroid/icu/text/Edits;
    :catch_1d
    move-exception v0

    move v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v8, p3

    .line 892
    .end local p0    # "options":I
    .end local p1    # "src":Ljava/lang/CharSequence;
    .end local p2    # "dest":Ljava/lang/Appendable;, "TA;"
    .end local p3    # "edits":Landroid/icu/text/Edits;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "options":I
    .restart local v3    # "src":Ljava/lang/CharSequence;
    .restart local v7    # "dest":Ljava/lang/Appendable;, "TA;"
    .restart local v8    # "edits":Landroid/icu/text/Edits;
    :goto_22
    new-instance p0, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p0, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static blacklist fold(ILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p0, "options"    # I
    .param p1, "src"    # Ljava/lang/CharSequence;

    .line 868
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_2e

    and-int/lit16 v0, p0, 0x4000

    if-nez v0, :cond_2e

    .line 869
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 870
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 874
    :cond_17
    new-instance v0, Landroid/icu/text/Edits;

    invoke-direct {v0}, Landroid/icu/text/Edits;-><init>()V

    .line 875
    .local v0, "edits":Landroid/icu/text/Edits;
    or-int/lit16 v1, p0, 0x4000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, p1, v2, v0}, Landroid/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    .line 877
    .local v1, "replacementChars":Ljava/lang/StringBuilder;
    invoke-static {p1, v1, v0}, Landroid/icu/impl/CaseMapImpl;->applyEdits(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/Edits;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 879
    .end local v0    # "edits":Landroid/icu/text/Edits;
    .end local v1    # "replacementChars":Ljava/lang/StringBuilder;
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTitleBreakIterator(Landroid/icu/util/ULocale;ILandroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "options"    # I
    .param p2, "iter"    # Landroid/icu/text/BreakIterator;

    .line 271
    and-int/lit16 p1, p1, 0xe0

    .line 272
    if-eqz p1, :cond_f

    if-nez p2, :cond_7

    goto :goto_f

    .line 273
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "titlecasing iterator option together with an explicit iterator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_f
    :goto_f
    if-nez p2, :cond_2e

    .line 277
    sparse-switch p1, :sswitch_data_30

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown titlecasing iterator option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :sswitch_1c
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    .line 286
    goto :goto_2e

    .line 282
    :sswitch_21
    new-instance v0, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;-><init>(Landroid/icu/impl/CaseMapImpl-IA;)V

    move-object p2, v0

    .line 283
    goto :goto_2e

    .line 279
    :sswitch_29
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    .line 280
    nop

    .line 291
    :cond_2e
    :goto_2e
    return-object p2

    nop

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_29
        0x20 -> :sswitch_21
        0x40 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static blacklist getTitleBreakIterator(Ljava/util/Locale;ILandroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "options"    # I
    .param p2, "iter"    # Landroid/icu/text/BreakIterator;

    .line 246
    and-int/lit16 p1, p1, 0xe0

    .line 247
    if-eqz p1, :cond_f

    if-nez p2, :cond_7

    goto :goto_f

    .line 248
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "titlecasing iterator option together with an explicit iterator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_f
    :goto_f
    if-nez p2, :cond_2e

    .line 252
    sparse-switch p1, :sswitch_data_30

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown titlecasing iterator option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :sswitch_1c
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    .line 261
    goto :goto_2e

    .line 257
    :sswitch_21
    new-instance v0, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;-><init>(Landroid/icu/impl/CaseMapImpl-IA;)V

    move-object p2, v0

    .line 258
    goto :goto_2e

    .line 254
    :sswitch_29
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    .line 255
    nop

    .line 266
    :cond_2e
    :goto_2e
    return-object p2

    nop

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_29
        0x20 -> :sswitch_21
        0x40 -> :sswitch_1c
    .end sparse-switch
.end method

.method private static blacklist internalToLower(IILjava/lang/CharSequence;IILandroid/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Landroid/icu/text/Edits;)V
    .registers 22
    .param p0, "caseLocale"    # I
    .param p1, "options"    # I
    .param p2, "src"    # Ljava/lang/CharSequence;
    .param p3, "srcStart"    # I
    .param p4, "srcLimit"    # I
    .param p5, "iter"    # Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    .param p6, "dest"    # Ljava/lang/Appendable;
    .param p7, "edits"    # Landroid/icu/text/Edits;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    move/from16 v6, p4

    const/4 v7, 0x1

    if-eq p0, v7, :cond_17

    if-ltz p0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    goto :goto_17

    :cond_e
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_13

    goto :goto_17

    .line 455
    :cond_13
    sget-object v0, Landroid/icu/impl/UCaseProps$LatinCase;->TO_LOWER_TR_LT:[B

    move-object v8, v0

    .local v0, "latinToLower":[B
    goto :goto_1a

    .line 453
    .end local v0    # "latinToLower":[B
    :cond_17
    :goto_17
    sget-object v0, Landroid/icu/impl/UCaseProps$LatinCase;->TO_LOWER_NORMAL:[B

    move-object v8, v0

    .line 457
    .local v8, "latinToLower":[B
    :goto_1a
    move/from16 v0, p3

    .line 458
    .local v0, "prev":I
    move/from16 v1, p3

    move-object/from16 v9, p5

    move v10, v1

    move v1, v0

    .line 464
    .end local v0    # "prev":I
    .end local p5    # "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    .local v1, "prev":I
    .local v9, "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    .local v10, "srcIndex":I
    :cond_22
    :goto_22
    if-lt v10, v6, :cond_32

    .line 465
    nop

    .line 525
    sub-int v2, v10, v1

    move v4, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILandroid/icu/text/Edits;)V

    .line 526
    return-void

    .line 467
    :cond_32
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 469
    .local v11, "lead":C
    const/16 v2, 0x17f

    if-ge v11, v2, :cond_50

    .line 470
    aget-byte v2, v8, v11

    .line 471
    .local v2, "d":B
    const/16 v3, -0x80

    if-ne v2, v3, :cond_43

    goto :goto_62

    .line 472
    :cond_43
    add-int/lit8 v10, v10, 0x1

    .line 473
    if-nez v2, :cond_48

    goto :goto_22

    .line 474
    :cond_48
    nop

    .line 475
    .local v2, "delta":I
    move-object/from16 v3, p6

    move-object/from16 v5, p7

    move v13, v2

    goto/16 :goto_c9

    .end local v2    # "delta":I
    :cond_50
    const v2, 0xd800

    if-lt v11, v2, :cond_56

    .line 476
    goto :goto_62

    .line 478
    :cond_56
    sget-object v2, Landroid/icu/impl/CaseMapImpl;->CASE_TRIE:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v2, v11}, Landroid/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result v2

    .line 479
    .local v2, "props":I
    invoke-static {v2}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 495
    .end local v2    # "props":I
    :goto_62
    add-int/lit8 v2, v10, 0x1

    .line 498
    .local v2, "srcIndex":I
    .local v10, "cpStart":I
    invoke-static {v11}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_80

    if-ge v2, v6, :cond_80

    .line 499
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v4, v3

    .local v4, "trail":C
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 500
    invoke-static {v11, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 501
    .local v3, "c":I
    add-int/lit8 v2, v2, 0x1

    move v13, v2

    move v12, v3

    goto :goto_83

    .line 503
    .end local v3    # "c":I
    .end local v4    # "trail":C
    :cond_80
    move v3, v11

    move v13, v2

    move v12, v3

    .line 508
    .end local v2    # "srcIndex":I
    .local v12, "c":I
    .local v13, "srcIndex":I
    :goto_83
    sub-int v2, v10, v1

    move v4, p1

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILandroid/icu/text/Edits;)V

    .line 509
    move v1, v10

    .line 510
    if-ltz p0, :cond_a3

    .line 511
    if-nez v9, :cond_99

    .line 512
    new-instance v2, Landroid/icu/impl/CaseMapImpl$StringContextIterator;

    invoke-direct {v2, v0, v10, v13}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;-><init>(Ljava/lang/CharSequence;II)V

    move-object v9, v2

    goto :goto_9c

    .line 514
    :cond_99
    invoke-virtual {v9, v10, v13}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->setCPStartAndLimit(II)V

    .line 516
    :goto_9c
    sget-object v2, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v2, v12, v9, v3, p0}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v2

    .end local v12    # "c":I
    .local v2, "c":I
    goto :goto_a9

    .line 518
    .end local v2    # "c":I
    .restart local v12    # "c":I
    :cond_a3
    sget-object v2, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v2, v12, v3, p1}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v2

    .line 520
    .end local v12    # "c":I
    .restart local v2    # "c":I
    :goto_a9
    if-ltz v2, :cond_b1

    .line 521
    sub-int v12, v13, v10

    invoke-static {v2, v3, v12, p1, v5}, Landroid/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILandroid/icu/text/Edits;)V

    .line 522
    move v1, v13

    .line 524
    .end local v2    # "c":I
    .end local v10    # "cpStart":I
    .end local v11    # "lead":C
    :cond_b1
    move v10, v13

    goto/16 :goto_22

    .line 480
    .end local v13    # "srcIndex":I
    .local v2, "props":I
    .local v10, "srcIndex":I
    .restart local v11    # "lead":C
    :cond_b4
    move-object/from16 v3, p6

    move-object/from16 v5, p7

    add-int/lit8 v10, v10, 0x1

    .line 481
    invoke-static {v2}, Landroid/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 482
    invoke-static {v2}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v12

    move v13, v12

    .local v13, "delta":I
    if-nez v12, :cond_c9

    .line 483
    goto/16 :goto_22

    .line 486
    .end local v2    # "props":I
    :cond_c9
    :goto_c9
    add-int v2, v11, v13

    int-to-char v11, v2

    .line 487
    add-int/lit8 v2, v10, -0x1

    sub-int/2addr v2, v1

    move v4, p1

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILandroid/icu/text/Edits;)V

    .line 488
    invoke-interface {v3, v11}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 489
    if-eqz v5, :cond_db

    .line 490
    invoke-virtual {v5, v7, v7}, Landroid/icu/text/Edits;->addReplace(II)V

    .line 492
    :cond_db
    move v1, v10

    .line 493
    .end local v13    # "delta":I
    goto/16 :goto_22
.end method

.method private static blacklist internalToUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)V
    .registers 16
    .param p0, "caseLocale"    # I
    .param p1, "options"    # I
    .param p2, "src"    # Ljava/lang/CharSequence;
    .param p3, "dest"    # Ljava/lang/Appendable;
    .param p4, "edits"    # Landroid/icu/text/Edits;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    .line 533
    sget-object v1, Landroid/icu/impl/UCaseProps$LatinCase;->TO_UPPER_TR:[B

    .local v1, "latinToUpper":[B
    goto :goto_9

    .line 535
    .end local v1    # "latinToUpper":[B
    :cond_7
    sget-object v1, Landroid/icu/impl/UCaseProps$LatinCase;->TO_UPPER_NORMAL:[B

    .line 537
    .restart local v1    # "latinToUpper":[B
    :goto_9
    const/4 v2, 0x0

    .line 538
    .local v2, "prev":I
    const/4 v3, 0x0

    .line 539
    .local v3, "srcIndex":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v6, v2

    .line 545
    .end local v2    # "prev":I
    .local v4, "srcLength":I
    .local v6, "prev":I
    :goto_10
    if-lt v3, v4, :cond_1d

    .line 546
    nop

    .line 602
    sub-int v7, v3, v6

    move v9, p1

    move-object v5, p2

    move-object v8, p3

    move-object v10, p4

    .end local p1    # "options":I
    .end local p2    # "src":Ljava/lang/CharSequence;
    .end local p3    # "dest":Ljava/lang/Appendable;
    .end local p4    # "edits":Landroid/icu/text/Edits;
    .local v5, "src":Ljava/lang/CharSequence;
    .local v8, "dest":Ljava/lang/Appendable;
    .local v9, "options":I
    .local v10, "edits":Landroid/icu/text/Edits;
    invoke-static/range {v5 .. v10}, Landroid/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILandroid/icu/text/Edits;)V

    .line 603
    return-void

    .line 548
    .end local v5    # "src":Ljava/lang/CharSequence;
    .end local v8    # "dest":Ljava/lang/Appendable;
    .end local v9    # "options":I
    .end local v10    # "edits":Landroid/icu/text/Edits;
    .restart local p1    # "options":I
    .restart local p2    # "src":Ljava/lang/CharSequence;
    .restart local p3    # "dest":Ljava/lang/Appendable;
    .restart local p4    # "edits":Landroid/icu/text/Edits;
    :cond_1d
    move v9, p1

    move-object v5, p2

    move-object v8, p3

    move-object v10, p4

    .end local p1    # "options":I
    .end local p2    # "src":Ljava/lang/CharSequence;
    .end local p3    # "dest":Ljava/lang/Appendable;
    .end local p4    # "edits":Landroid/icu/text/Edits;
    .restart local v5    # "src":Ljava/lang/CharSequence;
    .restart local v8    # "dest":Ljava/lang/Appendable;
    .restart local v9    # "options":I
    .restart local v10    # "edits":Landroid/icu/text/Edits;
    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 550
    .local p1, "lead":C
    const/16 p2, 0x17f

    const/4 p3, 0x1

    if-ge p1, p2, :cond_3d

    .line 551
    aget-byte p2, v1, p1

    .line 552
    .local p2, "d":B
    const/16 p4, -0x80

    if-ne p2, p4, :cond_31

    goto :goto_4f

    .line 553
    :cond_31
    add-int/lit8 v3, v3, 0x1

    .line 554
    if-nez p2, :cond_3a

    move-object p2, v5

    move-object p3, v8

    move p1, v9

    move-object p4, v10

    goto :goto_10

    .line 555
    :cond_3a
    nop

    .line 556
    .local p2, "delta":I
    goto/16 :goto_a7

    .end local p2    # "delta":I
    :cond_3d
    const p2, 0xd800

    if-lt p1, p2, :cond_43

    .line 557
    goto :goto_4f

    .line 559
    :cond_43
    sget-object p2, Landroid/icu/impl/CaseMapImpl;->CASE_TRIE:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p2, p1}, Landroid/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result p2

    .line 560
    .local p2, "props":I
    invoke-static {p2}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result p4

    if-eqz p4, :cond_96

    .line 576
    .end local p2    # "props":I
    :goto_4f
    add-int/lit8 p2, v3, 0x1

    .line 579
    .local v3, "cpStart":I
    .local p2, "srcIndex":I
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p3

    if-eqz p3, :cond_6b

    if-ge p2, v4, :cond_6b

    .line 580
    invoke-interface {v5, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    move p4, p3

    .local p4, "trail":C
    invoke-static {p3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p3

    if-eqz p3, :cond_6b

    .line 581
    invoke-static {p1, p4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p3

    .line 582
    .local p3, "c":I
    add-int/lit8 p2, p2, 0x1

    goto :goto_6c

    .line 584
    .end local p3    # "c":I
    .end local p4    # "trail":C
    :cond_6b
    move p3, p1

    .line 586
    .restart local p3    # "c":I
    :goto_6c
    if-nez v0, :cond_75

    .line 587
    new-instance p4, Landroid/icu/impl/CaseMapImpl$StringContextIterator;

    invoke-direct {p4, v5, v3, p2}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;-><init>(Ljava/lang/CharSequence;II)V

    move-object v0, p4

    .end local v0    # "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    .local p4, "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    goto :goto_78

    .line 589
    .end local p4    # "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    .restart local v0    # "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    :cond_75
    invoke-virtual {v0, v3, p2}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->setCPStartAndLimit(II)V

    .line 594
    :goto_78
    sub-int v7, v3, v6

    invoke-static/range {v5 .. v10}, Landroid/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILandroid/icu/text/Edits;)V

    .line 595
    move p4, v3

    .line 596
    .end local v6    # "prev":I
    .local p4, "prev":I
    sget-object v2, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v2, p3, v0, v8, p0}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p3

    .line 597
    if-ltz p3, :cond_8e

    .line 598
    sub-int v2, p2, v3

    invoke-static {p3, v8, v2, v9, v10}, Landroid/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILandroid/icu/text/Edits;)V

    .line 599
    move p4, p2

    move v6, p4

    goto :goto_8f

    .line 597
    :cond_8e
    move v6, p4

    .line 601
    .end local v3    # "cpStart":I
    .end local p1    # "lead":C
    .end local p3    # "c":I
    .end local p4    # "prev":I
    .restart local v6    # "prev":I
    :goto_8f
    move v3, p2

    move-object p2, v5

    move-object p3, v8

    move p1, v9

    move-object p4, v10

    goto/16 :goto_10

    .line 561
    .local v3, "srcIndex":I
    .restart local p1    # "lead":C
    .local p2, "props":I
    :cond_96
    add-int/lit8 v3, v3, 0x1

    .line 562
    invoke-static {p2}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p4

    if-ne p4, p3, :cond_c0

    .line 563
    invoke-static {p2}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result p4

    move v2, p4

    .local v2, "delta":I
    if-nez p4, :cond_a6

    .line 564
    goto :goto_c0

    .line 563
    :cond_a6
    move p2, v2

    .line 567
    .end local v2    # "delta":I
    .local p2, "delta":I
    :goto_a7
    add-int p4, p1, p2

    int-to-char p1, p4

    .line 568
    add-int/lit8 p4, v3, -0x1

    sub-int v7, p4, v6

    invoke-static/range {v5 .. v10}, Landroid/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILandroid/icu/text/Edits;)V

    .line 569
    invoke-interface {v8, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 570
    if-eqz v10, :cond_b9

    .line 571
    invoke-virtual {v10, p3, p3}, Landroid/icu/text/Edits;->addReplace(II)V

    .line 573
    :cond_b9
    move v6, v3

    .line 574
    .end local p2    # "delta":I
    move-object p2, v5

    move-object p3, v8

    move p1, v9

    move-object p4, v10

    goto/16 :goto_10

    .line 545
    .end local p1    # "lead":C
    :cond_c0
    :goto_c0
    move-object p2, v5

    move-object p3, v8

    move p1, v9

    move-object p4, v10

    goto/16 :goto_10
.end method

.method private static blacklist isLNS(I)Z
    .registers 5
    .param p0, "c"    # I

    .line 230
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getType(I)I

    move-result v0

    .line 231
    .local v0, "gc":I
    const/4 v1, 0x1

    shl-int v2, v1, v0

    const v3, 0xf020e2e

    and-int/2addr v2, v3

    if-nez v2, :cond_1d

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1b

    sget-object v2, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    .line 233
    invoke-virtual {v2, p0}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    nop

    .line 231
    :goto_1e
    return v1
.end method

.method private static blacklist maybeTitleDutchIJ(Ljava/lang/CharSequence;IIILjava/lang/Appendable;ILandroid/icu/text/Edits;)I
    .registers 23
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "c"    # I
    .param p2, "start"    # I
    .param p3, "segmentLimit"    # I
    .param p5, "options"    # I
    .param p6, "edits"    # Landroid/icu/text/Edits;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/lang/CharSequence;",
            "IIITA;I",
            "Landroid/icu/text/Edits;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    .local p4, "dest":Ljava/lang/Appendable;, "TA;"
    move-object/from16 v0, p0

    move/from16 v6, p3

    .line 804
    move/from16 v1, p2

    .line 805
    .local v1, "index":I
    const/4 v2, 0x0

    .line 808
    .local v2, "withAcute":Z
    const/4 v3, 0x0

    .line 809
    .local v3, "unchanged1":I
    const/4 v4, 0x0

    .line 810
    .local v4, "doTitleJ":Z
    const/4 v5, 0x0

    .line 813
    .local v5, "unchanged2":I
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "index":I
    .local v7, "index":I
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 816
    .local v1, "c2":C
    const/16 v8, 0x49

    const/16 v9, 0x301

    move/from16 v10, p1

    if-ne v10, v8, :cond_2e

    .line 817
    if-ne v1, v9, :cond_29

    .line 818
    const/4 v2, 0x1

    .line 819
    const/4 v3, 0x1

    .line 820
    if-ne v7, v6, :cond_1f

    return p2

    .line 821
    :cond_1f
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .local v8, "index":I
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v7, v1

    move v1, v8

    move v8, v2

    goto :goto_33

    .line 817
    .end local v8    # "index":I
    .restart local v7    # "index":I
    :cond_29
    move v8, v7

    move v7, v1

    move v1, v8

    move v8, v2

    goto :goto_33

    .line 824
    :cond_2e
    const/4 v2, 0x1

    move v8, v7

    move v7, v1

    move v1, v8

    move v8, v2

    .line 827
    .end local v2    # "withAcute":Z
    .local v1, "index":I
    .local v7, "c2":C
    .local v8, "withAcute":Z
    :goto_33
    const/16 v2, 0x6a

    const/16 v11, 0x4a

    if-ne v7, v2, :cond_3c

    .line 828
    const/4 v4, 0x1

    move v12, v4

    goto :goto_41

    .line 829
    :cond_3c
    if-ne v7, v11, :cond_9d

    .line 830
    add-int/lit8 v3, v3, 0x1

    move v12, v4

    .line 836
    .end local v4    # "doTitleJ":Z
    .local v12, "doTitleJ":Z
    :goto_41
    if-eqz v8, :cond_5d

    .line 837
    if-eq v1, v6, :cond_5c

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v9, :cond_4f

    move v1, v2

    goto :goto_5c

    .line 838
    :cond_4f
    if-eqz v12, :cond_56

    .line 839
    const/4 v5, 0x1

    move v9, v2

    move v2, v3

    move v13, v5

    goto :goto_60

    .line 841
    :cond_56
    add-int/lit8 v3, v3, 0x1

    move v9, v2

    move v2, v3

    move v13, v5

    goto :goto_60

    .line 837
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_5c
    :goto_5c
    return p2

    .line 836
    :cond_5d
    move v9, v1

    move v2, v3

    move v13, v5

    .line 845
    .end local v1    # "index":I
    .end local v3    # "unchanged1":I
    .end local v5    # "unchanged2":I
    .local v2, "unchanged1":I
    .local v9, "index":I
    .local v13, "unchanged2":I
    :goto_60
    const/4 v14, 0x1

    if-ge v9, v6, :cond_72

    .line 846
    invoke-static {v0, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 847
    .local v1, "cp":I
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v3

    shl-int v3, v14, v3

    .line 848
    .local v3, "bit":I
    and-int/lit16 v4, v3, 0x1c0

    if-eqz v4, :cond_72

    .line 849
    return p2

    .line 853
    .end local v1    # "cp":I
    .end local v3    # "bit":I
    :cond_72
    move/from16 v1, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILandroid/icu/text/Edits;)V

    .line 854
    move v15, v2

    .end local v2    # "unchanged1":I
    .local v15, "unchanged1":I
    add-int v0, p2, v15

    .line 855
    .end local p2    # "start":I
    .local v0, "start":I
    if-eqz v12, :cond_90

    .line 856
    move-object/from16 v3, p4

    invoke-interface {v3, v11}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 857
    if-eqz v5, :cond_8c

    .line 858
    invoke-virtual {v5, v14, v14}, Landroid/icu/text/Edits;->addReplace(II)V

    .line 860
    :cond_8c
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_93

    .line 855
    :cond_90
    move-object/from16 v3, p4

    move v1, v0

    .line 862
    .end local v0    # "start":I
    .local v1, "start":I
    :goto_93
    move-object/from16 v0, p0

    move/from16 v4, p5

    move v2, v13

    .end local v13    # "unchanged2":I
    .local v2, "unchanged2":I
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILandroid/icu/text/Edits;)V

    .line 863
    nop

    .line 864
    return v9

    .line 832
    .end local v2    # "unchanged2":I
    .end local v9    # "index":I
    .end local v12    # "doTitleJ":Z
    .end local v15    # "unchanged1":I
    .local v1, "index":I
    .local v3, "unchanged1":I
    .restart local v4    # "doTitleJ":Z
    .restart local v5    # "unchanged2":I
    .restart local p2    # "start":I
    :cond_9d
    return p2
.end method

.method public static blacklist toLower(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .registers 14
    .param p0, "caseLocale"    # I
    .param p1, "options"    # I
    .param p2, "src"    # Ljava/lang/CharSequence;
    .param p4, "edits"    # Landroid/icu/text/Edits;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(II",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Landroid/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .line 625
    .local p3, "dest":Ljava/lang/Appendable;, "TA;"
    if-eqz p4, :cond_d

    .line 626
    :try_start_2
    invoke-virtual {p4}, Landroid/icu/text/Edits;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_d

    .line 630
    :catch_6
    move-exception v0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v7, p3

    move-object v8, p4

    goto :goto_24

    .line 628
    :cond_d
    :goto_d
    :try_start_d
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_1e

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v7, p3

    move-object v8, p4

    .end local p0    # "caseLocale":I
    .end local p1    # "options":I
    .end local p2    # "src":Ljava/lang/CharSequence;
    .end local p3    # "dest":Ljava/lang/Appendable;, "TA;"
    .end local p4    # "edits":Landroid/icu/text/Edits;
    .local v1, "caseLocale":I
    .local v2, "options":I
    .local v3, "src":Ljava/lang/CharSequence;
    .local v7, "dest":Ljava/lang/Appendable;, "TA;"
    .local v8, "edits":Landroid/icu/text/Edits;
    :try_start_18
    invoke-static/range {v1 .. v8}, Landroid/icu/impl/CaseMapImpl;->internalToLower(IILjava/lang/CharSequence;IILandroid/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Landroid/icu/text/Edits;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 629
    return-object v7

    .line 630
    :catch_1c
    move-exception v0

    goto :goto_24

    .end local v1    # "caseLocale":I
    .end local v2    # "options":I
    .end local v3    # "src":Ljava/lang/CharSequence;
    .end local v7    # "dest":Ljava/lang/Appendable;, "TA;"
    .end local v8    # "edits":Landroid/icu/text/Edits;
    .restart local p0    # "caseLocale":I
    .restart local p1    # "options":I
    .restart local p2    # "src":Ljava/lang/CharSequence;
    .restart local p3    # "dest":Ljava/lang/Appendable;, "TA;"
    .restart local p4    # "edits":Landroid/icu/text/Edits;
    :catch_1e
    move-exception v0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v7, p3

    move-object v8, p4

    .line 631
    .end local p0    # "caseLocale":I
    .end local p1    # "options":I
    .end local p2    # "src":Ljava/lang/CharSequence;
    .end local p3    # "dest":Ljava/lang/Appendable;, "TA;"
    .end local p4    # "edits":Landroid/icu/text/Edits;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "caseLocale":I
    .restart local v2    # "options":I
    .restart local v3    # "src":Ljava/lang/CharSequence;
    .restart local v7    # "dest":Ljava/lang/Appendable;, "TA;"
    .restart local v8    # "edits":Landroid/icu/text/Edits;
    :goto_24
    new-instance p0, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p0, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static blacklist toLower(IILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p0, "caseLocale"    # I
    .param p1, "options"    # I
    .param p2, "src"    # Ljava/lang/CharSequence;

    .line 606
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_2e

    and-int/lit16 v0, p1, 0x4000

    if-nez v0, :cond_2e

    .line 607
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 608
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 612
    :cond_17
    new-instance v0, Landroid/icu/text/Edits;

    invoke-direct {v0}, Landroid/icu/text/Edits;-><init>()V

    .line 613
    .local v0, "edits":Landroid/icu/text/Edits;
    or-int/lit16 v1, p1, 0x4000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v1, p2, v2, v0}, Landroid/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    .line 615
    .local v1, "replacementChars":Ljava/lang/StringBuilder;
    invoke-static {p2, v1, v0}, Landroid/icu/impl/CaseMapImpl;->applyEdits(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/Edits;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 617
    .end local v0    # "edits":Landroid/icu/text/Edits;
    .end local v1    # "replacementChars":Ljava/lang/StringBuilder;
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 618
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 617
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    return-object v0
.end method

.method public static blacklist toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .registers 20
    .param p0, "caseLocale"    # I
    .param p1, "options"    # I
    .param p2, "titleIter"    # Landroid/icu/text/BreakIterator;
    .param p3, "src"    # Ljava/lang/CharSequence;
    .param p5, "edits"    # Landroid/icu/text/Edits;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(II",
            "Landroid/icu/text/BreakIterator;",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Landroid/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .line 690
    .local p4, "dest":Ljava/lang/Appendable;, "TA;"
    if-eqz p5, :cond_5

    .line 691
    :try_start_2
    invoke-virtual/range {p5 .. p5}, Landroid/icu/text/Edits;->reset()V

    .line 695
    :cond_5
    new-instance v6, Landroid/icu/impl/CaseMapImpl$StringContextIterator;

    move-object/from16 v1, p3

    invoke-direct {v6, v1}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v6

    .line 696
    .local v0, "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v9, v2

    .line 697
    .local v9, "srcLength":I
    const/4 v2, 0x0

    .line 698
    .local v2, "prev":I
    const/4 v3, 0x1

    .line 701
    .local v3, "isFirstIndex":Z
    :goto_14
    if-ge v2, v9, :cond_101

    .line 704
    if-eqz v3, :cond_1f

    .line 705
    const/4 v3, 0x0

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/icu/text/BreakIterator;->first()I

    move-result v4

    move v10, v3

    .local v4, "index":I
    goto :goto_24

    .line 708
    .end local v4    # "index":I
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/icu/text/BreakIterator;->next()I

    move-result v4

    move v10, v3

    .line 710
    .end local v3    # "isFirstIndex":Z
    .restart local v4    # "index":I
    .local v10, "isFirstIndex":Z
    :goto_24
    const/4 v3, -0x1

    if-eq v4, v3, :cond_2c

    if-le v4, v9, :cond_2a

    goto :goto_2c

    :cond_2a
    move v7, v4

    goto :goto_2e

    .line 711
    :cond_2c
    :goto_2c
    move v4, v9

    move v7, v4

    .line 720
    .end local v4    # "index":I
    .local v7, "index":I
    :goto_2e
    if-ge v2, v7, :cond_fa

    .line 722
    move v3, v2

    .line 723
    .local v3, "titleStart":I
    invoke-virtual {v0, v7}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->setLimit(I)V

    .line 724
    invoke-virtual {v0}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v4

    .line 725
    .local v4, "c":I
    and-int/lit16 v6, p1, 0x200

    if-nez v6, :cond_86

    .line 731
    and-int/lit16 v6, p1, 0x400

    if-eqz v6, :cond_42

    const/4 v6, 0x1

    goto :goto_43

    :cond_42
    const/4 v6, 0x0

    :goto_43
    move v8, v6

    .line 732
    .local v8, "toCased":Z
    :goto_44
    if-eqz v8, :cond_4f

    sget-object v6, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    .line 733
    invoke-virtual {v6, v4}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result v6
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4c} :catch_102

    if-nez v6, :cond_5f

    goto :goto_55

    .line 734
    :cond_4f
    :try_start_4f
    invoke-static {v4}, Landroid/icu/impl/CaseMapImpl;->isLNS(I)Z

    move-result v6
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_53} :catch_7f

    if-nez v6, :cond_5f

    .line 735
    :goto_55
    :try_start_55
    invoke-virtual {v0}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v6
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_59} :catch_102

    move v4, v6

    if-ltz v6, :cond_5d

    goto :goto_44

    :cond_5d
    move v11, v4

    goto :goto_60

    .line 738
    :cond_5f
    move v11, v4

    .end local v4    # "c":I
    .local v11, "c":I
    :goto_60
    :try_start_60
    invoke-virtual {v0}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->getCPStart()I

    move-result v4
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_64} :catch_7f

    move v12, v4

    .line 739
    .end local v3    # "titleStart":I
    .local v12, "titleStart":I
    if-ge v2, v12, :cond_78

    .line 740
    sub-int v3, v12, v2

    move v5, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    :try_start_6e
    invoke-static/range {v1 .. v6}, Landroid/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILandroid/icu/text/Edits;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_74

    move v13, v2

    move-object v1, v4

    .end local v2    # "prev":I
    .local v13, "prev":I
    goto :goto_7d

    .line 784
    .end local v0    # "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    .end local v7    # "index":I
    .end local v8    # "toCased":Z
    .end local v9    # "srcLength":I
    .end local v10    # "isFirstIndex":Z
    .end local v11    # "c":I
    .end local v12    # "titleStart":I
    .end local v13    # "prev":I
    :catch_74
    move-exception v0

    move-object v1, v4

    goto/16 :goto_103

    .line 739
    .restart local v0    # "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    .restart local v2    # "prev":I
    .restart local v7    # "index":I
    .restart local v8    # "toCased":Z
    .restart local v9    # "srcLength":I
    .restart local v10    # "isFirstIndex":Z
    .restart local v11    # "c":I
    .restart local v12    # "titleStart":I
    :cond_78
    move-object/from16 v1, p4

    move-object/from16 v6, p5

    move v13, v2

    .line 744
    .end local v2    # "prev":I
    .end local v8    # "toCased":Z
    .restart local v13    # "prev":I
    :goto_7d
    move v4, v11

    goto :goto_8c

    .line 784
    .end local v0    # "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    .end local v7    # "index":I
    .end local v9    # "srcLength":I
    .end local v10    # "isFirstIndex":Z
    .end local v11    # "c":I
    .end local v12    # "titleStart":I
    .end local v13    # "prev":I
    :catch_7f
    move-exception v0

    move-object/from16 v1, p4

    move-object/from16 v6, p5

    goto/16 :goto_103

    .line 725
    .restart local v0    # "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    .restart local v2    # "prev":I
    .restart local v3    # "titleStart":I
    .restart local v4    # "c":I
    .restart local v7    # "index":I
    .restart local v9    # "srcLength":I
    .restart local v10    # "isFirstIndex":Z
    :cond_86
    move-object/from16 v1, p4

    move-object/from16 v6, p5

    move v13, v2

    .end local v2    # "prev":I
    .restart local v13    # "prev":I
    move v12, v3

    .line 744
    .end local v3    # "titleStart":I
    .restart local v12    # "titleStart":I
    :goto_8c
    if-ge v12, v7, :cond_fb

    .line 746
    :try_start_8e
    sget-object v2, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v2, v4, v0, v1, p0}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v2

    .line 747
    .end local v4    # "c":I
    .local v2, "c":I
    invoke-virtual {v0}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->getCPLength()I

    move-result v3

    invoke-static {v2, v1, v3, p1, v6}, Landroid/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILandroid/icu/text/Edits;)V

    .line 751
    add-int/lit8 v3, v12, 0x1

    if-ge v3, v7, :cond_c8

    const/4 v3, 0x5

    if-ne p0, v3, :cond_c8

    .line 752
    if-gez v2, :cond_a5

    .line 753
    not-int v2, v2

    .line 755
    :cond_a5
    const/16 v3, 0x49

    if-eq v2, v3, :cond_b6

    const/16 v3, 0xcd

    if-ne v2, v3, :cond_ae

    goto :goto_b6

    .line 760
    :cond_ae
    invoke-virtual {v0}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->getCPLimit()I

    move-result v3

    move v11, v2

    move v2, v3

    move v4, v7

    .local v3, "titleLimit":I
    goto :goto_d0

    .line 756
    .end local v3    # "titleLimit":I
    :cond_b6
    :goto_b6
    add-int/lit8 v3, v12, 0x1

    move-object v5, v1

    move v4, v7

    move-object/from16 v1, p3

    move-object v7, v6

    move v6, p1

    .end local v7    # "index":I
    .local v4, "index":I
    invoke-static/range {v1 .. v7}, Landroid/icu/impl/CaseMapImpl;->maybeTitleDutchIJ(Ljava/lang/CharSequence;IIILjava/lang/Appendable;ILandroid/icu/text/Edits;)I

    move-result v3

    .line 757
    .restart local v3    # "titleLimit":I
    invoke-virtual {v0, v3}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->moveTo(I)V

    move v11, v2

    move v2, v3

    goto :goto_d0

    .line 751
    .end local v3    # "titleLimit":I
    .end local v4    # "index":I
    .restart local v7    # "index":I
    :cond_c8
    move v4, v7

    .line 763
    .end local v7    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {v0}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->getCPLimit()I

    move-result v1

    move v3, v1

    move v11, v2

    move v2, v3

    .line 767
    .local v2, "titleLimit":I
    .restart local v11    # "c":I
    :goto_d0
    if-ge v2, v4, :cond_f8

    .line 768
    and-int/lit16 v1, p1, 0x100

    if-nez v1, :cond_e7

    .line 770
    move v1, p0

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object v6, v0

    move v5, v4

    move v4, v2

    move v2, p1

    .end local v0    # "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    .end local v2    # "titleLimit":I
    .local v4, "titleLimit":I
    .local v5, "index":I
    .local v6, "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    invoke-static/range {v1 .. v8}, Landroid/icu/impl/CaseMapImpl;->internalToLower(IILjava/lang/CharSequence;IILandroid/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Landroid/icu/text/Edits;)V

    move v2, v4

    move v7, v5

    .end local v4    # "titleLimit":I
    .end local v5    # "index":I
    .end local v6    # "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    .restart local v0    # "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    .restart local v2    # "titleLimit":I
    .restart local v7    # "index":I
    goto :goto_f4

    .line 774
    .end local v7    # "index":I
    .local v4, "index":I
    :cond_e7
    move v7, v4

    .end local v4    # "index":I
    .restart local v7    # "index":I
    sub-int v3, v7, v2

    move v5, p1

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Landroid/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILandroid/icu/text/Edits;)V

    .line 776
    :goto_f4
    invoke-virtual {v0}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->moveToLimit()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_f7} :catch_102

    goto :goto_fb

    .line 767
    .end local v7    # "index":I
    .restart local v4    # "index":I
    :cond_f8
    move v7, v4

    .end local v4    # "index":I
    .restart local v7    # "index":I
    goto :goto_fb

    .line 720
    .end local v11    # "c":I
    .end local v12    # "titleStart":I
    .end local v13    # "prev":I
    .local v2, "prev":I
    :cond_fa
    move v13, v2

    .line 781
    .end local v2    # "prev":I
    .restart local v13    # "prev":I
    :cond_fb
    :goto_fb
    move v2, v7

    .line 782
    .end local v7    # "index":I
    .end local v13    # "prev":I
    .restart local v2    # "prev":I
    move-object/from16 v1, p3

    move v3, v10

    goto/16 :goto_14

    .line 783
    .end local v10    # "isFirstIndex":Z
    .local v3, "isFirstIndex":Z
    :cond_101
    return-object p4

    .line 784
    .end local v0    # "iter":Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    .end local v2    # "prev":I
    .end local v3    # "isFirstIndex":Z
    .end local v9    # "srcLength":I
    :catch_102
    move-exception v0

    .line 785
    .local v0, "e":Ljava/io/IOException;
    :goto_103
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 11
    .param p0, "caseLocale"    # I
    .param p1, "options"    # I
    .param p2, "iter"    # Landroid/icu/text/BreakIterator;
    .param p3, "src"    # Ljava/lang/CharSequence;

    .line 669
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_35

    and-int/lit16 v0, p1, 0x4000

    if-nez v0, :cond_35

    .line 670
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 671
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 675
    :cond_17
    new-instance v0, Landroid/icu/text/Edits;

    invoke-direct {v0}, Landroid/icu/text/Edits;-><init>()V

    move-object v6, v0

    .line 676
    .local v6, "edits":Landroid/icu/text/Edits;
    or-int/lit16 v2, p1, 0x4000

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p0

    move-object v3, p2

    move-object v4, p3

    .end local p0    # "caseLocale":I
    .end local p2    # "iter":Landroid/icu/text/BreakIterator;
    .end local p3    # "src":Ljava/lang/CharSequence;
    .local v1, "caseLocale":I
    .local v3, "iter":Landroid/icu/text/BreakIterator;
    .local v4, "src":Ljava/lang/CharSequence;
    invoke-static/range {v1 .. v6}, Landroid/icu/impl/CaseMapImpl;->toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    move v0, v1

    move-object v2, v3

    move-object v3, v4

    .end local v1    # "caseLocale":I
    .end local v4    # "src":Ljava/lang/CharSequence;
    .local v0, "caseLocale":I
    .local v2, "iter":Landroid/icu/text/BreakIterator;
    .local v3, "src":Ljava/lang/CharSequence;
    check-cast p0, Ljava/lang/StringBuilder;

    .line 679
    .local p0, "replacementChars":Ljava/lang/StringBuilder;
    invoke-static {v3, p0, v6}, Landroid/icu/impl/CaseMapImpl;->applyEdits(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/Edits;)Ljava/lang/String;

    move-result-object p2

    return-object p2

    .line 669
    .end local v0    # "caseLocale":I
    .end local v2    # "iter":Landroid/icu/text/BreakIterator;
    .end local v3    # "src":Ljava/lang/CharSequence;
    .end local v6    # "edits":Landroid/icu/text/Edits;
    .local p0, "caseLocale":I
    .restart local p2    # "iter":Landroid/icu/text/BreakIterator;
    .restart local p3    # "src":Ljava/lang/CharSequence;
    :cond_35
    move v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 681
    .end local p0    # "caseLocale":I
    .end local p2    # "iter":Landroid/icu/text/BreakIterator;
    .end local p3    # "src":Ljava/lang/CharSequence;
    .restart local v0    # "caseLocale":I
    .restart local v2    # "iter":Landroid/icu/text/BreakIterator;
    .restart local v3    # "src":Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    .line 682
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 681
    const/4 v5, 0x0

    move v1, p1

    .end local p1    # "options":I
    .local v1, "options":I
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/CaseMapImpl;->toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 681
    return-object p0
.end method

.method public static blacklist toUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .registers 7
    .param p0, "caseLocale"    # I
    .param p1, "options"    # I
    .param p2, "src"    # Ljava/lang/CharSequence;
    .param p4, "edits"    # Landroid/icu/text/Edits;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(II",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Landroid/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .line 655
    .local p3, "dest":Ljava/lang/Appendable;, "TA;"
    if-eqz p4, :cond_8

    .line 656
    :try_start_2
    invoke-virtual {p4}, Landroid/icu/text/Edits;->reset()V

    goto :goto_8

    .line 663
    :catch_6
    move-exception v0

    goto :goto_14

    .line 658
    :cond_8
    :goto_8
    const/4 v0, 0x4

    if-ne p0, v0, :cond_10

    .line 659
    invoke-static {p1, p2, p3, p4}, Landroid/icu/impl/CaseMapImpl$GreekUpper;->-$$Nest$smtoUpper(ILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0

    .line 661
    :cond_10
    invoke-static {p0, p1, p2, p3, p4}, Landroid/icu/impl/CaseMapImpl;->internalToUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_6

    .line 662
    return-object p3

    .line 664
    .local v0, "e":Ljava/io/IOException;
    :goto_14
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist toUpper(IILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p0, "caseLocale"    # I
    .param p1, "options"    # I
    .param p2, "src"    # Ljava/lang/CharSequence;

    .line 636
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_2e

    and-int/lit16 v0, p1, 0x4000

    if-nez v0, :cond_2e

    .line 637
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 638
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 642
    :cond_17
    new-instance v0, Landroid/icu/text/Edits;

    invoke-direct {v0}, Landroid/icu/text/Edits;-><init>()V

    .line 643
    .local v0, "edits":Landroid/icu/text/Edits;
    or-int/lit16 v1, p1, 0x4000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v1, p2, v2, v0}, Landroid/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    .line 645
    .local v1, "replacementChars":Ljava/lang/StringBuilder;
    invoke-static {p2, v1, v0}, Landroid/icu/impl/CaseMapImpl;->applyEdits(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/Edits;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 647
    .end local v0    # "edits":Landroid/icu/text/Edits;
    .end local v1    # "replacementChars":Ljava/lang/StringBuilder;
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 648
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 647
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    return-object v0
.end method
