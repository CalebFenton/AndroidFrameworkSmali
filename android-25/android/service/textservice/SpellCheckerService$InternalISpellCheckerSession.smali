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
.field private final mBundle:Landroid/os/Bundle;

.field private mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

.field private final mLocale:Ljava/lang/String;

.field private final mSession:Landroid/service/textservice/SpellCheckerService$Session;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Landroid/service/textservice/SpellCheckerService$Session;)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "session"    # Landroid/service/textservice/SpellCheckerService$Session;

    #@0
    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;-><init>()V

    #@3
    .line 244
    iput-object p2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@5
    .line 245
    iput-object p4, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    #@7
    .line 246
    iput-object p1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mLocale:Ljava/lang/String;

    #@9
    .line 247
    iput-object p3, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mBundle:Landroid/os/Bundle;

    #@b
    .line 248
    invoke-virtual {p4, p0}, Landroid/service/textservice/SpellCheckerService$Session;->setInternalISpellCheckerSession(Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;)V

    #@e
    .line 243
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mBundle:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mLocale:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public onCancel()V
    .locals 2

    #@0
    .prologue
    .line 277
    invoke-static {}, Landroid/os/Process;->myTid()I

    #@3
    move-result v1

    #@4
    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    #@7
    move-result v0

    #@8
    .line 279
    .local v0, "pri":I
    const/16 v1, 0xa

    #@a
    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    #@d
    .line 280
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    #@f
    invoke-virtual {v1}, Landroid/service/textservice/SpellCheckerService$Session;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 282
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    #@15
    .line 276
    return-void

    #@16
    .line 281
    :catchall_0
    move-exception v1

    #@17
    .line 282
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    #@1a
    .line 281
    throw v1
.end method

.method public onClose()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 288
    invoke-static {}, Landroid/os/Process;->myTid()I

    #@4
    move-result v1

    #@5
    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    #@8
    move-result v0

    #@9
    .line 290
    .local v0, "pri":I
    const/16 v1, 0xa

    #@b
    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    #@e
    .line 291
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    #@10
    invoke-virtual {v1}, Landroid/service/textservice/SpellCheckerService$Session;->onClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 293
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    #@16
    .line 294
    iput-object v2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@18
    .line 287
    return-void

    #@19
    .line 292
    :catchall_0
    move-exception v1

    #@1a
    .line 293
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    #@1d
    .line 294
    iput-object v2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@1f
    .line 292
    throw v1
.end method

.method public onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .locals 3
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    #@0
    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@2
    .line 270
    iget-object v2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    #@4
    invoke-virtual {v2, p1, p2}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)[Landroid/view/textservice/SentenceSuggestionsInfo;

    #@7
    move-result-object v2

    #@8
    .line 269
    invoke-interface {v1, v2}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 267
    :goto_0
    return-void

    #@c
    .line 271
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .locals 4
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z

    #@0
    .prologue
    .line 254
    invoke-static {}, Landroid/os/Process;->myTid()I

    #@3
    move-result v2

    #@4
    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    #@7
    move-result v1

    #@8
    .line 256
    .local v1, "pri":I
    const/16 v2, 0xa

    #@a
    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    #@d
    .line 257
    iget-object v2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@f
    .line 258
    iget-object v3, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    #@11
    invoke-virtual {v3, p1, p2, p3}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;

    #@14
    move-result-object v3

    #@15
    .line 257
    invoke-interface {v2, v3}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 262
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    #@1b
    .line 253
    :goto_0
    return-void

    #@1c
    .line 260
    :catch_0
    move-exception v0

    #@1d
    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    #@20
    goto :goto_0

    #@21
    .line 261
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@22
    .line 262
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    #@25
    .line 261
    throw v2
.end method
