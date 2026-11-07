.class Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;
.super Ljava/lang/Object;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SentenceLevelAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;,
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    }
.end annotation


# static fields
.field public static final greylist-max-o EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

.field private static final greylist-max-o EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;


# instance fields
.field private final greylist-max-o mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetSplitWords(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 379
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/view/textservice/SentenceSuggestionsInfo;

    sput-object v1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 381
    new-instance v1, Landroid/view/textservice/SuggestionsInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    sput-object v1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    .line 413
    return-void
.end method

.method private greylist-max-o getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .registers 16
    .param p1, "originalTextInfo"    # Landroid/view/textservice/TextInfo;

    .line 416
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    .line 417
    .local v0, "wordIterator":Landroid/text/method/WordIterator;
    invoke-virtual {p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "originalText":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v6

    .line 419
    .local v6, "cookie":I
    const/4 v8, 0x0

    .line 420
    .local v8, "start":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 421
    .local v9, "end":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 422
    .local v10, "wordItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;>;"
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 423
    invoke-virtual {v0, v3}, Landroid/text/method/WordIterator;->following(I)I

    move-result v2

    .line 424
    .local v2, "wordEnd":I
    const/4 v11, -0x1

    if-ne v2, v11, :cond_26

    move v3, v11

    goto :goto_2a

    .line 425
    :cond_26
    invoke-virtual {v0, v2}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v3

    :goto_2a
    move v12, v2

    move v13, v3

    .line 430
    .end local v2    # "wordEnd":I
    .local v12, "wordEnd":I
    .local v13, "wordStart":I
    :goto_2c
    if-gt v13, v9, :cond_5c

    if-eq v12, v11, :cond_5c

    if-eq v13, v11, :cond_5c

    .line 432
    if-ltz v12, :cond_50

    if-le v12, v13, :cond_50

    .line 433
    invoke-interface {v1, v13, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 434
    .local v3, "query":Ljava/lang/CharSequence;
    new-instance v2, Landroid/view/textservice/TextInfo;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 435
    invoke-interface {v3}, Ljava/lang/CharSequence;->hashCode()I

    move-result v7

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    .line 436
    .local v2, "ti":Landroid/view/textservice/TextInfo;
    new-instance v4, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    invoke-direct {v4, v2, v13, v12}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;-><init>(Landroid/view/textservice/TextInfo;II)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v2    # "ti":Landroid/view/textservice/TextInfo;
    .end local v3    # "query":Ljava/lang/CharSequence;
    :cond_50
    invoke-virtual {v0, v12}, Landroid/text/method/WordIterator;->following(I)I

    move-result v12

    .line 442
    if-ne v12, v11, :cond_57

    .line 443
    goto :goto_5c

    .line 445
    :cond_57
    invoke-virtual {v0, v12}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v13

    goto :goto_2c

    .line 447
    :cond_5c
    :goto_5c
    new-instance v2, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    invoke-direct {v2, p1, v10}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;-><init>(Landroid/view/textservice/TextInfo;Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public static greylist-max-o reconstructSuggestions(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;[Landroid/view/textservice/SuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;
    .registers 15
    .param p0, "originalTextInfoParams"    # Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .param p1, "results"    # [Landroid/view/textservice/SuggestionsInfo;

    .line 452
    const/4 v0, 0x0

    if-eqz p1, :cond_5f

    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_5f

    .line 458
    :cond_7
    if-nez p0, :cond_a

    .line 462
    return-object v0

    .line 464
    :cond_a
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v0}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v0

    .line 465
    .local v0, "originalCookie":I
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    .line 466
    invoke-virtual {v1}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v1

    .line 468
    .local v1, "originalSequence":I
    iget v2, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mSize:I

    .line 469
    .local v2, "querySize":I
    new-array v3, v2, [I

    .line 470
    .local v3, "offsets":[I
    new-array v4, v2, [I

    .line 471
    .local v4, "lengths":[I
    new-array v5, v2, [Landroid/view/textservice/SuggestionsInfo;

    .line 472
    .local v5, "reconstructedSuggestions":[Landroid/view/textservice/SuggestionsInfo;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1f
    if-ge v6, v2, :cond_59

    .line 473
    iget-object v7, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    .line 474
    .local v7, "item":Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;
    const/4 v8, 0x0

    .line 475
    .local v8, "result":Landroid/view/textservice/SuggestionsInfo;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2b
    array-length v10, p1

    if-ge v9, v10, :cond_46

    .line 476
    aget-object v10, p1, v9

    .line 477
    .local v10, "cur":Landroid/view/textservice/SuggestionsInfo;
    if-eqz v10, :cond_43

    invoke-virtual {v10}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v11

    iget-object v12, v7, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v12}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v12

    if-ne v11, v12, :cond_43

    .line 478
    move-object v8, v10

    .line 479
    invoke-virtual {v8, v0, v1}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    .line 480
    goto :goto_46

    .line 475
    .end local v10    # "cur":Landroid/view/textservice/SuggestionsInfo;
    :cond_43
    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    .line 483
    .end local v9    # "j":I
    :cond_46
    :goto_46
    iget v9, v7, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mStart:I

    aput v9, v3, v6

    .line 484
    iget v9, v7, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mLength:I

    aput v9, v4, v6

    .line 485
    if-eqz v8, :cond_52

    move-object v9, v8

    goto :goto_54

    :cond_52
    sget-object v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    :goto_54
    aput-object v9, v5, v6

    .line 472
    .end local v7    # "item":Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;
    .end local v8    # "result":Landroid/view/textservice/SuggestionsInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 494
    .end local v6    # "i":I
    :cond_59
    new-instance v6, Landroid/view/textservice/SentenceSuggestionsInfo;

    invoke-direct {v6, v5, v3, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;-><init>([Landroid/view/textservice/SuggestionsInfo;[I[I)V

    return-object v6

    .line 453
    .end local v0    # "originalCookie":I
    .end local v1    # "originalSequence":I
    .end local v2    # "querySize":I
    .end local v3    # "offsets":[I
    .end local v4    # "lengths":[I
    .end local v5    # "reconstructedSuggestions":[Landroid/view/textservice/SuggestionsInfo;
    :cond_5f
    :goto_5f
    return-object v0
.end method
