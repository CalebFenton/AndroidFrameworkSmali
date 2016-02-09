.class public Landroid/view/textservice/SpellCheckerSession;
.super Ljava/lang/Object;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;,
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;,
        Landroid/view/textservice/SpellCheckerSession$InternalListener;,
        Landroid/view/textservice/SpellCheckerSession$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_ON_GET_SUGGESTION_MULTIPLE:I = 0x1

.field private static final MSG_ON_GET_SUGGESTION_MULTIPLE_FOR_SENTENCE:I = 0x2

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.view.textservice.scs"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

.field private mIsUsed:Z

.field private final mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

.field private final mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

.field private final mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

.field private final mSubtype:Landroid/view/textservice/SpellCheckerSubtype;

.field private final mTextServicesManager:Lcom/android/internal/textservice/ITextServicesManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 0
    .param p1, "suggestionInfos"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/textservice/SpellCheckerSession;->handleOnGetSentenceSuggestionsMultiple([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SuggestionsInfo;)V
    .locals 0
    .param p1, "suggestionInfos"    # [Landroid/view/textservice/SuggestionsInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/textservice/SpellCheckerSession;->handleOnGetSuggestionsMultiple([Landroid/view/textservice/SuggestionsInfo;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 84
    const-class v0, Landroid/view/textservice/SpellCheckerSession;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;

    #@8
    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/internal/textservice/ITextServicesManager;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Landroid/view/textservice/SpellCheckerSubtype;)V
    .locals 2
    .param p1, "info"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "tsm"    # Lcom/android/internal/textservice/ITextServicesManager;
    .param p3, "listener"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;
    .param p4, "subtype"    # Landroid/view/textservice/SpellCheckerSubtype;

    #@0
    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 105
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$1;

    #@5
    invoke-direct {v0, p0}, Landroid/view/textservice/SpellCheckerSession$1;-><init>(Landroid/view/textservice/SpellCheckerSession;)V

    #@8
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mHandler:Landroid/os/Handler;

    #@a
    .line 126
    if-eqz p1, :cond_0

    #@c
    if-nez p3, :cond_1

    #@e
    .line 127
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@10
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@13
    throw v0

    #@14
    .line 126
    :cond_1
    if-eqz p2, :cond_0

    #@16
    .line 129
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    #@18
    .line 130
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    #@1a
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mHandler:Landroid/os/Handler;

    #@1c
    invoke-direct {v0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;-><init>(Landroid/os/Handler;)V

    #@1f
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    #@21
    .line 131
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$InternalListener;

    #@23
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    #@25
    invoke-direct {v0, v1}, Landroid/view/textservice/SpellCheckerSession$InternalListener;-><init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;)V

    #@28
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

    #@2a
    .line 132
    iput-object p2, p0, Landroid/view/textservice/SpellCheckerSession;->mTextServicesManager:Lcom/android/internal/textservice/ITextServicesManager;

    #@2c
    .line 133
    const/4 v0, 0x1

    #@2d
    iput-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession;->mIsUsed:Z

    #@2f
    .line 134
    iput-object p3, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    #@31
    .line 135
    iput-object p4, p0, Landroid/view/textservice/SpellCheckerSession;->mSubtype:Landroid/view/textservice/SpellCheckerSubtype;

    #@33
    .line 125
    return-void
.end method

.method private handleOnGetSentenceSuggestionsMultiple([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 1
    .param p1, "suggestionInfos"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    #@2
    invoke-interface {v0, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;->onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    #@5
    .line 217
    return-void
.end method

.method private handleOnGetSuggestionsMultiple([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 1
    .param p1, "suggestionInfos"    # [Landroid/view/textservice/SuggestionsInfo;

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    #@2
    invoke-interface {v0, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;->onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V

    #@5
    .line 213
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    #@2
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->cancel()V

    #@5
    .line 157
    return-void
.end method

.method public close()V
    .locals 3

    #@0
    .prologue
    .line 166
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Landroid/view/textservice/SpellCheckerSession;->mIsUsed:Z

    #@3
    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    #@5
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->close()V

    #@8
    .line 169
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mTextServicesManager:Lcom/android/internal/textservice/ITextServicesManager;

    #@a
    iget-object v2, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    #@c
    invoke-interface {v1, v2}, Lcom/android/internal/textservice/ITextServicesManager;->finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 165
    :goto_0
    return-void

    #@10
    .line 170
    :catch_0
    move-exception v0

    #@11
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 547
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@3
    .line 548
    iget-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession;->mIsUsed:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 549
    sget-object v0, Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v1, "SpellCheckerSession was not finished properly.You should call finishShession() when you finished to use a spell checker."

    #@c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 551
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    #@12
    .line 546
    :cond_0
    return-void
.end method

.method public getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V
    .locals 1
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V

    #@5
    .line 180
    return-void
.end method

.method public getSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    #@2
    return-object v0
.end method

.method public getSpellCheckerSessionListener()Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .locals 1

    #@0
    .prologue
    .line 566
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    #@2
    return-object v0
.end method

.method public getSuggestions(Landroid/view/textservice/TextInfo;I)V
    .locals 2
    .param p1, "textInfo"    # Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 193
    const/4 v0, 0x1

    #@2
    new-array v0, v0, [Landroid/view/textservice/TextInfo;

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-virtual {p0, v0, p2, v1}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    #@9
    .line 192
    return-void
.end method

.method public getSuggestions([Landroid/view/textservice/TextInfo;IZ)V
    .locals 1
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V

    #@5
    .line 205
    return-void
.end method

.method public getTextServicesSessionListener()Lcom/android/internal/textservice/ITextServicesSessionListener;
    .locals 1

    #@0
    .prologue
    .line 559
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

    #@2
    return-object v0
.end method

.method public isSessionDisconnected()Z
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    #@2
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->isDisconnected()Z

    #@5
    move-result v0

    #@6
    return v0
.end method
