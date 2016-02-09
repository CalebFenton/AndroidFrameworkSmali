.class Lcom/android/server/audio/MediaFocusControl$3;
.super Ljava/lang/Thread;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;

.field final synthetic val$pcb2:Landroid/media/audiopolicy/IAudioPolicyCallback;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p2, "val$pcb2"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@0
    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    #@2
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl$3;->val$pcb2:Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@4
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 689
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-get1()Ljava/lang/Object;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    #@7
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get4(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    monitor-exit v2

    #@12
    .line 691
    return-void

    #@13
    .line 694
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$3;->val$pcb2:Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@15
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    #@17
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get4(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    #@21
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    #@24
    move-result-object v1

    #@25
    .line 696
    const/4 v4, 0x1

    #@26
    .line 694
    invoke-interface {v3, v1, v4}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    :goto_0
    monitor-exit v2

    #@2a
    .line 688
    return-void

    #@2b
    .line 697
    :catch_0
    move-exception v0

    #@2c
    .line 698
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "MediaFocusControl"

    #@2f
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    .line 699
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl$3;->val$pcb2:Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@3d
    invoke-interface {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@40
    move-result-object v4

    #@41
    .line 698
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    goto :goto_0

    #@4d
    .line 689
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@4e
    monitor-exit v2

    #@4f
    throw v1
.end method
