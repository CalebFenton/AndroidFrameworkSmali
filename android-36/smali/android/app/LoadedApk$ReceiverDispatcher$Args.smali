.class final Landroid/app/LoadedApk$ReceiverDispatcher$Args;
.super Landroid/content/BroadcastReceiver$PendingResult;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Args"
.end annotation


# instance fields
.field private greylist-max-o mCurIntent:Landroid/content/Intent;

.field private greylist-max-o mDispatched:Z

.field private blacklist mRunCalled:Z

.field final synthetic blacklist this$0:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method public static synthetic blacklist $r8$lambda$mcNAAl1SQ4MyJPyDg8TJ2x2h0Rk(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->lambda$getRunnable$0()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIILjava/lang/String;)V
    .registers 25
    .param p1, "this$0"    # Landroid/app/LoadedApk$ReceiverDispatcher;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "assumeDelivered"    # Z
    .param p9, "sendingUser"    # I
    .param p10, "sendingUid"    # I
    .param p11, "sendingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1784
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1785
    nop

    .line 1786
    iget-boolean v1, p1, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x2

    :goto_a
    move v4, v1

    iget-object v1, p1, Landroid/app/LoadedApk$ReceiverDispatcher;->mAppThread:Landroid/app/IApplicationThread;

    .line 1787
    invoke-interface {v1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 1788
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v10

    .line 1785
    move-object v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v9, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroid/content/BroadcastReceiver$PendingResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;IZZZLandroid/os/IBinder;IIILjava/lang/String;)V

    .line 1789
    move-object v1, p2

    iput-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 1790
    return-void
.end method

.method private synthetic blacklist lambda$getRunnable$0()V
    .registers 11

    .line 1794
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v0, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1802
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1803
    .local v1, "mgr":Landroid/app/IActivityManager;
    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 1804
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_33

    .line 1805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null intent being dispatched, mDispatched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1806
    iget-boolean v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mRunCalled:Z

    if-eqz v4, :cond_24

    const-string v4, ", run() has already been called"

    goto :goto_26

    :cond_24
    const-string v4, ""

    :goto_26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1805
    const-string v4, "LoadedApk"

    invoke-static {v4, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_33
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 1810
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    .line 1811
    iput-boolean v3, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mRunCalled:Z

    .line 1812
    if-eqz v0, :cond_110

    if-eqz v2, :cond_110

    iget-object v3, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v3, v3, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    if-eqz v3, :cond_47

    goto/16 :goto_110

    .line 1819
    :cond_47
    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 1820
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "broadcastReceiveReg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1821
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1820
    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1823
    :cond_69
    const-wide/16 v5, -0x1

    .line 1824
    .local v5, "debugStoreId":J
    invoke-static {}, Landroid/app/LoadedApk;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 1825
    nop

    .line 1827
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    .line 1826
    invoke-static {v2, v7}, Lcom/android/internal/os/DebugStore;->recordBroadcastReceiveReg(Landroid/content/Intent;I)J

    move-result-wide v5

    .line 1831
    :cond_7a
    :try_start_7a
    iget-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v7, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 1832
    .local v7, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1835
    invoke-static {v2}, Landroid/app/ActivityThread;->isProtectedBroadcast(Landroid/content/Intent;)Z

    move-result v8

    iget-object v9, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v9, v9, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    .line 1836
    invoke-virtual {v9}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v9

    .line 1835
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 1837
    invoke-virtual {p0, v7}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1838
    invoke-virtual {v0, p0}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 1839
    iget-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_a5} :catch_ae
    .catchall {:try_start_7a .. :try_end_a5} :catchall_ac

    .line 1852
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Landroid/app/LoadedApk;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 1853
    goto :goto_cc

    .line 1852
    :catchall_ac
    move-exception v3

    goto :goto_106

    .line 1840
    :catch_ae
    move-exception v7

    .line 1843
    .local v7, "e":Ljava/lang/Exception;
    :try_start_af
    invoke-virtual {p0, v1}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    .line 1844
    iget-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v8, :cond_dc

    iget-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v9, v9, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1845
    invoke-virtual {v8, v9, v7}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8
    :try_end_c4
    .catchall {:try_start_af .. :try_end_c4} :catchall_ac

    if-eqz v8, :cond_dc

    .line 1852
    .end local v7    # "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/app/LoadedApk;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 1853
    :goto_cc
    invoke-static {v5, v6}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 1857
    :cond_cf
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v7

    if-eqz v7, :cond_d8

    .line 1858
    invoke-virtual {p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->finish()V

    .line 1860
    :cond_d8
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1861
    return-void

    .line 1846
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_dc
    :try_start_dc
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1847
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error receiving broadcast "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " in "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v1    # "mgr":Landroid/app/IActivityManager;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "debugStoreId":J
    .end local p0    # "this":Landroid/app/LoadedApk$ReceiverDispatcher$Args;
    throw v3
    :try_end_106
    .catchall {:try_start_dc .. :try_end_106} :catchall_ac

    .line 1852
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local v1    # "mgr":Landroid/app/IActivityManager;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "debugStoreId":J
    .restart local p0    # "this":Landroid/app/LoadedApk$ReceiverDispatcher$Args;
    :goto_106
    invoke-static {}, Landroid/app/LoadedApk;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v4

    if-eqz v4, :cond_10f

    .line 1853
    invoke-static {v5, v6}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 1855
    :cond_10f
    throw v3

    .line 1815
    .end local v5    # "debugStoreId":J
    :cond_110
    :goto_110
    invoke-virtual {p0, v1}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    .line 1816
    return-void
.end method


# virtual methods
.method public final greylist-max-o getRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 1793
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher$Args$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args$$ExternalSyntheticLambda0;-><init>(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)V

    return-object v0
.end method
