.class public final Landroid/service/voice/VoiceInteractionSession$CommandRequest;
.super Landroid/service/voice/VoiceInteractionSession$Request;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandRequest"
.end annotation


# instance fields
.field final greylist-max-o mCommand:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p4, "session"    # Landroid/service/voice/VoiceInteractionSession;
    .param p5, "command"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 844
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

    .line 845
    iput-object p5, v0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->mCommand:Ljava/lang/String;

    .line 846
    return-void
.end method


# virtual methods
.method greylist-max-o dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 889
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 890
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCommand="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->mCommand:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    return-void
.end method

.method public whitelist getCommand()Ljava/lang/String;
    .registers 2

    .line 853
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o sendCommandResult(ZLandroid/os/Bundle;)V
    .registers 5
    .param p1, "finished"    # Z
    .param p2, "result"    # Landroid/os/Bundle;

    .line 860
    if-eqz p1, :cond_5

    .line 861
    :try_start_2
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->finishRequest()V

    .line 863
    :cond_5
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/app/IVoiceInteractorCallback;->deliverCommandResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    .line 865
    goto :goto_e

    .line 864
    :catch_d
    move-exception v0

    .line 866
    :goto_e
    return-void
.end method

.method public whitelist sendIntermediateResult(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Bundle;

    .line 875
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->sendCommandResult(ZLandroid/os/Bundle;)V

    .line 876
    return-void
.end method

.method public whitelist sendResult(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Bundle;

    .line 885
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->sendCommandResult(ZLandroid/os/Bundle;)V

    .line 886
    return-void
.end method
