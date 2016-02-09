.class final Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;
.super Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiDeviceEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputHardwareManager;

    #@0
    .prologue
    .line 1119
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@2
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputHardwareManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    #@3
    return-void
.end method

.method private findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3
    .param p1, "id"    # I

    #@0
    .prologue
    .line 1171
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@2
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-get6(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@16
    .line 1172
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    #@19
    move-result v2

    #@1a
    if-ne v2, p1, :cond_0

    #@1c
    .line 1173
    return-object v0

    #@1d
    .line 1176
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_1
    const/4 v2, 0x0

    #@1e
    return-object v2
.end method


# virtual methods
.method public onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .locals 8
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p2, "status"    # I

    #@0
    .prologue
    .line 1122
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isSourceType()Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    return-void

    #@7
    .line 1123
    :cond_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@9
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get10(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    #@c
    move-result-object v5

    #@d
    monitor-enter v5

    #@e
    .line 1124
    const/4 v0, 0x0

    #@f
    .line 1125
    .local v0, "messageType":I
    const/4 v2, 0x0

    #@10
    .line 1126
    .local v2, "obj":Ljava/lang/Object;
    packed-switch p2, :pswitch_data_0

    #@13
    .line 1161
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@15
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get4(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;

    #@18
    move-result-object v4

    #@19
    const/4 v6, 0x0

    #@1a
    const/4 v7, 0x0

    #@1b
    invoke-virtual {v4, v0, v6, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1e
    move-result-object v1

    #@1f
    .line 1162
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@21
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    #@24
    move-result v6

    #@25
    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap0(Lcom/android/server/tv/TvInputHardwareManager;I)Landroid/media/tv/TvInputHardwareInfo;

    #@28
    move-result-object v4

    #@29
    if-eqz v4, :cond_4

    #@2b
    .line 1163
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :goto_1
    monitor-exit v5

    #@2f
    .line 1121
    return-void

    #@30
    .line 1128
    .end local v1    # "msg":Landroid/os/Message;
    .restart local v2    # "obj":Ljava/lang/Object;
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    #@33
    move-result v4

    #@34
    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@37
    move-result-object v4

    #@38
    if-nez v4, :cond_1

    #@3a
    .line 1129
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@3c
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get6(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    #@3f
    move-result-object v4

    #@40
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    .line 1134
    const/4 v0, 0x4

    #@44
    .line 1135
    move-object v2, p1

    #@45
    .line 1136
    goto :goto_0

    #@46
    .line 1131
    :cond_1
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-get0()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    new-instance v6, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v7, "The list already contains "

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v6

    #@5a
    const-string/jumbo v7, "; ignoring."

    #@5d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    monitor-exit v5

    #@69
    .line 1132
    return-void

    #@6a
    .line 1139
    :pswitch_1
    :try_start_2
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    #@6d
    move-result v4

    #@6e
    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@71
    move-result-object v3

    #@72
    .line 1140
    .local v3, "originalDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@74
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get6(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    #@77
    move-result-object v4

    #@78
    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@7b
    move-result v4

    #@7c
    if-nez v4, :cond_2

    #@7e
    .line 1141
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-get0()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    new-instance v6, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v7, "The list doesn\'t contain "

    #@8a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v6

    #@8e
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v6

    #@92
    const-string/jumbo v7, "; ignoring."

    #@95
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v6

    #@99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v6

    #@9d
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a0
    monitor-exit v5

    #@a1
    .line 1142
    return-void

    #@a2
    .line 1144
    :cond_2
    const/4 v0, 0x5

    #@a3
    .line 1145
    move-object v2, p1

    #@a4
    .line 1146
    goto/16 :goto_0

    #@a6
    .line 1149
    .end local v3    # "originalDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_2
    :try_start_3
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    #@a9
    move-result v4

    #@aa
    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@ad
    move-result-object v3

    #@ae
    .line 1150
    .restart local v3    # "originalDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@b0
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get6(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    #@b3
    move-result-object v4

    #@b4
    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@b7
    move-result v4

    #@b8
    if-nez v4, :cond_3

    #@ba
    .line 1151
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-get0()Ljava/lang/String;

    #@bd
    move-result-object v4

    #@be
    new-instance v6, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v7, "The list doesn\'t contain "

    #@c6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v6

    #@ca
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v6

    #@ce
    const-string/jumbo v7, "; ignoring."

    #@d1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v6

    #@d5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v6

    #@d9
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@dc
    monitor-exit v5

    #@dd
    .line 1152
    return-void

    #@de
    .line 1154
    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@e0
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get6(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    #@e3
    move-result-object v4

    #@e4
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e7
    .line 1155
    const/4 v0, 0x6

    #@e8
    .line 1156
    move-object v2, p1

    #@e9
    .line 1157
    goto/16 :goto_0

    #@eb
    .line 1165
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "originalDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_4
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@ed
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get11(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    #@f0
    move-result-object v4

    #@f1
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@f4
    goto/16 :goto_1

    #@f6
    .line 1123
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v4

    #@f7
    monitor-exit v5

    #@f8
    throw v4

    #@f9
    .line 1126
    nop

    #@fa
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
