.class final Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputServiceConnection"
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 2148
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2149
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    #@7
    .line 2150
    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    #@9
    .line 2148
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$InputServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    #@3
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 17
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2158
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@4
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@7
    move-result-object v13

    #@8
    monitor-enter v13

    #@9
    .line 2159
    :try_start_0
    move-object/from16 v0, p0

    #@b
    iget-object v12, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@d
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    #@10
    move-result-object v12

    #@11
    move-object/from16 v0, p0

    #@13
    iget v14, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    #@15
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v11

    #@19
    check-cast v11, Lcom/android/server/tv/TvInputManagerService$UserState;

    #@1b
    .line 2160
    .local v11, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v11, :cond_0

    #@1d
    .line 2162
    move-object/from16 v0, p0

    #@1f
    iget-object v12, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@21
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@24
    move-result-object v12

    #@25
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v12, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v13

    #@2b
    .line 2163
    return-void

    #@2c
    .line 2165
    :cond_0
    :try_start_1
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@2f
    move-result-object v12

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v14, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    #@34
    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v8

    #@38
    check-cast v8, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@3a
    .line 2166
    .local v8, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static/range {p2 .. p2}, Landroid/media/tv/ITvInputService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputService;

    #@3d
    move-result-object v12

    #@3e
    invoke-static {v8, v12}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set3(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)Landroid/media/tv/ITvInputService;

    #@41
    .line 2169
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@44
    move-result v12

    #@45
    if-eqz v12, :cond_1

    #@47
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get1(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@4a
    move-result-object v12

    #@4b
    if-nez v12, :cond_1

    #@4d
    .line 2170
    new-instance v12, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@4f
    move-object/from16 v0, p0

    #@51
    iget-object v14, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@53
    move-object/from16 v0, p0

    #@55
    iget-object v15, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    #@57
    move-object/from16 v0, p0

    #@59
    iget v0, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    #@5b
    move/from16 v16, v0

    #@5d
    move/from16 v0, v16

    #@5f
    invoke-direct {v12, v14, v15, v0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    #@62
    invoke-static {v8, v12}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set1(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@65
    .line 2172
    :try_start_2
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@68
    move-result-object v12

    #@69
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get1(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@6c
    move-result-object v14

    #@6d
    invoke-interface {v12, v14}, Landroid/media/tv/ITvInputService;->registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@70
    .line 2179
    :cond_1
    :goto_0
    :try_start_3
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@73
    move-result-object v12

    #@74
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@77
    move-result-object v10

    #@78
    .local v10, "sessionToken$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@7b
    move-result v12

    #@7c
    if-eqz v12, :cond_2

    #@7e
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@81
    move-result-object v9

    #@82
    check-cast v9, Landroid/os/IBinder;

    #@84
    .line 2180
    .local v9, "sessionToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@86
    iget-object v12, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@88
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@8b
    move-result-object v14

    #@8c
    move-object/from16 v0, p0

    #@8e
    iget v15, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    #@90
    invoke-static {v12, v14, v9, v15}, Lcom/android/server/tv/TvInputManagerService;->-wrap12(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@93
    goto :goto_1

    #@94
    .line 2158
    .end local v8    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v9    # "sessionToken":Landroid/os/IBinder;
    .end local v10    # "sessionToken$iterator":Ljava/util/Iterator;
    .end local v11    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v12

    #@95
    monitor-exit v13

    #@96
    throw v12

    #@97
    .line 2173
    .restart local v8    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .restart local v11    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catch_0
    move-exception v3

    #@98
    .line 2174
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v12, "TvInputManagerService"

    #@9b
    const-string/jumbo v14, "error in registerCallback"

    #@9e
    invoke-static {v12, v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a1
    goto :goto_0

    #@a2
    .line 2183
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v10    # "sessionToken$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@a5
    move-result-object v12

    #@a6
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@a9
    move-result-object v12

    #@aa
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ad
    move-result-object v7

    #@ae
    .local v7, "inputState$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@b1
    move-result v12

    #@b2
    if-eqz v12, :cond_4

    #@b4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b7
    move-result-object v6

    #@b8
    check-cast v6, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    #@ba
    .line 2184
    .local v6, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    #@bd
    move-result-object v12

    #@be
    invoke-virtual {v12}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@c1
    move-result-object v12

    #@c2
    move-object/from16 v0, p1

    #@c4
    invoke-virtual {v12, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@c7
    move-result v12

    #@c8
    if-eqz v12, :cond_3

    #@ca
    .line 2185
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get1(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    #@cd
    move-result v12

    #@ce
    if-eqz v12, :cond_3

    #@d0
    .line 2186
    move-object/from16 v0, p0

    #@d2
    iget-object v12, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@d4
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    #@d7
    move-result-object v14

    #@d8
    invoke-virtual {v14}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@db
    move-result-object v14

    #@dc
    .line 2187
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get1(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    #@df
    move-result v15

    #@e0
    const/16 v16, 0x0

    #@e2
    .line 2186
    move-object/from16 v0, v16

    #@e4
    invoke-static {v12, v11, v14, v15, v0}, Lcom/android/server/tv/TvInputManagerService;->-wrap13(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    #@e7
    goto :goto_2

    #@e8
    .line 2191
    .end local v6    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :cond_4
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@eb
    move-result v12

    #@ec
    if-eqz v12, :cond_6

    #@ee
    .line 2192
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get4(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@f1
    move-result-object v12

    #@f2
    invoke-interface {v12}, Ljava/util/List;->clear()V

    #@f5
    .line 2193
    move-object/from16 v0, p0

    #@f7
    iget-object v12, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@f9
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    #@fc
    move-result-object v12

    #@fd
    invoke-virtual {v12}, Lcom/android/server/tv/TvInputHardwareManager;->getHardwareList()Ljava/util/List;

    #@100
    move-result-object v12

    #@101
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@104
    move-result-object v5

    #@105
    .local v5, "hardware$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@108
    move-result v12

    #@109
    if-eqz v12, :cond_5

    #@10b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10e
    move-result-object v4

    #@10f
    check-cast v4, Landroid/media/tv/TvInputHardwareInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@111
    .line 2195
    .local v4, "hardware":Landroid/media/tv/TvInputHardwareInfo;
    :try_start_5
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@114
    move-result-object v12

    #@115
    invoke-interface {v12, v4}, Landroid/media/tv/ITvInputService;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@118
    goto :goto_3

    #@119
    .line 2196
    :catch_1
    move-exception v3

    #@11a
    .line 2197
    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v12, "TvInputManagerService"

    #@11d
    const-string/jumbo v14, "error in notifyHardwareAdded"

    #@120
    invoke-static {v12, v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@123
    goto :goto_3

    #@124
    .line 2200
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "hardware":Landroid/media/tv/TvInputHardwareInfo;
    :cond_5
    move-object/from16 v0, p0

    #@126
    iget-object v12, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@128
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    #@12b
    move-result-object v12

    #@12c
    invoke-virtual {v12}, Lcom/android/server/tv/TvInputHardwareManager;->getHdmiDeviceList()Ljava/util/List;

    #@12f
    move-result-object v12

    #@130
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@133
    move-result-object v2

    #@134
    .local v2, "device$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@137
    move-result v12

    #@138
    if-eqz v12, :cond_6

    #@13a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13d
    move-result-object v1

    #@13e
    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@140
    .line 2202
    .local v1, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_start_7
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@143
    move-result-object v12

    #@144
    invoke-interface {v12, v1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@147
    goto :goto_4

    #@148
    .line 2203
    :catch_2
    move-exception v3

    #@149
    .line 2204
    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_8
    const-string/jumbo v12, "TvInputManagerService"

    #@14c
    const-string/jumbo v14, "error in notifyHdmiDeviceAdded"

    #@14f
    invoke-static {v12, v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@152
    goto :goto_4

    #@153
    .end local v1    # "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v2    # "device$iterator":Ljava/util/Iterator;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "hardware$iterator":Ljava/util/Iterator;
    :cond_6
    monitor-exit v13

    #@154
    .line 2154
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2216
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    #@2
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 2217
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Mismatched ComponentName: "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    .line 2218
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    #@18
    .line 2217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    .line 2218
    const-string/jumbo v4, " (expected), "

    #@1f
    .line 2217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 2218
    const-string/jumbo v4, " (actual)."

    #@2a
    .line 2217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 2220
    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@38
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    monitor-enter v3

    #@3d
    .line 2221
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@3f
    iget v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    #@41
    invoke-static {v2, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@44
    move-result-object v1

    #@45
    .line 2222
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@48
    move-result-object v2

    #@49
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    #@4b
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@51
    .line 2223
    .local v0, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v0, :cond_1

    #@53
    .line 2224
    const/4 v2, 0x1

    #@54
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set2(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    #@57
    .line 2225
    const/4 v2, 0x0

    #@58
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set0(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    #@5b
    .line 2226
    const/4 v2, 0x0

    #@5c
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set3(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)Landroid/media/tv/ITvInputService;

    #@5f
    .line 2227
    const/4 v2, 0x0

    #@60
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set1(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@63
    .line 2229
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@65
    iget v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    #@67
    const/4 v5, 0x0

    #@68
    invoke-static {v2, v0, v5, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap8(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6b
    :cond_1
    monitor-exit v3

    #@6c
    .line 2212
    return-void

    #@6d
    .line 2220
    .end local v0    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v2

    #@6e
    monitor-exit v3

    #@6f
    throw v2
.end method
