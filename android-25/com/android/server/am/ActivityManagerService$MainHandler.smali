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
    .line 1765
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    .line 1766
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 1765
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 77
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1771
    move-object/from16 v0, p1

    #@2
    iget v4, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v4, :pswitch_data_0

    #@7
    .line 1770
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 1773
    :pswitch_1
    move-object/from16 v0, p0

    #@a
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@c
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@11
    move-result-object v67

    #@12
    .line 1774
    .local v67, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    #@14
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    check-cast v4, Landroid/content/res/Configuration;

    #@18
    .line 1775
    move-object/from16 v0, p1

    #@1a
    iget v7, v0, Landroid/os/Message;->arg1:I

    #@1c
    .line 1774
    move-object/from16 v0, v67

    #@1e
    invoke-static {v0, v4, v7}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    #@21
    goto :goto_0

    #@22
    .line 1778
    .end local v67    # "resolver":Landroid/content/ContentResolver;
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
    .line 1779
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
    .line 1778
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
    .line 1783
    :pswitch_3
    move-object/from16 v0, p0

    #@3e
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@40
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@42
    if-eqz v4, :cond_1

    #@44
    .line 1784
    move-object/from16 v0, p0

    #@46
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@48
    const/4 v7, 0x0

    #@49
    iput-boolean v7, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@4b
    .line 1785
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
    move-result-object v55

    #@57
    .line 1786
    .local v55, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    #@59
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5b
    move-object/from16 v0, v55

    #@5d
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5f
    .line 1787
    move-object/from16 v0, p0

    #@61
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@63
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@65
    const-wide/16 v8, 0x4e20

    #@67
    move-object/from16 v0, v55

    #@69
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@6c
    .line 1788
    return-void

    #@6d
    .line 1790
    .end local v55    # "nmsg":Landroid/os/Message;
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
    .line 1793
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
    .line 1794
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
    add-int/lit8 v44, v4, -0x1

    #@91
    .local v44, "i":I
    :goto_1
    if-ltz v44, :cond_3

    #@93
    .line 1795
    move-object/from16 v0, p0

    #@95
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@97
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@99
    move/from16 v0, v44

    #@9b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9e
    move-result-object v64

    #@9f
    check-cast v64, Lcom/android/server/am/ProcessRecord;

    #@a1
    .line 1796
    .local v64, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v64

    #@a3
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@a5
    if-eqz v4, :cond_2

    #@a7
    .line 1798
    :try_start_2
    move-object/from16 v0, v64

    #@a9
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@ab
    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@ae
    .line 1794
    :cond_2
    :goto_2
    add-int/lit8 v44, v44, -0x1

    #@b0
    goto :goto_1

    #@b1
    .line 1799
    :catch_0
    move-exception v40

    #@b2
    .line 1800
    .local v40, "ex":Landroid/os/RemoteException;
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
    move-object/from16 v0, v64

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
    .line 1793
    .end local v40    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v64    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    #@d5
    monitor-exit v7

    #@d6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@d9
    throw v4

    #@da
    .restart local v44    # "i":I
    :cond_3
    monitor-exit v7

    #@db
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@de
    goto/16 :goto_0

    #@e0
    .line 1807
    .end local v44    # "i":I
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
    .line 1808
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
    add-int/lit8 v44, v4, -0x1

    #@f4
    .restart local v44    # "i":I
    :goto_3
    if-ltz v44, :cond_5

    #@f6
    .line 1809
    move-object/from16 v0, p0

    #@f8
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@fa
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@fc
    move/from16 v0, v44

    #@fe
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@101
    move-result-object v64

    #@102
    check-cast v64, Lcom/android/server/am/ProcessRecord;

    #@104
    .line 1810
    .restart local v64    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v64

    #@106
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@108
    if-eqz v4, :cond_4

    #@10a
    .line 1812
    :try_start_5
    move-object/from16 v0, v64

    #@10c
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@10e
    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@111
    .line 1808
    :cond_4
    :goto_4
    add-int/lit8 v44, v44, -0x1

    #@113
    goto :goto_3

    #@114
    .line 1813
    :catch_1
    move-exception v40

    #@115
    .line 1814
    .restart local v40    # "ex":Landroid/os/RemoteException;
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
    move-object/from16 v0, v64

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
    .line 1807
    .end local v40    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v64    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v4

    #@138
    monitor-exit v7

    #@139
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@13c
    throw v4

    #@13d
    .restart local v44    # "i":I
    :cond_5
    monitor-exit v7

    #@13e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@141
    goto/16 :goto_0

    #@143
    .line 1821
    .end local v44    # "i":I
    :pswitch_6
    move-object/from16 v0, p1

    #@145
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@147
    move-object/from16 v62, v0

    #@149
    check-cast v62, Landroid/net/ProxyInfo;

    #@14b
    .line 1822
    .local v62, "proxy":Landroid/net/ProxyInfo;
    const-string/jumbo v43, ""

    #@14e
    .line 1823
    .local v43, "host":Ljava/lang/String;
    const-string/jumbo v58, ""

    #@151
    .line 1824
    .local v58, "port":Ljava/lang/String;
    const-string/jumbo v41, ""

    #@154
    .line 1825
    .local v41, "exclList":Ljava/lang/String;
    sget-object v57, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@156
    .line 1826
    .local v57, "pacFileUrl":Landroid/net/Uri;
    if-eqz v62, :cond_6

    #@158
    .line 1827
    invoke-virtual/range {v62 .. v62}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@15b
    move-result-object v43

    #@15c
    .line 1828
    invoke-virtual/range {v62 .. v62}, Landroid/net/ProxyInfo;->getPort()I

    #@15f
    move-result v4

    #@160
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@163
    move-result-object v58

    #@164
    .line 1829
    invoke-virtual/range {v62 .. v62}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    #@167
    move-result-object v41

    #@168
    .line 1830
    invoke-virtual/range {v62 .. v62}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@16b
    move-result-object v57

    #@16c
    .line 1832
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
    .line 1833
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
    add-int/lit8 v44, v4, -0x1

    #@180
    .restart local v44    # "i":I
    :goto_5
    if-ltz v44, :cond_8

    #@182
    .line 1834
    move-object/from16 v0, p0

    #@184
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@186
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@188
    move/from16 v0, v44

    #@18a
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18d
    move-result-object v64

    #@18e
    check-cast v64, Lcom/android/server/am/ProcessRecord;

    #@190
    .line 1835
    .restart local v64    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v64

    #@192
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@194
    if-eqz v4, :cond_7

    #@196
    .line 1837
    :try_start_8
    move-object/from16 v0, v64

    #@198
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@19a
    move-object/from16 v0, v43

    #@19c
    move-object/from16 v1, v58

    #@19e
    move-object/from16 v2, v41

    #@1a0
    move-object/from16 v3, v57

    #@1a2
    invoke-interface {v4, v0, v1, v2, v3}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@1a5
    .line 1833
    :cond_7
    :goto_6
    add-int/lit8 v44, v44, -0x1

    #@1a7
    goto :goto_5

    #@1a8
    .line 1838
    :catch_2
    move-exception v40

    #@1a9
    .line 1839
    .restart local v40    # "ex":Landroid/os/RemoteException;
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
    .line 1840
    move-object/from16 v0, v64

    #@1bb
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@1bd
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@1bf
    .line 1839
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
    .line 1832
    .end local v40    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v64    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v4

    #@1cc
    monitor-exit v7

    #@1cd
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1d0
    throw v4

    #@1d1
    .restart local v44    # "i":I
    :cond_8
    monitor-exit v7

    #@1d2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1d5
    goto/16 :goto_0

    #@1d7
    .line 1847
    .end local v41    # "exclList":Ljava/lang/String;
    .end local v43    # "host":Ljava/lang/String;
    .end local v44    # "i":I
    .end local v57    # "pacFileUrl":Landroid/net/Uri;
    .end local v58    # "port":Ljava/lang/String;
    .end local v62    # "proxy":Landroid/net/ProxyInfo;
    :pswitch_7
    move-object/from16 v0, p0

    #@1d9
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1db
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@1dd
    if-eqz v4, :cond_9

    #@1df
    .line 1848
    move-object/from16 v0, p0

    #@1e1
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1e3
    const/4 v7, 0x0

    #@1e4
    iput-boolean v7, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@1e6
    .line 1849
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
    move-result-object v55

    #@1f2
    .line 1850
    .restart local v55    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    #@1f4
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f6
    move-object/from16 v0, v55

    #@1f8
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1fa
    .line 1851
    move-object/from16 v0, p0

    #@1fc
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1fe
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@200
    const-wide/16 v8, 0x2710

    #@202
    move-object/from16 v0, v55

    #@204
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@207
    .line 1852
    return-void

    #@208
    .line 1854
    .end local v55    # "nmsg":Landroid/os/Message;
    :cond_9
    move-object/from16 v0, p1

    #@20a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@20c
    move-object/from16 v30, v0

    #@20e
    check-cast v30, Lcom/android/server/am/ProcessRecord;

    #@210
    .line 1855
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
    .line 1856
    move-object/from16 v0, p0

    #@21a
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@21c
    move-object/from16 v0, v30

    #@21e
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap12(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    #@221
    monitor-exit v7

    #@222
    .line 1855
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
    .line 1860
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
    .line 1861
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
    .line 1862
    move-object/from16 v0, p0

    #@23f
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@241
    move-object/from16 v0, v30

    #@243
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap11(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    #@246
    monitor-exit v7

    #@247
    .line 1861
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
    .line 1866
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
    .line 1867
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
    .line 1866
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
    .line 1871
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
    .line 1872
    move-object/from16 v0, p1

    #@27a
    iget v6, v0, Landroid/os/Message;->arg1:I

    #@27c
    .line 1873
    .local v6, "appId":I
    move-object/from16 v0, p1

    #@27e
    iget v12, v0, Landroid/os/Message;->arg2:I

    #@280
    .line 1874
    .local v12, "userId":I
    move-object/from16 v0, p1

    #@282
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@284
    move-object/from16 v31, v0

    #@286
    check-cast v31, Landroid/os/Bundle;

    #@288
    .line 1875
    .local v31, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pkg"

    #@28b
    move-object/from16 v0, v31

    #@28d
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@290
    move-result-object v5

    #@291
    .line 1876
    .local v5, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    #@294
    move-object/from16 v0, v31

    #@296
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@299
    move-result-object v13

    #@29a
    .line 1877
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
    .line 1878
    const/4 v11, 0x0

    #@2a3
    .line 1877
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    #@2a6
    monitor-exit v15

    #@2a7
    .line 1871
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
    .line 1882
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
    .line 1885
    :pswitch_c
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@2c0
    move-result-object v46

    #@2c1
    .line 1886
    .local v46, "inm":Landroid/app/INotificationManager;
    if-nez v46, :cond_a

    #@2c3
    .line 1887
    return-void

    #@2c4
    .line 1890
    :cond_a
    move-object/from16 v0, p1

    #@2c6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2c8
    move-object/from16 v68, v0

    #@2ca
    check-cast v68, Lcom/android/server/am/ActivityRecord;

    #@2cc
    .line 1891
    .local v68, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v68

    #@2ce
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2d0
    move-object/from16 v61, v0

    #@2d2
    .line 1892
    .local v61, "process":Lcom/android/server/am/ProcessRecord;
    if-nez v61, :cond_b

    #@2d4
    .line 1893
    return-void

    #@2d5
    .line 1897
    :cond_b
    :try_start_e
    move-object/from16 v0, p0

    #@2d7
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2d9
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@2db
    move-object/from16 v0, v61

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
    .line 1898
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
    .line 1899
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
    .line 1898
    const v8, 0x10403ba

    #@301
    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@304
    move-result-object v70

    #@305
    .line 1900
    .local v70, "text":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    #@307
    move-object/from16 v0, v34

    #@309
    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@30c
    .line 1901
    const v7, 0x10806d7

    #@30f
    .line 1900
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@312
    move-result-object v4

    #@313
    .line 1902
    const-wide/16 v8, 0x0

    #@315
    .line 1900
    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@318
    move-result-object v4

    #@319
    .line 1903
    const/4 v7, 0x1

    #@31a
    .line 1900
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@31d
    move-result-object v4

    #@31e
    move-object/from16 v0, v70

    #@320
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@323
    move-result-object v4

    #@324
    .line 1905
    move-object/from16 v0, p0

    #@326
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@328
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@32a
    .line 1906
    const v8, 0x106005b

    #@32d
    .line 1905
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    #@330
    move-result v7

    #@331
    .line 1900
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@334
    move-result-object v4

    #@335
    move-object/from16 v0, v70

    #@337
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@33a
    move-result-object v4

    #@33b
    .line 1909
    move-object/from16 v0, p0

    #@33d
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@33f
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@341
    const v8, 0x10403bb

    #@344
    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@347
    move-result-object v7

    #@348
    .line 1900
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@34b
    move-result-object v4

    #@34c
    .line 1910
    move-object/from16 v0, p0

    #@34e
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@350
    iget-object v14, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@352
    .line 1911
    move-object/from16 v0, v68

    #@354
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@356
    move-object/from16 v16, v0

    #@358
    .line 1912
    new-instance v19, Landroid/os/UserHandle;

    #@35a
    move-object/from16 v0, v68

    #@35c
    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@35e
    move-object/from16 v0, v19

    #@360
    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    #@363
    .line 1910
    const/4 v15, 0x0

    #@364
    .line 1911
    const/high16 v17, 0x10000000

    #@366
    const/16 v18, 0x0

    #@368
    .line 1910
    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@36b
    move-result-object v7

    #@36c
    .line 1900
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
    .line 1915
    .local v19, "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    #@375
    :try_start_f
    new-array v0, v4, [I

    #@377
    move-object/from16 v20, v0

    #@379
    .line 1916
    .local v20, "outId":[I
    const-string/jumbo v15, "android"

    #@37c
    const-string/jumbo v16, "android"

    #@37f
    .line 1918
    move-object/from16 v0, v68

    #@381
    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@383
    move/from16 v21, v0

    #@385
    .line 1916
    const/16 v17, 0x0

    #@387
    .line 1917
    const v18, 0x10403ba

    #@38a
    move-object/from16 v14, v46

    #@38c
    .line 1916
    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_4

    #@38f
    goto/16 :goto_0

    #@391
    .line 1919
    .end local v20    # "outId":[I
    :catch_3
    move-exception v39

    #@392
    .line 1920
    .local v39, "e":Ljava/lang/RuntimeException;
    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@395
    move-result-object v4

    #@396
    .line 1921
    const-string/jumbo v7, "Error showing notification for heavy-weight app"

    #@399
    .line 1920
    move-object/from16 v0, v39

    #@39b
    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_4

    #@39e
    goto/16 :goto_0

    #@3a0
    .line 1924
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v34    # "context":Landroid/content/Context;
    .end local v39    # "e":Ljava/lang/RuntimeException;
    .end local v70    # "text":Ljava/lang/String;
    :catch_4
    move-exception v36

    #@3a1
    .line 1925
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
    .line 1929
    .end local v36    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v46    # "inm":Landroid/app/INotificationManager;
    .end local v61    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v68    # "root":Lcom/android/server/am/ActivityRecord;
    :pswitch_d
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3b2
    move-result-object v14

    #@3b3
    .line 1930
    .local v14, "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_c

    #@3b5
    .line 1931
    return-void

    #@3b6
    .line 1934
    :cond_c
    :try_start_11
    const-string/jumbo v4, "android"

    #@3b9
    .line 1935
    move-object/from16 v0, p1

    #@3bb
    iget v7, v0, Landroid/os/Message;->arg1:I

    #@3bd
    .line 1934
    const/4 v8, 0x0

    #@3be
    .line 1935
    const v9, 0x10403ba

    #@3c1
    .line 1934
    invoke-interface {v14, v4, v8, v9, v7}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_14

    #@3c4
    goto/16 :goto_0

    #@3c6
    .line 1936
    :catch_5
    move-exception v39

    #@3c7
    .line 1937
    .restart local v39    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@3ca
    move-result-object v4

    #@3cb
    .line 1938
    const-string/jumbo v7, "Error canceling notification for service"

    #@3ce
    .line 1937
    move-object/from16 v0, v39

    #@3d0
    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d3
    goto/16 :goto_0

    #@3d5
    .line 1943
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v39    # "e":Ljava/lang/RuntimeException;
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
    .line 1944
    move-object/from16 v0, p0

    #@3df
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3e1
    const/4 v8, 0x1

    #@3e2
    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    #@3e5
    .line 1945
    const/16 v4, 0x1b

    #@3e7
    move-object/from16 v0, p0

    #@3e9
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    #@3ec
    .line 1946
    const/16 v4, 0x1b

    #@3ee
    move-object/from16 v0, p0

    #@3f0
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    #@3f3
    move-result-object v55

    #@3f4
    .line 1947
    .restart local v55    # "nmsg":Landroid/os/Message;
    const-wide/32 v8, 0xdbba0

    #@3f7
    move-object/from16 v0, p0

    #@3f9
    move-object/from16 v1, v55

    #@3fb
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    #@3fe
    monitor-exit v7

    #@3ff
    .line 1943
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@402
    goto/16 :goto_0

    #@404
    .end local v55    # "nmsg":Landroid/os/Message;
    :catchall_8
    move-exception v4

    #@405
    monitor-exit v7

    #@406
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@409
    throw v4

    #@40a
    .line 1951
    :pswitch_f
    move-object/from16 v0, p1

    #@40c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@40e
    move-object/from16 v48, v0

    #@410
    check-cast v48, Ljava/util/ArrayList;

    #@412
    .line 1952
    .local v48, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v71, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    #@414
    move-object/from16 v0, v71

    #@416
    move-object/from16 v1, p0

    #@418
    move-object/from16 v2, v48

    #@41a
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    #@41d
    .line 1957
    .local v71, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v71 .. v71}, Ljava/lang/Thread;->start()V

    #@420
    goto/16 :goto_0

    #@422
    .line 1961
    .end local v48    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v71    # "thread":Ljava/lang/Thread;
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
    .line 1965
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
    .line 1969
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
    .line 1973
    :pswitch_13
    move-object/from16 v0, p1

    #@46f
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@471
    if-eqz v4, :cond_d

    #@473
    const/16 v54, 0x1

    #@475
    .line 1974
    .local v54, "nextState":Z
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
    move/from16 v0, v54

    #@481
    if-eq v4, v0, :cond_0

    #@483
    .line 1978
    if-eqz v54, :cond_e

    #@485
    .line 1979
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
    .line 1973
    .end local v54    # "nextState":Z
    :cond_d
    const/16 v54, 0x0

    #@492
    .restart local v54    # "nextState":Z
    goto :goto_7

    #@493
    .line 1981
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
    .line 1987
    .end local v54    # "nextState":Z
    :pswitch_14
    move-object/from16 v0, p0

    #@4a0
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4a2
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-wrap16(Lcom/android/server/am/ActivityManagerService;)V

    #@4a5
    goto/16 :goto_0

    #@4a7
    .line 1991
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
    .line 1992
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
    .line 1991
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
    .line 1997
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
    .line 1998
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
    .line 1997
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
    .line 2003
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
    .line 2004
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
    add-int/lit8 v44, v4, -0x1

    #@4f9
    .restart local v44    # "i":I
    :goto_8
    if-ltz v44, :cond_11

    #@4fb
    .line 2005
    move-object/from16 v0, p0

    #@4fd
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4ff
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@501
    move/from16 v0, v44

    #@503
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@506
    move-result-object v64

    #@507
    check-cast v64, Lcom/android/server/am/ProcessRecord;

    #@509
    .line 2006
    .restart local v64    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v64

    #@50b
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    #@50d
    if-eqz v4, :cond_f

    #@50f
    .line 2008
    :try_start_16
    move-object/from16 v0, v64

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
    .line 2004
    :cond_f
    :goto_a
    add-int/lit8 v44, v44, -0x1

    #@51f
    goto :goto_8

    #@520
    .line 2008
    :cond_10
    const/4 v4, 0x1

    #@521
    goto :goto_9

    #@522
    .line 2009
    :catch_6
    move-exception v40

    #@523
    .line 2010
    .restart local v40    # "ex":Landroid/os/RemoteException;
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
    move-object/from16 v0, v64

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
    .line 2003
    .end local v40    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v64    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_b
    move-exception v4

    #@546
    monitor-exit v7

    #@547
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@54a
    throw v4

    #@54b
    .restart local v44    # "i":I
    :cond_11
    monitor-exit v7

    #@54c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@54f
    goto/16 :goto_0

    #@551
    .line 2018
    .end local v44    # "i":I
    :pswitch_18
    move-object/from16 v0, p0

    #@553
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@555
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@557
    .line 2019
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
    .line 2018
    const v9, 0x8007

    #@566
    invoke-virtual {v4, v9, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    #@569
    .line 2020
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
    .line 2024
    :pswitch_19
    move-object/from16 v0, p1

    #@57a
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@57c
    .line 2025
    .restart local v12    # "userId":I
    move-object/from16 v0, p0

    #@57e
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@580
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@582
    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->unlockUser(I)V

    #@585
    .line 2026
    move-object/from16 v0, p0

    #@587
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@589
    monitor-enter v7

    #@58a
    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@58d
    .line 2027
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
    .line 2026
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@59a
    .line 2029
    if-nez v12, :cond_12

    #@59c
    .line 2030
    move-object/from16 v0, p0

    #@59e
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5a0
    const/high16 v7, 0x40000

    #@5a2
    invoke-static {v4, v7}, Lcom/android/server/am/ActivityManagerService;->-wrap13(Lcom/android/server/am/ActivityManagerService;I)V

    #@5a5
    .line 2032
    :cond_12
    move-object/from16 v0, p0

    #@5a7
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5a9
    invoke-static {v4, v12}, Lcom/android/server/am/ActivityManagerService;->-wrap10(Lcom/android/server/am/ActivityManagerService;I)V

    #@5ac
    .line 2033
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
    .line 2026
    :catchall_c
    move-exception v4

    #@5be
    monitor-exit v7

    #@5bf
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@5c2
    throw v4

    #@5c3
    .line 2037
    .end local v12    # "userId":I
    :pswitch_1a
    move-object/from16 v0, p0

    #@5c5
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5c7
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@5c9
    .line 2039
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
    .line 2038
    const/16 v9, 0x4008

    #@5d7
    .line 2037
    invoke-virtual {v4, v9, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    #@5da
    .line 2040
    move-object/from16 v0, p0

    #@5dc
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5de
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@5e0
    .line 2042
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
    .line 2041
    const v9, 0x8008

    #@5ef
    .line 2040
    invoke-virtual {v4, v9, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    #@5f2
    .line 2043
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
    .line 2047
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
    .line 2048
    move-object/from16 v0, p1

    #@60b
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@60d
    check-cast v4, Landroid/os/IBinder;

    #@60f
    invoke-static {v4}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@612
    move-result-object v63

    #@613
    .line 2049
    .local v63, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v63, :cond_13

    #@615
    move-object/from16 v0, v63

    #@617
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@619
    if-eqz v4, :cond_13

    #@61b
    move-object/from16 v0, v63

    #@61d
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@61f
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    #@621
    if-eqz v4, :cond_13

    #@623
    .line 2051
    :try_start_1a
    move-object/from16 v0, v63

    #@625
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@627
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@629
    move-object/from16 v0, v63

    #@62b
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@62d
    invoke-interface {v4, v8}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_13
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    #@630
    :cond_13
    :goto_b
    monitor-exit v7

    #@631
    .line 2047
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@634
    goto/16 :goto_0

    #@636
    .end local v63    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_d
    move-exception v4

    #@637
    monitor-exit v7

    #@638
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@63b
    throw v4

    #@63c
    .line 2059
    :pswitch_1c
    move-object/from16 v0, p1

    #@63e
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@640
    if-eqz v4, :cond_14

    #@642
    .line 2060
    const-string/jumbo v4, "FinishBooting"

    #@645
    const-wide/16 v8, 0x40

    #@647
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@64a
    .line 2061
    move-object/from16 v0, p0

    #@64c
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@64e
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    #@651
    .line 2062
    const-wide/16 v8, 0x40

    #@653
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@656
    .line 2064
    :cond_14
    move-object/from16 v0, p1

    #@658
    iget v4, v0, Landroid/os/Message;->arg2:I

    #@65a
    if-eqz v4, :cond_0

    #@65c
    .line 2065
    move-object/from16 v0, p0

    #@65e
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@660
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    #@663
    goto/16 :goto_0

    #@665
    .line 2071
    :pswitch_1d
    :try_start_1b
    move-object/from16 v0, p1

    #@667
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@669
    move-object/from16 v47, v0

    #@66b
    check-cast v47, Ljava/util/Locale;

    #@66d
    .line 2072
    .local v47, "l":Ljava/util/Locale;
    const-string/jumbo v4, "mount"

    #@670
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@673
    move-result-object v69

    #@674
    .line 2073
    .local v69, "service":Landroid/os/IBinder;
    invoke-static/range {v69 .. v69}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@677
    move-result-object v49

    #@678
    .line 2074
    .local v49, "mountService":Landroid/os/storage/IMountService;
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
    invoke-virtual/range {v47 .. v47}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

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
    .line 2075
    const-string/jumbo v4, "SystemLocale"

    #@6a1
    invoke-virtual/range {v47 .. v47}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@6a4
    move-result-object v7

    #@6a5
    move-object/from16 v0, v49

    #@6a7
    invoke-interface {v0, v4, v7}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_7

    #@6aa
    goto/16 :goto_0

    #@6ac
    .line 2076
    .end local v47    # "l":Ljava/util/Locale;
    .end local v49    # "mountService":Landroid/os/storage/IMountService;
    .end local v69    # "service":Landroid/os/IBinder;
    :catch_7
    move-exception v37

    #@6ad
    .line 2077
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
    .line 2082
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
    .line 2083
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
    add-int/lit8 v44, v4, -0x1

    #@6d1
    .restart local v44    # "i":I
    :goto_c
    if-ltz v44, :cond_15

    #@6d3
    .line 2086
    :try_start_1d
    move-object/from16 v0, p0

    #@6d5
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@6d7
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@6da
    move-result-object v4

    #@6db
    move/from16 v0, v44

    #@6dd
    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@6e0
    move-result-object v4

    #@6e1
    check-cast v4, Landroid/app/ITaskStackListener;

    #@6e3
    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_12
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    #@6e6
    .line 2083
    :goto_d
    add-int/lit8 v44, v44, -0x1

    #@6e8
    goto :goto_c

    #@6e9
    .line 2091
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
    .line 2082
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@6f8
    goto/16 :goto_0

    #@6fa
    .end local v44    # "i":I
    :catchall_e
    move-exception v4

    #@6fb
    monitor-exit v7

    #@6fc
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@6ff
    throw v4

    #@700
    .line 2096
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
    .line 2097
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
    add-int/lit8 v44, v4, -0x1

    #@716
    .restart local v44    # "i":I
    :goto_e
    if-ltz v44, :cond_16

    #@718
    .line 2100
    :try_start_20
    move-object/from16 v0, p0

    #@71a
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@71c
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@71f
    move-result-object v4

    #@720
    move/from16 v0, v44

    #@722
    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@725
    move-result-object v4

    #@726
    check-cast v4, Landroid/app/ITaskStackListener;

    #@728
    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onActivityPinned()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_11
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    #@72b
    .line 2097
    :goto_f
    add-int/lit8 v44, v44, -0x1

    #@72d
    goto :goto_e

    #@72e
    .line 2105
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
    .line 2096
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@73d
    goto/16 :goto_0

    #@73f
    .end local v44    # "i":I
    :catchall_f
    move-exception v4

    #@740
    monitor-exit v7

    #@741
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@744
    throw v4

    #@745
    .line 2110
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
    .line 2111
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
    add-int/lit8 v44, v4, -0x1

    #@75b
    .restart local v44    # "i":I
    :goto_10
    if-ltz v44, :cond_17

    #@75d
    .line 2114
    :try_start_23
    move-object/from16 v0, p0

    #@75f
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@761
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@764
    move-result-object v4

    #@765
    move/from16 v0, v44

    #@767
    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@76a
    move-result-object v4

    #@76b
    check-cast v4, Landroid/app/ITaskStackListener;

    #@76d
    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onPinnedActivityRestartAttempt()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_10
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    #@770
    .line 2111
    :goto_11
    add-int/lit8 v44, v44, -0x1

    #@772
    goto :goto_10

    #@773
    .line 2119
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
    .line 2110
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@782
    goto/16 :goto_0

    #@784
    .end local v44    # "i":I
    :catchall_10
    move-exception v4

    #@785
    monitor-exit v7

    #@786
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@789
    throw v4

    #@78a
    .line 2124
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
    .line 2125
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
    add-int/lit8 v44, v4, -0x1

    #@7a0
    .restart local v44    # "i":I
    :goto_12
    if-ltz v44, :cond_18

    #@7a2
    .line 2128
    :try_start_26
    move-object/from16 v0, p0

    #@7a4
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7a6
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@7a9
    move-result-object v4

    #@7aa
    move/from16 v0, v44

    #@7ac
    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@7af
    move-result-object v4

    #@7b0
    check-cast v4, Landroid/app/ITaskStackListener;

    #@7b2
    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onPinnedStackAnimationEnded()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_f
    .catchall {:try_start_26 .. :try_end_26} :catchall_11

    #@7b5
    .line 2125
    :goto_13
    add-int/lit8 v44, v44, -0x1

    #@7b7
    goto :goto_12

    #@7b8
    .line 2133
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
    .line 2124
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@7c7
    goto/16 :goto_0

    #@7c9
    .end local v44    # "i":I
    :catchall_11
    move-exception v4

    #@7ca
    monitor-exit v7

    #@7cb
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@7ce
    throw v4

    #@7cf
    .line 2138
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
    .line 2139
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
    add-int/lit8 v44, v4, -0x1

    #@7e5
    .restart local v44    # "i":I
    :goto_14
    if-ltz v44, :cond_19

    #@7e7
    .line 2142
    :try_start_29
    move-object/from16 v0, p0

    #@7e9
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7eb
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@7ee
    move-result-object v4

    #@7ef
    move/from16 v0, v44

    #@7f1
    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@7f4
    move-result-object v4

    #@7f5
    check-cast v4, Landroid/app/ITaskStackListener;

    #@7f7
    .line 2143
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
    .line 2142
    invoke-interface {v4, v7, v9}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_e
    .catchall {:try_start_29 .. :try_end_29} :catchall_12

    #@804
    .line 2139
    :goto_15
    add-int/lit8 v44, v44, -0x1

    #@806
    goto :goto_14

    #@807
    .line 2148
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
    .line 2138
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@816
    goto/16 :goto_0

    #@818
    .end local v44    # "i":I
    :catchall_12
    move-exception v4

    #@819
    monitor-exit v8

    #@81a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@81d
    throw v4

    #@81e
    .line 2153
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
    .line 2154
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
    add-int/lit8 v44, v4, -0x1

    #@834
    .restart local v44    # "i":I
    :goto_16
    if-ltz v44, :cond_1a

    #@836
    .line 2157
    :try_start_2c
    move-object/from16 v0, p0

    #@838
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@83a
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    #@83d
    move-result-object v4

    #@83e
    move/from16 v0, v44

    #@840
    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@843
    move-result-object v4

    #@844
    check-cast v4, Landroid/app/ITaskStackListener;

    #@846
    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedStack()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_d
    .catchall {:try_start_2c .. :try_end_2c} :catchall_13

    #@849
    .line 2154
    :goto_17
    add-int/lit8 v44, v44, -0x1

    #@84b
    goto :goto_16

    #@84c
    .line 2163
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
    .line 2153
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@85b
    goto/16 :goto_0

    #@85d
    .end local v44    # "i":I
    :catchall_13
    move-exception v4

    #@85e
    monitor-exit v7

    #@85f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@862
    throw v4

    #@863
    .line 2168
    :pswitch_24
    move-object/from16 v0, p1

    #@865
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@867
    move/from16 v73, v0

    #@869
    .line 2169
    .local v73, "uid":I
    move-object/from16 v0, p1

    #@86b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@86d
    move-object/from16 v42, v0

    #@86f
    check-cast v42, [B

    #@871
    .line 2171
    .local v42, "firstPacket":[B
    move-object/from16 v0, p0

    #@873
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@875
    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@877
    monitor-enter v7

    #@878
    .line 2172
    const/16 v44, 0x0

    #@87a
    .restart local v44    # "i":I
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
    move/from16 v0, v44

    #@886
    if-ge v0, v4, :cond_1c

    #@888
    .line 2173
    move-object/from16 v0, p0

    #@88a
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@88c
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@88e
    move/from16 v0, v44

    #@890
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@893
    move-result-object v56

    #@894
    check-cast v56, Lcom/android/server/am/ProcessRecord;

    #@896
    .line 2174
    .local v56, "p":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v56

    #@898
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_14

    #@89a
    move/from16 v0, v73

    #@89c
    if-ne v4, v0, :cond_1b

    #@89e
    .line 2176
    :try_start_2f
    move-object/from16 v0, v56

    #@8a0
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@8a2
    move-object/from16 v0, v42

    #@8a4
    invoke-interface {v4, v0}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_c
    .catchall {:try_start_2f .. :try_end_2f} :catchall_14

    #@8a7
    .line 2172
    :cond_1b
    :goto_19
    add-int/lit8 v44, v44, 0x1

    #@8a9
    goto :goto_18

    #@8aa
    .end local v56    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_1c
    monitor-exit v7

    #@8ab
    goto/16 :goto_0

    #@8ad
    .line 2171
    :catchall_14
    move-exception v4

    #@8ae
    monitor-exit v7

    #@8af
    throw v4

    #@8b0
    .line 2189
    .end local v42    # "firstPacket":[B
    .end local v44    # "i":I
    .end local v73    # "uid":I
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
    .line 2190
    move-object/from16 v0, p0

    #@8ba
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@8bc
    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    #@8be
    move-object/from16 v60, v0

    #@8c0
    .line 2191
    .local v60, "procName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8c2
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@8c4
    iget v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    #@8c6
    move/from16 v73, v0

    #@8c8
    .line 2192
    .restart local v73    # "uid":I
    move-object/from16 v0, p0

    #@8ca
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@8cc
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    #@8ce
    move-object/from16 v0, v60

    #@8d0
    move/from16 v1, v73

    #@8d2
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@8d5
    move-result-object v74

    #@8d6
    check-cast v74, Landroid/util/Pair;

    #@8d8
    .line 2193
    .local v74, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v74, :cond_1d

    #@8da
    .line 2194
    move-object/from16 v0, p0

    #@8dc
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@8de
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    #@8e0
    const/4 v8, 0x0

    #@8e1
    move-object/from16 v0, v60

    #@8e3
    invoke-virtual {v4, v0, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@8e6
    move-result-object v74

    #@8e7
    .end local v74    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    check-cast v74, Landroid/util/Pair;

    #@8e9
    .line 2196
    .restart local v74    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_1d
    if-eqz v74, :cond_1e

    #@8eb
    .line 2197
    move-object/from16 v0, v74

    #@8ed
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@8ef
    check-cast v4, Ljava/lang/Long;

    #@8f1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@8f4
    move-result-wide v50

    #@8f5
    .line 2198
    .local v50, "memLimit":J
    move-object/from16 v0, v74

    #@8f7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@8f9
    move-object/from16 v65, v0

    #@8fb
    check-cast v65, Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_15

    #@8fd
    :goto_1a
    monitor-exit v7

    #@8fe
    .line 2189
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@901
    .line 2204
    if-nez v60, :cond_1f

    #@903
    .line 2205
    return-void

    #@904
    .line 2200
    .end local v50    # "memLimit":J
    :cond_1e
    const-wide/16 v50, 0x0

    #@906
    .line 2201
    .restart local v50    # "memLimit":J
    const/16 v65, 0x0

    #@908
    .local v65, "reportPackage":Ljava/lang/String;
    goto :goto_1a

    #@909
    .line 2189
    .end local v50    # "memLimit":J
    .end local v60    # "procName":Ljava/lang/String;
    .end local v65    # "reportPackage":Ljava/lang/String;
    .end local v73    # "uid":I
    .end local v74    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_15
    move-exception v4

    #@90a
    monitor-exit v7

    #@90b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@90e
    throw v4

    #@90f
    .line 2211
    .restart local v50    # "memLimit":J
    .restart local v60    # "procName":Ljava/lang/String;
    .restart local v73    # "uid":I
    .restart local v74    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_1f
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@912
    move-result-object v14

    #@913
    .line 2212
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_20

    #@915
    .line 2213
    return-void

    #@916
    .line 2216
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
    aput-object v60, v7, v8

    #@922
    const v8, 0x10403c2

    #@925
    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@928
    move-result-object v70

    #@929
    .line 2219
    .restart local v70    # "text":Ljava/lang/String;
    new-instance v35, Landroid/content/Intent;

    #@92b
    invoke-direct/range {v35 .. v35}, Landroid/content/Intent;-><init>()V

    #@92e
    .line 2220
    .local v35, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.server.am.DELETE_DUMPHEAP"

    #@931
    move-object/from16 v0, v35

    #@933
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@936
    .line 2221
    new-instance v23, Landroid/content/Intent;

    #@938
    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    #@93b
    .line 2222
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
    .line 2223
    const-string/jumbo v4, "process"

    #@94c
    move-object/from16 v0, v23

    #@94e
    move-object/from16 v1, v60

    #@950
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@953
    .line 2224
    const-string/jumbo v4, "size"

    #@956
    move-object/from16 v0, v23

    #@958
    move-wide/from16 v1, v50

    #@95a
    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@95d
    .line 2225
    if-eqz v65, :cond_21

    #@95f
    .line 2226
    const-string/jumbo v4, "direct_launch"

    #@962
    move-object/from16 v0, v23

    #@964
    move-object/from16 v1, v65

    #@966
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@969
    .line 2228
    :cond_21
    invoke-static/range {v73 .. v73}, Landroid/os/UserHandle;->getUserId(I)I

    #@96c
    move-result v12

    #@96d
    .line 2229
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
    .line 2230
    const v7, 0x10806d7

    #@97b
    .line 2229
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@97e
    move-result-object v4

    #@97f
    .line 2231
    const-wide/16 v8, 0x0

    #@981
    .line 2229
    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@984
    move-result-object v4

    #@985
    .line 2232
    const/4 v7, 0x1

    #@986
    .line 2229
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@989
    move-result-object v4

    #@98a
    .line 2233
    const/4 v7, 0x1

    #@98b
    .line 2229
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@98e
    move-result-object v4

    #@98f
    move-object/from16 v0, v70

    #@991
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@994
    move-result-object v4

    #@995
    .line 2235
    move-object/from16 v0, p0

    #@997
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@999
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@99b
    .line 2236
    const v8, 0x106005b

    #@99e
    .line 2235
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    #@9a1
    move-result v7

    #@9a2
    .line 2229
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@9a5
    move-result-object v4

    #@9a6
    move-object/from16 v0, v70

    #@9a8
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@9ab
    move-result-object v4

    #@9ac
    .line 2239
    move-object/from16 v0, p0

    #@9ae
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@9b0
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@9b2
    const v8, 0x10403c3

    #@9b5
    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9b8
    move-result-object v7

    #@9b9
    .line 2229
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@9bc
    move-result-object v4

    #@9bd
    .line 2240
    move-object/from16 v0, p0

    #@9bf
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@9c1
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@9c3
    move-object/from16 v21, v0

    #@9c5
    .line 2242
    new-instance v26, Landroid/os/UserHandle;

    #@9c7
    move-object/from16 v0, v26

    #@9c9
    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    #@9cc
    .line 2240
    const/16 v22, 0x0

    #@9ce
    .line 2241
    const/high16 v24, 0x10000000

    #@9d0
    const/16 v25, 0x0

    #@9d2
    .line 2240
    invoke-static/range {v21 .. v26}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@9d5
    move-result-object v7

    #@9d6
    .line 2229
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@9d9
    move-result-object v4

    #@9da
    .line 2243
    move-object/from16 v0, p0

    #@9dc
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@9de
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@9e0
    .line 2244
    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@9e2
    .line 2243
    const/4 v9, 0x0

    #@9e3
    .line 2244
    const/4 v10, 0x0

    #@9e4
    .line 2243
    move-object/from16 v0, v35

    #@9e6
    invoke-static {v7, v9, v0, v10, v8}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@9e9
    move-result-object v7

    #@9ea
    .line 2229
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@9ed
    move-result-object v4

    #@9ee
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@9f1
    move-result-object v19

    #@9f2
    .line 2248
    .restart local v19    # "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    #@9f3
    :try_start_31
    new-array v0, v4, [I

    #@9f5
    move-object/from16 v20, v0

    #@9f7
    .line 2249
    .restart local v20    # "outId":[I
    const-string/jumbo v15, "android"

    #@9fa
    const-string/jumbo v16, "android"

    #@9fd
    const/16 v17, 0x0

    #@9ff
    .line 2250
    const v18, 0x10403c2

    #@a02
    move/from16 v21, v12

    #@a04
    .line 2249
    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_31} :catch_b

    #@a07
    goto/16 :goto_0

    #@a09
    .line 2252
    .end local v20    # "outId":[I
    :catch_8
    move-exception v39

    #@a0a
    .line 2253
    .restart local v39    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@a0d
    move-result-object v4

    #@a0e
    .line 2254
    const-string/jumbo v7, "Error showing notification for dump heap"

    #@a11
    .line 2253
    move-object/from16 v0, v39

    #@a13
    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a16
    goto/16 :goto_0

    #@a18
    .line 2259
    .end local v12    # "userId":I
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v35    # "deleteIntent":Landroid/content/Intent;
    .end local v39    # "e":Ljava/lang/RuntimeException;
    .end local v50    # "memLimit":J
    .end local v60    # "procName":Ljava/lang/String;
    .end local v70    # "text":Ljava/lang/String;
    .end local v73    # "uid":I
    .end local v74    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
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
    .line 2260
    sget-object v8, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    #@a26
    .line 2263
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@a29
    move-result v9

    #@a2a
    .line 2261
    const/4 v10, 0x3

    #@a2b
    .line 2259
    invoke-virtual {v4, v7, v8, v10, v9}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    #@a2e
    .line 2264
    move-object/from16 v0, p0

    #@a30
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a32
    monitor-enter v7

    #@a33
    :try_start_32
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@a36
    .line 2265
    move-object/from16 v0, p0

    #@a38
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a3a
    const/4 v8, 0x0

    #@a3b
    iput-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    #@a3d
    .line 2266
    move-object/from16 v0, p0

    #@a3f
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a41
    const/4 v8, 0x0

    #@a42
    iput-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    #@a44
    .line 2267
    move-object/from16 v0, p0

    #@a46
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a48
    const/4 v8, -0x1

    #@a49
    iput v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    #@a4b
    .line 2268
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
    .line 2264
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
    .line 2272
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
    .line 2275
    :pswitch_28
    move-object/from16 v0, p1

    #@a6f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a71
    move-object/from16 v72, v0

    #@a73
    check-cast v72, Lcom/android/server/am/AppTimeTracker;

    #@a75
    .line 2276
    .local v72, "tracker":Lcom/android/server/am/AppTimeTracker;
    move-object/from16 v0, p0

    #@a77
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a79
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@a7b
    move-object/from16 v0, v72

    #@a7d
    invoke-virtual {v0, v4}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    #@a80
    goto/16 :goto_0

    #@a82
    .line 2279
    .end local v72    # "tracker":Lcom/android/server/am/AppTimeTracker;
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
    .line 2282
    :pswitch_2a
    move-object/from16 v0, p1

    #@a93
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a95
    move-object/from16 v33, v0

    #@a97
    check-cast v33, Landroid/app/IUiAutomationConnection;

    #@a99
    .line 2284
    .local v33, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_33
    invoke-interface/range {v33 .. v33}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_9

    #@a9c
    .line 2290
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
    .line 2285
    :catch_9
    move-exception v37

    #@aa7
    .line 2286
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
    .line 2293
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
    .line 2294
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
    .line 2295
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
    .line 2296
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-wrap4()I

    #@adb
    .line 2297
    move-object/from16 v0, p0

    #@add
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@adf
    const/4 v8, 0x0

    #@ae0
    invoke-static {v4, v8}, Lcom/android/server/am/ActivityManagerService;->-set2(Lcom/android/server/am/ActivityManagerService;Z)Z

    #@ae3
    .line 2298
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
    .line 2293
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@af0
    goto/16 :goto_0

    #@af2
    .line 2300
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
    move-result-object v53

    #@afe
    .line 2301
    .local v53, "newmsg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@b00
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b02
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@b04
    const-wide/16 v8, 0x9c4

    #@b06
    move-object/from16 v0, v53

    #@b08
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_17

    #@b0b
    goto :goto_1c

    #@b0c
    .line 2293
    .end local v53    # "newmsg":Landroid/os/Message;
    :catchall_17
    move-exception v4

    #@b0d
    monitor-exit v7

    #@b0e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@b11
    throw v4

    #@b12
    .line 2307
    :pswitch_2c
    move-object/from16 v0, p0

    #@b14
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b16
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    #@b19
    goto/16 :goto_0

    #@b1b
    .line 2310
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
    .line 2311
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
    .line 2310
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
    .line 2315
    :pswitch_2e
    const-class v4, Lcom/android/server/vr/VrManagerInternal;

    #@b3a
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@b3d
    move-result-object v76

    #@b3e
    check-cast v76, Lcom/android/server/vr/VrManagerInternal;

    #@b40
    .line 2316
    .local v76, "vrService":Lcom/android/server/vr/VrManagerInternal;
    move-object/from16 v0, p1

    #@b42
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b44
    move-object/from16 v63, v0

    #@b46
    check-cast v63, Lcom/android/server/am/ActivityRecord;

    #@b48
    .line 2321
    .restart local v63    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    #@b4a
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b4c
    monitor-enter v7

    #@b4d
    :try_start_37
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@b50
    .line 2322
    move-object/from16 v0, v63

    #@b52
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    #@b54
    if-eqz v4, :cond_25

    #@b56
    const/16 v75, 0x1

    #@b58
    .line 2323
    .local v75, "vrMode":Z
    :goto_1d
    move-object/from16 v0, v63

    #@b5a
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    #@b5c
    move-object/from16 v66, v0

    #@b5e
    .line 2324
    .local v66, "requestedPackage":Landroid/content/ComponentName;
    move-object/from16 v0, v63

    #@b60
    iget v12, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@b62
    .line 2325
    .restart local v12    # "userId":I
    move-object/from16 v0, v63

    #@b64
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@b66
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    #@b69
    move-result-object v32

    #@b6a
    .line 2326
    .local v32, "callingPackage":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@b6c
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b6e
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get3(Lcom/android/server/am/ActivityManagerService;)Z

    #@b71
    move-result v4

    #@b72
    move/from16 v0, v75

    #@b74
    if-eq v4, v0, :cond_24

    #@b76
    .line 2327
    move-object/from16 v0, p0

    #@b78
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b7a
    move/from16 v0, v75

    #@b7c
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-set1(Lcom/android/server/am/ActivityManagerService;Z)Z

    #@b7f
    .line 2328
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

    #@b98
    .line 2329
    move-object/from16 v0, v63

    #@b9a
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@b9c
    if-eqz v4, :cond_24

    #@b9e
    .line 2330
    move-object/from16 v0, v63

    #@ba0
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@ba2
    move-object/from16 v59, v0

    #@ba4
    .line 2331
    .local v59, "proc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v59

    #@ba6
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    #@ba8
    if-lez v4, :cond_24

    #@baa
    .line 2332
    move-object/from16 v0, v59

    #@bac
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_19

    #@bae
    const/4 v8, 0x2

    #@baf
    if-ne v4, v8, :cond_24

    #@bb1
    .line 2334
    :try_start_38
    move-object/from16 v0, p0

    #@bb3
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@bb5
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get3(Lcom/android/server/am/ActivityManagerService;)Z

    #@bb8
    move-result v4

    #@bb9
    if-eqz v4, :cond_26

    #@bbb
    .line 2335
    move-object/from16 v0, v59

    #@bbd
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    #@bbf
    .line 2336
    const v8, 0x40000001    # 2.0000002f

    #@bc2
    const/4 v9, 0x1

    #@bc3
    .line 2335
    invoke-static {v4, v8, v9}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_38} :catch_a
    .catchall {:try_start_38 .. :try_end_38} :catchall_19

    #@bc6
    .end local v59    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_24
    :goto_1e
    monitor-exit v7

    #@bc7
    .line 2321
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@bca
    .line 2350
    move-object/from16 v0, v76

    #@bcc
    move/from16 v1, v75

    #@bce
    move-object/from16 v2, v66

    #@bd0
    move-object/from16 v3, v32

    #@bd2
    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    #@bd5
    goto/16 :goto_0

    #@bd7
    .line 2322
    .end local v12    # "userId":I
    .end local v32    # "callingPackage":Landroid/content/ComponentName;
    .end local v66    # "requestedPackage":Landroid/content/ComponentName;
    .end local v75    # "vrMode":Z
    :cond_25
    const/16 v75, 0x0

    #@bd9
    .restart local v75    # "vrMode":Z
    goto/16 :goto_1d

    #@bdb
    .line 2338
    .restart local v12    # "userId":I
    .restart local v32    # "callingPackage":Landroid/content/ComponentName;
    .restart local v59    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v66    # "requestedPackage":Landroid/content/ComponentName;
    :cond_26
    :try_start_39
    move-object/from16 v0, v59

    #@bdd
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    #@bdf
    .line 2339
    const/4 v8, 0x0

    #@be0
    const/4 v9, 0x0

    #@be1
    .line 2338
    invoke-static {v4, v8, v9}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_39} :catch_a
    .catchall {:try_start_39 .. :try_end_39} :catchall_19

    #@be4
    goto :goto_1e

    #@be5
    .line 2341
    :catch_a
    move-exception v38

    #@be6
    .line 2342
    .local v38, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@be9
    move-result-object v4

    #@bea
    new-instance v8, Ljava/lang/StringBuilder;

    #@bec
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@bef
    const-string/jumbo v9, "Failed to set scheduling policy, thread does not exist:\n"

    #@bf2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf5
    move-result-object v8

    #@bf6
    move-object/from16 v0, v38

    #@bf8
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bfb
    move-result-object v8

    #@bfc
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bff
    move-result-object v8

    #@c00
    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_19

    #@c03
    goto :goto_1e

    #@c04
    .line 2321
    .end local v12    # "userId":I
    .end local v32    # "callingPackage":Landroid/content/ComponentName;
    .end local v38    # "e":Ljava/lang/IllegalArgumentException;
    .end local v59    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v66    # "requestedPackage":Landroid/content/ComponentName;
    .end local v75    # "vrMode":Z
    :catchall_19
    move-exception v4

    #@c05
    monitor-exit v7

    #@c06
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@c09
    throw v4

    #@c0a
    .line 2353
    .end local v63    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v76    # "vrService":Lcom/android/server/vr/VrManagerInternal;
    :pswitch_2f
    move-object/from16 v0, p1

    #@c0c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c0e
    move-object/from16 v63, v0

    #@c10
    check-cast v63, Lcom/android/server/am/ActivityRecord;

    #@c12
    .line 2354
    .restart local v63    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v63, :cond_27

    #@c14
    move-object/from16 v0, v63

    #@c16
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    #@c18
    if-eqz v4, :cond_27

    #@c1a
    const/16 v52, 0x1

    #@c1c
    .line 2355
    .local v52, "needsVrMode":Z
    :goto_1f
    if-eqz v52, :cond_0

    #@c1e
    .line 2356
    move-object/from16 v0, p0

    #@c20
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@c22
    move-object/from16 v24, v0

    #@c24
    move-object/from16 v0, p1

    #@c26
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@c28
    const/4 v7, 0x1

    #@c29
    if-ne v4, v7, :cond_28

    #@c2b
    const/16 v25, 0x1

    #@c2d
    :goto_20
    move-object/from16 v0, v63

    #@c2f
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    #@c31
    move-object/from16 v26, v0

    #@c33
    move-object/from16 v0, v63

    #@c35
    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@c37
    move/from16 v27, v0

    #@c39
    .line 2357
    move-object/from16 v0, v63

    #@c3b
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@c3d
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    #@c40
    move-result-object v28

    #@c41
    const/16 v29, 0x0

    #@c43
    .line 2356
    invoke-static/range {v24 .. v29}, Lcom/android/server/am/ActivityManagerService;->-wrap5(Lcom/android/server/am/ActivityManagerService;ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V

    #@c46
    goto/16 :goto_0

    #@c48
    .line 2354
    .end local v52    # "needsVrMode":Z
    :cond_27
    const/16 v52, 0x0

    #@c4a
    goto :goto_1f

    #@c4b
    .line 2356
    .restart local v52    # "needsVrMode":Z
    :cond_28
    const/16 v25, 0x0

    #@c4d
    goto :goto_20

    #@c4e
    .line 2255
    .end local v52    # "needsVrMode":Z
    .end local v63    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v12    # "userId":I
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v23    # "intent":Landroid/content/Intent;
    .restart local v35    # "deleteIntent":Landroid/content/Intent;
    .restart local v50    # "memLimit":J
    .restart local v60    # "procName":Ljava/lang/String;
    .restart local v70    # "text":Ljava/lang/String;
    .restart local v73    # "uid":I
    .restart local v74    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catch_b
    move-exception v37

    #@c4f
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@c51
    .line 2177
    .end local v12    # "userId":I
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v35    # "deleteIntent":Landroid/content/Intent;
    .end local v37    # "e":Landroid/os/RemoteException;
    .end local v50    # "memLimit":J
    .end local v60    # "procName":Ljava/lang/String;
    .end local v70    # "text":Ljava/lang/String;
    .end local v74    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v42    # "firstPacket":[B
    .restart local v44    # "i":I
    .restart local v56    # "p":Lcom/android/server/am/ProcessRecord;
    :catch_c
    move-exception v45

    #@c52
    .local v45, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_19

    #@c54
    .line 2159
    .end local v42    # "firstPacket":[B
    .end local v45    # "ignored":Landroid/os/RemoteException;
    .end local v56    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v73    # "uid":I
    :catch_d
    move-exception v37

    #@c55
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_17

    #@c57
    .line 2144
    .end local v37    # "e":Landroid/os/RemoteException;
    :catch_e
    move-exception v37

    #@c58
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_15

    #@c5a
    .line 2129
    .end local v37    # "e":Landroid/os/RemoteException;
    :catch_f
    move-exception v37

    #@c5b
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_13

    #@c5d
    .line 2115
    .end local v37    # "e":Landroid/os/RemoteException;
    :catch_10
    move-exception v37

    #@c5e
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_11

    #@c60
    .line 2101
    .end local v37    # "e":Landroid/os/RemoteException;
    :catch_11
    move-exception v37

    #@c61
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_f

    #@c63
    .line 2087
    .end local v37    # "e":Landroid/os/RemoteException;
    :catch_12
    move-exception v37

    #@c64
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_d

    #@c66
    .line 2052
    .end local v37    # "e":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .restart local v63    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_13
    move-exception v37

    #@c67
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_b

    #@c69
    .line 1939
    .end local v37    # "e":Landroid/os/RemoteException;
    .end local v63    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    :catch_14
    move-exception v37

    #@c6a
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@c6c
    .line 1922
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v37    # "e":Landroid/os/RemoteException;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v34    # "context":Landroid/content/Context;
    .restart local v46    # "inm":Landroid/app/INotificationManager;
    .restart local v61    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v68    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v70    # "text":Ljava/lang/String;
    :catch_15
    move-exception v37

    #@c6d
    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@c6f
    .line 1771
    nop

    #@c70
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
