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
.field final greylist-max-o mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

.field final greylist-max-o mPrompt:Landroid/app/VoiceInteractor$Prompt;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p4, "session"    # Landroid/service/voice/VoiceInteractionSession;
    .param p5, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p6, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p7, "extras"    # Landroid/os/Bundle;

    .line 618
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local p4    # "session":Landroid/service/voice/VoiceInteractionSession;
    .end local p7    # "extras":Landroid/os/Bundle;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    .local v4, "session":Landroid/service/voice/VoiceInteractionSession;
    .local v5, "extras":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v5}, Landroid/service/voice/VoiceInteractionSession$Request;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/os/Bundle;)V

    .line 619
    iput-object p5, v0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 620
    iput-object p6, v0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 621
    return-void
.end method


# virtual methods
.method greylist-max-o dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 690
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 691
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPrompt="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 693
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    if-eqz v0, :cond_9c

    .line 694
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Options:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    array-length v1, v1

    if-ge v0, v1, :cond_9c

    .line 696
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    aget-object v1, v1, v0

    .line 697
    .local v1, "op":Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    mLabel="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 700
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    mIndex="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getIndex()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 702
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->countSynonyms()I

    move-result v2

    if-lez v2, :cond_84

    .line 703
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Synonyms:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_64
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->countSynonyms()I

    move-result v3

    if-ge v2, v3, :cond_84

    .line 705
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "      #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 706
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getSynonymAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 704
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 709
    .end local v2    # "j":I
    :cond_84
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_99

    .line 710
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    mExtras="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 695
    .end local v1    # "op":Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    :cond_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 715
    .end local v0    # "i":I
    :cond_9c
    return-void
.end method

.method public whitelist getOptions()[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .registers 2

    .line 648
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    return-object v0
.end method

.method public whitelist getPrompt()Ljava/lang/CharSequence;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 640
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/VoiceInteractor$Prompt;->getVoicePromptAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public whitelist getVoicePrompt()Landroid/app/VoiceInteractor$Prompt;
    .registers 2

    .line 629
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    return-object v0
.end method

.method public whitelist sendIntermediatePickOptionResult([Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 674
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->sendPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 675
    return-void
.end method

.method greylist-max-o sendPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "finished"    # Z
    .param p2, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "result"    # Landroid/os/Bundle;

    .line 657
    if-eqz p1, :cond_5

    .line 658
    :try_start_2
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->finishRequest()V

    .line 660
    :cond_5
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IVoiceInteractorCallback;->deliverPickOptionResult(Lcom/android/internal/app/IVoiceInteractorRequest;Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    .line 662
    goto :goto_e

    .line 661
    :catch_d
    move-exception v0

    .line 663
    :goto_e
    return-void
.end method

.method public whitelist sendPickOptionResult([Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 686
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->sendPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 687
    return-void
.end method
