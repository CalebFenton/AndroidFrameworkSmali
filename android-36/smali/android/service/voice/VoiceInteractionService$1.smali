.class Landroid/service/voice/VoiceInteractionService$1;
.super Landroid/service/voice/IVoiceInteractionService$Stub;
.source "VoiceInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method public static synthetic blacklist $r8$lambda$EUc-jYC921EESXHTTBb9-ikSKOA(Landroid/service/voice/VoiceInteractionService;Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/voice/VoiceInteractionService;->-$$Nest$monHandleVoiceActionCheck(Landroid/service/voice/VoiceInteractionService;Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$So42Q3skmwUhyCwmcgefb7zV10Y(Landroid/service/voice/VoiceInteractionService;)V
    .registers 1

    invoke-static {p0}, Landroid/service/voice/VoiceInteractionService;->-$$Nest$monSoundModelsChangedInternal(Landroid/service/voice/VoiceInteractionService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wfImATncamP2VQNcSOIvVvfph5M(Landroid/service/voice/VoiceInteractionService;)V
    .registers 1

    invoke-static {p0}, Landroid/service/voice/VoiceInteractionService;->-$$Nest$monShutdownInternal(Landroid/service/voice/VoiceInteractionService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zOL9PS2nlmh7wqJiY6u6AY0SwhU(Landroid/service/voice/VoiceInteractionService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/voice/VoiceInteractionService;->-$$Nest$monDetectorRemoteException(Landroid/service/voice/VoiceInteractionService;Landroid/os/IBinder;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/voice/VoiceInteractionService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/voice/VoiceInteractionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-direct {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist detectorRemoteExceptionOccurred(Landroid/os/IBinder;I)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "detectorType"    # I

    .line 191
    sget-object v0, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    const-string v1, "detectorRemoteExceptionOccurred"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 192
    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 195
    return-void
.end method

.method public blacklist getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 6
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceActionCheckCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/IVoiceActionCheckCallback;",
            ")V"
        }
    .end annotation

    .line 168
    .local p1, "voiceActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    .line 169
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 173
    return-void
.end method

.method public blacklist launchVoiceAssistFromKeyguard()V
    .registers 4

    .line 160
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 163
    return-void
.end method

.method public blacklist prepareToShowSession(Landroid/os/Bundle;I)V
    .registers 7
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I

    .line 177
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    .line 179
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 177
    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 180
    return-void
.end method

.method public blacklist ready()V
    .registers 4

    .line 141
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 143
    return-void
.end method

.method public blacklist showSessionFailed(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "args"    # Landroid/os/Bundle;

    .line 184
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 187
    return-void
.end method

.method public blacklist shutdown()V
    .registers 4

    .line 147
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 149
    return-void
.end method

.method public blacklist soundModelsChanged()V
    .registers 4

    .line 153
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda7;-><init>()V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 156
    return-void
.end method
