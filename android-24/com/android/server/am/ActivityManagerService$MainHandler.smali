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
    .line 1748
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    .line 1749
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 1748
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 75
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1754
    move-object/from16 v0, p1

    #@2
    iget v4, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v4, :pswitch_data_0

    #@7
    .line 1753
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 1756
    :pswitch_1
    move-object/from16 v0, p0

    #@a
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@c
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@11
    move-result-object v65

    #@12
    .line 1757
    .local v65, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    #@14
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    check-cast v4, Landroid/content/res/Configuration;

    #@18
    .line 1758
    move-object/from16 v0, p1

    #@1a
    iget v7, v0, Landroid/os/Message;->arg1:I

    #@1c
    .line 1757
    move-object/from16 v0, v65

    #@1e
    invoke-static {v0, v4, v7}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    #@21
    goto :goto_0

    #@22
    .line 1761
    .end local v65    # "resolver":Landroid/content/ContentResolver;
    :pswitch_2
    move-object/from16 v0, p0

    #@24
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@26
    monitor-enter v7

    #@27
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@2a
    .line 1762
    move-object/from16 v0, p0

    #@2c
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2e
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    monitor-exit v7

    #@32
    .line 1761
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@35
    goto :goto_0

    #@36
    :catchall_0
    move-exception v4

    #@37
    monitor-exit v7

    #@38
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@3b
    throw v4

    #@3c
    .line 1766
    :pswitch_3
    move-object/from16 v0, p0

    #@3e
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@40
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@42
    if-eqz v4, :cond_1

    #@44
    .line 1767
    move-object/from16 v0, p0

    #@46
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@48
    const/4 v7, 0x0

    #@49
    iput-boolean v7, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@4b
    .line 1768
    move-object/from16 v0, p0

    #@4d
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4f
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@51
    const/16 v7, 0xc

    #@53
    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    #@56
    move-result-object v54

    #@57
    .line 1769
    .local v54, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    #@59
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5b
    move-object/from16 v0, v54

    #@5d
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5f
    .line 1770
    move-object/from16 v0, p0

    #@61
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@63
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@65
    const-wide/16 v8, 0x4e20

    #@67
    move-object/from16 v0, v54

    #@69
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@6c
    .line 1771
    return-void

    #@6d
    .line 1773
    .end local v54    # "nmsg":Landroid/os/Message;
    :cond_1
    move-object/from16 v0, p0

    #@6f
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@71
    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    #@73
    move-object/from16 v0, p1

    #@75
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@77
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    #@79
    invoke-virtual {v7, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    #@7c
    goto :goto_0

    #@7d
    .line 1776
    :pswitch_4
    move-object/from16 v0, p0

    #@7f
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@81
    monitor-enter v7

    #@82
    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@85
    .line 1777
    move-object/from16 v0, p0

    #@87
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@89
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@8e
    move-result v4

    #@8f
    add-int/lit8 v43, v4, -0x1

    #@91
    .local v43, "i":I
    :goto_1
    if-ltz v43, :cond_3

    #@93
    .line 1778
    move-object/from16 v0, p0

    #@95
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@97
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@99
    move/from16 v0, v43

    #@9b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9e
    move-result-object v62

    #@9f
    check-cast v62, Lcom/android/server/am/ProcessRecord;

    #@a1
    .line 1779
    .local v62, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v62

    #@a3
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@a5
    if-eqz v4, :cond_2

    #@a7
    .line 1781
    :try_start_2
    move-object/from16 v0, v62

    #@a9
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@ab
    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@ae
    .line 1777
    :cond_2
    :goto_2
    add-int/lit8 v43, v43, -0x1

    #@b0
    goto :goto_1

    #@b1
    .line 1782
    :catch_0
    move-exception v39

    #@b2
    .line 1783
    .local v39, "ex":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@b5
    move-result-object v4

    #@b6
    new-instance v8, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v9, "Failed to update time zone for: "

    #@be
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v8

    #@c2
    move-object/from16 v0, v62

    #@c4
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@c6
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@c8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v8

    #@cc
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v8

    #@d0
    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@d3
    goto :goto_2

    #@d4
    .line 1776
    .end local v39    # "ex":Landroid/os/RemoteException;
    .end local v43    # "i":I
    .end local v62    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    #@d5
    monitor-exit v7

    #@d6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@d9
    throw v4

    #@da
    .restart local v43    # "i":I
    :cond_3
    monitor-exit v7

    #@db
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@de
    goto/16 :goto_0

    #@e0
    .line 1790
    .end local v43    # "i":I
    :pswitch_5
    move-object/from16 v0, p0

    #@e2
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@e4
    monitor-enter v7

    #@e5
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@e8
    .line 1791
    move-object/from16 v0, p0

    #@ea
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@ec
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@ee
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@f1
    move-result v4

    #@f2
    add-int/lit8 v43, v4, -0x1

    #@f4
    .restart local v43    # "i":I
    :goto_3
    if-ltz v43, :cond_5

    #@f6
    .line 1792
    move-object/from16 v0, p0

    #@f8
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@fa
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@fc
    move/from16 v0, v43

    #@fe
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@101
    move-result-object v62

    #@102
    check-cast v62, Lcom/android/server/am/ProcessRecord;

    #@104
    .line 1793
    .restart local v62    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v62

    #@106
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@108
    if-eqz v4, :cond_4

    #@10a
    .line 1795
    :try_start_5
    move-object/from16 v0, v62

    #@10c
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@10e
    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@111
    .line 1791
    :cond_4
    :goto_4
    add-int/lit8 v43, v43, -0x1

    #@113
    goto :goto_3

    #@114
    .line 1796
    :catch_1
    move-exception v39

    #@115
    .line 1797
    .restart local v39    # "ex":Landroid/os/RemoteException;
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@118
    move-result-object v4

    #@119
    new-instance v8, Ljava/lang/StringBuilder;

    #@11b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@11e
    const-string/jumbo v9, "Failed to clear dns cache for: "

    #@121
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v8

    #@125
    move-object/from16 v0, v62

    #@127
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@129
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@12b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v8

    #@12f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@132
    move-result-object v8

    #@133
    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@136
    goto :goto_4

    #@137
    .line 1790
    .end local v39    # "ex":Landroid/os/RemoteException;
    .end local v43    # "i":I
    .end local v62    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v4

    #@138
    monitor-exit v7

    #@139
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@13c
    throw v4

    #@13d
    .restart local v43    # "i":I
    :cond_5
    monitor-exit v7

    #@13e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@141
    goto/16 :goto_0

    #@143
    .line 1804
    .end local v43    # "i":I
    :pswitch_6
    move-object/from16 v0, p1

    #@145
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@147
    move-object/from16 v60, v0

    #@149
    check-cast v60, Landroid/net/ProxyInfo;

    #@14b
    .line 1805
    .local v60, "proxy":Landroid/net/ProxyInfo;
    const-string/jumbo v42, ""

    #@14e
    .line 1806
    .local v42, "host":Ljava/lang/String;
    const-string/jumbo v57, ""

    #@151
    .line 1807
    .local v57, "port":Ljava/lang/String;
    const-string/jumbo v40, ""

    #@154
    .line 1808
    .local v40, "exclList":Ljava/lang/String;
    sget-object v56, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@156
    .line 1809
    .local v56, "pacFileUrl":Landroid/net/Uri;
    if-eqz v60, :cond_6

    #@158
    .line 1810
    invoke-virtual/range {v60 .. v60}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@15b
    move-result-object v42

    #@15c
    .line 1811
    invoke-virtual/range {v60 .. v60}, Landroid/net/ProxyInfo;->getPort()I

    #@15f
    move-result v4

    #@160
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@163
    move-result-object v57

    #@164
    .line 1812
    invoke-virtual/range {v60 .. v60}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    #@167
    move-result-object v40

    #@168
    .line 1813
    invoke-virtual/range {v60 .. v60}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@16b
    move-result-object v56

    #@16c
    .line 1815
    :cond_6
    move-object/from16 v0, p0

    #@16e
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@170
    monitor-enter v7

    #@171
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@174
    .line 1816
    move-object/from16 v0, p0

    #@176
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@178
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@17a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@17d
    move-result v4

    #@17e
    add-int/lit8 v43, v4, -0x1

    #@180
    .restart local v43    # "i":I
    :goto_5
    if-ltz v43, :cond_8

    #@182
    .line 1817
    move-object/from16 v0, p0

    #@184
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@186
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@188
    move/from16 v0, v43

    #@18a
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18d
    move-result-object v62

    #@18e
    check-cast v62, Lcom/android/server/am/ProcessRecord;

    #@190
    .line 1818
    .restart local v62    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v62

    #@192
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@194
    if-eqz v4, :cond_7

    #@196
    .line 1820
    :try_start_8
    move-object/from16 v0, v62

    #@198
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@19a
    move-object/from16 v0, v42

    #@19c
    move-object/from16 v1, v57

    #@19e
    move-object/from16 v2, v40

    #@1a0
    move-object/from16 v3, v56

    #@1a2
    invoke-interface {v4, v0, v1, v2, v3}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@1a5
    .line 1816
    :cond_7
    :goto_6
    add-int/lit8 v43, v43, -0x1

    #@1a7
    goto :goto_5

    #@1a8
    .line 1821
    :catch_2
    move-exception v39

    #@1a9
    .line 1822
    .restart local v39    # "ex":Landroid/os/RemoteException;
    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@1ac
    move-result-object v4

    #@1ad
    new-instance v8, Ljava/lang/StringBuilder;

    #@1af
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1b2
    const-string/jumbo v9, "Failed to update http proxy for: "

    #@1b5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v8

    #@1b9
    .line 1823
    move-object/from16 v0, v62

    #@1bb
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@1bd
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@1bf
    .line 1822
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v8

    #@1c3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c6
    move-result-object v8

    #@1c7
    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    #@1ca
    goto :goto_6

    #@1cb
    .line 1815
    .end local v39    # "ex":Landroid/os/RemoteException;
    .end local v43    # "i":I
    .end local v62    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v4

    #@1cc
    monitor-exit v7

    #@1cd
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1d0
    throw v4

    #@1d1
    .restart local v43    # "i":I
    :cond_8
    monitor-exit v7

    #@1d2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1d5
    goto/16 :goto_0

    #@1d7
    .line 1830
    .end local v40    # "exclList":Ljava/lang/String;
    .end local v42    # "host":Ljava/lang/String;
    .end local v43    # "i":I
    .end local v56    # "pacFileUrl":Landroid/net/Uri;
    .end local v57    # "port":Ljava/lang/String;
    .end local v60    # "proxy":Landroid/net/ProxyInfo;
    :pswitch_7
    move-object/from16 v0, p0

    #@1d9
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1db
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@1dd
    if-eqz v4, :cond_9

    #@1df
    .line 1831
    move-object/from16 v0, p0

    #@1e1
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1e3
    const/4 v7, 0x0

    #@1e4
    iput-boolean v7, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@1e6
    .line 1832
    move-object/from16 v0, p0

    #@1e8
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1ea
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@1ec
    const/16 v7, 0x14

    #@1ee
    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    #@1f1
    move-result-object v54

    #@1f2
    .line 1833
    .restart local v54    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    #@1f4
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f6
    move-object/from16 v0, v54

    #@1f8
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1fa
    .line 1834
    move-object/from16 v0, p0

    #@1fc
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1fe
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@200
    const-wide/16 v8, 0x2710

    #@202
    move-object/from16 v0, v54

    #@204
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@207
    .line 1835
    return-void

    #@208
    .line 1837
    .end local v54    # "nmsg":Landroid/os/Message;
    :cond_9
    move-object/from16 v0, p1

    #@20a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@20c
    move-object/from16 v30, v0

    #@20e
    check-cast v30, Lcom/android/server/am/ProcessRecord;

    #@210
    .line 1838
    .local v30, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    #@212
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@214
    monitor-enter v7

    #@215
    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@218
    .line 1839
    move-object/from16 v0, p0

    #@21a
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@21c
    move-object/from16 v0, v30

    #@21e
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap11(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    #@221
    monitor-exit v7

    #@222
    .line 1838
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@225
    goto/16 :goto_0

    #@227
    :catchall_4
    move-exception v4

    #@228
    monitor-exit v7

    #@229
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@22c
    throw v4

    #@22d
    .line 1843
    .end local v30    # "app":Lcom/android/server/am/ProcessRecord;
    :pswitch_8
    move-object/from16 v0, p1

    #@22f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@231
    move-object/from16 v30, v0

    #@233
    check-cast v30, Lcom/android/server/am/ProcessRecord;

    #@235
    .line 1844
    .restart local v30    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    #@237
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@239
    monitor-enter v7

    #@23a
    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@23d
    .line 1845
    move-object/from16 v0, p0

    #@23f
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@241
    move-object/from16 v0, v30

    #@243
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap10(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    #@246
    monitor-exit v7

    #@247
    .line 1844
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@24a
    goto/16 :goto_0

    #@24c
    :catchall_5
    move-exception v4

    #@24d
    monitor-exit v7

    #@24e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@251
    throw v4

    #@252
    .line 1849
    .end local v30    # "app":Lcom/android/server/am/ProcessRecord;
    :pswitch_9
    move-object/from16 v0, p0

    #@254
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@256
    monitor-enter v7

    #@257
    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@25a
    .line 1850
    move-object/from16 v0, p0

    #@25c
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@25e
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    #@260
    const/4 v8, 0x1

    #@261
    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityStarter;->doPendingActivityLaunchesLocked(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    #@264
    monitor-exit v7

    #@265
    .line 1849
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@268
    goto/16 :goto_0

    #@26a
    :catchall_6
    move-exception v4

    #@26b
    monitor-exit v7

    #@26c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@26f
    throw v4

    #@270
    .line 1854
    :pswitch_a
    move-object/from16 v0, p0

    #@272
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@274
    monitor-enter v15

    #@275
    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@278
    .line 1855
    move-object/from16 v0, p1

    #@27a
    iget v6, v0, Landroid/os/Message;->arg1:I

    #@27c
    .line 1856
    .local v6, "appId":I
    move-object/from16 v0, p1

    #@27e
    iget v12, v0, Landroid/os/Message;->arg2:I

    #@280
    .line 1857
    .local v12, "userId":I
    move-object/from16 v0, p1

    #@282
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@284
    move-object/from16 v31, v0

    #@286
    check-cast v31, Landroid/os/Bundle;

    #@288
    .line 1858
    .local v31, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pkg"

    #@28b
    move-object/from16 v0, v31

    #@28d
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@290
    move-result-object v5

    #@291
    .line 1859
    .local v5, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    #@294
    move-object/from16 v0, v31

    #@296
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@299
    move-result-object v13

    #@29a
    .line 1860
    .local v13, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@29c
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@29e
    const/4 v7, 0x0

    #@29f
    const/4 v8, 0x0

    #@2a0
    const/4 v9, 0x1

    #@2a1
    const/4 v10, 0x0

    #@2a2
    .line 1861
    const/4 v11, 0x0

    #@2a3
    .line 1860
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    #@2a6
    monitor-exit v15

    #@2a7
    .line 1854
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2aa
    goto/16 :goto_0

    #@2ac
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "appId":I
    .end local v12    # "userId":I
    .end local v13    # "reason":Ljava/lang/String;
    .end local v31    # "bundle":Landroid/os/Bundle;
    :catchall_7
    move-exception v4

    #@2ad
    monitor-exit v15

    #@2ae
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2b1
    throw v4

    #@2b2
    .line 1865
    :pswitch_b
    move-object/from16 v0, p1

    #@2b4
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2b6
    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    #@2b8
    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    #@2bb
    goto/16 :goto_0

    #@2bd
    .line 1868
    :pswitch_c
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@2c0
    move-result-object v45

    #@2c1
    .line 1869
    .local v45, "inm":Landroid/app/INotificationManager;
    if-nez v45, :cond_a

    #@2c3
    .line 1870
    return-void

    #@2c4
    .line 1873
    :cond_a
    move-object/from16 v0, p1

    #@2c6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2c8
    move-object/from16 v66, v0

    #@2ca
    check-cast v66, Lcom/android/server/am/ActivityRecord;

    #@2cc
    .line 1874
    .local v66, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v66

    #@2ce
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2d0
    move-object/from16 v59, v0

    #@2d2
    .line 1875
    .local v59, "process":Lcom/android/server/am/ProcessRecord;
    if-nez v59, :cond_b

    #@2d4
    .line 1876
    return-void

    #@2d5
    .line 1880
    :cond_b
    :try_start_e
    move-object/from16 v0, p0

    #@2d7
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2d9
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@2db
    move-object/from16 v0, v59

    #@2dd
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@2df
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@2e1
    const/4 v8, 0x0

    #@2e2
    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@2e5
    move-result-object v34

    #@2e6
    .line 1881
    .local v34, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    #@2e8
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2ea
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@2ec
    const/4 v7, 0x1

    #@2ed
    new-array v7, v7, [Ljava/lang/Object;

    #@2ef
    .line 1882
    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2f2
    move-result-object v8

    #@2f3
    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2f6
    move-result-object v9

    #@2f7
    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@2fa
    move-result-object v8

    #@2fb
    const/4 v9, 0x0

    #@2fc
    aput-object v8, v7, v9

    #@2fe
    .line 1881
    const v8, 0x10403b0

    #@301
    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@304
    move-result-object v68

    #@305
    .line 1883
    .local v68, "text":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    #@307
    move-object/from16 v0, v34

    #@309
    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@30c
    .line 1884
    const v7, 0x10806be

    #@30f
    .line 1883
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@312
    move-result-object v4

    #@313
    .line 1885
    const-wide/16 v8, 0x0

    #@315
    .line 1883
    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@318
    move-result-object v4

    #@319
    .line 1886
    const/4 v7, 0x1

    #@31a
    .line 1883
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@31d
    move-result-object v4

    #@31e
    move-object/from16 v0, v68

    #@320
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@323
    move-result-object v4

    #@324
    .line 1888
    move-object/from16 v0, p0

    #@326
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@328
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@32a
    .line 1889
    const v8, 0x1060059

    #@32d
    .line 1888
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    #@330
    move-result v7

    #@331
    .line 1883
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@334
    move-result-object v4

    #@335
    move-object/from16 v0, v68

    #@337
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@33a
    move-result-object v4

    #@33b
    .line 1892
    move-object/from16 v0, p0

    #@33d
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@33f
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@341
    const v8, 0x10403b1

    #@344
    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@347
    move-result-object v7

    #@348
    .line 1883
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@34b
    move-result-object v4

    #@34c
    .line 1893
    move-object/from16 v0, p0

    #@34e
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@350
    iget-object v14, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@352
    .line 1894
    move-object/from16 v0, v66

    #@354
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@356
    move-object/from16 v16, v0

    #@358
    .line 1895
    new-instance v19, Landroid/os/UserHandle;

    #@35a
    move-object/from16 v0, v66

    #@35c
    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@35e
    move-object/from16 v0, v19

    #@360
    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    #@363
    .line 1893
    const/4 v15, 0x0

    #@364
    .line 1894
    const/high16 v17, 0x10000000

    #@366
    const/16 v18, 0x0

    #@368
    .line 1893
    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@36b
    move-result-object v7

    #@36c
    .line 1883
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@36f
    move-result-object v4

    #@370
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_4

    #@373
    move-result-object v19

    #@374
    .line 1898
    .local v19, "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    #@375
    :try_start_f
    new-array v0, v4, [I

    #@377
    move-object/from16 v20, v0

    #@379
    .line 1899
    .local v20, "outId":[I
    const-string/jumbo v15, "android"

    #@37c
    const-string/jumbo v16, "android"

    #@37f
    .line 1901
    move-object/from16 v0, v66

    #@381
    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@383
    move/from16 v21, v0

    #@385
    .line 1899
    const/16 v17, 0x0

    #@387
    .line 1900
    const v18, 0x10403b0

    #@38a
    move-object/from16 v14, v45

    #@38c
    .line 1899
    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_4

    #@38f
    goto/16 :goto_0

    #@391
    .line 1902
    .end local v20    # "outId":[I
    :catch_3
    move-exception v38

    #@392
    .line 1903
    .local v38, "e":Ljava/lang/RuntimeException;
    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@395
    move-result-object v4

    #@396
    .line 1904
    const-string/jumbo v7, "Error showing notification for heavy-weight app"

    #@399
    .line 1903
    move-object/from16 v0, v38

    #@39b
    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_4

    #@39e
    goto/16 :goto_0

    #@3a0
    .line 1907
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v34    # "context":Landroid/content/Context;
    .end local v38    # "e":Ljava/lang/RuntimeException;
    .end local v68    # "text":Ljava/lang/String;
    :catch_4
    move-exception v36

    #@3a1
    .line 1908
    .local v36, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@3a4
    move-result-object v4

    #@3a5
    const-string/jumbo v7, "Unable to create context for heavy notification"

    #@3a8
    move-object/from16 v0, v36

    #@3aa
    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3ad
    goto/16 :goto_0

    #@3af
    .line 1912
    .end local v36    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v45    # "inm":Landroid/app/INotificationManager;
    .end local v59    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v66    # "root":Lcom/android/server/am/ActivityRecord;
    :pswitch_d
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3b2
    move-result-object v14

    #@3b3
    .line 1913
    .local v14, "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_c

    #@3b5
    .line 1914
    return-void

    #@3b6
    .line 1917
    :cond_c
    :try_start_11
    const-string/jumbo v4, "android"

    #@3b9
    .line 1918
    move-object/from16 v0, p1

    #@3bb
    iget v7, v0, Landroid/os/Message;->arg1:I

    #@3bd
    .line 1917
    const/4 v8, 0x0

    #@3be
    .line 1918
    const v9, 0x10403b0

    #@3c1
    .line 1917
    invoke-interface {v14, v4, v8, v9, v7}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_13

    #@3c4
    goto/16 :goto_0

    #@3c6
    .line 1919
    :catch_5
    move-exception v38

    #@3c7
    .line 1920
    .restart local v38    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@3ca
    move-result-object v4

    #@3cb
    .line 1921
    const-string/jumbo v7, "Error canceling notification for service"

    #@3ce
    .line 1920
    move-object/from16 v0, v38

    #@3d0
    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d3
    goto/16 :goto_0

    #@3d5
    .line 1926
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v38    # "e":Ljava/lang/RuntimeException;
    :pswitch_e
    move-object/from16 v0, p0

    #@3d7
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3d9
    monitor-enter v7

    #@3da
    :try_start_12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@3dd
    .line 1927
    move-object/from16 v0, p0

    #@3df
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3e1
    const/4 v8, 0x1

    #@3e2
    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    #@3e5
    .line 1928
    const/16 v4, 0x1b

    #@3e7
    move-object/from16 v0, p0

    #@3e9
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    #@3ec
    .line 1929
    const/16 v4, 0x1b

    #@3ee
    move-object/from16 v0, p0

    #@3f0
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    #@3f3
    move-result-object v54

    #@3f4
    .line 1930
    .restart local v54    # "nmsg":Landroid/os/Message;
    const-wide/32 v8, 0xdbba0

    #@3f7
    move-object/from16 v0, p0

    #@3f9
    move-object/from16 v1, v54

    #@3fb
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    #@3fe
    monitor-exit v7

    #@3ff
    .line 1926
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@402
    goto/16 :goto_0

    #@404
    .end local v54    # "nmsg":Landroid/os/Message;
    :catchall_8
    move-exception v4

    #@405
    monitor-exit v7

    #@406
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@409
    throw v4

    #@40a
    .line 1934
    :pswitch_f
    move-object/from16 v0, p1

    #@40c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@40e
    move-object/from16 v47, v0

    #@410
    check-cast v47, Ljava/util/ArrayList;

    #@412
    .line 1935
    .local v47, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v69, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    #@414
    move-object/from16 v0, v69

    #@416
    move-object/from16 v1, p0

    #@418
    move-object/from16 v2, v47

    #@41a
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    #@41d
    .line 1940
    .local v69, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v69 .. v69}, Ljava/lang/Thread;->start()V

    #@420
    goto/16 :goto_0

    #@422
    .line 1944
    .end local v47    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v69    # "thread":Ljava/lang/Thread;
    :pswitch_10
    move-object/from16 v0, p0

    #@424
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@426
    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@428
    move-object/from16 v0, p1

    #@42a
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@42c
    check-cast v4, Lcom/android/server/am/UserState;

    #@42e
    move-object/from16 v0, p1

    #@430
    iget v8, v0, Landroid/os/Message;->arg1:I

    #@432
    move-object/from16 v0, p1

    #@434
    iget v9, v0, Landroid/os/Message;->arg2:I

    #@436
    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    #@439
    goto/16 :goto_0

    #@43b
    .line 1948
    :pswitch_11
    move-object/from16 v0, p0

    #@43d
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@43f
    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@441
    move-object/from16 v0, p1

    #@443
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@445
    check-cast v4, Lcom/android/server/am/UserState;

    #@447
    move-object/from16 v0, p1

    #@449
    iget v8, v0, Landroid/os/Message;->arg1:I

    #@44b
    move-object/from16 v0, p1

    #@44d
    iget v9, v0, Landroid/os/Message;->arg2:I

    #@44f
    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    #@452
    goto/16 :goto_0

    #@454
    .line 1952
    :pswitch_12
    move-object/from16 v0, p0

    #@456
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@458
    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@45a
    move-object/from16 v0, p1

    #@45c
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@45e
    check-cast v4, Lcom/android/server/am/UserState;

    #@460
    move-object/from16 v0, p1

    #@462
    iget v8, v0, Landroid/os/Message;->arg1:I

    #@464
    move-object/from16 v0, p1

    #@466
    iget v9, v0, Landroid/os/Message;->arg2:I

    #@468
    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    #@46b
    goto/16 :goto_0

    #@46d
    .line 1956
    :pswitch_13
    move-object/from16 v0, p1

    #@46f
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@471
    if-eqz v4, :cond_d

    #@473
    const/16 v53, 0x1

    #@475
    .line 1957
    .local v53, "nextState":Z
    :goto_7
    move-object/from16 v0, p0

    #@477
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@479
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    #@47b
    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    #@47e
    move-result v4

    #@47f
    move/from16 v0, v53

    #@481
    if-eq v4, v0, :cond_0

    #@483
    .line 1961
    if-eqz v53, :cond_e

    #@485
    .line 1962
    move-object/from16 v0, p0

    #@487
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@489
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    #@48b
    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    #@48e
    goto/16 :goto_0

    #@490
    .line 1956
    .end local v53    # "nextState":Z
    :cond_d
    const/16 v53, 0x0

    #@492
    .restart local v53    # "nextState":Z
    goto :goto_7

    #@493
    .line 1964
    :cond_e
    move-object/from16 v0, p0

    #@495
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@497
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    #@499
    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    #@49c
    goto/16 :goto_0

    #@49e
    .line 1970
    .end local v53    # "nextState":Z
    :pswitch_14
    move-object/from16 v0, p0

    #@4a0
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4a2
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-wrap15(Lcom/android/server/am/ActivityManagerService;)V

    #@4a5
    goto/16 :goto_0

    #@4a7
    .line 1974
    :pswitch_15
    move-object/from16 v0, p0

    #@4a9
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4ab
    monitor-enter v7

    #@4ac
    :try_start_13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@4af
    .line 1975
    move-object/from16 v0, p0

    #@4b1
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4b3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4b6
    move-result-wide v8

    #@4b7
    const/4 v10, 0x1

    #@4b8
    const/4 v11, 0x0

    #@4b9
    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    #@4bc
    monitor-exit v7

    #@4bd
    .line 1974
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@4c0
    goto/16 :goto_0

    #@4c2
    :catchall_9
    move-exception v4

    #@4c3
    monitor-exit v7

    #@4c4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@4c7
    throw v4

    #@4c8
    .line 1980
    :pswitch_16
    move-object/from16 v0, p0

    #@4ca
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4cc
    monitor-enter v7

    #@4cd
    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@4d0
    .line 1981
    move-object/from16 v0, p0

    #@4d2
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4d4
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@4d6
    invoke-virtual {v4}, Lcom/android/server/am/UserController;->startProfilesLocked()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    #@4d9
    monitor-exit v7

    #@4da
    .line 1980
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@4dd
    goto/16 :goto_0

    #@4df
    :catchall_a
    move-exception v4

    #@4e0
    monitor-exit v7

    #@4e1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@4e4
    throw v4

    #@4e5
    .line 1986
    :pswitch_17
    move-object/from16 v0, p0

    #@4e7
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4e9
    monitor-enter v7

    #@4ea
    :try_start_15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@4ed
    .line 1987
    move-object/from16 v0, p0

    #@4ef
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4f1
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@4f3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@4f6
    move-result v4

    #@4f7
    add-int/lit8 v43, v4, -0x1

    #@4f9
    .restart local v43    # "i":I
    :goto_8
    if-ltz v43, :cond_11

    #@4fb
    .line 1988
    move-object/from16 v0, p0

    #@4fd
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4ff
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@501
    move/from16 v0, v43

    #@503
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@506
    move-result-object v62

    #@507
    check-cast v62, Lcom/android/server/am/ProcessRecord;

    #@509
    .line 1989
    .restart local v62    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v62

    #@50b
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    #@50d
    if-eqz v4, :cond_f

    #@50f
    .line 1991
    :try_start_16
    move-object/from16 v0, v62

    #@511
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@513
    move-object/from16 v0, p1

    #@515
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@517
    if-nez v4, :cond_10

    #@519
    const/4 v4, 0x0

    #@51a
    :goto_9
    invoke-interface {v8, v4}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    #@51d
    .line 1987
    :cond_f
    :goto_a
    add-int/lit8 v43, v43, -0x1

    #@51f
    goto :goto_8

    #@520
    .line 1991
    :cond_10
    const/4 v4, 0x1

    #@521
    goto :goto_9

    #@522
    .line 1992
    :catch_6
    move-exception v39

    #@523
    .line 1993
    .restart local v39    # "ex":Landroid/os/RemoteException;
    :try_start_17
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@526
    move-result-object v4

    #@527
    new-instance v8, Ljava/lang/StringBuilder;

    #@529
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@52c
    const-string/jumbo v9, "Failed to update preferences for: "

    #@52f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@532
    move-result-object v8

    #@533
    move-object/from16 v0, v62

    #@535
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@537
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@539
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53c
    move-result-object v8

    #@53d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@540
    move-result-object v8

    #@541
    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    #@544
    goto :goto_a

    #@545
    .line 1986
    .end local v39    # "ex":Landroid/os/RemoteException;
    .end local v43    # "i":I
    .end local v62    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_b
    move-exception v4

    #@546
    monitor-exit v7

    #@547
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@54a
    throw v4

    #@54b
    .restart local v43    # "i":I
    :cond_11
    monitor-exit v7

    #@54c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@54f
    goto/16 :goto_0

    #@551
    .line 2001
    .end local v43    # "i":I
    :pswitch_18
    move-object/from16 v0, p0

    #@553
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@555
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@557
    .line 2002
    move-object/from16 v0, p1

    #@559
    iget v7, v0, Landroid/os/Message;->arg1:I

    #@55b
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@55e
    move-result-object v7

    #@55f
    move-object/from16 v0, p1

    #@561
    iget v8, v0, Landroid/os/Message;->arg1:I

    #@563
    .line 2001
    const v9, 0x8007

    #@566
    invoke-virtual {v4, v9, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    #@569
    .line 2003
    move-object/from16 v0, p0

    #@56b
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@56d
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@56f
    move-object/from16 v0, p1

    #@571
    iget v7, v0, Landroid/os/Message;->arg1:I

    #@573
    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    #@576
    goto/16 :goto_0

    #@578
    .line 2007
    :pswitch_19
    move-object/from16 v0, p1

    #@57a
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@57c
    .line 2008
    .restart local v12    # "userId":I
    move-object/from16 v0, p0

    #@57e
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@580
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@582
    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->unlockUser(I)V

    #@585
    .line 2009
    move-object/from16 v0, p0

    #@587
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@589
    monitor-enter v7

    #@58a
    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@58d
    .line 2010
    move-object/from16 v0, p0

    #@58f
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@591
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@593
    invoke-virtual {v4, v12}, Lcom/android/server/am/RecentTasks;->loadUserRecentsLocked(I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    #@596
    monitor-exit v7

    #@597
    .line 2009
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@59a
    .line 2012
    if-nez v12, :cond_12

    #@59c
    .line 2013
    move-object/from16 v0, p0

    #@59e
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5a0
    const/high16 v7, 0x40000

    #@5a2
    invoke-static {v4, v7}, Lcom/android/server/am/ActivityManagerService;->-wrap12(Lcom/android/server/am/ActivityManagerService;I)V

    #@5a5
    .line 2015
    :cond_12
    move-object/from16 v0, p0

    #@5a7
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5a9
    invoke-static {v4, v12}, Lcom/android/server/am/ActivityManagerService;->-wrap9(Lcom/android/server/am/ActivityManagerService;I)V

    #@5ac
    .line 2016
    move-object/from16 v0, p0

    #@5ae
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5b0
    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@5b2
    move-object/from16 v0, p1

    #@5b4
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5b6
    check-cast v4, Lcom/android/server/am/UserState;

    #@5b8
    invoke-virtual {v7, v4}, Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V

    #@5bb
    goto/16 :goto_0

    #@5bd
    .line 2009
    :catchall_c
    move-exception v4

    #@5be
    monitor-exit v7

    #@5bf
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@5c2
    throw v4

    #@5c3
    .line 2020
    .end local v12    # "userId":I
    :pswitch_1a
    move-object/from16 v0, p0

    #@5c5
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5c7
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@5c9
    .line 2022
    move-object/from16 v0, p1

    #@5cb
    iget v7, v0, Landroid/os/Message;->arg2:I

    #@5cd
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5d0
    move-result-object v7

    #@5d1
    move-object/from16 v0, p1

    #@5d3
    iget v8, v0, Landroid/os/Message;->arg2:I

    #@5d5
    .line 2021
    const/16 v9, 0x4008

    #@5d7
    .line 2020
    invoke-virtual {v4, v9, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    #@5da
    .line 2023
    move-object/from16 v0, p0

    #@5dc
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5de
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@5e0
    .line 2025
    move-object/from16 v0, p1

    #@5e2
    iget v7, v0, Landroid/os/Message;->arg1:I

    #@5e4
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5e7
    move-result-object v7

    #@5e8
    move-object/from16 v0, p1

    #@5ea
    iget v8, v0, Landroid/os/Message;->arg1:I

    #@5ec
    .line 2024
    const v9, 0x8008

    #@5ef
    .line 2023
    invoke-virtual {v4, v9, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    #@5f2
    .line 2026
    move-object/from16 v0, p0

    #@5f4
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5f6
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@5f8
    move-object/from16 v0, p1

    #@5fa
    iget v7, v0, Landroid/os/Message;->arg1:I

    #@5fc
    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    #@5ff
    goto/16 :goto_0

    #@601
    .line 2030
    :pswitch_1b
    move-object/from16 v0, p0

    #@603
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@605
    monitor-enter v7

    #@606
    :try_start_19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@609
    .line 2031
    move-object/from16 v0, p1

    #@60b
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@60d
    check-cast v4, Landroid/os/IBinder;

    #@60f
    invoke-static {v4}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@612
    move-result-object v61

    #@613
    .line 2032
    .local v61, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v61, :cond_13

    #@615
    move-object/from16 v0, v61

    #@617
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@619
    if-eqz v4, :cond_13

    #@61b
    move-object/from16 v0, v61

    #@61d
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@61f
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    #@621
    if-eqz v4, :cond_13

    #@623
    .line 2034
    :try_start_1a
    move-object/from16 v0, v61

    #@625
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@627
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@629
    move-object/from16 v0, v61

    #@62b
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@62d
    invoke-interface {v4, v8}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_12
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    #@630
    :cond_13
    :goto_b
    monitor-exit v7

    #@631
    .line 2030
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@634
    goto/16 :goto_0

    #@636
    .end local v61    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_d
    move-exception v4

    #@637
    monitor-exit v7

    #@638
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@63b
    throw v4

    #@63c
    .line 2042
    :pswitch_1c
    move-object/from16 v0, p1

    #@63e
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@640
    if-eqz v4, :cond_14

    #@642
    .line 2043
    const-string/jumbo v4, "FinishBooting"

    #@645
    const-wide/16 v8, 0x40

    #@647
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@64a
    .line 2044
    move-object/from16 v0, p0

    #@64c
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@64e
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    #@651
    .line 2045
    const-wide/16 v8, 0x40

    #@653
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@656
    .line 2047
    :cond_14
    move-object/from16 v0, p1

    #@658
    iget v4, v0, Landroid/os/Message;->arg2:I

    #@65a
    if-eqz v4, :cond_0

    #@65c
    .line 2048
    move-object/from16 v0, p0

    #@65e
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@660
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    #@663
    goto/16 :goto_0

    #@665
    .line 2054
    :pswitch_1d
    :try_start_1b
    move-object/from16 v0, p1

    #@667
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@669
    move-object/from16 v46, v0

    #@66b
    check-cast v46, Ljava/util/Locale;

    #@66d
    .line 2055
    .local v46, "l":Ljava/util/Locale;
    const-string/jumbo v4, "mount"

    #@670
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@673
    move-result-object v67

    #@674
    .line 2056
    .local v67, "service":Landroid/os/IBinder;
    invoke-static/range {v67 .. v67}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@677
    move-result-object v50

    #@678
    .line 2057
    .local v50, "mountService":Landroid/os/storage/IMountService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@67b
    move-result-object v4

    #@67c
    new-instance v7, Ljava/lang/StringBuilder;

    #@67e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@681
    const-string/jumbo v8, "Storing locale "

    #@684
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@687
    move-result-object v7

    #@688
    invoke-virtual/range {v46 .. v46}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@68b
    move-result-object v8

    #@68c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68f
    move-result-object v7

    #@690
    const-string/jumbo v8, " for decryption UI"

    #@693
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@696
    move-result-object v7

    #@697
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69a
    move-result-object v7

    #@69b
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@69e
    .line 2058
    const-string/jumbo v4, "SystemLocale"

    #@6a1
    invoke-virtual/range {v46 .. v46}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@6a4
    move-result-object v7

    #@6a5
    move-object/from16 v0, v50

    #@6a7
    invoke-interface {v0, v4, v7}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_7

    #@6aa
    goto/16 :goto_0

    #@6ac
    .line 2059
    .end local v46    # "l":Ljava/util/Locale;
    .end local v50    # "mountService":Landroid/os/storage/IMountService;
    .end local v67    # "service":Landroid/os/IBinder;
    :catch_7
    move-exception v37

    #@6ad
    .line 2060
    .local v37, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@6b0
    move-result-object v4

    #@6b1
    const-string/jumbo v7, "Error storing locale for decryption UI"

    #@6b4
    move-object/from16 v0, v37

    #@6b6
    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6b9
    goto/16 :goto_0

    #@6bb
    .line 2065
    .end local v37    # "e":Landroid/os/RemoteException;
    :pswitch_1e
    move-object/from16 v0, p0

    #@6bd
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@6bf
    monitor-enter v7

    #@6c0
    :try_start_1c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6c3
    .line 2066
    move-object/from16 v0, p0

    #@6c5
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@6c7
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@6ca
    move-result-object v4

    #@6cb
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    #@6ce
    move-result v4

    #@6cf
    add-int/lit8 v43, v4, -0x1

    #@6d1
    .restart local v43    # "i":I
    :goto_c
    if-ltz v43, :cond_15

    #@6d3
    .line 2069
    :try_start_1d
    move-object/from16 v0, p0

    #@6d5
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@6d7
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@6da
    move-result-object v4

    #@6db
    move/from16 v0, v43

    #@6dd
    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@6e0
    move-result-object v4

    #@6e1
    check-cast v4, Landroid/app/ITaskStackListener;

    #@6e3
    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_11
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    #@6e6
    .line 2066
    :goto_d
    add-int/lit8 v43, v43, -0x1

    #@6e8
    goto :goto_c

    #@6e9
    .line 2074
    :cond_15
    :try_start_1e
    move-object/from16 v0, p0

    #@6eb
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@6ed
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@6f0
    move-result-object v4

    #@6f1
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    #@6f4
    monitor-exit v7

    #@6f5
    .line 2065
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@6f8
    goto/16 :goto_0

    #@6fa
    .end local v43    # "i":I
    :catchall_e
    move-exception v4

    #@6fb
    monitor-exit v7

    #@6fc
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@6ff
    throw v4

    #@700
    .line 2079
    :pswitch_1f
    move-object/from16 v0, p0

    #@702
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@704
    monitor-enter v7

    #@705
    :try_start_1f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@708
    .line 2080
    move-object/from16 v0, p0

    #@70a
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@70c
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@70f
    move-result-object v4

    #@710
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    #@713
    move-result v4

    #@714
    add-int/lit8 v43, v4, -0x1

    #@716
    .restart local v43    # "i":I
    :goto_e
    if-ltz v43, :cond_16

    #@718
    .line 2083
    :try_start_20
    move-object/from16 v0, p0

    #@71a
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@71c
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@71f
    move-result-object v4

    #@720
    move/from16 v0, v43

    #@722
    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@725
    move-result-object v4

    #@726
    check-cast v4, Landroid/app/ITaskStackListener;

    #@728
    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onActivityPinned()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_10
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    #@72b
    .line 2080
    :goto_f
    add-int/lit8 v43, v43, -0x1

    #@72d
    goto :goto_e

    #@72e
    .line 2088
    :cond_16
    :try_start_21
    move-object/from16 v0, p0

    #@730
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@732
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@735
    move-result-object v4

    #@736
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    #@739
    monitor-exit v7

    #@73a
    .line 2079
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@73d
    goto/16 :goto_0

    #@73f
    .end local v43    # "i":I
    :catchall_f
    move-exception v4

    #@740
    monitor-exit v7

    #@741
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@744
    throw v4

    #@745
    .line 2093
    :pswitch_20
    move-object/from16 v0, p0

    #@747
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@749
    monitor-enter v7

    #@74a
    :try_start_22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@74d
    .line 2094
    move-object/from16 v0, p0

    #@74f
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@751
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@754
    move-result-object v4

    #@755
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    #@758
    move-result v4

    #@759
    add-int/lit8 v43, v4, -0x1

    #@75b
    .restart local v43    # "i":I
    :goto_10
    if-ltz v43, :cond_17

    #@75d
    .line 2097
    :try_start_23
    move-object/from16 v0, p0

    #@75f
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@761
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@764
    move-result-object v4

    #@765
    move/from16 v0, v43

    #@767
    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@76a
    move-result-object v4

    #@76b
    check-cast v4, Landroid/app/ITaskStackListener;

    #@76d
    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onPinnedActivityRestartAttempt()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_f
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    #@770
    .line 2094
    :goto_11
    add-int/lit8 v43, v43, -0x1

    #@772
    goto :goto_10

    #@773
    .line 2102
    :cond_17
    :try_start_24
    move-object/from16 v0, p0

    #@775
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@777
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@77a
    move-result-object v4

    #@77b
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    #@77e
    monitor-exit v7

    #@77f
    .line 2093
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@782
    goto/16 :goto_0

    #@784
    .end local v43    # "i":I
    :catchall_10
    move-exception v4

    #@785
    monitor-exit v7

    #@786
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@789
    throw v4

    #@78a
    .line 2107
    :pswitch_21
    move-object/from16 v0, p0

    #@78c
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@78e
    monitor-enter v7

    #@78f
    :try_start_25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@792
    .line 2108
    move-object/from16 v0, p0

    #@794
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@796
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@799
    move-result-object v4

    #@79a
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_11

    #@79d
    move-result v4

    #@79e
    add-int/lit8 v43, v4, -0x1

    #@7a0
    .restart local v43    # "i":I
    :goto_12
    if-ltz v43, :cond_18

    #@7a2
    .line 2111
    :try_start_26
    move-object/from16 v0, p0

    #@7a4
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7a6
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@7a9
    move-result-object v4

    #@7aa
    move/from16 v0, v43

    #@7ac
    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@7af
    move-result-object v4

    #@7b0
    check-cast v4, Landroid/app/ITaskStackListener;

    #@7b2
    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onPinnedStackAnimationEnded()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_e
    .catchall {:try_start_26 .. :try_end_26} :catchall_11

    #@7b5
    .line 2108
    :goto_13
    add-int/lit8 v43, v43, -0x1

    #@7b7
    goto :goto_12

    #@7b8
    .line 2116
    :cond_18
    :try_start_27
    move-object/from16 v0, p0

    #@7ba
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7bc
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@7bf
    move-result-object v4

    #@7c0
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_11

    #@7c3
    monitor-exit v7

    #@7c4
    .line 2107
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@7c7
    goto/16 :goto_0

    #@7c9
    .end local v43    # "i":I
    :catchall_11
    move-exception v4

    #@7ca
    monitor-exit v7

    #@7cb
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@7ce
    throw v4

    #@7cf
    .line 2121
    :pswitch_22
    move-object/from16 v0, p0

    #@7d1
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7d3
    monitor-enter v8

    #@7d4
    :try_start_28
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@7d7
    .line 2122
    move-object/from16 v0, p0

    #@7d9
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7db
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@7de
    move-result-object v4

    #@7df
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_12

    #@7e2
    move-result v4

    #@7e3
    add-int/lit8 v43, v4, -0x1

    #@7e5
    .restart local v43    # "i":I
    :goto_14
    if-ltz v43, :cond_19

    #@7e7
    .line 2125
    :try_start_29
    move-object/from16 v0, p0

    #@7e9
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7eb
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@7ee
    move-result-object v4

    #@7ef
    move/from16 v0, v43

    #@7f1
    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@7f4
    move-result-object v4

    #@7f5
    check-cast v4, Landroid/app/ITaskStackListener;

    #@7f7
    .line 2126
    move-object/from16 v0, p1

    #@7f9
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7fb
    check-cast v7, Ljava/lang/String;

    #@7fd
    move-object/from16 v0, p1

    #@7ff
    iget v9, v0, Landroid/os/Message;->arg1:I

    #@801
    .line 2125
    invoke-interface {v4, v7, v9}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_d
    .catchall {:try_start_29 .. :try_end_29} :catchall_12

    #@804
    .line 2122
    :goto_15
    add-int/lit8 v43, v43, -0x1

    #@806
    goto :goto_14

    #@807
    .line 2131
    :cond_19
    :try_start_2a
    move-object/from16 v0, p0

    #@809
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@80b
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@80e
    move-result-object v4

    #@80f
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_12

    #@812
    monitor-exit v8

    #@813
    .line 2121
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@816
    goto/16 :goto_0

    #@818
    .end local v43    # "i":I
    :catchall_12
    move-exception v4

    #@819
    monitor-exit v8

    #@81a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@81d
    throw v4

    #@81e
    .line 2136
    :pswitch_23
    move-object/from16 v0, p0

    #@820
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@822
    monitor-enter v7

    #@823
    :try_start_2b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@826
    .line 2137
    move-object/from16 v0, p0

    #@828
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@82a
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@82d
    move-result-object v4

    #@82e
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_13

    #@831
    move-result v4

    #@832
    add-int/lit8 v43, v4, -0x1

    #@834
    .restart local v43    # "i":I
    :goto_16
    if-ltz v43, :cond_1a

    #@836
    .line 2140
    :try_start_2c
    move-object/from16 v0, p0

    #@838
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@83a
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@83d
    move-result-object v4

    #@83e
    move/from16 v0, v43

    #@840
    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@843
    move-result-object v4

    #@844
    check-cast v4, Landroid/app/ITaskStackListener;

    #@846
    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedStack()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_13

    #@849
    .line 2137
    :goto_17
    add-int/lit8 v43, v43, -0x1

    #@84b
    goto :goto_16

    #@84c
    .line 2146
    :cond_1a
    :try_start_2d
    move-object/from16 v0, p0

    #@84e
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@850
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@853
    move-result-object v4

    #@854
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_13

    #@857
    monitor-exit v7

    #@858
    .line 2136
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@85b
    goto/16 :goto_0

    #@85d
    .end local v43    # "i":I
    :catchall_13
    move-exception v4

    #@85e
    monitor-exit v7

    #@85f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@862
    throw v4

    #@863
    .line 2151
    :pswitch_24
    move-object/from16 v0, p1

    #@865
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@867
    move/from16 v71, v0

    #@869
    .line 2152
    .local v71, "uid":I
    move-object/from16 v0, p1

    #@86b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@86d
    move-object/from16 v41, v0

    #@86f
    check-cast v41, [B

    #@871
    .line 2154
    .local v41, "firstPacket":[B
    move-object/from16 v0, p0

    #@873
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@875
    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@877
    monitor-enter v7

    #@878
    .line 2155
    const/16 v43, 0x0

    #@87a
    .restart local v43    # "i":I
    :goto_18
    :try_start_2e
    move-object/from16 v0, p0

    #@87c
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@87e
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@880
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@883
    move-result v4

    #@884
    move/from16 v0, v43

    #@886
    if-ge v0, v4, :cond_1c

    #@888
    .line 2156
    move-object/from16 v0, p0

    #@88a
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@88c
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@88e
    move/from16 v0, v43

    #@890
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@893
    move-result-object v55

    #@894
    check-cast v55, Lcom/android/server/am/ProcessRecord;

    #@896
    .line 2157
    .local v55, "p":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v55

    #@898
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_14

    #@89a
    move/from16 v0, v71

    #@89c
    if-ne v4, v0, :cond_1b

    #@89e
    .line 2159
    :try_start_2f
    move-object/from16 v0, v55

    #@8a0
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@8a2
    move-object/from16 v0, v41

    #@8a4
    invoke-interface {v4, v0}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_b
    .catchall {:try_start_2f .. :try_end_2f} :catchall_14

    #@8a7
    .line 2155
    :cond_1b
    :goto_19
    add-int/lit8 v43, v43, 0x1

    #@8a9
    goto :goto_18

    #@8aa
    .end local v55    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_1c
    monitor-exit v7

    #@8ab
    goto/16 :goto_0

    #@8ad
    .line 2154
    :catchall_14
    move-exception v4

    #@8ae
    monitor-exit v7

    #@8af
    throw v4

    #@8b0
    .line 2172
    .end local v41    # "firstPacket":[B
    .end local v43    # "i":I
    .end local v71    # "uid":I
    :pswitch_25
    move-object/from16 v0, p0

    #@8b2
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@8b4
    monitor-enter v7

    #@8b5
    :try_start_30
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@8b8
    .line 2173
    move-object/from16 v0, p0

    #@8ba
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@8bc
    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    #@8be
    move-object/from16 v58, v0

    #@8c0
    .line 2174
    .local v58, "procName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8c2
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@8c4
    iget v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    #@8c6
    move/from16 v71, v0

    #@8c8
    .line 2175
    .restart local v71    # "uid":I
    move-object/from16 v0, p0

    #@8ca
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@8cc
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    #@8ce
    move-object/from16 v0, v58

    #@8d0
    move/from16 v1, v71

    #@8d2
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@8d5
    move-result-object v72

    #@8d6
    check-cast v72, Landroid/util/Pair;

    #@8d8
    .line 2176
    .local v72, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v72, :cond_1d

    #@8da
    .line 2177
    move-object/from16 v0, p0

    #@8dc
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@8de
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    #@8e0
    const/4 v8, 0x0

    #@8e1
    move-object/from16 v0, v58

    #@8e3
    invoke-virtual {v4, v0, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@8e6
    move-result-object v72

    #@8e7
    .end local v72    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    check-cast v72, Landroid/util/Pair;

    #@8e9
    .line 2179
    .restart local v72    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_1d
    if-eqz v72, :cond_1e

    #@8eb
    .line 2180
    move-object/from16 v0, v72

    #@8ed
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@8ef
    check-cast v4, Ljava/lang/Long;

    #@8f1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@8f4
    move-result-wide v48

    #@8f5
    .line 2181
    .local v48, "memLimit":J
    move-object/from16 v0, v72

    #@8f7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@8f9
    move-object/from16 v63, v0

    #@8fb
    check-cast v63, Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_15

    #@8fd
    :goto_1a
    monitor-exit v7

    #@8fe
    .line 2172
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@901
    .line 2187
    if-nez v58, :cond_1f

    #@903
    .line 2188
    return-void

    #@904
    .line 2183
    .end local v48    # "memLimit":J
    :cond_1e
    const-wide/16 v48, 0x0

    #@906
    .line 2184
    .restart local v48    # "memLimit":J
    const/16 v63, 0x0

    #@908
    .local v63, "reportPackage":Ljava/lang/String;
    goto :goto_1a

    #@909
    .line 2172
    .end local v48    # "memLimit":J
    .end local v58    # "procName":Ljava/lang/String;
    .end local v63    # "reportPackage":Ljava/lang/String;
    .end local v71    # "uid":I
    .end local v72    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_15
    move-exception v4

    #@90a
    monitor-exit v7

    #@90b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@90e
    throw v4

    #@90f
    .line 2194
    .restart local v48    # "memLimit":J
    .restart local v58    # "procName":Ljava/lang/String;
    .restart local v71    # "uid":I
    .restart local v72    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_1f
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@912
    move-result-object v14

    #@913
    .line 2195
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_20

    #@915
    .line 2196
    return-void

    #@916
    .line 2199
    :cond_20
    move-object/from16 v0, p0

    #@918
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@91a
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@91c
    const/4 v7, 0x1

    #@91d
    new-array v7, v7, [Ljava/lang/Object;

    #@91f
    const/4 v8, 0x0

    #@920
    aput-object v58, v7, v8

    #@922
    const v8, 0x10403b8

    #@925
    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@928
    move-result-object v68

    #@929
    .line 2202
    .restart local v68    # "text":Ljava/lang/String;
    new-instance v35, Landroid/content/Intent;

    #@92b
    invoke-direct/range {v35 .. v35}, Landroid/content/Intent;-><init>()V

    #@92e
    .line 2203
    .local v35, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.server.am.DELETE_DUMPHEAP"

    #@931
    move-object/from16 v0, v35

    #@933
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@936
    .line 2204
    new-instance v23, Landroid/content/Intent;

    #@938
    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    #@93b
    .line 2205
    .local v23, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android"

    #@93e
    const-class v7, Lcom/android/internal/app/DumpHeapActivity;

    #@940
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@943
    move-result-object v7

    #@944
    move-object/from16 v0, v23

    #@946
    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@949
    .line 2206
    const-string/jumbo v4, "process"

    #@94c
    move-object/from16 v0, v23

    #@94e
    move-object/from16 v1, v58

    #@950
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@953
    .line 2207
    const-string/jumbo v4, "size"

    #@956
    move-object/from16 v0, v23

    #@958
    move-wide/from16 v1, v48

    #@95a
    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@95d
    .line 2208
    if-eqz v63, :cond_21

    #@95f
    .line 2209
    const-string/jumbo v4, "direct_launch"

    #@962
    move-object/from16 v0, v23

    #@964
    move-object/from16 v1, v63

    #@966
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@969
    .line 2211
    :cond_21
    invoke-static/range {v71 .. v71}, Landroid/os/UserHandle;->getUserId(I)I

    #@96c
    move-result v12

    #@96d
    .line 2212
    .restart local v12    # "userId":I
    new-instance v4, Landroid/app/Notification$Builder;

    #@96f
    move-object/from16 v0, p0

    #@971
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@973
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@975
    invoke-direct {v4, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@978
    .line 2213
    const v7, 0x10806be

    #@97b
    .line 2212
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@97e
    move-result-object v4

    #@97f
    .line 2214
    const-wide/16 v8, 0x0

    #@981
    .line 2212
    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@984
    move-result-object v4

    #@985
    .line 2215
    const/4 v7, 0x1

    #@986
    .line 2212
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@989
    move-result-object v4

    #@98a
    .line 2216
    const/4 v7, 0x1

    #@98b
    .line 2212
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@98e
    move-result-object v4

    #@98f
    move-object/from16 v0, v68

    #@991
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@994
    move-result-object v4

    #@995
    .line 2218
    move-object/from16 v0, p0

    #@997
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@999
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@99b
    .line 2219
    const v8, 0x1060059

    #@99e
    .line 2218
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    #@9a1
    move-result v7

    #@9a2
    .line 2212
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@9a5
    move-result-object v4

    #@9a6
    move-object/from16 v0, v68

    #@9a8
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@9ab
    move-result-object v4

    #@9ac
    .line 2222
    move-object/from16 v0, p0

    #@9ae
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@9b0
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@9b2
    const v8, 0x10403b9

    #@9b5
    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9b8
    move-result-object v7

    #@9b9
    .line 2212
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@9bc
    move-result-object v4

    #@9bd
    .line 2223
    move-object/from16 v0, p0

    #@9bf
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@9c1
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@9c3
    move-object/from16 v21, v0

    #@9c5
    .line 2225
    new-instance v26, Landroid/os/UserHandle;

    #@9c7
    move-object/from16 v0, v26

    #@9c9
    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    #@9cc
    .line 2223
    const/16 v22, 0x0

    #@9ce
    .line 2224
    const/high16 v24, 0x10000000

    #@9d0
    const/16 v25, 0x0

    #@9d2
    .line 2223
    invoke-static/range {v21 .. v26}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@9d5
    move-result-object v7

    #@9d6
    .line 2212
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@9d9
    move-result-object v4

    #@9da
    .line 2226
    move-object/from16 v0, p0

    #@9dc
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@9de
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@9e0
    .line 2227
    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@9e2
    .line 2226
    const/4 v9, 0x0

    #@9e3
    .line 2227
    const/4 v10, 0x0

    #@9e4
    .line 2226
    move-object/from16 v0, v35

    #@9e6
    invoke-static {v7, v9, v0, v10, v8}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@9e9
    move-result-object v7

    #@9ea
    .line 2212
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@9ed
    move-result-object v4

    #@9ee
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@9f1
    move-result-object v19

    #@9f2
    .line 2231
    .restart local v19    # "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    #@9f3
    :try_start_31
    new-array v0, v4, [I

    #@9f5
    move-object/from16 v20, v0

    #@9f7
    .line 2232
    .restart local v20    # "outId":[I
    const-string/jumbo v15, "android"

    #@9fa
    const-string/jumbo v16, "android"

    #@9fd
    const/16 v17, 0x0

    #@9ff
    .line 2233
    const v18, 0x10403b8

    #@a02
    move/from16 v21, v12

    #@a04
    .line 2232
    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_31} :catch_a

    #@a07
    goto/16 :goto_0

    #@a09
    .line 2235
    .end local v20    # "outId":[I
    :catch_8
    move-exception v38

    #@a0a
    .line 2236
    .restart local v38    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@a0d
    move-result-object v4

    #@a0e
    .line 2237
    const-string/jumbo v7, "Error showing notification for dump heap"

    #@a11
    .line 2236
    move-object/from16 v0, v38

    #@a13
    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a16
    goto/16 :goto_0

    #@a18
    .line 2242
    .end local v12    # "userId":I
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v35    # "deleteIntent":Landroid/content/Intent;
    .end local v38    # "e":Ljava/lang/RuntimeException;
    .end local v48    # "memLimit":J
    .end local v58    # "procName":Ljava/lang/String;
    .end local v68    # "text":Ljava/lang/String;
    .end local v71    # "uid":I
    .end local v72    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :pswitch_26
    move-object/from16 v0, p0

    #@a1a
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a1c
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@a1f
    move-result-object v7

    #@a20
    invoke-virtual {v7}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@a23
    move-result-object v7

    #@a24
    .line 2243
    sget-object v8, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    #@a26
    .line 2246
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@a29
    move-result v9

    #@a2a
    .line 2244
    const/4 v10, 0x3

    #@a2b
    .line 2242
    invoke-virtual {v4, v7, v8, v10, v9}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    #@a2e
    .line 2247
    move-object/from16 v0, p0

    #@a30
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a32
    monitor-enter v7

    #@a33
    :try_start_32
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@a36
    .line 2248
    move-object/from16 v0, p0

    #@a38
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a3a
    const/4 v8, 0x0

    #@a3b
    iput-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    #@a3d
    .line 2249
    move-object/from16 v0, p0

    #@a3f
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a41
    const/4 v8, 0x0

    #@a42
    iput-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    #@a44
    .line 2250
    move-object/from16 v0, p0

    #@a46
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a48
    const/4 v8, -0x1

    #@a49
    iput v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    #@a4b
    .line 2251
    move-object/from16 v0, p0

    #@a4d
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a4f
    const/4 v8, -0x1

    #@a50
    iput v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_16

    #@a52
    monitor-exit v7

    #@a53
    .line 2247
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@a56
    goto/16 :goto_0

    #@a58
    :catchall_16
    move-exception v4

    #@a59
    monitor-exit v7

    #@a5a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@a5d
    throw v4

    #@a5e
    .line 2255
    :pswitch_27
    move-object/from16 v0, p0

    #@a60
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a62
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@a64
    move-object/from16 v0, p1

    #@a66
    iget v7, v0, Landroid/os/Message;->arg1:I

    #@a68
    invoke-virtual {v4, v7}, Lcom/android/server/am/UserController;->dispatchForegroundProfileChanged(I)V

    #@a6b
    goto/16 :goto_0

    #@a6d
    .line 2258
    :pswitch_28
    move-object/from16 v0, p1

    #@a6f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a71
    move-object/from16 v70, v0

    #@a73
    check-cast v70, Lcom/android/server/am/AppTimeTracker;

    #@a75
    .line 2259
    .local v70, "tracker":Lcom/android/server/am/AppTimeTracker;
    move-object/from16 v0, p0

    #@a77
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a79
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@a7b
    move-object/from16 v0, v70

    #@a7d
    invoke-virtual {v0, v4}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    #@a80
    goto/16 :goto_0

    #@a82
    .line 2262
    .end local v70    # "tracker":Lcom/android/server/am/AppTimeTracker;
    :pswitch_29
    move-object/from16 v0, p0

    #@a84
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a86
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@a88
    move-object/from16 v0, p1

    #@a8a
    iget v7, v0, Landroid/os/Message;->arg1:I

    #@a8c
    invoke-virtual {v4, v7}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(I)V

    #@a8f
    goto/16 :goto_0

    #@a91
    .line 2265
    :pswitch_2a
    move-object/from16 v0, p1

    #@a93
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a95
    move-object/from16 v33, v0

    #@a97
    check-cast v33, Landroid/app/IUiAutomationConnection;

    #@a99
    .line 2267
    .local v33, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_33
    invoke-interface/range {v33 .. v33}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_9

    #@a9c
    .line 2273
    :goto_1b
    move-object/from16 v0, p0

    #@a9e
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@aa0
    const/4 v7, 0x0

    #@aa1
    invoke-static {v4, v7}, Lcom/android/server/am/ActivityManagerService;->-set4(Lcom/android/server/am/ActivityManagerService;Z)Z

    #@aa4
    goto/16 :goto_0

    #@aa6
    .line 2268
    :catch_9
    move-exception v37

    #@aa7
    .line 2269
    .restart local v37    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@aaa
    move-result-object v4

    #@aab
    const-string/jumbo v7, "Error shutting down UiAutomationConnection"

    #@aae
    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ab1
    goto :goto_1b

    #@ab2
    .line 2276
    .end local v33    # "connection":Landroid/app/IUiAutomationConnection;
    .end local v37    # "e":Landroid/os/RemoteException;
    :pswitch_2b
    move-object/from16 v0, p0

    #@ab4
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@ab6
    monitor-enter v7

    #@ab7
    :try_start_34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@aba
    .line 2277
    move-object/from16 v0, p0

    #@abc
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@abe
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get4(Lcom/android/server/am/ActivityManagerService;)Z

    #@ac1
    move-result v4

    #@ac2
    if-eqz v4, :cond_22

    #@ac4
    .line 2278
    move-object/from16 v0, p0

    #@ac6
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@ac8
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)J

    #@acb
    move-result-wide v8

    #@acc
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@acf
    move-result-wide v10

    #@ad0
    const-wide/16 v16, 0x9c4

    #@ad2
    sub-long v10, v10, v16

    #@ad4
    cmp-long v4, v8, v10

    #@ad6
    if-gez v4, :cond_23

    #@ad8
    .line 2279
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-wrap3()I

    #@adb
    .line 2280
    move-object/from16 v0, p0

    #@add
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@adf
    const/4 v8, 0x0

    #@ae0
    invoke-static {v4, v8}, Lcom/android/server/am/ActivityManagerService;->-set2(Lcom/android/server/am/ActivityManagerService;Z)Z

    #@ae3
    .line 2281
    move-object/from16 v0, p0

    #@ae5
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@ae7
    const-wide/16 v8, 0x0

    #@ae9
    invoke-static {v4, v8, v9}, Lcom/android/server/am/ActivityManagerService;->-set0(Lcom/android/server/am/ActivityManagerService;J)J
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_17

    #@aec
    :cond_22
    :goto_1c
    monitor-exit v7

    #@aed
    .line 2276
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@af0
    goto/16 :goto_0

    #@af2
    .line 2283
    :cond_23
    :try_start_35
    move-object/from16 v0, p0

    #@af4
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@af6
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@af8
    const/16 v8, 0x3a

    #@afa
    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    #@afd
    move-result-object v52

    #@afe
    .line 2284
    .local v52, "newmsg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@b00
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b02
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@b04
    const-wide/16 v8, 0x9c4

    #@b06
    move-object/from16 v0, v52

    #@b08
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_17

    #@b0b
    goto :goto_1c

    #@b0c
    .line 2276
    .end local v52    # "newmsg":Landroid/os/Message;
    :catchall_17
    move-exception v4

    #@b0d
    monitor-exit v7

    #@b0e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@b11
    throw v4

    #@b12
    .line 2290
    :pswitch_2c
    move-object/from16 v0, p0

    #@b14
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b16
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    #@b19
    goto/16 :goto_0

    #@b1b
    .line 2293
    :pswitch_2d
    move-object/from16 v0, p0

    #@b1d
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b1f
    monitor-enter v7

    #@b20
    :try_start_36
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@b23
    .line 2294
    move-object/from16 v0, p0

    #@b25
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b27
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@b29
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->logStackState()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_18

    #@b2c
    monitor-exit v7

    #@b2d
    .line 2293
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@b30
    goto/16 :goto_0

    #@b32
    :catchall_18
    move-exception v4

    #@b33
    monitor-exit v7

    #@b34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@b37
    throw v4

    #@b38
    .line 2298
    :pswitch_2e
    const-class v4, Lcom/android/server/vr/VrManagerInternal;

    #@b3a
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@b3d
    move-result-object v74

    #@b3e
    check-cast v74, Lcom/android/server/vr/VrManagerInternal;

    #@b40
    .line 2299
    .local v74, "vrService":Lcom/android/server/vr/VrManagerInternal;
    move-object/from16 v0, p1

    #@b42
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b44
    move-object/from16 v61, v0

    #@b46
    check-cast v61, Lcom/android/server/am/ActivityRecord;

    #@b48
    .line 2304
    .restart local v61    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    #@b4a
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b4c
    monitor-enter v7

    #@b4d
    :try_start_37
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@b50
    .line 2305
    move-object/from16 v0, v61

    #@b52
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    #@b54
    if-eqz v4, :cond_25

    #@b56
    const/16 v73, 0x1

    #@b58
    .line 2306
    .local v73, "vrMode":Z
    :goto_1d
    move-object/from16 v0, v61

    #@b5a
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    #@b5c
    move-object/from16 v64, v0

    #@b5e
    .line 2307
    .local v64, "requestedPackage":Landroid/content/ComponentName;
    move-object/from16 v0, v61

    #@b60
    iget v12, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@b62
    .line 2308
    .restart local v12    # "userId":I
    move-object/from16 v0, v61

    #@b64
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@b66
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    #@b69
    move-result-object v32

    #@b6a
    .line 2309
    .local v32, "callingPackage":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@b6c
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b6e
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get3(Lcom/android/server/am/ActivityManagerService;)Z

    #@b71
    move-result v4

    #@b72
    move/from16 v0, v73

    #@b74
    if-eq v4, v0, :cond_24

    #@b76
    .line 2310
    move-object/from16 v0, p0

    #@b78
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b7a
    move/from16 v0, v73

    #@b7c
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-set1(Lcom/android/server/am/ActivityManagerService;Z)Z

    #@b7f
    .line 2311
    move-object/from16 v0, p0

    #@b81
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b83
    move-object/from16 v0, p0

    #@b85
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b87
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@b89
    move-object/from16 v0, p0

    #@b8b
    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b8d
    invoke-static {v9}, Lcom/android/server/am/ActivityManagerService;->-get3(Lcom/android/server/am/ActivityManagerService;)Z

    #@b90
    move-result v9

    #@b91
    invoke-static {v8, v9}, Lcom/android/server/am/ActivityManagerService;->-wrap2(Landroid/content/res/Configuration;Z)Z

    #@b94
    move-result v8

    #@b95
    invoke-static {v4, v8}, Lcom/android/server/am/ActivityManagerService;->-set3(Lcom/android/server/am/ActivityManagerService;Z)Z
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_19

    #@b98
    :cond_24
    monitor-exit v7

    #@b99
    .line 2304
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@b9c
    .line 2314
    move-object/from16 v0, v74

    #@b9e
    move/from16 v1, v73

    #@ba0
    move-object/from16 v2, v64

    #@ba2
    move-object/from16 v3, v32

    #@ba4
    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    #@ba7
    goto/16 :goto_0

    #@ba9
    .line 2305
    .end local v12    # "userId":I
    .end local v32    # "callingPackage":Landroid/content/ComponentName;
    .end local v64    # "requestedPackage":Landroid/content/ComponentName;
    .end local v73    # "vrMode":Z
    :cond_25
    const/16 v73, 0x0

    #@bab
    .restart local v73    # "vrMode":Z
    goto :goto_1d

    #@bac
    .line 2304
    .end local v73    # "vrMode":Z
    :catchall_19
    move-exception v4

    #@bad
    monitor-exit v7

    #@bae
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@bb1
    throw v4

    #@bb2
    .line 2317
    .end local v61    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v74    # "vrService":Lcom/android/server/vr/VrManagerInternal;
    :pswitch_2f
    move-object/from16 v0, p1

    #@bb4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@bb6
    move-object/from16 v61, v0

    #@bb8
    check-cast v61, Lcom/android/server/am/ActivityRecord;

    #@bba
    .line 2318
    .restart local v61    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v61, :cond_26

    #@bbc
    move-object/from16 v0, v61

    #@bbe
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    #@bc0
    if-eqz v4, :cond_26

    #@bc2
    const/16 v51, 0x1

    #@bc4
    .line 2319
    .local v51, "needsVrMode":Z
    :goto_1e
    if-eqz v51, :cond_0

    #@bc6
    .line 2320
    move-object/from16 v0, p0

    #@bc8
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@bca
    move-object/from16 v24, v0

    #@bcc
    move-object/from16 v0, p1

    #@bce
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@bd0
    const/4 v7, 0x1

    #@bd1
    if-ne v4, v7, :cond_27

    #@bd3
    const/16 v25, 0x1

    #@bd5
    :goto_1f
    move-object/from16 v0, v61

    #@bd7
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    #@bd9
    move-object/from16 v26, v0

    #@bdb
    move-object/from16 v0, v61

    #@bdd
    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@bdf
    move/from16 v27, v0

    #@be1
    .line 2321
    move-object/from16 v0, v61

    #@be3
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@be5
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    #@be8
    move-result-object v28

    #@be9
    const/16 v29, 0x0

    #@beb
    .line 2320
    invoke-static/range {v24 .. v29}, Lcom/android/server/am/ActivityManagerService;->-wrap4(Lcom/android/server/am/ActivityManagerService;ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V

    #@bee
    goto/16 :goto_0

    #@bf0
    .line 2318
    .end local v51    # "needsVrMode":Z
    :cond_26
    const/16 v51, 0x0

    #@bf2
    goto :goto_1e

    #@bf3
    .line 2320
    .restart local v51    # "needsVrMode":Z
    :cond_27
    const/16 v25, 0x0

    #@bf5
    goto :goto_1f

    #@bf6
    .line 2238
    .end local v51    # "needsVrMode":Z
    .end local v61    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v12    # "userId":I
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v23    # "intent":Landroid/content/Intent;
    .restart local v35    # "deleteIntent":Landroid/content/Intent;
    .restart local v48    # "memLimit":J
    .restart local v58    # "procName":Ljava/lang/String;
    .restart local v68    # "text":Ljava/lang/String;
    .restart local v71    # "uid":I
    .restart local v72    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catch_a
    move-exception v37

    #@bf7
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@bf9
    .line 2160
    .end local v12    # "userId":I
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v35    # "deleteIntent":Landroid/content/Intent;
    .end local v37    # "e":Landroid/os/RemoteException;
    .end local v48    # "memLimit":J
    .end local v58    # "procName":Ljava/lang/String;
    .end local v68    # "text":Ljava/lang/String;
    .end local v72    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v41    # "firstPacket":[B
    .restart local v43    # "i":I
    .restart local v55    # "p":Lcom/android/server/am/ProcessRecord;
    :catch_b
    move-exception v44

    #@bfa
    .local v44, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_19

    #@bfc
    .line 2142
    .end local v41    # "firstPacket":[B
    .end local v44    # "ignored":Landroid/os/RemoteException;
    .end local v55    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v71    # "uid":I
    :catch_c
    move-exception v37

    #@bfd
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_17

    #@bff
    .line 2127
    .end local v37    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v37

    #@c00
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_15

    #@c02
    .line 2112
    .end local v37    # "e":Landroid/os/RemoteException;
    :catch_e
    move-exception v37

    #@c03
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_13

    #@c05
    .line 2098
    .end local v37    # "e":Landroid/os/RemoteException;
    :catch_f
    move-exception v37

    #@c06
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_11

    #@c08
    .line 2084
    .end local v37    # "e":Landroid/os/RemoteException;
    :catch_10
    move-exception v37

    #@c09
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_f

    #@c0b
    .line 2070
    .end local v37    # "e":Landroid/os/RemoteException;
    :catch_11
    move-exception v37

    #@c0c
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_d

    #@c0e
    .line 2035
    .end local v37    # "e":Landroid/os/RemoteException;
    .end local v43    # "i":I
    .restart local v61    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_12
    move-exception v37

    #@c0f
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_b

    #@c11
    .line 1922
    .end local v37    # "e":Landroid/os/RemoteException;
    .end local v61    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    :catch_13
    move-exception v37

    #@c12
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@c14
    .line 1905
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v37    # "e":Landroid/os/RemoteException;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v34    # "context":Landroid/content/Context;
    .restart local v45    # "inm":Landroid/app/INotificationManager;
    .restart local v59    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v66    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v68    # "text":Ljava/lang/String;
    :catch_14
    move-exception v37

    #@c15
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@c17
    .line 1754
    nop

    #@c18
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_1e
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_8
        :pswitch_2c
        :pswitch_19
        :pswitch_2d
        :pswitch_2e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_2f
    .end packed-switch
.end method
