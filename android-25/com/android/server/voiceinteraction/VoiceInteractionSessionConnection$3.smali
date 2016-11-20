.class Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "VoiceInteractionSessionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@0
    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@2
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@2
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@7
    iget-boolean v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 152
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@d
    const/4 v2, 0x1

    #@e
    iput-boolean v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@10
    .line 153
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@12
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    #@14
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;

    #@16
    invoke-direct {v2, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;-><init>(Landroid/os/Bundle;)V

    #@19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 154
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@1e
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :cond_0
    monitor-exit v1

    #@22
    .line 149
    return-void

    #@23
    .line 150
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0
.end method
