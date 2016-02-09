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
    .line 122
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
    .line 125
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@2
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@7
    iget-boolean v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 127
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@d
    const/4 v2, 0x1

    #@e
    iput-boolean v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@10
    .line 128
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@12
    iput-object p2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Landroid/os/Bundle;

    #@14
    .line 129
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@16
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 124
    return-void

    #@1b
    .line 125
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method
