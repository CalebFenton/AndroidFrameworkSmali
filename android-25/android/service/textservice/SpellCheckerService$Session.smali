.class public abstract Landroid/service/textservice/SpellCheckerService$Session;
.super Ljava/lang/Object;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Session"
.end annotation


# instance fields
.field private mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

.field private volatile mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    #@2
    invoke-virtual {v0}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->getBundle()Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    #@2
    invoke-virtual {v0}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->getLocale()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onCancel()V
    .locals 0

    #@0
    .prologue
    .line 210
    return-void
.end method

.method public onClose()V
    .locals 0

    #@0
    .prologue
    .line 218
    return-void
.end method

.method public abstract onCreate()V
.end method

.method public onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)[Landroid/view/textservice/SentenceSuggestionsInfo;
    .locals 11
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    #@0
    .prologue
    .line 165
    if-eqz p1, :cond_0

    #@2
    array-length v9, p1

    #@3
    if-nez v9, :cond_1

    #@5
    .line 166
    :cond_0
    sget-object v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    #@7
    return-object v9

    #@8
    .line 172
    :cond_1
    iget-object v9, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    #@a
    if-nez v9, :cond_3

    #@c
    .line 173
    monitor-enter p0

    #@d
    .line 174
    :try_start_0
    iget-object v9, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    #@f
    if-nez v9, :cond_2

    #@11
    .line 175
    invoke-virtual {p0}, Landroid/service/textservice/SpellCheckerService$Session;->getLocale()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 176
    .local v4, "localeStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@18
    move-result v9

    #@19
    if-nez v9, :cond_2

    #@1b
    .line 177
    new-instance v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    #@1d
    new-instance v10, Ljava/util/Locale;

    #@1f
    invoke-direct {v10, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@22
    invoke-direct {v9, v10}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;-><init>(Ljava/util/Locale;)V

    #@25
    iput-object v9, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .end local v4    # "localeStr":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    #@28
    .line 182
    :cond_3
    iget-object v9, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    #@2a
    if-nez v9, :cond_4

    #@2c
    .line 183
    sget-object v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    #@2e
    return-object v9

    #@2f
    .line 173
    :catchall_0
    move-exception v9

    #@30
    monitor-exit p0

    #@31
    throw v9

    #@32
    .line 185
    :cond_4
    array-length v1, p1

    #@33
    .line 186
    .local v1, "infosSize":I
    new-array v6, v1, [Landroid/view/textservice/SentenceSuggestionsInfo;

    #@35
    .line 187
    .local v6, "retval":[Landroid/view/textservice/SentenceSuggestionsInfo;
    const/4 v0, 0x0

    #@36
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_6

    #@38
    .line 189
    iget-object v9, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    #@3a
    aget-object v10, p1, v0

    #@3c
    invoke-static {v9, v10}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->-wrap0(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    #@3f
    move-result-object v8

    #@40
    .line 190
    .local v8, "textInfoParams":Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    iget-object v5, v8, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mItems:Ljava/util/ArrayList;

    #@42
    .line 192
    .local v5, "mItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v2

    #@46
    .line 193
    .local v2, "itemsSize":I
    new-array v7, v2, [Landroid/view/textservice/TextInfo;

    #@48
    .line 194
    .local v7, "splitTextInfos":[Landroid/view/textservice/TextInfo;
    const/4 v3, 0x0

    #@49
    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_5

    #@4b
    .line 195
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4e
    move-result-object v9

    #@4f
    check-cast v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    #@51
    iget-object v9, v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    #@53
    aput-object v9, v7, v3

    #@55
    .line 194
    add-int/lit8 v3, v3, 0x1

    #@57
    goto :goto_1

    #@58
    .line 199
    :cond_5
    const/4 v9, 0x1

    #@59
    .line 198
    invoke-virtual {p0, v7, p2, v9}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;

    #@5c
    move-result-object v9

    #@5d
    .line 197
    invoke-static {v8, v9}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->reconstructSuggestions(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;[Landroid/view/textservice/SuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;

    #@60
    move-result-object v9

    #@61
    aput-object v9, v6, v0

    #@63
    .line 187
    add-int/lit8 v0, v0, 0x1

    #@65
    goto :goto_0

    #@66
    .line 201
    .end local v2    # "itemsSize":I
    .end local v3    # "j":I
    .end local v5    # "mItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;>;"
    .end local v7    # "splitTextInfos":[Landroid/view/textservice/TextInfo;
    .end local v8    # "textInfoParams":Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    :cond_6
    return-object v6
.end method

.method public abstract onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;
.end method

.method public onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;
    .locals 6
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z

    #@0
    .prologue
    .line 139
    array-length v1, p1

    #@1
    .line 140
    .local v1, "length":I
    new-array v2, v1, [Landroid/view/textservice/SuggestionsInfo;

    #@3
    .line 141
    .local v2, "retval":[Landroid/view/textservice/SuggestionsInfo;
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@6
    .line 142
    aget-object v3, p1, v0

    #@8
    invoke-virtual {p0, v3, p2}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;

    #@b
    move-result-object v3

    #@c
    aput-object v3, v2, v0

    #@e
    .line 143
    aget-object v3, v2, v0

    #@10
    .line 144
    aget-object v4, p1, v0

    #@12
    invoke-virtual {v4}, Landroid/view/textservice/TextInfo;->getCookie()I

    #@15
    move-result v4

    #@16
    aget-object v5, p1, v0

    #@18
    invoke-virtual {v5}, Landroid/view/textservice/TextInfo;->getSequence()I

    #@1b
    move-result v5

    #@1c
    .line 143
    invoke-virtual {v3, v4, v5}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    #@1f
    .line 141
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 146
    :cond_0
    return-object v2
.end method

.method public final setInternalISpellCheckerSession(Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;)V
    .locals 0
    .param p1, "session"    # Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    #@0
    .prologue
    .line 106
    iput-object p1, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    #@2
    .line 105
    return-void
.end method
