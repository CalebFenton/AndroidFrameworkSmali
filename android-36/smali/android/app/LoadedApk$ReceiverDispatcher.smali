.class final Landroid/app/LoadedApk$ReceiverDispatcher;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReceiverDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;,
        Landroid/app/LoadedApk$ReceiverDispatcher$Args;
    }
.end annotation


# instance fields
.field final greylist-max-o mActivityThread:Landroid/os/Handler;

.field final blacklist mAppThread:Landroid/app/IApplicationThread;

.field final greylist-max-p mContext:Landroid/content/Context;

.field greylist-max-o mForgotten:Z

.field final greylist-max-o mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

.field final greylist-max-o mInstrumentation:Landroid/app/Instrumentation;

.field final greylist-max-o mLocation:Landroid/app/IntentReceiverLeaked;

.field final greylist mReceiver:Landroid/content/BroadcastReceiver;

.field final greylist-max-o mRegistered:Z

.field greylist-max-o mUnregisterLocation:Ljava/lang/RuntimeException;


# direct methods
.method constructor blacklist <init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V
    .registers 10
    .param p1, "appThread"    # Landroid/app/IApplicationThread;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "activityThread"    # Landroid/os/Handler;
    .param p5, "instrumentation"    # Landroid/app/Instrumentation;
    .param p6, "registered"    # Z

    .line 1867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1868
    if-eqz p4, :cond_25

    .line 1872
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mAppThread:Landroid/app/IApplicationThread;

    .line 1873
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;

    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mAppThread:Landroid/app/IApplicationThread;

    xor-int/lit8 v2, p6, 0x1

    invoke-direct {v0, v1, p0, v2}, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;-><init>(Landroid/app/IApplicationThread;Landroid/app/LoadedApk$ReceiverDispatcher;Z)V

    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    .line 1874
    iput-object p2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1875
    iput-object p3, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    .line 1876
    iput-object p4, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 1877
    iput-object p5, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    .line 1878
    iput-boolean p6, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    .line 1879
    new-instance v0, Landroid/app/IntentReceiverLeaked;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    .line 1880
    return-void

    .line 1869
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Handler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method greylist getIIntentReceiver()Landroid/content/IIntentReceiver;
    .registers 2

    .line 1908
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    return-object v0
.end method

.method greylist getIntentReceiver()Landroid/content/BroadcastReceiver;
    .registers 2

    .line 1903
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method greylist-max-o getLocation()Landroid/app/IntentReceiverLeaked;
    .registers 2

    .line 1898
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    return-object v0
.end method

.method greylist-max-o getUnregisterLocation()Ljava/lang/RuntimeException;
    .registers 2

    .line 1916
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mUnregisterLocation:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method public blacklist performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIILjava/lang/String;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "assumeDelivered"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "sendingUid"    # I
    .param p10, "sendingPackage"    # Ljava/lang/String;

    .line 1922
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;-><init>(Landroid/app/LoadedApk$ReceiverDispatcher;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIILjava/lang/String;)V

    .line 1924
    .local v0, "args":Landroid/app/LoadedApk$ReceiverDispatcher$Args;
    if-nez p1, :cond_20

    .line 1925
    const-string v2, "LoadedApk"

    const-string v3, "Null intent received"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_20
    if-eqz p1, :cond_2e

    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->getRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 1934
    :cond_2e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1937
    .local v2, "mgr":Landroid/app/IActivityManager;
    invoke-virtual {v0, v2}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    .line 1939
    .end local v2    # "mgr":Landroid/app/IActivityManager;
    :cond_35
    return-void
.end method

.method greylist-max-o setUnregisterLocation(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .line 1912
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mUnregisterLocation:Ljava/lang/RuntimeException;

    .line 1913
    return-void
.end method

.method greylist-max-o validate(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityThread"    # Landroid/os/Handler;

    .line 1883
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    const-string v1, ")"

    const-string v2, " now "

    const-string v3, "Receiver "

    if-ne v0, p1, :cond_40

    .line 1889
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    if-ne v0, p2, :cond_f

    .line 1895
    return-void

    .line 1890
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registered with differing handler (was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1884
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registered with differing Context (was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
