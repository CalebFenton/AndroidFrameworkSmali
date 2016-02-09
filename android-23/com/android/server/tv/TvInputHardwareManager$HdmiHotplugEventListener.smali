.class final Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;
.super Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiHotplugEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputHardwareManager;

    #@0
    .prologue
    .line 1099
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@2
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputHardwareManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    #@0
    .prologue
    .line 1102
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@2
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-get10(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 1103
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@9
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-get8(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseBooleanArray;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->getPort()I

    #@10
    move-result v4

    #@11
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->isConnected()Z

    #@14
    move-result v5

    #@15
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@18
    .line 1105
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@1a
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->getPort()I

    #@1d
    move-result v4

    #@1e
    invoke-static {v2, v4}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap0(Lcom/android/server/tv/TvInputHardwareManager;I)Landroid/media/tv/TvInputHardwareInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v0

    #@22
    .line 1106
    .local v0, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    if-nez v0, :cond_0

    #@24
    monitor-exit v3

    #@25
    .line 1107
    return-void

    #@26
    .line 1109
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@28
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-get5(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    #@2f
    move-result v4

    #@30
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    .line 1110
    .local v1, "inputId":Ljava/lang/String;
    if-nez v1, :cond_1

    #@38
    monitor-exit v3

    #@39
    .line 1111
    return-void

    #@3a
    .line 1113
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@3c
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-get4(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;

    #@3f
    move-result-object v2

    #@40
    .line 1114
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@42
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->isConnected()Z

    #@45
    move-result v5

    #@46
    invoke-static {v4, v5}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap3(Lcom/android/server/tv/TvInputHardwareManager;Z)I

    #@49
    move-result v4

    #@4a
    .line 1113
    const/4 v5, 0x1

    #@4b
    .line 1114
    const/4 v6, 0x0

    #@4c
    .line 1113
    invoke-virtual {v2, v5, v4, v6, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    monitor-exit v3

    #@54
    .line 1101
    return-void

    #@55
    .line 1102
    .end local v0    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v1    # "inputId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@56
    monitor-exit v3

    #@57
    throw v2
.end method
