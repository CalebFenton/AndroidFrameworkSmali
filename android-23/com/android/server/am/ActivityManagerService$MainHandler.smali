.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1599
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    .line 1600
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 1599
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 67
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1605
    move-object/from16 v0, p1

    #@2
    iget v4, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v4, :pswitch_data_0

    #@7
    .line 1604
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 1607
    :pswitch_1
    move-object/from16 v0, p0

    #@a
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@c
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@11
    move-result-object v58

    #@12
    .line 1608
    .local v58, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    #@14
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    check-cast v4, Landroid/content/res/Configuration;

    #@18
    move-object/from16 v0, v58

    #@1a
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    #@1d
    goto :goto_0

    #@1e
    .line 1611
    .end local v58    # "resolver":Landroid/content/ContentResolver;
    :pswitch_2
    move-object/from16 v0, p0

    #@20
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@22
    monitor-enter v8

    #@23
    .line 1612
    :try_start_0
    move-object/from16 v0, p0

    #@25
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@27
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    :cond_1
    :goto_1
    monitor-exit v8

    #@2b
    goto :goto_0

    #@2c
    .line 1611
    :catchall_0
    move-exception v4

    #@2d
    monitor-exit v8

    #@2e
    throw v4

    #@2f
    .line 1616
    :pswitch_3
    move-object/from16 v0, p0

    #@31
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@33
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@35
    if-eqz v4, :cond_2

    #@37
    .line 1617
    move-object/from16 v0, p0

    #@39
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3b
    const/4 v8, 0x0

    #@3c
    iput-boolean v8, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@3e
    .line 1618
    move-object/from16 v0, p0

    #@40
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@42
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@44
    const/16 v8, 0xc

    #@46
    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    #@49
    move-result-object v48

    #@4a
    .line 1619
    .local v48, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    #@4c
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4e
    move-object/from16 v0, v48

    #@50
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@52
    .line 1620
    move-object/from16 v0, p0

    #@54
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@56
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@58
    const-wide/16 v8, 0x4e20

    #@5a
    move-object/from16 v0, v48

    #@5c
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@5f
    .line 1621
    return-void

    #@60
    .line 1623
    .end local v48    # "nmsg":Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    #@62
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@64
    iget-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    #@66
    move-object/from16 v0, p1

    #@68
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6a
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    #@6c
    invoke-virtual {v8, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    #@6f
    goto :goto_0

    #@70
    .line 1626
    :pswitch_4
    move-object/from16 v0, p0

    #@72
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@74
    monitor-enter v8

    #@75
    .line 1627
    :try_start_1
    move-object/from16 v0, p0

    #@77
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@79
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@7b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@7e
    move-result v4

    #@7f
    add-int/lit8 v39, v4, -0x1

    #@81
    .local v39, "i":I
    :goto_2
    if-ltz v39, :cond_1

    #@83
    .line 1628
    move-object/from16 v0, p0

    #@85
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@87
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@89
    move/from16 v0, v39

    #@8b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v56

    #@8f
    check-cast v56, Lcom/android/server/am/ProcessRecord;

    #@91
    .line 1629
    .local v56, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v56

    #@93
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@95
    if-eqz v4, :cond_3

    #@97
    .line 1631
    :try_start_2
    move-object/from16 v0, v56

    #@99
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@9b
    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@9e
    .line 1627
    :cond_3
    :goto_3
    add-int/lit8 v39, v39, -0x1

    #@a0
    goto :goto_2

    #@a1
    .line 1632
    :catch_0
    move-exception v35

    #@a2
    .line 1633
    .local v35, "ex":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "ActivityManager"

    #@a5
    new-instance v9, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v10, "Failed to update time zone for: "

    #@ad
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v9

    #@b1
    move-object/from16 v0, v56

    #@b3
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@b5
    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@b7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v9

    #@bb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v9

    #@bf
    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@c2
    goto :goto_3

    #@c3
    .line 1626
    .end local v35    # "ex":Landroid/os/RemoteException;
    .end local v39    # "i":I
    .end local v56    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    #@c4
    monitor-exit v8

    #@c5
    throw v4

    #@c6
    .line 1640
    :pswitch_5
    move-object/from16 v0, p0

    #@c8
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@ca
    monitor-enter v8

    #@cb
    .line 1641
    :try_start_4
    move-object/from16 v0, p0

    #@cd
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@cf
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@d1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@d4
    move-result v4

    #@d5
    add-int/lit8 v39, v4, -0x1

    #@d7
    .restart local v39    # "i":I
    :goto_4
    if-ltz v39, :cond_1

    #@d9
    .line 1642
    move-object/from16 v0, p0

    #@db
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@dd
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@df
    move/from16 v0, v39

    #@e1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e4
    move-result-object v56

    #@e5
    check-cast v56, Lcom/android/server/am/ProcessRecord;

    #@e7
    .line 1643
    .restart local v56    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v56

    #@e9
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@eb
    if-eqz v4, :cond_4

    #@ed
    .line 1645
    :try_start_5
    move-object/from16 v0, v56

    #@ef
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@f1
    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@f4
    .line 1641
    :cond_4
    :goto_5
    add-int/lit8 v39, v39, -0x1

    #@f6
    goto :goto_4

    #@f7
    .line 1646
    :catch_1
    move-exception v35

    #@f8
    .line 1647
    .restart local v35    # "ex":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v4, "ActivityManager"

    #@fb
    new-instance v9, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    const-string/jumbo v10, "Failed to clear dns cache for: "

    #@103
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v9

    #@107
    move-object/from16 v0, v56

    #@109
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@10b
    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@10d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v9

    #@111
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v9

    #@115
    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@118
    goto :goto_5

    #@119
    .line 1640
    .end local v35    # "ex":Landroid/os/RemoteException;
    .end local v39    # "i":I
    .end local v56    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v4

    #@11a
    monitor-exit v8

    #@11b
    throw v4

    #@11c
    .line 1654
    :pswitch_6
    move-object/from16 v0, p1

    #@11e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@120
    move-object/from16 v54, v0

    #@122
    check-cast v54, Landroid/net/ProxyInfo;

    #@124
    .line 1655
    .local v54, "proxy":Landroid/net/ProxyInfo;
    const-string/jumbo v38, ""

    #@127
    .line 1656
    .local v38, "host":Ljava/lang/String;
    const-string/jumbo v51, ""

    #@12a
    .line 1657
    .local v51, "port":Ljava/lang/String;
    const-string/jumbo v36, ""

    #@12d
    .line 1658
    .local v36, "exclList":Ljava/lang/String;
    sget-object v50, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@12f
    .line 1659
    .local v50, "pacFileUrl":Landroid/net/Uri;
    if-eqz v54, :cond_5

    #@131
    .line 1660
    invoke-virtual/range {v54 .. v54}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@134
    move-result-object v38

    #@135
    .line 1661
    invoke-virtual/range {v54 .. v54}, Landroid/net/ProxyInfo;->getPort()I

    #@138
    move-result v4

    #@139
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13c
    move-result-object v51

    #@13d
    .line 1662
    invoke-virtual/range {v54 .. v54}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    #@140
    move-result-object v36

    #@141
    .line 1663
    invoke-virtual/range {v54 .. v54}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@144
    move-result-object v50

    #@145
    .line 1665
    :cond_5
    move-object/from16 v0, p0

    #@147
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@149
    monitor-enter v8

    #@14a
    .line 1666
    :try_start_7
    move-object/from16 v0, p0

    #@14c
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@14e
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@150
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@153
    move-result v4

    #@154
    add-int/lit8 v39, v4, -0x1

    #@156
    .restart local v39    # "i":I
    :goto_6
    if-ltz v39, :cond_1

    #@158
    .line 1667
    move-object/from16 v0, p0

    #@15a
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@15c
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@15e
    move/from16 v0, v39

    #@160
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@163
    move-result-object v56

    #@164
    check-cast v56, Lcom/android/server/am/ProcessRecord;

    #@166
    .line 1668
    .restart local v56    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v56

    #@168
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@16a
    if-eqz v4, :cond_6

    #@16c
    .line 1670
    :try_start_8
    move-object/from16 v0, v56

    #@16e
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@170
    move-object/from16 v0, v38

    #@172
    move-object/from16 v1, v51

    #@174
    move-object/from16 v2, v36

    #@176
    move-object/from16 v3, v50

    #@178
    invoke-interface {v4, v0, v1, v2, v3}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@17b
    .line 1666
    :cond_6
    :goto_7
    add-int/lit8 v39, v39, -0x1

    #@17d
    goto :goto_6

    #@17e
    .line 1671
    :catch_2
    move-exception v35

    #@17f
    .line 1672
    .restart local v35    # "ex":Landroid/os/RemoteException;
    :try_start_9
    const-string/jumbo v4, "ActivityManager"

    #@182
    new-instance v9, Ljava/lang/StringBuilder;

    #@184
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@187
    const-string/jumbo v10, "Failed to update http proxy for: "

    #@18a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v9

    #@18e
    .line 1673
    move-object/from16 v0, v56

    #@190
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@192
    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@194
    .line 1672
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v9

    #@198
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19b
    move-result-object v9

    #@19c
    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    #@19f
    goto :goto_7

    #@1a0
    .line 1665
    .end local v35    # "ex":Landroid/os/RemoteException;
    .end local v39    # "i":I
    .end local v56    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v4

    #@1a1
    monitor-exit v8

    #@1a2
    throw v4

    #@1a3
    .line 1680
    .end local v36    # "exclList":Ljava/lang/String;
    .end local v38    # "host":Ljava/lang/String;
    .end local v50    # "pacFileUrl":Landroid/net/Uri;
    .end local v51    # "port":Ljava/lang/String;
    .end local v54    # "proxy":Landroid/net/ProxyInfo;
    :pswitch_7
    move-object/from16 v0, p0

    #@1a5
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1a7
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@1a9
    if-eqz v4, :cond_7

    #@1ab
    .line 1681
    move-object/from16 v0, p0

    #@1ad
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1af
    const/4 v8, 0x0

    #@1b0
    iput-boolean v8, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@1b2
    .line 1682
    move-object/from16 v0, p0

    #@1b4
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1b6
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@1b8
    const/16 v8, 0x14

    #@1ba
    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    #@1bd
    move-result-object v48

    #@1be
    .line 1683
    .restart local v48    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    #@1c0
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c2
    move-object/from16 v0, v48

    #@1c4
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c6
    .line 1684
    move-object/from16 v0, p0

    #@1c8
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1ca
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@1cc
    const-wide/16 v8, 0x2710

    #@1ce
    move-object/from16 v0, v48

    #@1d0
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1d3
    .line 1685
    return-void

    #@1d4
    .line 1687
    .end local v48    # "nmsg":Landroid/os/Message;
    :cond_7
    move-object/from16 v0, p1

    #@1d6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d8
    move-object/from16 v27, v0

    #@1da
    check-cast v27, Lcom/android/server/am/ProcessRecord;

    #@1dc
    .line 1688
    .local v27, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    #@1de
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1e0
    monitor-enter v8

    #@1e1
    .line 1689
    :try_start_a
    move-object/from16 v0, p0

    #@1e3
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1e5
    move-object/from16 v0, v27

    #@1e7
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap7(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    #@1ea
    goto/16 :goto_1

    #@1ec
    .line 1688
    :catchall_4
    move-exception v4

    #@1ed
    monitor-exit v8

    #@1ee
    throw v4

    #@1ef
    .line 1693
    .end local v27    # "app":Lcom/android/server/am/ProcessRecord;
    :pswitch_8
    move-object/from16 v0, p0

    #@1f1
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1f3
    monitor-enter v8

    #@1f4
    .line 1694
    :try_start_b
    move-object/from16 v0, p0

    #@1f6
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1f8
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1fa
    const/4 v9, 0x1

    #@1fb
    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    #@1fe
    goto/16 :goto_1

    #@200
    .line 1693
    :catchall_5
    move-exception v4

    #@201
    monitor-exit v8

    #@202
    throw v4

    #@203
    .line 1698
    :pswitch_9
    move-object/from16 v0, p0

    #@205
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@207
    monitor-enter v15

    #@208
    .line 1699
    :try_start_c
    move-object/from16 v0, p1

    #@20a
    iget v6, v0, Landroid/os/Message;->arg1:I

    #@20c
    .line 1700
    .local v6, "appid":I
    move-object/from16 v0, p1

    #@20e
    iget v4, v0, Landroid/os/Message;->arg2:I

    #@210
    const/4 v8, 0x1

    #@211
    if-ne v4, v8, :cond_8

    #@213
    const/4 v7, 0x1

    #@214
    .line 1701
    .local v7, "restart":Z
    :goto_8
    move-object/from16 v0, p1

    #@216
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@218
    move-object/from16 v28, v0

    #@21a
    check-cast v28, Landroid/os/Bundle;

    #@21c
    .line 1702
    .local v28, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pkg"

    #@21f
    move-object/from16 v0, v28

    #@221
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@224
    move-result-object v5

    #@225
    .line 1703
    .local v5, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    #@228
    move-object/from16 v0, v28

    #@22a
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@22d
    move-result-object v13

    #@22e
    .line 1704
    .local v13, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@230
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@232
    const/4 v8, 0x0

    #@233
    const/4 v9, 0x1

    #@234
    const/4 v10, 0x0

    #@235
    .line 1705
    const/4 v11, 0x0

    #@236
    const/4 v12, -0x1

    #@237
    .line 1704
    invoke-static/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->-wrap1(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    #@23a
    monitor-exit v15

    #@23b
    goto/16 :goto_0

    #@23d
    .line 1700
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "restart":Z
    .end local v13    # "reason":Ljava/lang/String;
    .end local v28    # "bundle":Landroid/os/Bundle;
    :cond_8
    const/4 v7, 0x0

    #@23e
    .restart local v7    # "restart":Z
    goto :goto_8

    #@23f
    .line 1698
    .end local v6    # "appid":I
    .end local v7    # "restart":Z
    :catchall_6
    move-exception v4

    #@240
    monitor-exit v15

    #@241
    throw v4

    #@242
    .line 1709
    :pswitch_a
    move-object/from16 v0, p1

    #@244
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@246
    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    #@248
    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    #@24b
    goto/16 :goto_0

    #@24d
    .line 1712
    :pswitch_b
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@250
    move-result-object v41

    #@251
    .line 1713
    .local v41, "inm":Landroid/app/INotificationManager;
    if-nez v41, :cond_9

    #@253
    .line 1714
    return-void

    #@254
    .line 1717
    :cond_9
    move-object/from16 v0, p1

    #@256
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@258
    move-object/from16 v59, v0

    #@25a
    check-cast v59, Lcom/android/server/am/ActivityRecord;

    #@25c
    .line 1718
    .local v59, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v59

    #@25e
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@260
    move-object/from16 v53, v0

    #@262
    .line 1719
    .local v53, "process":Lcom/android/server/am/ProcessRecord;
    if-nez v53, :cond_a

    #@264
    .line 1720
    return-void

    #@265
    .line 1724
    :cond_a
    :try_start_d
    move-object/from16 v0, p0

    #@267
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@269
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@26b
    move-object/from16 v0, v53

    #@26d
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@26f
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@271
    const/4 v9, 0x0

    #@272
    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@275
    move-result-object v30

    #@276
    .line 1725
    .local v30, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    #@278
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@27a
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@27c
    const/4 v8, 0x1

    #@27d
    new-array v8, v8, [Ljava/lang/Object;

    #@27f
    .line 1726
    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@282
    move-result-object v9

    #@283
    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@286
    move-result-object v10

    #@287
    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@28a
    move-result-object v9

    #@28b
    const/4 v10, 0x0

    #@28c
    aput-object v9, v8, v10

    #@28e
    .line 1725
    const v9, 0x1040372

    #@291
    invoke-virtual {v4, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@294
    move-result-object v61

    #@295
    .line 1727
    .local v61, "text":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    #@297
    move-object/from16 v0, v30

    #@299
    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@29c
    .line 1728
    const v8, 0x1080641

    #@29f
    .line 1727
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@2a2
    move-result-object v4

    #@2a3
    .line 1729
    const-wide/16 v8, 0x0

    #@2a5
    .line 1727
    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@2a8
    move-result-object v4

    #@2a9
    .line 1730
    const/4 v8, 0x1

    #@2aa
    .line 1727
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@2ad
    move-result-object v4

    #@2ae
    move-object/from16 v0, v61

    #@2b0
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@2b3
    move-result-object v4

    #@2b4
    .line 1732
    move-object/from16 v0, p0

    #@2b6
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2b8
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@2ba
    .line 1733
    const v9, 0x1060059

    #@2bd
    .line 1732
    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    #@2c0
    move-result v8

    #@2c1
    .line 1727
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@2c4
    move-result-object v4

    #@2c5
    move-object/from16 v0, v61

    #@2c7
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@2ca
    move-result-object v4

    #@2cb
    .line 1736
    move-object/from16 v0, p0

    #@2cd
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2cf
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@2d1
    const v9, 0x1040373

    #@2d4
    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@2d7
    move-result-object v8

    #@2d8
    .line 1727
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@2db
    move-result-object v4

    #@2dc
    .line 1737
    move-object/from16 v0, p0

    #@2de
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2e0
    iget-object v14, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@2e2
    .line 1738
    move-object/from16 v0, v59

    #@2e4
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@2e6
    move-object/from16 v16, v0

    #@2e8
    .line 1739
    new-instance v19, Landroid/os/UserHandle;

    #@2ea
    move-object/from16 v0, v59

    #@2ec
    iget v8, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@2ee
    move-object/from16 v0, v19

    #@2f0
    invoke-direct {v0, v8}, Landroid/os/UserHandle;-><init>(I)V

    #@2f3
    .line 1737
    const/4 v15, 0x0

    #@2f4
    .line 1738
    const/high16 v17, 0x10000000

    #@2f6
    const/16 v18, 0x0

    #@2f8
    .line 1737
    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@2fb
    move-result-object v8

    #@2fc
    .line 1727
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@2ff
    move-result-object v4

    #@300
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_4

    #@303
    move-result-object v19

    #@304
    .line 1742
    .local v19, "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    #@305
    :try_start_e
    new-array v0, v4, [I

    #@307
    move-object/from16 v20, v0

    #@309
    .line 1743
    .local v20, "outId":[I
    const-string/jumbo v15, "android"

    #@30c
    const-string/jumbo v16, "android"

    #@30f
    .line 1745
    move-object/from16 v0, v59

    #@311
    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@313
    move/from16 v21, v0

    #@315
    .line 1743
    const/16 v17, 0x0

    #@317
    .line 1744
    const v18, 0x1040372

    #@31a
    move-object/from16 v14, v41

    #@31c
    .line 1743
    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_4

    #@31f
    goto/16 :goto_0

    #@321
    .line 1746
    .end local v20    # "outId":[I
    :catch_3
    move-exception v34

    #@322
    .line 1747
    .local v34, "e":Ljava/lang/RuntimeException;
    :try_start_f
    const-string/jumbo v4, "ActivityManager"

    #@325
    .line 1748
    const-string/jumbo v8, "Error showing notification for heavy-weight app"

    #@328
    .line 1747
    move-object/from16 v0, v34

    #@32a
    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_4

    #@32d
    goto/16 :goto_0

    #@32f
    .line 1751
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v30    # "context":Landroid/content/Context;
    .end local v34    # "e":Ljava/lang/RuntimeException;
    .end local v61    # "text":Ljava/lang/String;
    :catch_4
    move-exception v32

    #@330
    .line 1752
    .local v32, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "ActivityManager"

    #@333
    const-string/jumbo v8, "Unable to create context for heavy notification"

    #@336
    move-object/from16 v0, v32

    #@338
    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@33b
    goto/16 :goto_0

    #@33d
    .line 1756
    .end local v32    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v41    # "inm":Landroid/app/INotificationManager;
    .end local v53    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v59    # "root":Lcom/android/server/am/ActivityRecord;
    :pswitch_c
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@340
    move-result-object v14

    #@341
    .line 1757
    .local v14, "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_b

    #@343
    .line 1758
    return-void

    #@344
    .line 1761
    :cond_b
    :try_start_10
    const-string/jumbo v4, "android"

    #@347
    .line 1762
    move-object/from16 v0, p1

    #@349
    iget v8, v0, Landroid/os/Message;->arg1:I

    #@34b
    .line 1761
    const/4 v9, 0x0

    #@34c
    .line 1762
    const v10, 0x1040372

    #@34f
    .line 1761
    invoke-interface {v14, v4, v9, v10, v8}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_e

    #@352
    goto/16 :goto_0

    #@354
    .line 1763
    :catch_5
    move-exception v34

    #@355
    .line 1764
    .restart local v34    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "ActivityManager"

    #@358
    .line 1765
    const-string/jumbo v8, "Error canceling notification for service"

    #@35b
    .line 1764
    move-object/from16 v0, v34

    #@35d
    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@360
    goto/16 :goto_0

    #@362
    .line 1770
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v34    # "e":Ljava/lang/RuntimeException;
    :pswitch_d
    move-object/from16 v0, p0

    #@364
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@366
    monitor-enter v8

    #@367
    .line 1771
    :try_start_11
    move-object/from16 v0, p0

    #@369
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@36b
    const/4 v9, 0x1

    #@36c
    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    #@36f
    .line 1772
    const/16 v4, 0x1b

    #@371
    move-object/from16 v0, p0

    #@373
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    #@376
    .line 1773
    const/16 v4, 0x1b

    #@378
    move-object/from16 v0, p0

    #@37a
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    #@37d
    move-result-object v48

    #@37e
    .line 1774
    .restart local v48    # "nmsg":Landroid/os/Message;
    const-wide/32 v10, 0xdbba0

    #@381
    move-object/from16 v0, p0

    #@383
    move-object/from16 v1, v48

    #@385
    invoke-virtual {v0, v1, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    #@388
    goto/16 :goto_1

    #@38a
    .line 1770
    .end local v48    # "nmsg":Landroid/os/Message;
    :catchall_7
    move-exception v4

    #@38b
    monitor-exit v8

    #@38c
    throw v4

    #@38d
    .line 1778
    :pswitch_e
    move-object/from16 v0, p1

    #@38f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@391
    move-object/from16 v43, v0

    #@393
    check-cast v43, Ljava/util/ArrayList;

    #@395
    .line 1779
    .local v43, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v62, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    #@397
    move-object/from16 v0, v62

    #@399
    move-object/from16 v1, p0

    #@39b
    move-object/from16 v2, v43

    #@39d
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    #@3a0
    .line 1784
    .local v62, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v62 .. v62}, Ljava/lang/Thread;->start()V

    #@3a3
    goto/16 :goto_0

    #@3a5
    .line 1788
    .end local v43    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v62    # "thread":Ljava/lang/Thread;
    :pswitch_f
    move-object/from16 v0, p0

    #@3a7
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3a9
    move-object/from16 v0, p1

    #@3ab
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3ad
    check-cast v4, Lcom/android/server/am/UserState;

    #@3af
    move-object/from16 v0, p1

    #@3b1
    iget v9, v0, Landroid/os/Message;->arg1:I

    #@3b3
    move-object/from16 v0, p1

    #@3b5
    iget v10, v0, Landroid/os/Message;->arg2:I

    #@3b7
    invoke-virtual {v8, v4, v9, v10}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    #@3ba
    goto/16 :goto_0

    #@3bc
    .line 1792
    :pswitch_10
    move-object/from16 v0, p0

    #@3be
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3c0
    move-object/from16 v0, p1

    #@3c2
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3c4
    check-cast v4, Lcom/android/server/am/UserState;

    #@3c6
    move-object/from16 v0, p1

    #@3c8
    iget v9, v0, Landroid/os/Message;->arg1:I

    #@3ca
    move-object/from16 v0, p1

    #@3cc
    iget v10, v0, Landroid/os/Message;->arg2:I

    #@3ce
    invoke-virtual {v8, v4, v9, v10}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    #@3d1
    goto/16 :goto_0

    #@3d3
    .line 1796
    :pswitch_11
    move-object/from16 v0, p0

    #@3d5
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3d7
    move-object/from16 v0, p1

    #@3d9
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3db
    check-cast v4, Lcom/android/server/am/UserState;

    #@3dd
    move-object/from16 v0, p1

    #@3df
    iget v9, v0, Landroid/os/Message;->arg1:I

    #@3e1
    move-object/from16 v0, p1

    #@3e3
    iget v10, v0, Landroid/os/Message;->arg2:I

    #@3e5
    invoke-virtual {v8, v4, v9, v10}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    #@3e8
    goto/16 :goto_0

    #@3ea
    .line 1800
    :pswitch_12
    move-object/from16 v0, p1

    #@3ec
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@3ee
    if-eqz v4, :cond_c

    #@3f0
    const/16 v47, 0x1

    #@3f2
    .line 1801
    .local v47, "nextState":Z
    :goto_9
    move-object/from16 v0, p0

    #@3f4
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3f6
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    #@3f8
    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    #@3fb
    move-result v4

    #@3fc
    move/from16 v0, v47

    #@3fe
    if-eq v4, v0, :cond_0

    #@400
    .line 1805
    if-eqz v47, :cond_d

    #@402
    .line 1806
    move-object/from16 v0, p0

    #@404
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@406
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    #@408
    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    #@40b
    goto/16 :goto_0

    #@40d
    .line 1800
    .end local v47    # "nextState":Z
    :cond_c
    const/16 v47, 0x0

    #@40f
    .restart local v47    # "nextState":Z
    goto :goto_9

    #@410
    .line 1808
    :cond_d
    move-object/from16 v0, p0

    #@412
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@414
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    #@416
    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    #@419
    goto/16 :goto_0

    #@41b
    .line 1814
    .end local v47    # "nextState":Z
    :pswitch_13
    move-object/from16 v0, p0

    #@41d
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@41f
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-wrap10(Lcom/android/server/am/ActivityManagerService;)V

    #@422
    goto/16 :goto_0

    #@424
    .line 1818
    :pswitch_14
    move-object/from16 v0, p0

    #@426
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@428
    monitor-enter v8

    #@429
    .line 1819
    :try_start_12
    move-object/from16 v0, p0

    #@42b
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@42d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@430
    move-result-wide v10

    #@431
    const/4 v9, 0x1

    #@432
    const/4 v12, 0x0

    #@433
    invoke-virtual {v4, v10, v11, v9, v12}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    #@436
    goto/16 :goto_1

    #@438
    .line 1818
    :catchall_8
    move-exception v4

    #@439
    monitor-exit v8

    #@43a
    throw v4

    #@43b
    .line 1824
    :pswitch_15
    move-object/from16 v0, p0

    #@43d
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@43f
    monitor-enter v8

    #@440
    .line 1825
    :try_start_13
    move-object/from16 v0, p0

    #@442
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@444
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startProfilesLocked()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    #@447
    goto/16 :goto_1

    #@449
    .line 1824
    :catchall_9
    move-exception v4

    #@44a
    monitor-exit v8

    #@44b
    throw v4

    #@44c
    .line 1830
    :pswitch_16
    move-object/from16 v0, p0

    #@44e
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@450
    monitor-enter v8

    #@451
    .line 1831
    :try_start_14
    move-object/from16 v0, p0

    #@453
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@455
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@457
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@45a
    move-result v4

    #@45b
    add-int/lit8 v39, v4, -0x1

    #@45d
    .restart local v39    # "i":I
    :goto_a
    if-ltz v39, :cond_1

    #@45f
    .line 1832
    move-object/from16 v0, p0

    #@461
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@463
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@465
    move/from16 v0, v39

    #@467
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@46a
    move-result-object v56

    #@46b
    check-cast v56, Lcom/android/server/am/ProcessRecord;

    #@46d
    .line 1833
    .restart local v56    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v56

    #@46f
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    #@471
    if-eqz v4, :cond_e

    #@473
    .line 1835
    :try_start_15
    move-object/from16 v0, v56

    #@475
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@477
    move-object/from16 v0, p1

    #@479
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@47b
    if-nez v4, :cond_f

    #@47d
    const/4 v4, 0x0

    #@47e
    :goto_b
    invoke-interface {v9, v4}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    #@481
    .line 1831
    :cond_e
    :goto_c
    add-int/lit8 v39, v39, -0x1

    #@483
    goto :goto_a

    #@484
    .line 1835
    :cond_f
    const/4 v4, 0x1

    #@485
    goto :goto_b

    #@486
    .line 1836
    :catch_6
    move-exception v35

    #@487
    .line 1837
    .restart local v35    # "ex":Landroid/os/RemoteException;
    :try_start_16
    const-string/jumbo v4, "ActivityManager"

    #@48a
    new-instance v9, Ljava/lang/StringBuilder;

    #@48c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@48f
    const-string/jumbo v10, "Failed to update preferences for: "

    #@492
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@495
    move-result-object v9

    #@496
    move-object/from16 v0, v56

    #@498
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@49a
    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@49c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49f
    move-result-object v9

    #@4a0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a3
    move-result-object v9

    #@4a4
    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    #@4a7
    goto :goto_c

    #@4a8
    .line 1830
    .end local v35    # "ex":Landroid/os/RemoteException;
    .end local v39    # "i":I
    .end local v56    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_a
    move-exception v4

    #@4a9
    monitor-exit v8

    #@4aa
    throw v4

    #@4ab
    .line 1845
    :pswitch_17
    move-object/from16 v0, p0

    #@4ad
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4af
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@4b1
    .line 1846
    move-object/from16 v0, p1

    #@4b3
    iget v8, v0, Landroid/os/Message;->arg1:I

    #@4b5
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4b8
    move-result-object v8

    #@4b9
    move-object/from16 v0, p1

    #@4bb
    iget v9, v0, Landroid/os/Message;->arg1:I

    #@4bd
    .line 1845
    const v10, 0x8007

    #@4c0
    invoke-virtual {v4, v10, v8, v9}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    #@4c3
    .line 1847
    move-object/from16 v0, p0

    #@4c5
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4c7
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@4c9
    move-object/from16 v0, p1

    #@4cb
    iget v8, v0, Landroid/os/Message;->arg1:I

    #@4cd
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    #@4d0
    goto/16 :goto_0

    #@4d2
    .line 1851
    :pswitch_18
    move-object/from16 v0, p0

    #@4d4
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4d6
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@4d8
    .line 1853
    move-object/from16 v0, p1

    #@4da
    iget v8, v0, Landroid/os/Message;->arg2:I

    #@4dc
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4df
    move-result-object v8

    #@4e0
    move-object/from16 v0, p1

    #@4e2
    iget v9, v0, Landroid/os/Message;->arg2:I

    #@4e4
    .line 1852
    const/16 v10, 0x4008

    #@4e6
    .line 1851
    invoke-virtual {v4, v10, v8, v9}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    #@4e9
    .line 1854
    move-object/from16 v0, p0

    #@4eb
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4ed
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@4ef
    .line 1856
    move-object/from16 v0, p1

    #@4f1
    iget v8, v0, Landroid/os/Message;->arg1:I

    #@4f3
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4f6
    move-result-object v8

    #@4f7
    move-object/from16 v0, p1

    #@4f9
    iget v9, v0, Landroid/os/Message;->arg1:I

    #@4fb
    .line 1855
    const v10, 0x8008

    #@4fe
    .line 1854
    invoke-virtual {v4, v10, v8, v9}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    #@501
    .line 1857
    move-object/from16 v0, p0

    #@503
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@505
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@507
    move-object/from16 v0, p1

    #@509
    iget v8, v0, Landroid/os/Message;->arg1:I

    #@50b
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    #@50e
    goto/16 :goto_0

    #@510
    .line 1861
    :pswitch_19
    move-object/from16 v0, p0

    #@512
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@514
    monitor-enter v8

    #@515
    .line 1862
    :try_start_17
    move-object/from16 v0, p1

    #@517
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@519
    check-cast v4, Landroid/os/IBinder;

    #@51b
    invoke-static {v4}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@51e
    move-result-object v55

    #@51f
    .line 1863
    .local v55, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v55, :cond_1

    #@521
    move-object/from16 v0, v55

    #@523
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@525
    if-eqz v4, :cond_1

    #@527
    move-object/from16 v0, v55

    #@529
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@52b
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    #@52d
    if-eqz v4, :cond_1

    #@52f
    .line 1865
    :try_start_18
    move-object/from16 v0, v55

    #@531
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@533
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@535
    move-object/from16 v0, v55

    #@537
    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@539
    invoke-interface {v4, v9}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    #@53c
    goto/16 :goto_1

    #@53e
    .line 1866
    :catch_7
    move-exception v33

    #@53f
    .local v33, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    #@541
    .line 1861
    .end local v33    # "e":Landroid/os/RemoteException;
    .end local v55    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_b
    move-exception v4

    #@542
    monitor-exit v8

    #@543
    throw v4

    #@544
    .line 1873
    :pswitch_1a
    move-object/from16 v0, p1

    #@546
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@548
    if-eqz v4, :cond_10

    #@54a
    .line 1874
    move-object/from16 v0, p0

    #@54c
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@54e
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    #@551
    .line 1876
    :cond_10
    move-object/from16 v0, p1

    #@553
    iget v4, v0, Landroid/os/Message;->arg2:I

    #@555
    if-eqz v4, :cond_0

    #@557
    .line 1877
    move-object/from16 v0, p0

    #@559
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@55b
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    #@55e
    goto/16 :goto_0

    #@560
    .line 1883
    :pswitch_1b
    :try_start_19
    move-object/from16 v0, p1

    #@562
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@564
    move-object/from16 v42, v0

    #@566
    check-cast v42, Ljava/util/Locale;

    #@568
    .line 1884
    .local v42, "l":Ljava/util/Locale;
    const-string/jumbo v4, "mount"

    #@56b
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@56e
    move-result-object v60

    #@56f
    .line 1885
    .local v60, "service":Landroid/os/IBinder;
    invoke-static/range {v60 .. v60}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@572
    move-result-object v46

    #@573
    .line 1886
    .local v46, "mountService":Landroid/os/storage/IMountService;
    const-string/jumbo v4, "ActivityManager"

    #@576
    new-instance v8, Ljava/lang/StringBuilder;

    #@578
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@57b
    const-string/jumbo v9, "Storing locale "

    #@57e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@581
    move-result-object v8

    #@582
    invoke-virtual/range {v42 .. v42}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@585
    move-result-object v9

    #@586
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@589
    move-result-object v8

    #@58a
    const-string/jumbo v9, " for decryption UI"

    #@58d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@590
    move-result-object v8

    #@591
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@594
    move-result-object v8

    #@595
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@598
    .line 1887
    const-string/jumbo v4, "SystemLocale"

    #@59b
    invoke-virtual/range {v42 .. v42}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@59e
    move-result-object v8

    #@59f
    move-object/from16 v0, v46

    #@5a1
    invoke-interface {v0, v4, v8}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_8

    #@5a4
    goto/16 :goto_0

    #@5a6
    .line 1888
    .end local v42    # "l":Ljava/util/Locale;
    .end local v46    # "mountService":Landroid/os/storage/IMountService;
    .end local v60    # "service":Landroid/os/IBinder;
    :catch_8
    move-exception v33

    #@5a7
    .line 1889
    .restart local v33    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ActivityManager"

    #@5aa
    const-string/jumbo v8, "Error storing locale for decryption UI"

    #@5ad
    move-object/from16 v0, v33

    #@5af
    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b2
    goto/16 :goto_0

    #@5b4
    .line 1894
    .end local v33    # "e":Landroid/os/RemoteException;
    :pswitch_1c
    move-object/from16 v0, p0

    #@5b6
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5b8
    monitor-enter v8

    #@5b9
    .line 1895
    :try_start_1a
    move-object/from16 v0, p0

    #@5bb
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5bd
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get3(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@5c0
    move-result-object v4

    #@5c1
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    #@5c4
    move-result v39

    #@5c5
    .line 1896
    .restart local v39    # "i":I
    :goto_d
    if-lez v39, :cond_11

    #@5c7
    .line 1897
    add-int/lit8 v39, v39, -0x1

    #@5c9
    .line 1900
    :try_start_1b
    move-object/from16 v0, p0

    #@5cb
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5cd
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get3(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@5d0
    move-result-object v4

    #@5d1
    move/from16 v0, v39

    #@5d3
    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@5d6
    move-result-object v4

    #@5d7
    check-cast v4, Landroid/app/ITaskStackListener;

    #@5d9
    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_9
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    #@5dc
    goto :goto_d

    #@5dd
    .line 1901
    :catch_9
    move-exception v33

    #@5de
    .restart local v33    # "e":Landroid/os/RemoteException;
    goto :goto_d

    #@5df
    .line 1905
    .end local v33    # "e":Landroid/os/RemoteException;
    :cond_11
    :try_start_1c
    move-object/from16 v0, p0

    #@5e1
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5e3
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get3(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@5e6
    move-result-object v4

    #@5e7
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    #@5ea
    goto/16 :goto_1

    #@5ec
    .line 1894
    .end local v39    # "i":I
    :catchall_c
    move-exception v4

    #@5ed
    monitor-exit v8

    #@5ee
    throw v4

    #@5ef
    .line 1910
    :pswitch_1d
    move-object/from16 v0, p1

    #@5f1
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@5f3
    move/from16 v64, v0

    #@5f5
    .line 1911
    .local v64, "uid":I
    move-object/from16 v0, p1

    #@5f7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5f9
    move-object/from16 v37, v0

    #@5fb
    check-cast v37, [B

    #@5fd
    .line 1913
    .local v37, "firstPacket":[B
    move-object/from16 v0, p0

    #@5ff
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@601
    iget-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@603
    monitor-enter v8

    #@604
    .line 1914
    const/16 v39, 0x0

    #@606
    .restart local v39    # "i":I
    :goto_e
    :try_start_1d
    move-object/from16 v0, p0

    #@608
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@60a
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@60c
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@60f
    move-result v4

    #@610
    move/from16 v0, v39

    #@612
    if-ge v0, v4, :cond_13

    #@614
    .line 1915
    move-object/from16 v0, p0

    #@616
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@618
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@61a
    move/from16 v0, v39

    #@61c
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@61f
    move-result-object v49

    #@620
    check-cast v49, Lcom/android/server/am/ProcessRecord;

    #@622
    .line 1916
    .local v49, "p":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v49

    #@624
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    #@626
    move/from16 v0, v64

    #@628
    if-ne v4, v0, :cond_12

    #@62a
    .line 1918
    :try_start_1e
    move-object/from16 v0, v49

    #@62c
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@62e
    move-object/from16 v0, v37

    #@630
    invoke-interface {v4, v0}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    #@633
    .line 1914
    :cond_12
    :goto_f
    add-int/lit8 v39, v39, 0x1

    #@635
    goto :goto_e

    #@636
    .end local v49    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_13
    monitor-exit v8

    #@637
    goto/16 :goto_0

    #@639
    .line 1913
    :catchall_d
    move-exception v4

    #@63a
    monitor-exit v8

    #@63b
    throw v4

    #@63c
    .line 1931
    .end local v37    # "firstPacket":[B
    .end local v39    # "i":I
    .end local v64    # "uid":I
    :pswitch_1e
    move-object/from16 v0, p0

    #@63e
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@640
    monitor-enter v8

    #@641
    .line 1932
    :try_start_1f
    move-object/from16 v0, p0

    #@643
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@645
    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    #@647
    move-object/from16 v52, v0

    #@649
    .line 1933
    .local v52, "procName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@64b
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@64d
    iget v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    #@64f
    move/from16 v64, v0

    #@651
    .line 1934
    .restart local v64    # "uid":I
    move-object/from16 v0, p0

    #@653
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@655
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    #@657
    move-object/from16 v0, v52

    #@659
    move/from16 v1, v64

    #@65b
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@65e
    move-result-object v66

    #@65f
    check-cast v66, Landroid/util/Pair;

    #@661
    .line 1935
    .local v66, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v66, :cond_14

    #@663
    .line 1936
    move-object/from16 v0, p0

    #@665
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@667
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    #@669
    const/4 v9, 0x0

    #@66a
    move-object/from16 v0, v52

    #@66c
    invoke-virtual {v4, v0, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@66f
    move-result-object v66

    #@670
    .end local v66    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    check-cast v66, Landroid/util/Pair;

    #@672
    .line 1938
    .restart local v66    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_14
    if-eqz v66, :cond_15

    #@674
    .line 1939
    move-object/from16 v0, v66

    #@676
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@678
    check-cast v4, Ljava/lang/Long;

    #@67a
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@67d
    move-result-wide v44

    #@67e
    .line 1940
    .local v44, "memLimit":J
    move-object/from16 v0, v66

    #@680
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@682
    move-object/from16 v57, v0

    #@684
    check-cast v57, Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    #@686
    :goto_10
    monitor-exit v8

    #@687
    .line 1946
    if-nez v52, :cond_16

    #@689
    .line 1947
    return-void

    #@68a
    .line 1942
    .end local v44    # "memLimit":J
    :cond_15
    const-wide/16 v44, 0x0

    #@68c
    .line 1943
    .restart local v44    # "memLimit":J
    const/16 v57, 0x0

    #@68e
    .local v57, "reportPackage":Ljava/lang/String;
    goto :goto_10

    #@68f
    .line 1931
    .end local v44    # "memLimit":J
    .end local v52    # "procName":Ljava/lang/String;
    .end local v57    # "reportPackage":Ljava/lang/String;
    .end local v64    # "uid":I
    .end local v66    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_e
    move-exception v4

    #@690
    monitor-exit v8

    #@691
    throw v4

    #@692
    .line 1953
    .restart local v44    # "memLimit":J
    .restart local v52    # "procName":Ljava/lang/String;
    .restart local v64    # "uid":I
    .restart local v66    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_16
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@695
    move-result-object v14

    #@696
    .line 1954
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_17

    #@698
    .line 1955
    return-void

    #@699
    .line 1958
    :cond_17
    move-object/from16 v0, p0

    #@69b
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@69d
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@69f
    const/4 v8, 0x1

    #@6a0
    new-array v8, v8, [Ljava/lang/Object;

    #@6a2
    const/4 v9, 0x0

    #@6a3
    aput-object v52, v8, v9

    #@6a5
    const v9, 0x104037a

    #@6a8
    invoke-virtual {v4, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@6ab
    move-result-object v61

    #@6ac
    .line 1961
    .restart local v61    # "text":Ljava/lang/String;
    new-instance v31, Landroid/content/Intent;

    #@6ae
    invoke-direct/range {v31 .. v31}, Landroid/content/Intent;-><init>()V

    #@6b1
    .line 1962
    .local v31, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.server.am.DELETE_DUMPHEAP"

    #@6b4
    move-object/from16 v0, v31

    #@6b6
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@6b9
    .line 1963
    new-instance v23, Landroid/content/Intent;

    #@6bb
    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    #@6be
    .line 1964
    .local v23, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android"

    #@6c1
    const-class v8, Lcom/android/internal/app/DumpHeapActivity;

    #@6c3
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6c6
    move-result-object v8

    #@6c7
    move-object/from16 v0, v23

    #@6c9
    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@6cc
    .line 1965
    const-string/jumbo v4, "process"

    #@6cf
    move-object/from16 v0, v23

    #@6d1
    move-object/from16 v1, v52

    #@6d3
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@6d6
    .line 1966
    const-string/jumbo v4, "size"

    #@6d9
    move-object/from16 v0, v23

    #@6db
    move-wide/from16 v1, v44

    #@6dd
    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@6e0
    .line 1967
    if-eqz v57, :cond_18

    #@6e2
    .line 1968
    const-string/jumbo v4, "direct_launch"

    #@6e5
    move-object/from16 v0, v23

    #@6e7
    move-object/from16 v1, v57

    #@6e9
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@6ec
    .line 1970
    :cond_18
    invoke-static/range {v64 .. v64}, Landroid/os/UserHandle;->getUserId(I)I

    #@6ef
    move-result v65

    #@6f0
    .line 1971
    .local v65, "userId":I
    new-instance v4, Landroid/app/Notification$Builder;

    #@6f2
    move-object/from16 v0, p0

    #@6f4
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@6f6
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@6f8
    invoke-direct {v4, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@6fb
    .line 1972
    const v8, 0x1080641

    #@6fe
    .line 1971
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@701
    move-result-object v4

    #@702
    .line 1973
    const-wide/16 v8, 0x0

    #@704
    .line 1971
    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@707
    move-result-object v4

    #@708
    .line 1974
    const/4 v8, 0x1

    #@709
    .line 1971
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@70c
    move-result-object v4

    #@70d
    .line 1975
    const/4 v8, 0x1

    #@70e
    .line 1971
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@711
    move-result-object v4

    #@712
    move-object/from16 v0, v61

    #@714
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@717
    move-result-object v4

    #@718
    .line 1977
    move-object/from16 v0, p0

    #@71a
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@71c
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@71e
    .line 1978
    const v9, 0x1060059

    #@721
    .line 1977
    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    #@724
    move-result v8

    #@725
    .line 1971
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@728
    move-result-object v4

    #@729
    move-object/from16 v0, v61

    #@72b
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@72e
    move-result-object v4

    #@72f
    .line 1981
    move-object/from16 v0, p0

    #@731
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@733
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@735
    const v9, 0x104037b

    #@738
    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@73b
    move-result-object v8

    #@73c
    .line 1971
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@73f
    move-result-object v4

    #@740
    .line 1982
    move-object/from16 v0, p0

    #@742
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@744
    iget-object v0, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@746
    move-object/from16 v21, v0

    #@748
    .line 1984
    new-instance v26, Landroid/os/UserHandle;

    #@74a
    move-object/from16 v0, v26

    #@74c
    move/from16 v1, v65

    #@74e
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@751
    .line 1982
    const/16 v22, 0x0

    #@753
    .line 1983
    const/high16 v24, 0x10000000

    #@755
    const/16 v25, 0x0

    #@757
    .line 1982
    invoke-static/range {v21 .. v26}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@75a
    move-result-object v8

    #@75b
    .line 1971
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@75e
    move-result-object v4

    #@75f
    .line 1985
    move-object/from16 v0, p0

    #@761
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@763
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@765
    .line 1986
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@767
    .line 1985
    const/4 v10, 0x0

    #@768
    .line 1986
    const/4 v11, 0x0

    #@769
    .line 1985
    move-object/from16 v0, v31

    #@76b
    invoke-static {v8, v10, v0, v11, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@76e
    move-result-object v8

    #@76f
    .line 1971
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@772
    move-result-object v4

    #@773
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@776
    move-result-object v19

    #@777
    .line 1990
    .restart local v19    # "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    #@778
    :try_start_20
    new-array v0, v4, [I

    #@77a
    move-object/from16 v20, v0

    #@77c
    .line 1991
    .restart local v20    # "outId":[I
    const-string/jumbo v15, "android"

    #@77f
    const-string/jumbo v16, "android"

    #@782
    const/16 v17, 0x0

    #@784
    .line 1992
    const v18, 0x104037a

    #@787
    move/from16 v21, v65

    #@789
    .line 1991
    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_c

    #@78c
    goto/16 :goto_0

    #@78e
    .line 1994
    .end local v20    # "outId":[I
    :catch_a
    move-exception v34

    #@78f
    .line 1995
    .restart local v34    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "ActivityManager"

    #@792
    .line 1996
    const-string/jumbo v8, "Error showing notification for dump heap"

    #@795
    .line 1995
    move-object/from16 v0, v34

    #@797
    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@79a
    goto/16 :goto_0

    #@79c
    .line 2001
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v31    # "deleteIntent":Landroid/content/Intent;
    .end local v34    # "e":Ljava/lang/RuntimeException;
    .end local v44    # "memLimit":J
    .end local v52    # "procName":Ljava/lang/String;
    .end local v61    # "text":Ljava/lang/String;
    .end local v64    # "uid":I
    .end local v65    # "userId":I
    .end local v66    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :pswitch_1f
    move-object/from16 v0, p0

    #@79e
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7a0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@7a3
    move-result-object v8

    #@7a4
    invoke-virtual {v8}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@7a7
    move-result-object v8

    #@7a8
    .line 2002
    sget-object v9, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    #@7aa
    .line 2005
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@7ad
    move-result v10

    #@7ae
    .line 2003
    const/4 v11, 0x3

    #@7af
    .line 2001
    invoke-virtual {v4, v8, v9, v11, v10}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    #@7b2
    .line 2006
    move-object/from16 v0, p0

    #@7b4
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7b6
    monitor-enter v8

    #@7b7
    .line 2007
    :try_start_21
    move-object/from16 v0, p0

    #@7b9
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7bb
    const/4 v9, 0x0

    #@7bc
    iput-object v9, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    #@7be
    .line 2008
    move-object/from16 v0, p0

    #@7c0
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7c2
    const/4 v9, 0x0

    #@7c3
    iput-object v9, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    #@7c5
    .line 2009
    move-object/from16 v0, p0

    #@7c7
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7c9
    const/4 v9, -0x1

    #@7ca
    iput v9, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    #@7cc
    .line 2010
    move-object/from16 v0, p0

    #@7ce
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7d0
    const/4 v9, -0x1

    #@7d1
    iput v9, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    #@7d3
    goto/16 :goto_1

    #@7d5
    .line 2006
    :catchall_f
    move-exception v4

    #@7d6
    monitor-exit v8

    #@7d7
    throw v4

    #@7d8
    .line 2014
    :pswitch_20
    move-object/from16 v0, p0

    #@7da
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7dc
    move-object/from16 v0, p1

    #@7de
    iget v8, v0, Landroid/os/Message;->arg1:I

    #@7e0
    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->dispatchForegroundProfileChanged(I)V

    #@7e3
    goto/16 :goto_0

    #@7e5
    .line 2017
    :pswitch_21
    move-object/from16 v0, p1

    #@7e7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7e9
    move-object/from16 v63, v0

    #@7eb
    check-cast v63, Lcom/android/server/am/AppTimeTracker;

    #@7ed
    .line 2018
    .local v63, "tracker":Lcom/android/server/am/AppTimeTracker;
    move-object/from16 v0, p0

    #@7ef
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7f1
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@7f3
    move-object/from16 v0, v63

    #@7f5
    invoke-virtual {v0, v4}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    #@7f8
    goto/16 :goto_0

    #@7fa
    .line 2021
    .end local v63    # "tracker":Lcom/android/server/am/AppTimeTracker;
    :pswitch_22
    move-object/from16 v0, p0

    #@7fc
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7fe
    move-object/from16 v0, p1

    #@800
    iget v8, v0, Landroid/os/Message;->arg1:I

    #@802
    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitchComplete(I)V

    #@805
    goto/16 :goto_0

    #@807
    .line 2024
    :pswitch_23
    move-object/from16 v0, p1

    #@809
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@80b
    move-object/from16 v29, v0

    #@80d
    check-cast v29, Landroid/app/IUiAutomationConnection;

    #@80f
    .line 2026
    .local v29, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_22
    invoke-interface/range {v29 .. v29}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_b

    #@812
    .line 2032
    :goto_11
    move-object/from16 v0, p0

    #@814
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@816
    const/4 v8, 0x0

    #@817
    invoke-static {v4, v8}, Lcom/android/server/am/ActivityManagerService;->-set0(Lcom/android/server/am/ActivityManagerService;Z)Z

    #@81a
    goto/16 :goto_0

    #@81c
    .line 2027
    :catch_b
    move-exception v33

    #@81d
    .line 2028
    .restart local v33    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ActivityManager"

    #@820
    const-string/jumbo v8, "Error shutting down UiAutomationConnection"

    #@823
    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@826
    goto :goto_11

    #@827
    .line 1997
    .end local v29    # "connection":Landroid/app/IUiAutomationConnection;
    .end local v33    # "e":Landroid/os/RemoteException;
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v23    # "intent":Landroid/content/Intent;
    .restart local v31    # "deleteIntent":Landroid/content/Intent;
    .restart local v44    # "memLimit":J
    .restart local v52    # "procName":Ljava/lang/String;
    .restart local v61    # "text":Ljava/lang/String;
    .restart local v64    # "uid":I
    .restart local v65    # "userId":I
    .restart local v66    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catch_c
    move-exception v33

    #@828
    .restart local v33    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@82a
    .line 1919
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v31    # "deleteIntent":Landroid/content/Intent;
    .end local v33    # "e":Landroid/os/RemoteException;
    .end local v44    # "memLimit":J
    .end local v52    # "procName":Ljava/lang/String;
    .end local v61    # "text":Ljava/lang/String;
    .end local v65    # "userId":I
    .end local v66    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v37    # "firstPacket":[B
    .restart local v39    # "i":I
    .restart local v49    # "p":Lcom/android/server/am/ProcessRecord;
    :catch_d
    move-exception v40

    #@82b
    .local v40, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_f

    #@82d
    .line 1766
    .end local v37    # "firstPacket":[B
    .end local v39    # "i":I
    .end local v40    # "ignored":Landroid/os/RemoteException;
    .end local v49    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v64    # "uid":I
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    :catch_e
    move-exception v33

    #@82e
    .restart local v33    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@830
    .line 1749
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v33    # "e":Landroid/os/RemoteException;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v30    # "context":Landroid/content/Context;
    .restart local v41    # "inm":Landroid/app/INotificationManager;
    .restart local v53    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v59    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v61    # "text":Ljava/lang/String;
    :catch_f
    move-exception v33

    #@831
    .restart local v33    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@833
    .line 1605
    nop

    #@834
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method
