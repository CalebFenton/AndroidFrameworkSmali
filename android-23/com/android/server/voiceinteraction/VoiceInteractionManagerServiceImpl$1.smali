.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "VoiceInteractionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@0
    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 73
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    #@3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 74
    const-string/jumbo v2, "reason"

    #@10
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 75
    .local v1, "reason":Ljava/lang/String;
    const-string/jumbo v2, "voiceinteraction"

    #@17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_0

    #@1d
    const-string/jumbo v2, "dream"

    #@20
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 72
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    #@27
    .line 76
    .restart local v1    # "reason":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@29
    iget-object v3, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mLock:Ljava/lang/Object;

    #@2b
    monitor-enter v3

    #@2c
    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@2e
    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@30
    if-eqz v2, :cond_2

    #@32
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@34
    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@36
    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    if-eqz v2, :cond_2

    #@3a
    .line 79
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3c
    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@3e
    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@40
    invoke-interface {v2}, Landroid/service/voice/IVoiceInteractionSession;->closeSystemDialogs()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    :cond_2
    :goto_1
    monitor-exit v3

    #@44
    goto :goto_0

    #@45
    .line 76
    :catchall_0
    move-exception v2

    #@46
    monitor-exit v3

    #@47
    throw v2

    #@48
    .line 80
    :catch_0
    move-exception v0

    #@49
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method
