.class Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    #@0
    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    #@2
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 546
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    #@3
    invoke-static {v1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->-get0(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    .line 547
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    #@a
    if-eqz p1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    invoke-static {v2, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->-wrap0(Lcom/android/server/voiceinteraction/SoundTriggerHelper;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 544
    return-void

    #@12
    .line 546
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
