.class public final Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;
.super Landroid/service/voice/VoiceInteractionSession$Request;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PickOptionRequest"
.end annotation


# instance fields
.field final mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

.field final mPrompt:Landroid/app/VoiceInteractor$Prompt;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p4, "session"    # Landroid/service/voice/VoiceInteractionSession;
    .param p5, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p6, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p7, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    move v2, p2

    #@3
    move-object v3, p3

    #@4
    move-object v4, p4

    #@5
    move-object v5, p7

    #@6
    .line 476
    invoke-direct/range {v0 .. v5}, Landroid/service/voice/VoiceInteractionSession$Request;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/os/Bundle;)V

    #@9
    .line 477
    iput-object p5, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    #@b
    .line 478
    iput-object p6, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@d
    .line 475
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 547
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 548
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    const-string/jumbo v3, "mPrompt="

    #@9
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 549
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    #@e
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@11
    .line 550
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 551
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    const-string/jumbo v3, "Options:"

    #@1b
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    .line 552
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@21
    array-length v3, v3

    #@22
    if-ge v0, v3, :cond_2

    #@24
    .line 553
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@26
    aget-object v2, v3, v0

    #@28
    .line 554
    .local v2, "op":Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    const-string/jumbo v3, "  #"

    #@2e
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@34
    const-string/jumbo v3, ":"

    #@37
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 555
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    const-string/jumbo v3, "    mLabel="

    #@40
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    .line 556
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getLabel()Ljava/lang/CharSequence;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4a
    .line 557
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    const-string/jumbo v3, "    mIndex="

    #@50
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53
    .line 558
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getIndex()I

    #@56
    move-result v3

    #@57
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    #@5a
    .line 559
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->countSynonyms()I

    #@5d
    move-result v3

    #@5e
    if-lez v3, :cond_0

    #@60
    .line 560
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    const-string/jumbo v3, "    Synonyms:"

    #@66
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@69
    .line 561
    const/4 v1, 0x0

    #@6a
    .local v1, "j":I
    :goto_1
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->countSynonyms()I

    #@6d
    move-result v3

    #@6e
    if-ge v1, v3, :cond_0

    #@70
    .line 562
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@73
    const-string/jumbo v3, "      #"

    #@76
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@79
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    #@7c
    .line 563
    const-string/jumbo v3, ": "

    #@7f
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@82
    invoke-virtual {v2, v1}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getSynonymAt(I)Ljava/lang/CharSequence;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@89
    .line 561
    add-int/lit8 v1, v1, 0x1

    #@8b
    goto :goto_1

    #@8c
    .line 566
    .end local v1    # "j":I
    :cond_0
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getExtras()Landroid/os/Bundle;

    #@8f
    move-result-object v3

    #@90
    if-eqz v3, :cond_1

    #@92
    .line 567
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@95
    const-string/jumbo v3, "    mExtras="

    #@98
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9b
    .line 568
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getExtras()Landroid/os/Bundle;

    #@9e
    move-result-object v3

    #@9f
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@a2
    .line 552
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@a4
    goto/16 :goto_0

    #@a6
    .line 546
    .end local v0    # "i":I
    .end local v2    # "op":Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    :cond_2
    return-void
.end method

.method public getOptions()[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 1

    #@0
    .prologue
    .line 505
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@2
    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 497
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Landroid/app/VoiceInteractor$Prompt;->getVoicePromptAt(I)Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    :cond_0
    return-object v0
.end method

.method public getVoicePrompt()Landroid/app/VoiceInteractor$Prompt;
    .locals 1

    #@0
    .prologue
    .line 487
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    #@2
    return-object v0
.end method

.method public sendIntermediatePickOptionResult([Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p2, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 531
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->sendPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    #@4
    .line 530
    return-void
.end method

.method sendPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "finished"    # Z
    .param p2, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 514
    if-eqz p1, :cond_0

    #@2
    .line 515
    :try_start_0
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->finishRequest()V

    #@5
    .line 517
    :cond_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    #@7
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@9
    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IVoiceInteractorCallback;->deliverPickOptionResult(Lcom/android/internal/app/IVoiceInteractorRequest;Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 509
    :goto_0
    return-void

    #@d
    .line 518
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendPickOptionResult([Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p2, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 543
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1, p2}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->sendPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    #@4
    .line 542
    return-void
.end method
