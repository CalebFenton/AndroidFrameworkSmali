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
    .line 1966
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1967
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    #@7
    .line 1968
    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    #@9
    .line 1966
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
    .locals 23
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1976
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@4
    move-object/from16 v18, v0

    #@6
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@9
    move-result-object v19

    #@a
    monitor-enter v19

    #@b
    .line 1977
    :try_start_0
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@f
    move-object/from16 v18, v0

    #@11
    move-object/from16 v0, p0

    #@13
    iget v0, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    #@15
    move/from16 v20, v0

    #@17
    move-object/from16 v0, v18

    #@19
    move/from16 v1, v20

    #@1b
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@1e
    move-result-object v17

    #@1f
    .line 1978
    .local v17, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@22
    move-result-object v18

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    #@27
    move-object/from16 v20, v0

    #@29
    move-object/from16 v0, v18

    #@2b
    move-object/from16 v1, v20

    #@2d
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v14

    #@31
    check-cast v14, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@33
    .line 1979
    .local v14, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static/range {p2 .. p2}, Landroid/media/tv/ITvInputService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputService;

    #@36
    move-result-object v18

    #@37
    move-object/from16 v0, v18

    #@39
    invoke-static {v14, v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set3(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)Landroid/media/tv/ITvInputService;

    #@3c
    .line 1982
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@3f
    move-result v18

    #@40
    if-eqz v18, :cond_0

    #@42
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get1(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@45
    move-result-object v18

    #@46
    if-nez v18, :cond_0

    #@48
    .line 1983
    new-instance v18, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@4e
    move-object/from16 v20, v0

    #@50
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    #@54
    move-object/from16 v21, v0

    #@56
    move-object/from16 v0, p0

    #@58
    iget v0, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    #@5a
    move/from16 v22, v0

    #@5c
    move-object/from16 v0, v18

    #@5e
    move-object/from16 v1, v20

    #@60
    move-object/from16 v2, v21

    #@62
    move/from16 v3, v22

    #@64
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    #@67
    move-object/from16 v0, v18

    #@69
    invoke-static {v14, v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set1(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6c
    .line 1985
    :try_start_1
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@6f
    move-result-object v18

    #@70
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get1(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@73
    move-result-object v20

    #@74
    move-object/from16 v0, v18

    #@76
    move-object/from16 v1, v20

    #@78
    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputService;->registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7b
    .line 1992
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@7e
    move-result-object v18

    #@7f
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@82
    move-result-object v16

    #@83
    .local v16, "sessionToken$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@86
    move-result v18

    #@87
    if-eqz v18, :cond_1

    #@89
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8c
    move-result-object v15

    #@8d
    check-cast v15, Landroid/os/IBinder;

    #@8f
    .line 1993
    .local v15, "sessionToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@93
    move-object/from16 v18, v0

    #@95
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@98
    move-result-object v20

    #@99
    move-object/from16 v0, p0

    #@9b
    iget v0, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    #@9d
    move/from16 v21, v0

    #@9f
    move-object/from16 v0, v18

    #@a1
    move-object/from16 v1, v20

    #@a3
    move/from16 v2, v21

    #@a5
    invoke-static {v0, v1, v15, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap11(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a8
    goto :goto_1

    #@a9
    .line 1976
    .end local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v15    # "sessionToken":Landroid/os/IBinder;
    .end local v16    # "sessionToken$iterator":Ljava/util/Iterator;
    .end local v17    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v18

    #@aa
    monitor-exit v19

    #@ab
    throw v18

    #@ac
    .line 1986
    .restart local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .restart local v17    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catch_0
    move-exception v8

    #@ad
    .line 1987
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v18, "TvInputManagerService"

    #@b0
    const-string/jumbo v20, "error in registerCallback"

    #@b3
    move-object/from16 v0, v18

    #@b5
    move-object/from16 v1, v20

    #@b7
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ba
    goto :goto_0

    #@bb
    .line 1996
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v16    # "sessionToken$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@be
    move-result-object v18

    #@bf
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@c2
    move-result-object v18

    #@c3
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c6
    move-result-object v13

    #@c7
    .local v13, "inputState$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@ca
    move-result v18

    #@cb
    if-eqz v18, :cond_3

    #@cd
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d0
    move-result-object v12

    #@d1
    check-cast v12, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    #@d3
    .line 1997
    .local v12, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    #@d6
    move-result-object v18

    #@d7
    invoke-virtual/range {v18 .. v18}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@da
    move-result-object v18

    #@db
    move-object/from16 v0, v18

    #@dd
    move-object/from16 v1, p1

    #@df
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@e2
    move-result v18

    #@e3
    if-eqz v18, :cond_2

    #@e5
    .line 1998
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get1(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    #@e8
    move-result v18

    #@e9
    if-eqz v18, :cond_2

    #@eb
    .line 1999
    move-object/from16 v0, p0

    #@ed
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@ef
    move-object/from16 v18, v0

    #@f1
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    #@f4
    move-result-object v20

    #@f5
    invoke-virtual/range {v20 .. v20}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@f8
    move-result-object v20

    #@f9
    .line 2000
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get1(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    #@fc
    move-result v21

    #@fd
    const/16 v22, 0x0

    #@ff
    .line 1999
    move-object/from16 v0, v18

    #@101
    move-object/from16 v1, v17

    #@103
    move-object/from16 v2, v20

    #@105
    move/from16 v3, v21

    #@107
    move-object/from16 v4, v22

    #@109
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap12(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    #@10c
    goto :goto_2

    #@10d
    .line 2004
    .end local v12    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :cond_3
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@110
    move-result v18

    #@111
    if-eqz v18, :cond_5

    #@113
    .line 2006
    move-object/from16 v0, p0

    #@115
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@117
    move-object/from16 v18, v0

    #@119
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    #@11c
    move-result-object v18

    #@11d
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/tv/TvInputHardwareManager;->getHardwareList()Ljava/util/List;

    #@120
    move-result-object v11

    #@121
    .line 2007
    .local v11, "hardwareInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputHardwareInfo;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@124
    move-result-object v10

    #@125
    .local v10, "hardwareInfo$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@128
    move-result v18

    #@129
    if-eqz v18, :cond_4

    #@12b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12e
    move-result-object v9

    #@12f
    check-cast v9, Landroid/media/tv/TvInputHardwareInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@131
    .line 2009
    .local v9, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    :try_start_4
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@134
    move-result-object v18

    #@135
    move-object/from16 v0, v18

    #@137
    invoke-interface {v0, v9}, Landroid/media/tv/ITvInputService;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@13a
    goto :goto_3

    #@13b
    .line 2010
    :catch_1
    move-exception v8

    #@13c
    .line 2011
    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v18, "TvInputManagerService"

    #@13f
    const-string/jumbo v20, "error in notifyHardwareAdded"

    #@142
    move-object/from16 v0, v18

    #@144
    move-object/from16 v1, v20

    #@146
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@149
    goto :goto_3

    #@14a
    .line 2016
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v9    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    :cond_4
    move-object/from16 v0, p0

    #@14c
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@14e
    move-object/from16 v18, v0

    #@150
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    #@153
    move-result-object v18

    #@154
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/tv/TvInputHardwareManager;->getHdmiDeviceList()Ljava/util/List;

    #@157
    move-result-object v7

    #@158
    .line 2017
    .local v7, "deviceInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15b
    move-result-object v6

    #@15c
    .local v6, "deviceInfo$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@15f
    move-result v18

    #@160
    if-eqz v18, :cond_5

    #@162
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@165
    move-result-object v5

    #@166
    check-cast v5, Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@168
    .line 2019
    .local v5, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_start_6
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@16b
    move-result-object v18

    #@16c
    move-object/from16 v0, v18

    #@16e
    invoke-interface {v0, v5}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@171
    goto :goto_4

    #@172
    .line 2020
    :catch_2
    move-exception v8

    #@173
    .line 2021
    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v18, "TvInputManagerService"

    #@176
    const-string/jumbo v20, "error in notifyHdmiDeviceAdded"

    #@179
    move-object/from16 v0, v18

    #@17b
    move-object/from16 v1, v20

    #@17d
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@180
    goto :goto_4

    #@181
    .end local v5    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v6    # "deviceInfo$iterator":Ljava/util/Iterator;
    .end local v7    # "deviceInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v10    # "hardwareInfo$iterator":Ljava/util/Iterator;
    .end local v11    # "hardwareInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputHardwareInfo;>;"
    :cond_5
    monitor-exit v19

    #@182
    .line 1972
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2033
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    #@2
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 2034
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
    .line 2035
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    #@18
    .line 2034
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    .line 2035
    const-string/jumbo v4, " (expected), "

    #@1f
    .line 2034
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 2035
    const-string/jumbo v4, " (actual)."

    #@2a
    .line 2034
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
    .line 2037
    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@38
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    monitor-enter v3

    #@3d
    .line 2038
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@3f
    iget v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    #@41
    invoke-static {v2, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@44
    move-result-object v1

    #@45
    .line 2039
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
    .line 2040
    .local v0, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v0, :cond_1

    #@53
    .line 2041
    const/4 v2, 0x1

    #@54
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set2(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    #@57
    .line 2042
    const/4 v2, 0x0

    #@58
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set0(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    #@5b
    .line 2043
    const/4 v2, 0x0

    #@5c
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set3(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)Landroid/media/tv/ITvInputService;

    #@5f
    .line 2044
    const/4 v2, 0x0

    #@60
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-set1(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@63
    .line 2046
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
    .line 2029
    return-void

    #@6d
    .line 2037
    .end local v0    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v2

    #@6e
    monitor-exit v3

    #@6f
    throw v2
.end method
