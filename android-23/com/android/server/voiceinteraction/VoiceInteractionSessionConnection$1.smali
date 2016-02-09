.class Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;
.super Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;
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
    .line 91
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@2
    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@2
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@7
    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->-wrap0(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 93
    return-void

    #@c
    .line 94
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public onShown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@2
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@7
    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->-wrap1(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 100
    return-void

    #@c
    .line 101
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method
