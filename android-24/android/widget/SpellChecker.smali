.class public Landroid/widget/SpellChecker;
.super Ljava/lang/Object;
.source "SpellChecker.java"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SpellChecker$SpellParser;
    }
.end annotation


# static fields
.field public static final AVERAGE_WORD_LENGTH:I = 0x7

.field private static final DBG:Z = false

.field public static final MAX_NUMBER_OF_WORDS:I = 0x32

.field private static final MIN_SENTENCE_LENGTH:I = 0x32

.field private static final SPELL_PAUSE_DURATION:I = 0x190

.field private static final SUGGESTION_SPAN_CACHE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final USE_SPAN_RANGE:I = -0x1

.field public static final WORD_ITERATOR_INTERVAL:I = 0x15e


# instance fields
.field final mCookie:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mIds:[I

.field private mIsSentenceSpellCheckSupported:Z

.field private mLength:I

.field private mSpanSequenceCounter:I

.field private mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

.field mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

.field private mSpellRunnable:Ljava/lang/Runnable;

.field private final mSuggestionSpanCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mTextServicesManager:Landroid/view/textservice/TextServicesManager;

.field private final mTextView:Landroid/widget/TextView;

.field private mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/SpellChecker;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mIds:[I

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/SpellChecker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/widget/SpellChecker;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/SpellChecker;->mLength:I

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/SpellChecker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    const-class v0, Landroid/widget/SpellChecker;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    #@8
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 86
    new-array v1, v2, [Landroid/widget/SpellChecker$SpellParser;

    #@6
    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    #@8
    .line 88
    iput v2, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    #@a
    .line 102
    new-instance v1, Landroid/util/LruCache;

    #@c
    const/16 v2, 0xa

    #@e
    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    #@11
    .line 101
    iput-object v1, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    #@13
    .line 105
    iput-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@15
    .line 108
    const/4 v0, 0x1

    #@16
    .line 109
    .local v0, "size":I
    const/4 v1, 0x1

    #@17
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    #@1d
    .line 110
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    #@1f
    array-length v1, v1

    #@20
    new-array v1, v1, [Landroid/text/style/SpellCheckSpan;

    #@22
    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    #@24
    .line 112
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@26
    invoke-virtual {v1}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    #@2d
    .line 114
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->hashCode()I

    #@30
    move-result v1

    #@31
    iput v1, p0, Landroid/widget/SpellChecker;->mCookie:I

    #@33
    .line 104
    return-void
.end method

.method private addSpellCheckSpan(Landroid/text/Editable;II)V
    .locals 5
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 195
    invoke-direct {p0}, Landroid/widget/SpellChecker;->nextSpellCheckSpanIndex()I

    #@3
    move-result v0

    #@4
    .line 196
    .local v0, "index":I
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    #@6
    aget-object v1, v2, v0

    #@8
    .line 197
    .local v1, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    const/16 v2, 0x21

    #@a
    invoke-interface {p1, v1, p2, p3, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@d
    .line 198
    const/4 v2, 0x0

    #@e
    invoke-virtual {v1, v2}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    #@11
    .line 199
    iget-object v2, p0, Landroid/widget/SpellChecker;->mIds:[I

    #@13
    iget v3, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    #@15
    add-int/lit8 v4, v3, 0x1

    #@17
    iput v4, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    #@19
    aput v3, v2, v0

    #@1b
    .line 194
    return-void
.end method

.method private createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V
    .locals 14
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "suggestionsInfo"    # Landroid/view/textservice/SuggestionsInfo;
    .param p3, "spellCheckSpan"    # Landroid/text/style/SpellCheckSpan;
    .param p4, "offset"    # I
    .param p5, "length"    # I

    #@0
    .prologue
    .line 455
    move-object/from16 v0, p3

    #@2
    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@5
    move-result v6

    #@6
    .line 456
    .local v6, "spellCheckSpanStart":I
    move-object/from16 v0, p3

    #@8
    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@b
    move-result v5

    #@c
    .line 457
    .local v5, "spellCheckSpanEnd":I
    if-ltz v6, :cond_0

    #@e
    if-gt v5, v6, :cond_1

    #@10
    .line 458
    :cond_0
    return-void

    #@11
    .line 462
    :cond_1
    const/4 v12, -0x1

    #@12
    move/from16 v0, p4

    #@14
    if-eq v0, v12, :cond_2

    #@16
    const/4 v12, -0x1

    #@17
    move/from16 v0, p5

    #@19
    if-eq v0, v12, :cond_2

    #@1b
    .line 463
    add-int v7, v6, p4

    #@1d
    .line 464
    .local v7, "start":I
    add-int v2, v7, p5

    #@1f
    .line 470
    .local v2, "end":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    #@22
    move-result v10

    #@23
    .line 472
    .local v10, "suggestionsCount":I
    if-lez v10, :cond_3

    #@25
    .line 473
    new-array v9, v10, [Ljava/lang/String;

    #@27
    .line 474
    .local v9, "suggestions":[Ljava/lang/String;
    const/4 v3, 0x0

    #@28
    .local v3, "i":I
    :goto_1
    if-ge v3, v10, :cond_4

    #@2a
    .line 475
    move-object/from16 v0, p2

    #@2c
    invoke-virtual {v0, v3}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    #@2f
    move-result-object v12

    #@30
    aput-object v12, v9, v3

    #@32
    .line 474
    add-int/lit8 v3, v3, 0x1

    #@34
    goto :goto_1

    #@35
    .line 466
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v7    # "start":I
    .end local v9    # "suggestions":[Ljava/lang/String;
    .end local v10    # "suggestionsCount":I
    :cond_2
    move v7, v6

    #@36
    .line 467
    .restart local v7    # "start":I
    move v2, v5

    #@37
    .restart local v2    # "end":I
    goto :goto_0

    #@38
    .line 478
    .restart local v10    # "suggestionsCount":I
    :cond_3
    const-class v12, Ljava/lang/String;

    #@3a
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@3d
    move-result-object v9

    #@3e
    check-cast v9, [Ljava/lang/String;

    #@40
    .line 481
    .restart local v9    # "suggestions":[Ljava/lang/String;
    :cond_4
    new-instance v8, Landroid/text/style/SuggestionSpan;

    #@42
    iget-object v12, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@44
    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@47
    move-result-object v12

    #@48
    .line 482
    const/4 v13, 0x3

    #@49
    .line 481
    invoke-direct {v8, v12, v9, v13}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    #@4c
    .line 485
    .local v8, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    iget-boolean v12, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    #@4e
    if-eqz v12, :cond_6

    #@50
    .line 486
    invoke-static {v7, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@53
    move-result-wide v12

    #@54
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@57
    move-result-object v4

    #@58
    .line 487
    .local v4, "key":Ljava/lang/Long;
    iget-object v12, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    #@5a
    invoke-virtual {v12, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    move-result-object v11

    #@5e
    check-cast v11, Landroid/text/style/SuggestionSpan;

    #@60
    .line 488
    .local v11, "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    if-eqz v11, :cond_5

    #@62
    .line 493
    invoke-interface {p1, v11}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@65
    .line 495
    :cond_5
    iget-object v12, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    #@67
    invoke-virtual {v12, v4, v8}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    .line 497
    .end local v4    # "key":Ljava/lang/Long;
    .end local v11    # "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_6
    const/16 v12, 0x21

    #@6c
    invoke-interface {p1, v8, v7, v2, v12}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@6f
    .line 499
    iget-object v12, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@71
    const/4 v13, 0x0

    #@72
    invoke-virtual {v12, v7, v2, v13}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    #@75
    .line 454
    return-void
.end method

.method public static haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z
    .locals 3
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "spanStart"    # I
    .param p4, "spanEnd"    # I

    #@0
    .prologue
    .line 756
    if-eq p4, p1, :cond_0

    #@2
    if-eq p3, p2, :cond_0

    #@4
    .line 757
    const/4 v1, 0x1

    #@5
    .line 785
    :goto_0
    return v1

    #@6
    .line 761
    :cond_0
    if-ne p4, p1, :cond_1

    #@8
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@b
    move-result v2

    #@c
    if-ge p1, v2, :cond_1

    #@e
    .line 762
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@11
    move-result v0

    #@12
    .line 763
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    #@15
    move-result v1

    #@16
    .local v1, "haveWordBoundariesChanged":Z
    goto :goto_0

    #@17
    .line 770
    .end local v0    # "codePoint":I
    .end local v1    # "haveWordBoundariesChanged":Z
    :cond_1
    if-ne p3, p2, :cond_2

    #@19
    if-lez p2, :cond_2

    #@1b
    .line 771
    invoke-static {p0, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@1e
    move-result v0

    #@1f
    .line 772
    .restart local v0    # "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    #@22
    move-result v1

    #@23
    .restart local v1    # "haveWordBoundariesChanged":Z
    goto :goto_0

    #@24
    .line 783
    .end local v0    # "codePoint":I
    .end local v1    # "haveWordBoundariesChanged":Z
    :cond_2
    const/4 v1, 0x0

    #@25
    .local v1, "haveWordBoundariesChanged":Z
    goto :goto_0
.end method

.method private isSessionActive()Z
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private nextSpellCheckSpanIndex()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 183
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 184
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    #@8
    aget v1, v1, v0

    #@a
    if-gez v1, :cond_0

    #@c
    return v0

    #@d
    .line 183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 187
    :cond_1
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    #@12
    iget v2, p0, Landroid/widget/SpellChecker;->mLength:I

    #@14
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    #@1a
    .line 189
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    #@1c
    iget v2, p0, Landroid/widget/SpellChecker;->mLength:I

    #@1e
    new-instance v3, Landroid/text/style/SpellCheckSpan;

    #@20
    invoke-direct {v3}, Landroid/text/style/SpellCheckSpan;-><init>()V

    #@23
    .line 188
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, [Landroid/text/style/SpellCheckSpan;

    #@29
    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    #@2b
    .line 190
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    #@2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    iput v1, p0, Landroid/widget/SpellChecker;->mLength:I

    #@31
    .line 191
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    #@33
    add-int/lit8 v1, v1, -0x1

    #@35
    return v1
.end method

.method private onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;
    .locals 19
    .param p1, "suggestionsInfo"    # Landroid/view/textservice/SuggestionsInfo;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 325
    if-eqz p1, :cond_0

    #@2
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    #@5
    move-result v2

    #@6
    move-object/from16 v0, p0

    #@8
    iget v4, v0, Landroid/widget/SpellChecker;->mCookie:I

    #@a
    if-eq v2, v4, :cond_1

    #@c
    .line 326
    :cond_0
    const/4 v2, 0x0

    #@d
    return-object v2

    #@e
    .line 328
    :cond_1
    move-object/from16 v0, p0

    #@10
    iget-object v2, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@12
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroid/text/Editable;

    #@18
    .line 329
    .local v3, "editable":Landroid/text/Editable;
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    #@1b
    move-result v14

    #@1c
    .line 330
    .local v14, "sequenceNumber":I
    const/4 v11, 0x0

    #@1d
    .local v11, "k":I
    :goto_0
    move-object/from16 v0, p0

    #@1f
    iget v2, v0, Landroid/widget/SpellChecker;->mLength:I

    #@21
    if-ge v11, v2, :cond_8

    #@23
    .line 331
    move-object/from16 v0, p0

    #@25
    iget-object v2, v0, Landroid/widget/SpellChecker;->mIds:[I

    #@27
    aget v2, v2, v11

    #@29
    if-ne v14, v2, :cond_7

    #@2b
    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    #@2e
    move-result v8

    #@2f
    .line 334
    .local v8, "attributes":I
    and-int/lit8 v2, v8, 0x1

    #@31
    if-lez v2, :cond_3

    #@33
    const/4 v10, 0x1

    #@34
    .line 336
    .local v10, "isInDictionary":Z
    :goto_1
    and-int/lit8 v2, v8, 0x2

    #@36
    if-lez v2, :cond_4

    #@38
    const/4 v13, 0x1

    #@39
    .line 338
    .local v13, "looksLikeTypo":Z
    :goto_2
    move-object/from16 v0, p0

    #@3b
    iget-object v2, v0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    #@3d
    aget-object v5, v2, v11

    #@3f
    .line 341
    .local v5, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    if-nez v10, :cond_5

    #@41
    if-eqz v13, :cond_5

    #@43
    move-object/from16 v2, p0

    #@45
    move-object/from16 v4, p1

    #@47
    move/from16 v6, p2

    #@49
    move/from16 v7, p3

    #@4b
    .line 342
    invoke-direct/range {v2 .. v7}, Landroid/widget/SpellChecker;->createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V

    #@4e
    .line 375
    :cond_2
    :goto_3
    return-object v5

    #@4f
    .line 334
    .end local v5    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v10    # "isInDictionary":Z
    .end local v13    # "looksLikeTypo":Z
    :cond_3
    const/4 v10, 0x0

    #@50
    .restart local v10    # "isInDictionary":Z
    goto :goto_1

    #@51
    .line 336
    :cond_4
    const/4 v13, 0x0

    #@52
    .restart local v13    # "looksLikeTypo":Z
    goto :goto_2

    #@53
    .line 346
    .restart local v5    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_5
    move-object/from16 v0, p0

    #@55
    iget-boolean v2, v0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    #@57
    if-eqz v2, :cond_2

    #@59
    .line 349
    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@5c
    move-result v16

    #@5d
    .line 350
    .local v16, "spellCheckSpanStart":I
    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@60
    move-result v15

    #@61
    .line 353
    .local v15, "spellCheckSpanEnd":I
    const/4 v2, -0x1

    #@62
    move/from16 v0, p2

    #@64
    if-eq v0, v2, :cond_6

    #@66
    const/4 v2, -0x1

    #@67
    move/from16 v0, p3

    #@69
    if-eq v0, v2, :cond_6

    #@6b
    .line 354
    add-int v17, v16, p2

    #@6d
    .line 355
    .local v17, "start":I
    add-int v9, v17, p3

    #@6f
    .line 360
    .local v9, "end":I
    :goto_4
    if-ltz v16, :cond_2

    #@71
    move/from16 v0, v16

    #@73
    if-le v15, v0, :cond_2

    #@75
    .line 361
    move/from16 v0, v17

    #@77
    if-le v9, v0, :cond_2

    #@79
    .line 362
    move/from16 v0, v17

    #@7b
    invoke-static {v0, v9}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@7e
    move-result-wide v6

    #@7f
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@82
    move-result-object v12

    #@83
    .line 363
    .local v12, "key":Ljava/lang/Long;
    move-object/from16 v0, p0

    #@85
    iget-object v2, v0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    #@87
    invoke-virtual {v2, v12}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    move-result-object v18

    #@8b
    check-cast v18, Landroid/text/style/SuggestionSpan;

    #@8d
    .line 364
    .local v18, "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    if-eqz v18, :cond_2

    #@8f
    .line 369
    move-object/from16 v0, v18

    #@91
    invoke-interface {v3, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@94
    .line 370
    move-object/from16 v0, p0

    #@96
    iget-object v2, v0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    #@98
    invoke-virtual {v2, v12}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    goto :goto_3

    #@9c
    .line 357
    .end local v9    # "end":I
    .end local v12    # "key":Ljava/lang/Long;
    .end local v17    # "start":I
    .end local v18    # "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_6
    move/from16 v17, v16

    #@9e
    .line 358
    .restart local v17    # "start":I
    move v9, v15

    #@9f
    .restart local v9    # "end":I
    goto :goto_4

    #@a0
    .line 330
    .end local v5    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v8    # "attributes":I
    .end local v9    # "end":I
    .end local v10    # "isInDictionary":Z
    .end local v13    # "looksLikeTypo":Z
    .end local v15    # "spellCheckSpanEnd":I
    .end local v16    # "spellCheckSpanStart":I
    .end local v17    # "start":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    #@a2
    goto/16 :goto_0

    #@a4
    .line 378
    :cond_8
    const/4 v2, 0x0

    #@a5
    return-object v2
.end method

.method private resetSession()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 118
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->closeSession()V

    #@6
    .line 120
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    .line 121
    const-string/jumbo v2, "textservices"

    #@f
    .line 120
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/view/textservice/TextServicesManager;

    #@15
    iput-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    #@17
    .line 122
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    #@19
    invoke-virtual {v1}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 123
    iget-object v1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    #@21
    if-nez v1, :cond_1

    #@23
    .line 125
    :cond_0
    iput-object v3, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    #@25
    .line 135
    :goto_0
    const/4 v0, 0x0

    #@26
    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    #@28
    if-ge v0, v1, :cond_2

    #@2a
    .line 136
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    #@2c
    const/4 v2, -0x1

    #@2d
    aput v2, v1, v0

    #@2f
    .line 135
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_1

    #@32
    .line 124
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    #@34
    invoke-virtual {v1, v5}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    #@37
    move-result-object v1

    #@38
    if-eqz v1, :cond_0

    #@3a
    .line 127
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    #@3c
    .line 129
    iget-object v2, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    #@3e
    .line 127
    invoke-virtual {v1, v3, v2, p0, v4}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;

    #@41
    move-result-object v1

    #@42
    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    #@44
    .line 131
    iput-boolean v5, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    #@46
    goto :goto_0

    #@47
    .line 138
    .restart local v0    # "i":I
    :cond_2
    iput v4, p0, Landroid/widget/SpellChecker;->mLength:I

    #@49
    .line 141
    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@4b
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@4d
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@50
    move-result-object v1

    #@51
    check-cast v1, Landroid/text/Editable;

    #@53
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    #@56
    .line 142
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    #@58
    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    #@5b
    .line 117
    return-void
.end method

.method private scheduleNewSpellCheck()V
    .locals 4

    #@0
    .prologue
    .line 432
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 433
    new-instance v0, Landroid/widget/SpellChecker$1;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/SpellChecker$1;-><init>(Landroid/widget/SpellChecker;)V

    #@9
    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    #@b
    .line 450
    :goto_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@d
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    #@f
    const-wide/16 v2, 0x190

    #@11
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@14
    .line 428
    return-void

    #@15
    .line 447
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@17
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    #@19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@1c
    goto :goto_0
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 146
    iput-object p1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    #@2
    .line 148
    invoke-direct {p0}, Landroid/widget/SpellChecker;->resetSession()V

    #@5
    .line 150
    if-eqz p1, :cond_0

    #@7
    .line 152
    new-instance v0, Landroid/text/method/WordIterator;

    #@9
    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    #@c
    iput-object v0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    #@e
    .line 156
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@10
    invoke-virtual {v0}, Landroid/widget/TextView;->onLocaleChanged()V

    #@13
    .line 145
    return-void
.end method

.method private spellCheck()V
    .locals 18

    #@0
    .prologue
    .line 261
    move-object/from16 v0, p0

    #@2
    iget-object v5, v0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    #@4
    if-nez v5, :cond_0

    #@6
    return-void

    #@7
    .line 263
    :cond_0
    move-object/from16 v0, p0

    #@9
    iget-object v5, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@b
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/text/Editable;

    #@11
    .line 264
    .local v2, "editable":Landroid/text/Editable;
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@14
    move-result v11

    #@15
    .line 265
    .local v11, "selectionStart":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@18
    move-result v10

    #@19
    .line 267
    .local v10, "selectionEnd":I
    move-object/from16 v0, p0

    #@1b
    iget v5, v0, Landroid/widget/SpellChecker;->mLength:I

    #@1d
    new-array v13, v5, [Landroid/view/textservice/TextInfo;

    #@1f
    .line 268
    .local v13, "textInfos":[Landroid/view/textservice/TextInfo;
    const/4 v15, 0x0

    #@20
    .line 270
    .local v15, "textInfosCount":I
    const/4 v8, 0x0

    #@21
    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@23
    iget v5, v0, Landroid/widget/SpellChecker;->mLength:I

    #@25
    if-ge v8, v5, :cond_9

    #@27
    .line 271
    move-object/from16 v0, p0

    #@29
    iget-object v5, v0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    #@2b
    aget-object v12, v5, v8

    #@2d
    .line 272
    .local v12, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    move-object/from16 v0, p0

    #@2f
    iget-object v5, v0, Landroid/widget/SpellChecker;->mIds:[I

    #@31
    aget v5, v5, v8

    #@33
    if-ltz v5, :cond_1

    #@35
    invoke-virtual {v12}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    #@38
    move-result v5

    #@39
    if-eqz v5, :cond_2

    #@3b
    .line 270
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 274
    :cond_2
    invoke-interface {v2, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@41
    move-result v3

    #@42
    .line 275
    .local v3, "start":I
    invoke-interface {v2, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@45
    move-result v4

    #@46
    .line 284
    .local v4, "end":I
    add-int/lit8 v5, v4, 0x1

    #@48
    if-ne v11, v5, :cond_4

    #@4a
    invoke-interface {v2, v4}, Landroid/text/Editable;->charAt(I)C

    #@4d
    move-result v5

    #@4e
    const/16 v6, 0x27

    #@50
    if-ne v5, v6, :cond_4

    #@52
    const/4 v7, 0x1

    #@53
    .line 285
    .local v7, "apostrophe":Z
    :goto_2
    move-object/from16 v0, p0

    #@55
    iget-boolean v5, v0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    #@57
    if-eqz v5, :cond_6

    #@59
    .line 289
    if-nez v7, :cond_5

    #@5b
    if-le v10, v3, :cond_3

    #@5d
    if-le v11, v4, :cond_5

    #@5f
    :cond_3
    const/4 v9, 0x1

    #@60
    .line 293
    .local v9, "isEditing":Z
    :goto_3
    if-ltz v3, :cond_1

    #@62
    if-le v4, v3, :cond_1

    #@64
    if-eqz v9, :cond_1

    #@66
    .line 294
    const/4 v5, 0x1

    #@67
    invoke-virtual {v12, v5}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    #@6a
    .line 295
    new-instance v1, Landroid/view/textservice/TextInfo;

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget v5, v0, Landroid/widget/SpellChecker;->mCookie:I

    #@70
    move-object/from16 v0, p0

    #@72
    iget-object v6, v0, Landroid/widget/SpellChecker;->mIds:[I

    #@74
    aget v6, v6, v8

    #@76
    invoke-direct/range {v1 .. v6}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    #@79
    .line 296
    .local v1, "textInfo":Landroid/view/textservice/TextInfo;
    add-int/lit8 v16, v15, 0x1

    #@7b
    .end local v15    # "textInfosCount":I
    .local v16, "textInfosCount":I
    aput-object v1, v13, v15

    #@7d
    move/from16 v15, v16

    #@7f
    .end local v16    # "textInfosCount":I
    .restart local v15    # "textInfosCount":I
    goto :goto_1

    #@80
    .line 284
    .end local v1    # "textInfo":Landroid/view/textservice/TextInfo;
    .end local v7    # "apostrophe":Z
    .end local v9    # "isEditing":Z
    :cond_4
    const/4 v7, 0x0

    #@81
    .restart local v7    # "apostrophe":Z
    goto :goto_2

    #@82
    .line 289
    :cond_5
    const/4 v9, 0x0

    #@83
    .restart local v9    # "isEditing":Z
    goto :goto_3

    #@84
    .line 291
    .end local v9    # "isEditing":Z
    :cond_6
    if-nez v7, :cond_8

    #@86
    if-lt v10, v3, :cond_7

    #@88
    if-le v11, v4, :cond_8

    #@8a
    :cond_7
    const/4 v9, 0x1

    #@8b
    .restart local v9    # "isEditing":Z
    goto :goto_3

    #@8c
    .end local v9    # "isEditing":Z
    :cond_8
    const/4 v9, 0x0

    #@8d
    .restart local v9    # "isEditing":Z
    goto :goto_3

    #@8e
    .line 306
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v7    # "apostrophe":Z
    .end local v9    # "isEditing":Z
    .end local v12    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_9
    if-lez v15, :cond_b

    #@90
    .line 307
    array-length v5, v13

    #@91
    if-ge v15, v5, :cond_a

    #@93
    .line 308
    new-array v14, v15, [Landroid/view/textservice/TextInfo;

    #@95
    .line 309
    .local v14, "textInfosCopy":[Landroid/view/textservice/TextInfo;
    const/4 v5, 0x0

    #@96
    const/4 v6, 0x0

    #@97
    invoke-static {v13, v5, v14, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@9a
    .line 310
    move-object v13, v14

    #@9b
    .line 313
    .end local v14    # "textInfosCopy":[Landroid/view/textservice/TextInfo;
    :cond_a
    move-object/from16 v0, p0

    #@9d
    iget-boolean v5, v0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    #@9f
    if-eqz v5, :cond_c

    #@a1
    .line 314
    move-object/from16 v0, p0

    #@a3
    iget-object v5, v0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    #@a5
    .line 315
    const/4 v6, 0x5

    #@a6
    .line 314
    invoke-virtual {v5, v13, v6}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    #@a9
    .line 260
    :cond_b
    :goto_4
    return-void

    #@aa
    .line 317
    :cond_c
    move-object/from16 v0, p0

    #@ac
    iget-object v5, v0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    #@ae
    const/4 v6, 0x5

    #@af
    .line 318
    const/16 v17, 0x0

    #@b1
    .line 317
    move/from16 v0, v17

    #@b3
    invoke-virtual {v5, v13, v6, v0}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    #@b6
    goto :goto_4
.end method


# virtual methods
.method public closeSession()V
    .locals 4

    #@0
    .prologue
    .line 168
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 169
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    #@6
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSession;->close()V

    #@9
    .line 172
    :cond_0
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    #@b
    array-length v1, v2

    #@c
    .line 173
    .local v1, "length":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@f
    .line 174
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    #@11
    aget-object v2, v2, v0

    #@13
    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->stop()V

    #@16
    .line 173
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 177
    :cond_1
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 178
    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@1f
    iget-object v3, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    #@21
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@24
    .line 167
    :cond_2
    return-void
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 10
    .param p1, "results"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    #@0
    .prologue
    .line 397
    iget-object v9, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/text/Editable;

    #@8
    .line 399
    .local v0, "editable":Landroid/text/Editable;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    array-length v9, p1

    #@a
    if-ge v1, v9, :cond_5

    #@c
    .line 400
    aget-object v7, p1, v1

    #@e
    .line 401
    .local v7, "ssi":Landroid/view/textservice/SentenceSuggestionsInfo;
    if-nez v7, :cond_1

    #@10
    .line 399
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 404
    :cond_1
    const/4 v6, 0x0

    #@14
    .line 405
    .local v6, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    const/4 v2, 0x0

    #@15
    .end local v6    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .local v2, "j":I
    :goto_2
    invoke-virtual {v7}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    #@18
    move-result v9

    #@19
    if-ge v2, v9, :cond_4

    #@1b
    .line 406
    invoke-virtual {v7, v2}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    #@1e
    move-result-object v8

    #@1f
    .line 407
    .local v8, "suggestionsInfo":Landroid/view/textservice/SuggestionsInfo;
    if-nez v8, :cond_3

    #@21
    .line 405
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_2

    #@24
    .line 410
    :cond_3
    invoke-virtual {v7, v2}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    #@27
    move-result v4

    #@28
    .line 411
    .local v4, "offset":I
    invoke-virtual {v7, v2}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    #@2b
    move-result v3

    #@2c
    .line 412
    .local v3, "length":I
    invoke-direct {p0, v8, v4, v3}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    #@2f
    move-result-object v5

    #@30
    .line 414
    .local v5, "scs":Landroid/text/style/SpellCheckSpan;
    if-nez v6, :cond_2

    #@32
    if-eqz v5, :cond_2

    #@34
    .line 417
    move-object v6, v5

    #@35
    .local v6, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    goto :goto_3

    #@36
    .line 420
    .end local v3    # "length":I
    .end local v4    # "offset":I
    .end local v5    # "scs":Landroid/text/style/SpellCheckSpan;
    .end local v6    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v8    # "suggestionsInfo":Landroid/view/textservice/SuggestionsInfo;
    :cond_4
    if-eqz v6, :cond_0

    #@38
    .line 422
    invoke-interface {v0, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@3b
    goto :goto_1

    #@3c
    .line 425
    .end local v2    # "j":I
    .end local v7    # "ssi":Landroid/view/textservice/SentenceSuggestionsInfo;
    :cond_5
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    #@3f
    .line 396
    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 5
    .param p1, "results"    # [Landroid/view/textservice/SuggestionsInfo;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 383
    iget-object v3, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/Editable;

    #@9
    .line 384
    .local v0, "editable":Landroid/text/Editable;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    array-length v3, p1

    #@b
    if-ge v1, v3, :cond_1

    #@d
    .line 386
    aget-object v3, p1, v1

    #@f
    invoke-direct {p0, v3, v4, v4}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    #@12
    move-result-object v2

    #@13
    .line 387
    .local v2, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    if-eqz v2, :cond_0

    #@15
    .line 389
    invoke-interface {v0, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@18
    .line 384
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 392
    .end local v2    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_1
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    #@1e
    .line 382
    return-void
.end method

.method public onSelectionChanged()V
    .locals 0

    #@0
    .prologue
    .line 213
    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    #@3
    .line 212
    return-void
.end method

.method public onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V
    .locals 3
    .param p1, "spellCheckSpan"    # Landroid/text/style/SpellCheckSpan;

    #@0
    .prologue
    .line 204
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 205
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    #@7
    aget-object v1, v1, v0

    #@9
    if-ne v1, p1, :cond_0

    #@b
    .line 206
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    #@d
    const/4 v2, -0x1

    #@e
    aput v2, v1, v0

    #@10
    .line 207
    return-void

    #@11
    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 202
    :cond_1
    return-void
.end method

.method public spellCheck(II)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 220
    iget-object v7, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@4
    invoke-virtual {v7}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    #@7
    move-result-object v3

    #@8
    .line 221
    .local v3, "locale":Ljava/util/Locale;
    invoke-direct {p0}, Landroid/widget/SpellChecker;->isSessionActive()Z

    #@b
    move-result v1

    #@c
    .line 222
    .local v1, "isSessionActive":Z
    if-eqz v3, :cond_0

    #@e
    iget-object v7, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    #@10
    if-nez v7, :cond_2

    #@12
    .line 223
    :cond_0
    invoke-direct {p0, v3}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    #@15
    .line 225
    const/4 p1, 0x0

    #@16
    .line 226
    iget-object v7, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    #@18
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@1b
    move-result-object v7

    #@1c
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    #@1f
    move-result p2

    #@20
    .line 235
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    #@22
    return-void

    #@23
    .line 222
    :cond_2
    iget-object v7, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    #@25
    invoke-virtual {v7, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_0

    #@2b
    .line 228
    iget-object v7, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    #@2d
    invoke-virtual {v7}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    #@30
    move-result v5

    #@31
    .line 229
    .local v5, "spellCheckerActivated":Z
    if-eq v1, v5, :cond_1

    #@33
    .line 231
    invoke-direct {p0}, Landroid/widget/SpellChecker;->resetSession()V

    #@36
    goto :goto_0

    #@37
    .line 238
    .end local v5    # "spellCheckerActivated":Z
    :cond_3
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    #@39
    array-length v2, v7

    #@3a
    .line 239
    .local v2, "length":I
    const/4 v0, 0x0

    #@3b
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_5

    #@3d
    .line 240
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    #@3f
    aget-object v6, v7, v0

    #@41
    .line 241
    .local v6, "spellParser":Landroid/widget/SpellChecker$SpellParser;
    invoke-virtual {v6}, Landroid/widget/SpellChecker$SpellParser;->isFinished()Z

    #@44
    move-result v7

    #@45
    if-eqz v7, :cond_4

    #@47
    .line 242
    invoke-virtual {v6, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->parse(II)V

    #@4a
    .line 243
    return-void

    #@4b
    .line 239
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 251
    .end local v6    # "spellParser":Landroid/widget/SpellChecker$SpellParser;
    :cond_5
    add-int/lit8 v7, v2, 0x1

    #@50
    new-array v4, v7, [Landroid/widget/SpellChecker$SpellParser;

    #@52
    .line 252
    .local v4, "newSpellParsers":[Landroid/widget/SpellChecker$SpellParser;
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    #@54
    invoke-static {v7, v9, v4, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@57
    .line 253
    iput-object v4, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    #@59
    .line 255
    new-instance v6, Landroid/widget/SpellChecker$SpellParser;

    #@5b
    invoke-direct {v6, p0, v8}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$SpellParser;)V

    #@5e
    .line 256
    .restart local v6    # "spellParser":Landroid/widget/SpellChecker$SpellParser;
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    #@60
    aput-object v6, v7, v2

    #@62
    .line 257
    invoke-virtual {v6, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->parse(II)V

    #@65
    .line 216
    return-void
.end method
