.class Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;
.super Landroid/os/Handler;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/AlwaysOnHotwordDetector;


# direct methods
.method constructor <init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/voice/AlwaysOnHotwordDetector;

    #@0
    .prologue
    .line 650
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 653
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@2
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get4(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 654
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@9
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get0(Landroid/service/voice/AlwaysOnHotwordDetector;)I

    #@c
    move-result v0

    #@d
    const/4 v2, -0x3

    #@e
    if-ne v0, v2, :cond_0

    #@10
    .line 655
    const-string/jumbo v0, "AlwaysOnHotwordDetector"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Received message: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    iget v3, p1, Landroid/os/Message;->what:I

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, " for an invalid detector"

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    monitor-exit v1

    #@34
    .line 656
    return-void

    #@35
    :cond_0
    monitor-exit v1

    #@36
    .line 660
    iget v0, p1, Landroid/os/Message;->what:I

    #@38
    packed-switch v0, :pswitch_data_0

    #@3b
    .line 677
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@3e
    .line 652
    :goto_0
    return-void

    #@3f
    .line 653
    :catchall_0
    move-exception v0

    #@40
    monitor-exit v1

    #@41
    throw v0

    #@42
    .line 662
    :pswitch_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@44
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get1(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    #@47
    move-result-object v0

    #@48
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@4a
    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onAvailabilityChanged(I)V

    #@4d
    goto :goto_0

    #@4e
    .line 665
    :pswitch_1
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@50
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get1(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    #@53
    move-result-object v1

    #@54
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@56
    check-cast v0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    #@58
    invoke-virtual {v1, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onDetected(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;)V

    #@5b
    goto :goto_0

    #@5c
    .line 668
    :pswitch_2
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@5e
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get1(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onError()V

    #@65
    goto :goto_0

    #@66
    .line 671
    :pswitch_3
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@68
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get1(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onRecognitionPaused()V

    #@6f
    goto :goto_0

    #@70
    .line 674
    :pswitch_4
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@72
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get1(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onRecognitionResumed()V

    #@79
    goto :goto_0

    #@7a
    .line 660
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
