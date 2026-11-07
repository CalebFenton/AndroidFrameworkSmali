.class public Landroid/widget/SpellChecker;
.super Ljava/lang/Object;
.source "SpellChecker.java"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SpellChecker$SpellParser;,
        Landroid/widget/SpellChecker$SentenceIteratorWrapper;,
        Landroid/widget/SpellChecker$RemoveReason;
    }
.end annotation


# static fields
.field public static final greylist-max-o AVERAGE_WORD_LENGTH:I = 0x7

.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o MAX_NUMBER_OF_WORDS:I = 0x32

.field private static final blacklist MAX_SENTENCE_LENGTH:I = 0x15e

.field private static final greylist-max-o SPELL_PAUSE_DURATION:I = 0x190

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field private static final greylist-max-o USE_SPAN_RANGE:I = -0x1

.field public static final greylist-max-o WORD_ITERATOR_INTERVAL:I = 0x15e


# instance fields
.field final greylist-max-o mCookie:I

.field private greylist-max-o mCurrentLocale:Ljava/util/Locale;

.field private greylist-max-o mIds:[I

.field private greylist-max-o mLength:I

.field private blacklist mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

.field private greylist-max-o mSpanSequenceCounter:I

.field private greylist-max-o mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

.field greylist-max-o mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private greylist-max-o mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

.field private greylist-max-o mSpellRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mTextServicesManager:Landroid/view/textservice/TextServicesManager;

.field private final greylist-max-o mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIds(Landroid/widget/SpellChecker;)[I
    .registers 1

    iget-object p0, p0, Landroid/widget/SpellChecker;->mIds:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLength(Landroid/widget/SpellChecker;)I
    .registers 1

    iget p0, p0, Landroid/widget/SpellChecker;->mLength:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpellCheckSpans(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;
    .registers 1

    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpellParsers(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;
    .registers 1

    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddSpellCheckSpan(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdetectSentenceBoundary(Landroid/widget/SpellChecker;Ljava/lang/CharSequence;II)Landroid/util/Range;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->detectSentenceBoundary(Ljava/lang/CharSequence;II)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mspellCheck(Landroid/widget/SpellChecker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SpellChecker;->spellCheck(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    const-class v0, Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/widget/TextView;)V
    .registers 4
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/widget/SpellChecker$SpellParser;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 88
    iput v0, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    .line 102
    iput-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 105
    const/4 v0, 0x1

    .line 106
    .local v0, "size":I
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 107
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/text/style/SpellCheckSpan;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 109
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Landroid/widget/SpellChecker;->mCookie:I

    .line 112
    return-void
.end method

.method private greylist-max-o addSpellCheckSpan(Landroid/text/Editable;II)V
    .registers 9
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 198
    invoke-direct {p0}, Landroid/widget/SpellChecker;->nextSpellCheckSpanIndex()I

    move-result v0

    .line 199
    .local v0, "index":I
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    .line 200
    .local v1, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    const/16 v2, 0x21

    invoke-interface {p1, v1, p2, p3, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 201
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 202
    iget-object v2, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget v3, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    aput v3, v2, v0

    .line 203
    return-void
.end method

.method private greylist-max-o createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V
    .registers 23
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "suggestionsInfo"    # Landroid/view/textservice/SuggestionsInfo;
    .param p3, "spellCheckSpan"    # Landroid/text/style/SpellCheckSpan;
    .param p4, "offset"    # I
    .param p5, "length"    # I

    .line 544
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 545
    .local v5, "spellCheckSpanStart":I
    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 546
    .local v6, "spellCheckSpanEnd":I
    if-ltz v5, :cond_9e

    if-gt v6, v5, :cond_1a

    move-object/from16 v12, p2

    goto/16 :goto_a0

    .line 551
    :cond_1a
    const/4 v7, -0x1

    if-eq v3, v7, :cond_24

    if-eq v4, v7, :cond_24

    .line 552
    add-int v7, v5, v3

    .line 553
    .local v7, "start":I
    add-int v8, v7, v4

    .local v8, "end":I
    goto :goto_26

    .line 555
    .end local v7    # "start":I
    .end local v8    # "end":I
    :cond_24
    move v7, v5

    .line 556
    .restart local v7    # "start":I
    move v8, v6

    .line 559
    .restart local v8    # "end":I
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result v9

    .line 561
    .local v9, "suggestionsCount":I
    if-lez v9, :cond_3f

    .line 562
    new-array v10, v9, [Ljava/lang/String;

    .line 563
    .local v10, "suggestions":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2f
    if-ge v11, v9, :cond_3c

    .line 564
    move-object/from16 v12, p2

    invoke-virtual {v12, v11}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v11

    .line 563
    add-int/lit8 v11, v11, 0x1

    goto :goto_2f

    :cond_3c
    move-object/from16 v12, p2

    .end local v11    # "i":I
    goto :goto_49

    .line 567
    .end local v10    # "suggestions":[Ljava/lang/String;
    :cond_3f
    move-object/from16 v12, p2

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 570
    .restart local v10    # "suggestions":[Ljava/lang/String;
    :goto_49
    invoke-virtual {v12}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v11

    .line 571
    .local v11, "suggestionsAttrs":I
    const/4 v13, 0x0

    .line 572
    .local v13, "flags":I
    and-int/lit8 v14, v11, 0x10

    if-nez v14, :cond_54

    .line 573
    or-int/lit8 v13, v13, 0x1

    .line 575
    :cond_54
    and-int/lit8 v14, v11, 0x2

    if-eqz v14, :cond_5a

    .line 576
    or-int/lit8 v13, v13, 0x2

    .line 578
    :cond_5a
    and-int/lit8 v14, v11, 0x8

    if-eqz v14, :cond_60

    .line 579
    or-int/lit8 v13, v13, 0x8

    .line 581
    :cond_60
    new-instance v14, Landroid/text/style/SuggestionSpan;

    iget-object v15, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 582
    invoke-virtual {v15}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15, v10, v13}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 583
    .local v14, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    sget-object v15, Landroid/widget/SpellChecker$RemoveReason;->REPLACE:Landroid/widget/SpellChecker$RemoveReason;

    invoke-static {v1, v7, v8, v15}, Landroid/widget/SpellChecker;->removeErrorSuggestionSpan(Landroid/text/Editable;IILandroid/widget/SpellChecker$RemoveReason;)Z

    move-result v15

    .line 584
    .local v15, "spanRemoved":Z
    if-nez v15, :cond_7d

    iget-object v2, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isVisibleToAccessibility()Z

    move-result v2

    if-eqz v2, :cond_7d

    const/4 v2, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v2, 0x0

    .line 585
    .local v2, "sendAccessibilityEvent":Z
    :goto_7e
    if-eqz v2, :cond_88

    move/from16 v16, v2

    .end local v2    # "sendAccessibilityEvent":Z
    .local v16, "sendAccessibilityEvent":Z
    new-instance v2, Landroid/text/SpannedString;

    invoke-direct {v2, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_8b

    .end local v16    # "sendAccessibilityEvent":Z
    .restart local v2    # "sendAccessibilityEvent":Z
    :cond_88
    move/from16 v16, v2

    .end local v2    # "sendAccessibilityEvent":Z
    .restart local v16    # "sendAccessibilityEvent":Z
    const/4 v2, 0x0

    .line 586
    .local v2, "beforeText":Ljava/lang/CharSequence;
    :goto_8b
    const/16 v3, 0x21

    invoke-interface {v1, v14, v7, v8, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 587
    if-eqz v16, :cond_97

    .line 588
    iget-object v3, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v7, v8}, Landroid/widget/TextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;II)V

    .line 591
    :cond_97
    iget-object v3, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v3, v7, v8, v0}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    .line 592
    return-void

    .line 546
    .end local v2    # "beforeText":Ljava/lang/CharSequence;
    .end local v7    # "start":I
    .end local v8    # "end":I
    .end local v9    # "suggestionsCount":I
    .end local v10    # "suggestions":[Ljava/lang/String;
    .end local v11    # "suggestionsAttrs":I
    .end local v13    # "flags":I
    .end local v14    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v15    # "spanRemoved":Z
    .end local v16    # "sendAccessibilityEvent":Z
    :cond_9e
    move-object/from16 v12, p2

    .line 547
    :goto_a0
    return-void
.end method

.method private blacklist detectSentenceBoundary(Ljava/lang/CharSequence;II)Landroid/util/Range;
    .registers 12
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "textChangeStart"    # I
    .param p3, "textChangeEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 796
    add-int/lit16 v0, p2, -0x15e

    .line 797
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit16 v2, p2, -0x2bc

    .line 798
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 796
    invoke-static {p1, v0, v1}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 799
    .local v0, "iteratorWindowStart":I
    add-int/lit16 v1, p2, 0x2bc

    .line 800
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit16 v2, p2, 0x41a

    .line 801
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 799
    invoke-static {p1, v1, v2}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 806
    .local v1, "iteratorWindowEnd":I
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v2, p1, v0, v1}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 809
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v2, p2}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->isBoundary(I)Z

    move-result v2

    if-eqz v2, :cond_34

    move v2, p2

    goto :goto_3a

    .line 810
    :cond_34
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v2, p2}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->preceding(I)I

    move-result v2

    :goto_3a
    nop

    .line 811
    .local v2, "sentenceStart":I
    iget-object v3, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v3, v2}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->following(I)I

    move-result v3

    .line 812
    .local v3, "sentenceEnd":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_45

    .line 813
    move v3, v1

    .line 821
    :cond_45
    sub-int v5, v3, v2

    const/16 v6, 0x15e

    if-gt v5, v6, :cond_5c

    .line 823
    :goto_4b
    if-ge v3, p3, :cond_71

    .line 824
    iget-object v5, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v5, v3}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->following(I)I

    move-result v5

    .line 825
    .local v5, "nextEnd":I
    if-eq v5, v4, :cond_71

    sub-int v7, v5, v2

    if-le v7, v6, :cond_5a

    .line 827
    goto :goto_71

    .line 829
    :cond_5a
    move v3, v5

    .line 830
    .end local v5    # "nextEnd":I
    goto :goto_4b

    .line 845
    :cond_5c
    sub-int v4, v3, p2

    .line 846
    .local v4, "uncheckedLength":I
    if-le v4, v6, :cond_6b

    .line 847
    add-int/lit16 v5, p2, 0x15e

    invoke-static {p1, v5, v3}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 849
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/SpellChecker;->roundUpToWordStart(Ljava/lang/CharSequence;II)I

    move-result v2

    goto :goto_71

    .line 851
    :cond_6b
    add-int/lit16 v5, v3, -0x15e

    invoke-direct {p0, p1, v5, v2}, Landroid/widget/SpellChecker;->roundUpToWordStart(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 855
    .end local v4    # "uncheckedLength":I
    :cond_71
    :goto_71
    new-instance v4, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v4
.end method

.method private static blacklist findSeparator(Ljava/lang/CharSequence;II)I
    .registers 6
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 872
    if-ge p1, p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    .line 873
    .local v0, "step":I
    :goto_5
    move v1, p1

    .local v1, "i":I
    :goto_6
    if-eq v1, p2, :cond_15

    .line 874
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/widget/SpellChecker;->isSeparator(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 875
    return v1

    .line 873
    :cond_13
    add-int/2addr v1, v0

    goto :goto_6

    .line 878
    .end local v1    # "i":I
    :cond_15
    return p2
.end method

.method public static greylist-max-o haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z
    .registers 6
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "spanStart"    # I
    .param p4, "spanEnd"    # I

    .line 884
    if-eq p4, p1, :cond_6

    if-eq p3, p2, :cond_6

    .line 885
    const/4 v0, 0x1

    .local v0, "haveWordBoundariesChanged":Z
    goto :goto_25

    .line 889
    .end local v0    # "haveWordBoundariesChanged":Z
    :cond_6
    if-ne p4, p1, :cond_17

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 890
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 891
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    .line 898
    .local v0, "haveWordBoundariesChanged":Z
    goto :goto_25

    .end local v0    # "haveWordBoundariesChanged":Z
    :cond_17
    if-ne p3, p2, :cond_24

    if-lez p2, :cond_24

    .line 899
    invoke-static {p0, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 900
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    .line 907
    .local v0, "haveWordBoundariesChanged":Z
    goto :goto_25

    .line 911
    .end local v0    # "haveWordBoundariesChanged":Z
    :cond_24
    const/4 v0, 0x0

    .line 913
    .restart local v0    # "haveWordBoundariesChanged":Z
    :goto_25
    return v0
.end method

.method private static blacklist isSeparator(I)Z
    .registers 5
    .param p0, "codepoint"    # I

    .line 358
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 359
    .local v0, "type":I
    const/4 v1, 0x1

    shl-int v2, v1, v0

    const v3, 0x61707000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private greylist-max-o isSessionActive()Z
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o nextSpellCheckSpanIndex()I
    .registers 4

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_f

    .line 187
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v1, v1, v0

    if-gez v1, :cond_c

    return v0

    .line 186
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    .end local v0    # "i":I
    :cond_f
    iget-object v0, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 191
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    new-instance v2, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v2}, Landroid/text/style/SpellCheckSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SpellCheckSpan;

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 193
    iget v0, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 194
    iget v0, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private greylist-max-o onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;
    .registers 24
    .param p1, "suggestionsInfo"    # Landroid/view/textservice/SuggestionsInfo;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 372
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_d5

    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    move-result v2

    iget v3, v0, Landroid/widget/SpellChecker;->mCookie:I

    if-eq v2, v3, :cond_15

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v16, v1

    goto/16 :goto_db

    .line 375
    :cond_15
    iget-object v2, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Editable;

    .line 376
    .local v2, "editable":Landroid/text/Editable;
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v6

    .line 377
    .local v6, "sequenceNumber":I
    const/4 v3, 0x0

    move v7, v3

    .local v7, "k":I
    :goto_23
    iget v3, v0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v7, v3, :cond_d2

    .line 378
    iget-object v3, v0, Landroid/widget/SpellChecker;->mIds:[I

    aget v3, v3, v7

    if-ne v6, v3, :cond_c6

    .line 379
    iget-object v3, v0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v3, v3, v7

    .line 380
    .local v3, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    invoke-interface {v2, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 381
    .local v8, "spellCheckSpanStart":I
    if-gez v8, :cond_38

    .line 383
    return-object v1

    .line 386
    :cond_38
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v9

    .line 387
    .local v9, "attributes":I
    and-int/lit8 v4, v9, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x1

    if-lez v4, :cond_44

    move v4, v10

    goto :goto_45

    :cond_44
    move v4, v5

    :goto_45
    move v11, v4

    .line 389
    .local v11, "isInDictionary":Z
    and-int/lit8 v4, v9, 0x2

    if-lez v4, :cond_4c

    move v4, v10

    goto :goto_4d

    :cond_4c
    move v4, v5

    :goto_4d
    move v12, v4

    .line 391
    .local v12, "looksLikeTypo":Z
    and-int/lit8 v4, v9, 0x8

    if-lez v4, :cond_53

    move v5, v10

    :cond_53
    move v10, v5

    .line 396
    .local v10, "looksLikeGrammarError":Z
    add-int v4, v8, p2

    add-int v4, v4, p3

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v4, v5, :cond_5f

    .line 397
    return-object v3

    .line 401
    :cond_5f
    if-nez v11, :cond_7a

    if-nez v12, :cond_6b

    if-eqz v10, :cond_66

    goto :goto_6b

    :cond_66
    move/from16 v4, p2

    move/from16 v5, p3

    goto :goto_7e

    .line 402
    :cond_6b
    :goto_6b
    move/from16 v4, p2

    move/from16 v5, p3

    move-object v1, v2

    move-object/from16 v2, p1

    .end local v2    # "editable":Landroid/text/Editable;
    .local v1, "editable":Landroid/text/Editable;
    invoke-direct/range {v0 .. v5}, Landroid/widget/SpellChecker;->createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V

    move-object/from16 v19, v1

    move-object/from16 v18, v3

    .end local v1    # "editable":Landroid/text/Editable;
    .restart local v2    # "editable":Landroid/text/Editable;
    goto :goto_c5

    .line 401
    :cond_7a
    move/from16 v4, p2

    move/from16 v5, p3

    .line 408
    :goto_7e
    invoke-interface {v2, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 411
    .local v13, "spellCheckSpanEnd":I
    const/4 v14, -0x1

    if-eq v4, v14, :cond_8c

    if-eq v5, v14, :cond_8c

    .line 412
    add-int v14, v8, v4

    .line 413
    .local v14, "start":I
    add-int v15, v14, v5

    .local v15, "end":I
    goto :goto_8e

    .line 415
    .end local v14    # "start":I
    .end local v15    # "end":I
    :cond_8c
    move v14, v8

    .line 416
    .restart local v14    # "start":I
    move v15, v13

    .line 418
    .restart local v15    # "end":I
    :goto_8e
    if-ltz v8, :cond_c1

    if-le v13, v8, :cond_c1

    if-le v15, v14, :cond_c1

    .line 420
    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isVisibleToAccessibility()Z

    move-result v1

    .line 422
    .local v1, "visibleToAccessibility":Z
    if-eqz v1, :cond_a6

    move/from16 v17, v1

    .end local v1    # "visibleToAccessibility":Z
    .local v17, "visibleToAccessibility":Z
    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_aa

    .end local v17    # "visibleToAccessibility":Z
    .restart local v1    # "visibleToAccessibility":Z
    :cond_a6
    move/from16 v17, v1

    .end local v1    # "visibleToAccessibility":Z
    .restart local v17    # "visibleToAccessibility":Z
    move-object/from16 v1, v16

    .line 423
    .local v1, "beforeText":Ljava/lang/CharSequence;
    :goto_aa
    move-object/from16 v18, v3

    .end local v3    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .local v18, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    sget-object v3, Landroid/widget/SpellChecker$RemoveReason;->OBSOLETE:Landroid/widget/SpellChecker$RemoveReason;

    invoke-static {v2, v14, v15, v3}, Landroid/widget/SpellChecker;->removeErrorSuggestionSpan(Landroid/text/Editable;IILandroid/widget/SpellChecker$RemoveReason;)Z

    move-result v3

    .line 425
    .local v3, "spanRemoved":Z
    if-eqz v17, :cond_be

    if-eqz v3, :cond_be

    .line 426
    move-object/from16 v19, v2

    .end local v2    # "editable":Landroid/text/Editable;
    .local v19, "editable":Landroid/text/Editable;
    iget-object v2, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v14, v15}, Landroid/widget/TextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;II)V

    goto :goto_c5

    .line 425
    .end local v19    # "editable":Landroid/text/Editable;
    .restart local v2    # "editable":Landroid/text/Editable;
    :cond_be
    move-object/from16 v19, v2

    .end local v2    # "editable":Landroid/text/Editable;
    .restart local v19    # "editable":Landroid/text/Editable;
    goto :goto_c5

    .line 418
    .end local v1    # "beforeText":Ljava/lang/CharSequence;
    .end local v17    # "visibleToAccessibility":Z
    .end local v18    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v19    # "editable":Landroid/text/Editable;
    .restart local v2    # "editable":Landroid/text/Editable;
    .local v3, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_c1
    move-object/from16 v19, v2

    move-object/from16 v18, v3

    .line 431
    .end local v2    # "editable":Landroid/text/Editable;
    .end local v3    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v13    # "spellCheckSpanEnd":I
    .end local v14    # "start":I
    .end local v15    # "end":I
    .restart local v18    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .restart local v19    # "editable":Landroid/text/Editable;
    :goto_c5
    return-object v18

    .line 377
    .end local v8    # "spellCheckSpanStart":I
    .end local v9    # "attributes":I
    .end local v10    # "looksLikeGrammarError":Z
    .end local v11    # "isInDictionary":Z
    .end local v12    # "looksLikeTypo":Z
    .end local v18    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v19    # "editable":Landroid/text/Editable;
    .restart local v2    # "editable":Landroid/text/Editable;
    :cond_c6
    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    .end local v2    # "editable":Landroid/text/Editable;
    .restart local v19    # "editable":Landroid/text/Editable;
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_23

    .end local v19    # "editable":Landroid/text/Editable;
    .restart local v2    # "editable":Landroid/text/Editable;
    :cond_d2
    move-object/from16 v16, v1

    .line 434
    .end local v7    # "k":I
    return-object v16

    .line 372
    .end local v2    # "editable":Landroid/text/Editable;
    .end local v6    # "sequenceNumber":I
    :cond_d5
    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v16, v1

    .line 373
    :goto_db
    return-object v16
.end method

.method private static blacklist removeErrorSuggestionSpan(Landroid/text/Editable;IILandroid/widget/SpellChecker$RemoveReason;)Z
    .registers 10
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "reason"    # Landroid/widget/SpellChecker$RemoveReason;

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "spanRemoved":Z
    const-class v1, Landroid/text/style/SuggestionSpan;

    invoke-interface {p0, p1, p2, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 453
    .local v1, "spans":[Landroid/text/style/SuggestionSpan;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_2a

    aget-object v4, v1, v3

    .line 454
    .local v4, "span":Landroid/text/style/SuggestionSpan;
    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p1, :cond_27

    .line 455
    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p2, :cond_27

    .line 456
    invoke-virtual {v4}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0xa

    if-eqz v5, :cond_27

    .line 462
    invoke-interface {p0, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 463
    const/4 v0, 0x1

    .line 453
    .end local v4    # "span":Landroid/text/style/SuggestionSpan;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 466
    :cond_2a
    return v0
.end method

.method private blacklist roundUpToWordStart(Ljava/lang/CharSequence;II)I
    .registers 6
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "position"    # I
    .param p3, "frontBoundary"    # I

    .line 859
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/widget/SpellChecker;->isSeparator(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 860
    return p2

    .line 862
    :cond_b
    invoke-static {p1, p2, p3}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 863
    .local v0, "separator":I
    if-eq v0, p3, :cond_14

    add-int/lit8 v1, v0, 0x1

    goto :goto_15

    :cond_14
    move v1, p3

    :goto_15
    return v1
.end method

.method private greylist-max-o scheduleNewSpellCheck()V
    .registers 5

    .line 519
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    .line 520
    new-instance v0, Landroid/widget/SpellChecker$1;

    invoke-direct {v0, p0}, Landroid/widget/SpellChecker$1;-><init>(Landroid/widget/SpellChecker;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    goto :goto_13

    .line 534
    :cond_c
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 537
    :goto_13
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 538
    return-void
.end method

.method private greylist-max-o setLocale(Ljava/util/Locale;)V
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 148
    iput-object p1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 150
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->resetSession()V

    .line 152
    if-eqz p1, :cond_12

    .line 154
    new-instance v0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    .line 155
    invoke-static {p1}, Ljava/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;-><init>(Ljava/text/BreakIterator;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    .line 159
    :cond_12
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onLocaleChanged()V

    .line 160
    return-void
.end method

.method private greylist-max-o spellCheck()V
    .registers 2

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SpellChecker;->spellCheck(Z)V

    .line 284
    return-void
.end method

.method private blacklist spellCheck(Z)V
    .registers 15
    .param p1, "forceCheckWhenEditingWord"    # Z

    .line 287
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-nez v0, :cond_5

    return-void

    .line 289
    :cond_5
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/text/Editable;

    .line 290
    .local v2, "editable":Landroid/text/Editable;
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 291
    .local v0, "selectionStart":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    .line 293
    .local v7, "selectionEnd":I
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    new-array v8, v1, [Landroid/view/textservice/TextInfo;

    .line 294
    .local v8, "textInfos":[Landroid/view/textservice/TextInfo;
    const/4 v1, 0x0

    .line 302
    .local v1, "textInfosCount":I
    const/4 v3, 0x0

    move v9, v1

    move v10, v3

    .end local v1    # "textInfosCount":I
    .local v9, "textInfosCount":I
    .local v10, "i":I
    :goto_1e
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    const/4 v3, 0x0

    if-ge v10, v1, :cond_8b

    .line 303
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v11, v1, v10

    .line 304
    .local v11, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v1, v1, v10

    if-ltz v1, :cond_88

    invoke-virtual {v11}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_88

    .line 306
    :cond_34
    move v1, v3

    invoke-interface {v2, v11}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 307
    .local v3, "start":I
    invoke-interface {v2, v11}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 316
    .local v4, "end":I
    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v0, v5, :cond_53

    iget-object v5, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    add-int/lit8 v12, v4, 0x1

    .line 318
    invoke-static {v2, v12}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v12

    .line 317
    invoke-static {v5, v12}, Landroid/text/method/WordIterator;->isMidWordPunctuation(Ljava/util/Locale;I)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 319
    const/4 v1, 0x0

    move v12, v1

    .local v1, "isNotEditing":Z
    goto :goto_6d

    .line 320
    .end local v1    # "isNotEditing":Z
    :cond_53
    if-le v7, v3, :cond_6b

    if-le v0, v4, :cond_58

    goto :goto_6b

    .line 328
    :cond_58
    if-ne v0, v4, :cond_68

    if-lez v0, :cond_68

    .line 330
    invoke-static {v2, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v5}, Landroid/widget/SpellChecker;->isSeparator(I)Z

    move-result v5

    if-eqz v5, :cond_68

    move v1, v6

    goto :goto_69

    :cond_68
    nop

    :goto_69
    move v12, v1

    .restart local v1    # "isNotEditing":Z
    goto :goto_6d

    .line 324
    .end local v1    # "isNotEditing":Z
    :cond_6b
    :goto_6b
    const/4 v1, 0x1

    move v12, v1

    .line 332
    .local v12, "isNotEditing":Z
    :goto_6d
    if-ltz v3, :cond_88

    if-le v4, v3, :cond_88

    if-nez p1, :cond_75

    if-eqz v12, :cond_88

    .line 333
    :cond_75
    invoke-virtual {v11, v6}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 334
    new-instance v1, Landroid/view/textservice/TextInfo;

    iget v5, p0, Landroid/widget/SpellChecker;->mCookie:I

    iget-object v6, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v6, v6, v10

    invoke-direct/range {v1 .. v6}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    .line 335
    .local v1, "textInfo":Landroid/view/textservice/TextInfo;
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "textInfosCount":I
    .local v5, "textInfosCount":I
    aput-object v1, v8, v9

    move v9, v5

    .line 302
    .end local v1    # "textInfo":Landroid/view/textservice/TextInfo;
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "textInfosCount":I
    .end local v11    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v12    # "isNotEditing":Z
    .restart local v9    # "textInfosCount":I
    :cond_88
    :goto_88
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    :cond_8b
    move v1, v3

    .line 345
    .end local v10    # "i":I
    if-lez v9, :cond_9e

    .line 346
    array-length v3, v8

    if-ge v9, v3, :cond_98

    .line 347
    new-array v3, v9, [Landroid/view/textservice/TextInfo;

    .line 348
    .local v3, "textInfosCopy":[Landroid/view/textservice/TextInfo;
    invoke-static {v8, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    move-object v1, v3

    move-object v8, v1

    .line 352
    .end local v3    # "textInfosCopy":[Landroid/view/textservice/TextInfo;
    :cond_98
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 v3, 0x5

    invoke-virtual {v1, v8, v3}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    .line 355
    :cond_9e
    return-void
.end method


# virtual methods
.method public greylist-max-o closeSession()V
    .registers 4

    .line 171
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    .line 175
    :cond_9
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v0, v0

    .line 176
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_19

    .line 177
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->stop()V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 180
    .end local v1    # "i":I
    :cond_19
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_24

    .line 181
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 183
    :cond_24
    return-void
.end method

.method public whitelist onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .registers 11
    .param p1, "results"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 485
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 486
    .local v0, "editable":Landroid/text/Editable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_3c

    .line 487
    aget-object v2, p1, v1

    .line 488
    .local v2, "ssi":Landroid/view/textservice/SentenceSuggestionsInfo;
    if-nez v2, :cond_11

    .line 489
    goto :goto_39

    .line 491
    :cond_11
    const/4 v3, 0x0

    .line 492
    .local v3, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_13
    invoke-virtual {v2}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v5

    if-ge v4, v5, :cond_34

    .line 493
    invoke-virtual {v2, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v5

    .line 494
    .local v5, "suggestionsInfo":Landroid/view/textservice/SuggestionsInfo;
    if-nez v5, :cond_20

    .line 495
    goto :goto_31

    .line 497
    :cond_20
    invoke-virtual {v2, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v6

    .line 498
    .local v6, "offset":I
    invoke-virtual {v2, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v7

    .line 499
    .local v7, "length":I
    invoke-direct {p0, v5, v6, v7}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v8

    .line 501
    .local v8, "scs":Landroid/text/style/SpellCheckSpan;
    if-nez v3, :cond_31

    if-eqz v8, :cond_31

    .line 504
    move-object v3, v8

    .line 492
    .end local v5    # "suggestionsInfo":Landroid/view/textservice/SuggestionsInfo;
    .end local v6    # "offset":I
    .end local v7    # "length":I
    .end local v8    # "scs":Landroid/text/style/SpellCheckSpan;
    :cond_31
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 507
    .end local v4    # "j":I
    :cond_34
    if-eqz v3, :cond_39

    .line 509
    invoke-interface {v0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 486
    .end local v2    # "ssi":Landroid/view/textservice/SentenceSuggestionsInfo;
    .end local v3    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 512
    .end local v1    # "i":I
    :cond_3c
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    .line 513
    return-void
.end method

.method public whitelist onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .registers 6
    .param p1, "results"    # [Landroid/view/textservice/SuggestionsInfo;

    .line 471
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 472
    .local v0, "editable":Landroid/text/Editable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_1b

    .line 473
    aget-object v2, p1, v1

    .line 474
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v3}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v2

    .line 475
    .local v2, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    if-eqz v2, :cond_18

    .line 477
    invoke-interface {v0, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 472
    .end local v2    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 480
    .end local v1    # "i":I
    :cond_1b
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    .line 481
    return-void
.end method

.method blacklist onPerformSpellCheck()V
    .registers 5

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "start":I
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 226
    .local v1, "end":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/widget/SpellChecker;->spellCheck(IIZ)V

    .line 227
    return-void
.end method

.method public greylist-max-o onSelectionChanged()V
    .registers 1

    .line 216
    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    .line 217
    return-void
.end method

.method public greylist-max-o onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V
    .registers 5
    .param p1, "spellCheckSpan"    # Landroid/text/style/SpellCheckSpan;

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_14

    .line 208
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_11

    .line 209
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 210
    return-void

    .line 207
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-o resetSession()V
    .registers 5

    .line 115
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 117
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextServicesManagerForUser()Landroid/view/textservice/TextServicesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 118
    iget-object v0, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 120
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 121
    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 122
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    if-nez v0, :cond_2d

    goto :goto_55

    .line 125
    :cond_2d
    const/16 v0, 0x1b

    .line 129
    .local v0, "supportedAttributes":I
    new-instance v1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    invoke-direct {v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;-><init>()V

    iget-object v2, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 130
    invoke-virtual {v1, v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setLocale(Ljava/util/Locale;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setSupportedAttributes(I)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->build()Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;

    move-result-object v1

    .line 133
    .local v1, "params":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;
    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v3, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 134
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 133
    invoke-virtual {v2, v1, v3, p0}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;Ljava/util/concurrent/Executor;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    goto :goto_58

    .line 123
    .end local v0    # "supportedAttributes":I
    .end local v1    # "params":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;
    :cond_55
    :goto_55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 138
    :goto_58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_59
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_65

    .line 139
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 141
    .end local v0    # "i":I
    :cond_65
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 144
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 145
    return-void
.end method

.method public greylist-max-o spellCheck(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/SpellChecker;->spellCheck(IIZ)V

    .line 231
    return-void
.end method

.method public blacklist spellCheck(IIZ)V
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "forceCheckWhenEditingWord"    # Z

    .line 241
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object v0

    .line 242
    .local v0, "locale":Ljava/util/Locale;
    invoke-direct {p0}, Landroid/widget/SpellChecker;->isSessionActive()Z

    move-result v1

    .line 243
    .local v1, "isSessionActive":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    iget-object v3, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v3, :cond_2f

    iget-object v3, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_2f

    .line 249
    :cond_1a
    iget-object v3, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    if-eqz v3, :cond_28

    iget-object v3, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 250
    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    move v3, v2

    .line 251
    .local v3, "spellCheckerActivated":Z
    :goto_29
    if-eq v1, v3, :cond_3d

    .line 253
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->resetSession()V

    goto :goto_3d

    .line 244
    .end local v3    # "spellCheckerActivated":Z
    :cond_2f
    :goto_2f
    invoke-direct {p0, v0}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 246
    const/4 p1, 0x0

    .line 247
    iget-object v3, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 257
    :cond_3d
    :goto_3d
    if-nez v1, :cond_40

    return-void

    .line 260
    :cond_40
    iget-object v3, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v3, v3

    .line 261
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_44
    if-ge v4, v3, :cond_57

    .line 262
    iget-object v5, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v5, v5, v4

    .line 263
    .local v5, "spellParser":Landroid/widget/SpellChecker$SpellParser;
    invoke-virtual {v5}, Landroid/widget/SpellChecker$SpellParser;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_54

    .line 264
    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/SpellChecker$SpellParser;->parse(IIZ)V

    .line 265
    return-void

    .line 261
    .end local v5    # "spellParser":Landroid/widget/SpellChecker$SpellParser;
    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 273
    .end local v4    # "i":I
    :cond_57
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Landroid/widget/SpellChecker$SpellParser;

    .line 274
    .local v4, "newSpellParsers":[Landroid/widget/SpellChecker$SpellParser;
    iget-object v5, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    iput-object v4, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 277
    new-instance v2, Landroid/widget/SpellChecker$SpellParser;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker-IA;)V

    .line 278
    .local v2, "spellParser":Landroid/widget/SpellChecker$SpellParser;
    iget-object v5, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aput-object v2, v5, v3

    .line 279
    invoke-virtual {v2, p1, p2, p3}, Landroid/widget/SpellChecker$SpellParser;->parse(IIZ)V

    .line 280
    return-void
.end method
