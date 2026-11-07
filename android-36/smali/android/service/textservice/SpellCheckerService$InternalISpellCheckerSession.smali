.class Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
.super Lcom/android/internal/textservice/ISpellCheckerSession$Stub;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalISpellCheckerSession"
.end annotation


# instance fields
.field private final greylist-max-o mBundle:Landroid/os/Bundle;

.field private greylist-max-o mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

.field private final greylist-max-o mLocale:Ljava/lang/String;

.field private final greylist-max-o mSession:Landroid/service/textservice/SpellCheckerService$Session;

.field private final blacklist mSupportedAttributes:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Landroid/service/textservice/SpellCheckerService$Session;I)V
    .registers 6
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "session"    # Landroid/service/textservice/SpellCheckerService$Session;
    .param p5, "supportedAttributes"    # I

    .line 258
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;-><init>()V

    .line 259
    iput-object p2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 260
    iput-object p4, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    .line 261
    iput-object p1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mLocale:Ljava/lang/String;

    .line 262
    iput-object p3, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mBundle:Landroid/os/Bundle;

    .line 263
    iput p5, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSupportedAttributes:I

    .line 264
    invoke-virtual {p4, p0}, Landroid/service/textservice/SpellCheckerService$Session;->setInternalISpellCheckerSession(Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;)V

    .line 265
    return-void
.end method


# virtual methods
.method public greylist-max-o getBundle()Landroid/os/Bundle;
    .registers 2

    .line 319
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist-max-o getLocale()Ljava/lang/String;
    .registers 2

    .line 315
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSupportedAttributes()I
    .registers 2

    .line 323
    iget v0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSupportedAttributes:I

    return v0
.end method

.method public greylist-max-o onCancel()V
    .registers 3

    .line 293
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 295
    .local v0, "pri":I
    const/16 v1, 0xa

    :try_start_a
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 296
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    invoke-virtual {v1}, Landroid/service/textservice/SpellCheckerService$Session;->onCancel()V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    .line 298
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 299
    nop

    .line 300
    return-void

    .line 298
    :catchall_17
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 299
    throw v1
.end method

.method public greylist-max-o onClose()V
    .registers 4

    .line 304
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 306
    .local v0, "pri":I
    const/16 v1, 0xa

    const/4 v2, 0x0

    :try_start_b
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 307
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    invoke-virtual {v1}, Landroid/service/textservice/SpellCheckerService$Session;->onClose()V
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_1a

    .line 309
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 310
    iput-object v2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 311
    nop

    .line 312
    return-void

    .line 309
    :catchall_1a
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 310
    iput-object v2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 311
    throw v1
.end method

.method public greylist-max-o onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .registers 5
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    .line 285
    :try_start_0
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    .line 286
    invoke-virtual {v1, p1, p2}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)[Landroid/view/textservice/SentenceSuggestionsInfo;

    move-result-object v1

    .line 285
    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 288
    goto :goto_d

    .line 287
    :catch_c
    move-exception v0

    .line 289
    :goto_d
    return-void
.end method

.method public greylist-max-o onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .registers 7
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z

    .line 270
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 272
    .local v0, "pri":I
    const/16 v1, 0xa

    :try_start_a
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 273
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    .line 274
    invoke-virtual {v2, p1, p2, p3}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;

    move-result-object v2

    .line 273
    invoke-interface {v1, v2}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_18} :catch_1e
    .catchall {:try_start_a .. :try_end_18} :catchall_19

    goto :goto_1f

    .line 278
    :catchall_19
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 279
    throw v1

    .line 276
    :catch_1e
    move-exception v1

    .line 278
    :goto_1f
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 279
    nop

    .line 280
    return-void
.end method
