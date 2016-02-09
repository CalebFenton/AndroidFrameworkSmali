.class final Landroid/app/LoadedApk$ReceiverDispatcher$Args;
.super Landroid/content/BroadcastReceiver$PendingResult;
.source "LoadedApk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Args"
.end annotation


# instance fields
.field private mCurIntent:Landroid/content/Intent;

.field private final mOrdered:Z

.field final synthetic this$1:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method public constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 11
    .param p1, "this$1"    # Landroid/app/LoadedApk$ReceiverDispatcher;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I

    #@0
    .prologue
    .line 841
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@2
    .line 844
    iget-boolean v1, p1, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v5, 0x1

    #@7
    .line 845
    :goto_0
    iget-object v1, p1, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    #@9
    invoke-virtual {v1}, Landroid/content/IIntentReceiver$Stub;->asBinder()Landroid/os/IBinder;

    #@c
    move-result-object v8

    #@d
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    #@10
    move-result v10

    #@11
    move-object v1, p0

    #@12
    move v2, p3

    #@13
    move-object v3, p4

    #@14
    move-object/from16 v4, p5

    #@16
    move/from16 v6, p6

    #@18
    move/from16 v7, p7

    #@1a
    move/from16 v9, p8

    #@1c
    .line 843
    invoke-direct/range {v1 .. v10}, Landroid/content/BroadcastReceiver$PendingResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V

    #@1f
    .line 846
    iput-object p2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    #@21
    .line 847
    move/from16 v0, p6

    #@23
    iput-boolean v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    #@25
    .line 842
    return-void

    #@26
    .line 844
    :cond_0
    const/4 v5, 0x2

    #@27
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x40

    #@2
    const/4 v7, 0x0

    #@3
    .line 851
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@5
    iget-object v5, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    #@7
    .line 852
    .local v5, "receiver":Landroid/content/BroadcastReceiver;
    iget-boolean v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    #@9
    .line 862
    .local v4, "ordered":Z
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@c
    move-result-object v3

    #@d
    .line 863
    .local v3, "mgr":Landroid/app/IActivityManager;
    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    #@f
    .line 864
    .local v2, "intent":Landroid/content/Intent;
    iput-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    #@11
    .line 866
    if-eqz v5, :cond_0

    #@13
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@15
    iget-boolean v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    #@17
    if-eqz v6, :cond_2

    #@19
    .line 867
    :cond_0
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@1b
    iget-boolean v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    #@1d
    if-eqz v6, :cond_1

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 870
    invoke-virtual {p0, v3}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    #@24
    .line 872
    :cond_1
    return-void

    #@25
    .line 875
    :cond_2
    const-string/jumbo v6, "broadcastReceiveReg"

    #@28
    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2b
    .line 877
    :try_start_0
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@2d
    iget-object v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    #@2f
    invoke-virtual {v6}, Landroid/content/BroadcastReceiver;->getClass()Ljava/lang/Class;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@36
    move-result-object v0

    #@37
    .line 878
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@3a
    .line 879
    invoke-virtual {p0, v0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@3d
    .line 880
    invoke-virtual {v5, p0}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    #@40
    .line 881
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@42
    iget-object v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    #@44
    invoke-virtual {v5, v6, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 897
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_3
    invoke-virtual {v5}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    #@4a
    move-result-object v6

    #@4b
    if-eqz v6, :cond_4

    #@4d
    .line 898
    invoke-virtual {p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->finish()V

    #@50
    .line 900
    :cond_4
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@53
    .line 850
    return-void

    #@54
    .line 882
    :catch_0
    move-exception v1

    #@55
    .line 883
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@57
    iget-boolean v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    #@59
    if-eqz v6, :cond_5

    #@5b
    if-eqz v4, :cond_5

    #@5d
    .line 886
    invoke-virtual {p0, v3}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    #@60
    .line 888
    :cond_5
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@62
    iget-object v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    #@64
    if-eqz v6, :cond_6

    #@66
    .line 889
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@68
    iget-object v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    #@6a
    iget-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@6c
    iget-object v7, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    #@6e
    invoke-virtual {v6, v7, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@71
    move-result v6

    #@72
    if-nez v6, :cond_3

    #@74
    .line 890
    :cond_6
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@77
    .line 891
    new-instance v6, Ljava/lang/RuntimeException;

    #@79
    .line 892
    new-instance v7, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v8, "Error receiving broadcast "

    #@81
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    .line 893
    const-string/jumbo v8, " in "

    #@8c
    .line 892
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v7

    #@90
    .line 893
    iget-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@92
    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    #@94
    .line 892
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v7

    #@98
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v7

    #@9c
    .line 891
    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9f
    throw v6
.end method
