.class Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;
.super Landroid/os/Handler;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerHandler"
.end annotation


# static fields
.field private static final HARDWARE_DEVICE_ADDED:I = 0x2

.field private static final HARDWARE_DEVICE_REMOVED:I = 0x3

.field private static final HDMI_DEVICE_ADDED:I = 0x4

.field private static final HDMI_DEVICE_REMOVED:I = 0x5

.field private static final HDMI_DEVICE_UPDATED:I = 0x6

.field private static final STATE_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputHardwareManager;

    #@0
    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputHardwareManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1048
    iget v4, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v4, :pswitch_data_0

    #@5
    .line 1090
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-get0()Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    new-instance v5, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v6, "Unhandled message: "

    #@11
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1047
    :goto_0
    return-void

    #@21
    .line 1050
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23
    check-cast v2, Ljava/lang/String;

    #@25
    .line 1051
    .local v2, "inputId":Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@27
    .line 1052
    .local v3, "state":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@29
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get9(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    #@2c
    move-result-object v4

    #@2d
    invoke-interface {v4, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onStateChanged(Ljava/lang/String;I)V

    #@30
    goto :goto_0

    #@31
    .line 1056
    .end local v2    # "inputId":Ljava/lang/String;
    .end local v3    # "state":I
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33
    check-cast v1, Landroid/media/tv/TvInputHardwareInfo;

    #@35
    .line 1057
    .local v1, "info":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@37
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get9(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    #@3a
    move-result-object v4

    #@3b
    invoke-interface {v4, v1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V

    #@3e
    goto :goto_0

    #@3f
    .line 1061
    .end local v1    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@41
    check-cast v1, Landroid/media/tv/TvInputHardwareInfo;

    #@43
    .line 1062
    .restart local v1    # "info":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@45
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get9(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    #@48
    move-result-object v4

    #@49
    invoke-interface {v4, v1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V

    #@4c
    goto :goto_0

    #@4d
    .line 1066
    .end local v1    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4f
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@51
    .line 1067
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@53
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get9(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    #@56
    move-result-object v4

    #@57
    invoke-interface {v4, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@5a
    goto :goto_0

    #@5b
    .line 1071
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5d
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@5f
    .line 1072
    .restart local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@61
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get9(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    #@64
    move-result-object v4

    #@65
    invoke-interface {v4, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@68
    goto :goto_0

    #@69
    .line 1076
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6b
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@6d
    .line 1078
    .restart local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@6f
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get10(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    #@72
    move-result-object v5

    #@73
    monitor-enter v5

    #@74
    .line 1079
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@76
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get7(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    #@79
    move-result-object v4

    #@7a
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    #@7d
    move-result v6

    #@7e
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@81
    move-result-object v2

    #@82
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@84
    .restart local v2    # "inputId":Ljava/lang/String;
    monitor-exit v5

    #@85
    .line 1081
    if-eqz v2, :cond_0

    #@87
    .line 1082
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@89
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get9(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    #@8c
    move-result-object v4

    #@8d
    invoke-interface {v4, v2, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceUpdated(Ljava/lang/String;Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@90
    goto :goto_0

    #@91
    .line 1078
    .end local v2    # "inputId":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@92
    monitor-exit v5

    #@93
    throw v4

    #@94
    .line 1084
    .restart local v2    # "inputId":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-get0()Ljava/lang/String;

    #@97
    move-result-object v4

    #@98
    const-string/jumbo v5, "Could not resolve input ID matching the device info; ignoring."

    #@9b
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    goto :goto_0

    #@9f
    .line 1048
    nop

    #@a0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
