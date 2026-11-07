.class public Landroid/view/textservice/SpellCheckerSession;
.super Ljava/lang/Object;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;,
        Landroid/view/textservice/SpellCheckerSession$InternalListener;,
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;,
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o MSG_ON_GET_SUGGESTION_MULTIPLE:I = 0x1

.field private static final greylist-max-o MSG_ON_GET_SUGGESTION_MULTIPLE_FOR_SENTENCE:I = 0x2

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.view.textservice.scs"

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

.field private final greylist-max-o mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

.field private final greylist-max-r mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

.field private final greylist-max-o mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

.field private final blacklist mTextServicesManager:Landroid/view/textservice/TextServicesManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$HLpz1ncBxKJFYFxjJQck1S0pODE(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/textservice/SpellCheckerSession;->lambda$handleOnGetSentenceSuggestionsMultiple$1([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Y1J69wRkz8QXmowMq8mWqj6ydAQ(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SuggestionsInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/textservice/SpellCheckerSession;->lambda$handleOnGetSuggestionsMultiple$0([Landroid/view/textservice/SuggestionsInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    const-class v0, Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/TextServicesManager;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "info"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "tsm"    # Landroid/view/textservice/TextServicesManager;
    .param p3, "listener"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mGuard:Ldalvik/system/CloseGuard;

    .line 124
    if-eqz p1, :cond_2f

    if-eqz p3, :cond_2f

    if-eqz p2, :cond_2f

    .line 127
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    .line 128
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-direct {v0, p0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;-><init>(Landroid/view/textservice/SpellCheckerSession;)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    .line 129
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$InternalListener;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-direct {v0, v1}, Landroid/view/textservice/SpellCheckerSession$InternalListener;-><init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

    .line 130
    iput-object p2, p0, Landroid/view/textservice/SpellCheckerSession;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 131
    iput-object p3, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    .line 132
    iput-object p4, p0, Landroid/view/textservice/SpellCheckerSession;->mExecutor:Ljava/util/concurrent/Executor;

    .line 134
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "finishSession"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 135
    return-void

    .line 125
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private synthetic blacklist lambda$handleOnGetSentenceSuggestionsMultiple$1([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .registers 3
    .param p1, "suggestionsInfos"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 224
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    invoke-interface {v0, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;->onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$handleOnGetSuggestionsMultiple$0([Landroid/view/textservice/SuggestionsInfo;)V
    .registers 3
    .param p1, "suggestionsInfos"    # [Landroid/view/textservice/SuggestionsInfo;

    .line 219
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    invoke-interface {v0, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;->onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V

    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->cancel()V

    .line 158
    return-void
.end method

.method public whitelist close()V
    .registers 3

    .line 165
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 166
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->close()V

    .line 167
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 168
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 726
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_c

    .line 727
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 728
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSession;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 731
    :cond_c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 732
    nop

    .line 733
    return-void

    .line 731
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 732
    throw v0
.end method

.method public whitelist getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V
    .registers 5
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    .line 176
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 177
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodSuppressingSpellChecker()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 178
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/textservice/SentenceSuggestionsInfo;

    invoke-virtual {p0, v1}, Landroid/view/textservice/SpellCheckerSession;->handleOnGetSentenceSuggestionsMultiple([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    .line 179
    return-void

    .line 181
    :cond_15
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v1, p1, p2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V

    .line 183
    return-void
.end method

.method public whitelist getSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method public greylist-max-o getSpellCheckerSessionListener()Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .registers 2

    .line 746
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    return-object v0
.end method

.method public whitelist getSuggestions(Landroid/view/textservice/TextInfo;I)V
    .registers 5
    .param p1, "textInfo"    # Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/textservice/TextInfo;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, v1}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    .line 194
    return-void
.end method

.method public whitelist getSuggestions([Landroid/view/textservice/TextInfo;IZ)V
    .registers 6
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 210
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodSuppressingSpellChecker()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 211
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/textservice/SuggestionsInfo;

    invoke-virtual {p0, v1}, Landroid/view/textservice/SpellCheckerSession;->handleOnGetSuggestionsMultiple([Landroid/view/textservice/SuggestionsInfo;)V

    .line 212
    return-void

    .line 214
    :cond_15
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V

    .line 216
    return-void
.end method

.method public greylist-max-o getTextServicesSessionListener()Lcom/android/internal/textservice/ITextServicesSessionListener;
    .registers 2

    .line 739
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

    return-object v0
.end method

.method greylist-max-o handleOnGetSentenceSuggestionsMultiple([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .registers 4
    .param p1, "suggestionsInfos"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 223
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda0;-><init>(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SentenceSuggestionsInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method greylist-max-o handleOnGetSuggestionsMultiple([Landroid/view/textservice/SuggestionsInfo;)V
    .registers 4
    .param p1, "suggestionsInfos"    # [Landroid/view/textservice/SuggestionsInfo;

    .line 219
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda1;-><init>(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SuggestionsInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method public whitelist isSessionDisconnected()Z
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->isDisconnected()Z

    move-result v0

    return v0
.end method
