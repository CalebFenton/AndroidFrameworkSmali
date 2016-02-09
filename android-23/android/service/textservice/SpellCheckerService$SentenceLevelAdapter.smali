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
.field public static final EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

.field private static final EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;


# instance fields
.field private final mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static synthetic -wrap0(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .locals 1
    .param p1, "originalTextInfo"    # Landroid/view/textservice/TextInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 334
    new-array v0, v2, [Landroid/view/textservice/SentenceSuggestionsInfo;

    #@3
    .line 333
    sput-object v0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    #@5
    .line 335
    new-instance v0, Landroid/view/textservice/SuggestionsInfo;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {v0, v2, v1}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    #@b
    sput-object v0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    #@d
    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 366
    new-instance v0, Landroid/text/method/WordIterator;

    #@5
    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    #@8
    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    #@a
    .line 365
    return-void
.end method

.method private getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .locals 14
    .param p1, "originalTextInfo"    # Landroid/view/textservice/TextInfo;

    #@0
    .prologue
    const/4 v13, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 370
    iget-object v11, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    #@4
    .line 371
    .local v11, "wordIterator":Landroid/text/method/WordIterator;
    invoke-virtual {p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    #@7
    move-result-object v7

    #@8
    .line 372
    .local v7, "originalText":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/textservice/TextInfo;->getCookie()I

    #@b
    move-result v4

    #@c
    .line 373
    .local v4, "cookie":I
    const/4 v8, 0x0

    #@d
    .line 374
    .local v8, "start":I
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    #@10
    move-result v6

    #@11
    .line 375
    .local v6, "end":I
    new-instance v10, Ljava/util/ArrayList;

    #@13
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 376
    .local v10, "wordItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;>;"
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    #@19
    move-result v3

    #@1a
    invoke-virtual {v11, v7, v2, v3}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    #@1d
    .line 377
    invoke-virtual {v11, v2}, Landroid/text/method/WordIterator;->following(I)I

    #@20
    move-result v9

    #@21
    .line 378
    .local v9, "wordEnd":I
    invoke-virtual {v11, v9}, Landroid/text/method/WordIterator;->getBeginning(I)I

    #@24
    move-result v12

    #@25
    .line 383
    .local v12, "wordStart":I
    :goto_0
    if-gt v12, v6, :cond_1

    #@27
    if-eq v9, v13, :cond_1

    #@29
    .line 384
    if-eq v12, v13, :cond_1

    #@2b
    .line 385
    if-ltz v9, :cond_0

    #@2d
    if-le v9, v12, :cond_0

    #@2f
    .line 386
    invoke-interface {v7, v12, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@32
    move-result-object v1

    #@33
    .line 387
    .local v1, "query":Ljava/lang/CharSequence;
    new-instance v0, Landroid/view/textservice/TextInfo;

    #@35
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@38
    move-result v3

    #@39
    .line 388
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@3c
    move-result v5

    #@3d
    .line 387
    invoke-direct/range {v0 .. v5}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    #@40
    .line 389
    .local v0, "ti":Landroid/view/textservice/TextInfo;
    new-instance v3, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    #@42
    invoke-direct {v3, v0, v12, v9}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;-><init>(Landroid/view/textservice/TextInfo;II)V

    #@45
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@48
    .line 394
    .end local v0    # "ti":Landroid/view/textservice/TextInfo;
    .end local v1    # "query":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v11, v9}, Landroid/text/method/WordIterator;->following(I)I

    #@4b
    move-result v9

    #@4c
    .line 395
    if-ne v9, v13, :cond_2

    #@4e
    .line 400
    :cond_1
    new-instance v2, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    #@50
    invoke-direct {v2, p1, v10}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;-><init>(Landroid/view/textservice/TextInfo;Ljava/util/ArrayList;)V

    #@53
    return-object v2

    #@54
    .line 398
    :cond_2
    invoke-virtual {v11, v9}, Landroid/text/method/WordIterator;->getBeginning(I)I

    #@57
    move-result v12

    #@58
    goto :goto_0
.end method

.method public static reconstructSuggestions(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;[Landroid/view/textservice/SuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;
    .locals 13
    .param p0, "originalTextInfoParams"    # Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .param p1, "results"    # [Landroid/view/textservice/SuggestionsInfo;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 405
    if-eqz p1, :cond_0

    #@3
    array-length v11, p1

    #@4
    if-nez v11, :cond_1

    #@6
    .line 406
    :cond_0
    return-object v12

    #@7
    .line 411
    :cond_1
    if-nez p0, :cond_2

    #@9
    .line 415
    return-object v12

    #@a
    .line 417
    :cond_2
    iget-object v11, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    #@c
    invoke-virtual {v11}, Landroid/view/textservice/TextInfo;->getCookie()I

    #@f
    move-result v6

    #@10
    .line 419
    .local v6, "originalCookie":I
    iget-object v11, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    #@12
    invoke-virtual {v11}, Landroid/view/textservice/TextInfo;->getSequence()I

    #@15
    move-result v7

    #@16
    .line 421
    .local v7, "originalSequence":I
    iget v8, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mSize:I

    #@18
    .line 422
    .local v8, "querySize":I
    new-array v5, v8, [I

    #@1a
    .line 423
    .local v5, "offsets":[I
    new-array v4, v8, [I

    #@1c
    .line 424
    .local v4, "lengths":[I
    new-array v9, v8, [Landroid/view/textservice/SuggestionsInfo;

    #@1e
    .line 425
    .local v9, "reconstructedSuggestions":[Landroid/view/textservice/SuggestionsInfo;
    const/4 v1, 0x0

    #@1f
    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_6

    #@21
    .line 426
    iget-object v11, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mItems:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    #@29
    .line 427
    .local v2, "item":Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;
    const/4 v10, 0x0

    #@2a
    .line 428
    .local v10, "result":Landroid/view/textservice/SuggestionsInfo;
    const/4 v3, 0x0

    #@2b
    .local v3, "j":I
    :goto_1
    array-length v11, p1

    #@2c
    if-ge v3, v11, :cond_3

    #@2e
    .line 429
    aget-object v0, p1, v3

    #@30
    .line 430
    .local v0, "cur":Landroid/view/textservice/SuggestionsInfo;
    if-eqz v0, :cond_4

    #@32
    invoke-virtual {v0}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    #@35
    move-result v11

    #@36
    iget-object v12, v2, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    #@38
    invoke-virtual {v12}, Landroid/view/textservice/TextInfo;->getSequence()I

    #@3b
    move-result v12

    #@3c
    if-ne v11, v12, :cond_4

    #@3e
    .line 431
    move-object v10, v0

    #@3f
    .line 432
    .local v10, "result":Landroid/view/textservice/SuggestionsInfo;
    invoke-virtual {v10, v6, v7}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    #@42
    .line 436
    .end local v0    # "cur":Landroid/view/textservice/SuggestionsInfo;
    .end local v10    # "result":Landroid/view/textservice/SuggestionsInfo;
    :cond_3
    iget v11, v2, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mStart:I

    #@44
    aput v11, v5, v1

    #@46
    .line 437
    iget v11, v2, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mLength:I

    #@48
    aput v11, v4, v1

    #@4a
    .line 438
    if-eqz v10, :cond_5

    #@4c
    :goto_2
    aput-object v10, v9, v1

    #@4e
    .line 425
    add-int/lit8 v1, v1, 0x1

    #@50
    goto :goto_0

    #@51
    .line 428
    .restart local v0    # "cur":Landroid/view/textservice/SuggestionsInfo;
    .local v10, "result":Landroid/view/textservice/SuggestionsInfo;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@53
    goto :goto_1

    #@54
    .line 438
    .end local v0    # "cur":Landroid/view/textservice/SuggestionsInfo;
    .end local v10    # "result":Landroid/view/textservice/SuggestionsInfo;
    :cond_5
    sget-object v10, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    #@56
    goto :goto_2

    #@57
    .line 447
    .end local v2    # "item":Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;
    .end local v3    # "j":I
    :cond_6
    new-instance v11, Landroid/view/textservice/SentenceSuggestionsInfo;

    #@59
    invoke-direct {v11, v9, v5, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;-><init>([Landroid/view/textservice/SuggestionsInfo;[I[I)V

    #@5c
    return-object v11
.end method
