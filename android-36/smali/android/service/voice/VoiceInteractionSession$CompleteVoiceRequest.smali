.class public final Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;
.super Landroid/service/voice/VoiceInteractionSession$Request;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompleteVoiceRequest"
.end annotation


# instance fields
.field final greylist-max-o mPrompt:Landroid/app/VoiceInteractor$Prompt;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p4, "session"    # Landroid/service/voice/VoiceInteractionSession;
    .param p5, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 728
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local p4    # "session":Landroid/service/voice/VoiceInteractionSession;
    .end local p6    # "extras":Landroid/os/Bundle;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    .local v4, "session":Landroid/service/voice/VoiceInteractionSession;
    .local v5, "extras":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v5}, Landroid/service/voice/VoiceInteractionSession$Request;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/os/Bundle;)V

    .line 729
    iput-object p5, v0, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 730
    return-void
.end method


# virtual methods
.method greylist-max-o dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 772
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 773
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPrompt="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 775
    return-void
.end method

.method public whitelist getMessage()Ljava/lang/CharSequence;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 751
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

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

    .line 739
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    return-object v0
.end method

.method public whitelist sendCompleteResult(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Bundle;

    .line 765
    :try_start_0
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;->finishRequest()V

    .line 766
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IVoiceInteractorCallback;->deliverCompleteVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 768
    goto :goto_c

    .line 767
    :catch_b
    move-exception v0

    .line 769
    :goto_c
    return-void
.end method
